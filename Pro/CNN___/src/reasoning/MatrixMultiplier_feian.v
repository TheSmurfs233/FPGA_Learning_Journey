module MatrixMultiplier(
    input   wire          clk,
    input   wire          rst_n,
    input   wire          en,
                    
    input   wire          wr_fifo_en,
    input   wire [15:0]   wr_fifo_data,

    output  wire          done_flag,
    output  reg [15:0]    matmul_res,
    output  wire          matmul_res_valid

);
parameter DATA_COUNT = 785;
parameter COLUMNS = 20;
parameter ROWS = 785;

wire        mac_en;
reg         mac_en_r1;
wire [15:0] mac_in_a;
wire [15:0] mac_in_b[0:4];
wire [15:0] mac_res[0:4];
wire        mac_res_valid;

reg [4:0] col_cnt; //列计数器
wire    [9:0]   fifo1_data_count;
wire    [9:0]   fifo2_data_count;
/*-----------fifo1 & fifo2-----------*/
reg         rd_fifo1_en;
reg         rd_fifo1_data_valid;
wire [15:0] rd_fifo1_data;
wire        wr_fifo1_en;
wire [15:0] wr_fifo1_data;

reg         rd_fifo2_en;
reg         rd_fifo2_data_valid;
wire [15:0] rd_fifo2_data;
wire        wr_fifo2_en;
wire [15:0] wr_fifo2_data;

/*-----------bram-----------*/
wire            rd_weight_bram_en;
wire [15:0]     rd_weight_bram_addr;  // 地址
wire [5*16-1:0] rd_weight_bram_dout;  // 5个输出
wire [15:0] rd_bram_dout[0:4];

/*-----------mac_res_fifo-----------*/
wire [4:0] mac_res_fifo_data_count[0:4];
reg [4:0] rd_mac_res_fifo_en;
wire [15:0] rd_mac_res_fifo_data[0:4];
wire [7:0] mac_res_count_sum;
reg  rd_mac_res_fifo_flag;

assign rd_weight_bram_en = rd_fifo1_en||rd_fifo2_en;
assign rd_bram_dout[0] = rd_weight_bram_dout[15:0];
assign rd_bram_dout[1] = rd_weight_bram_dout[31:16];
assign rd_bram_dout[2] = rd_weight_bram_dout[47:32];
assign rd_bram_dout[3] = rd_weight_bram_dout[63:48];
assign rd_bram_dout[4] = rd_weight_bram_dout[79:64];

assign mac_en = rd_fifo1_data_valid||rd_fifo2_data_valid;
always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        mac_en_r1 <= 1'b0;
    end
    else begin
        mac_en_r1 <= mac_en;
    end
end
assign mac_res_valid = mac_en_r1 && !mac_en;

reg start_flag;//矩阵开始计算信号,当fifo1中数据个数达到一次计算的要求时,且输入使能信号为高,且busy_flag为低时,置位start_flag
reg busy_flag;//置位表示正在进行矩阵乘法运算，清除表示完成运算，保持置位状态
reg end_flag;//矩阵计算结束信号,当mac_res_valid为高时,置位end_flag
// reg done_flag;//矩阵计算完成信号,当end_flag为高时,置位done_flag

/*-----------列计数器-----------*/
//表明当前正在处理的列数，初始值为0

always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        col_cnt <= 5'd0;
    end
    else if(start_flag) begin
        col_cnt <= col_cnt + 5'd1;
    end
    else if(((!rd_fifo1_en) && (rd_fifo1_data_valid)) || ((!rd_fifo2_en) && (rd_fifo2_data_valid))) begin
        if (col_cnt == 5'd20) begin
            col_cnt <= 5'd0;
        end
        else begin
            col_cnt <= col_cnt + 5'd1;
        end
    end
    else begin
        col_cnt <= col_cnt;
    end
end


//start_flag:开始信号，当fifo1中数据个数达到一次计算的要求时，置位start_flag
always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        start_flag <= 1'b0;
    end
    else if(en && (fifo1_data_count == DATA_COUNT - 1) && busy_flag == 1'b0) begin
        start_flag <= 1'b1;
    end
    else begin
        start_flag <= 1'b0;
    end
end
//end_flag:结束信号，当mac_res_valid为高时，置位end_flag
always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        end_flag <= 1'b0;
    end
    else if(busy_flag == 1'b1 && mac_res_valid == 1'b1 && col_cnt == 5'd0) begin
        end_flag <= 1'b1;
    end
    else begin
        end_flag <= 1'b0;
    end
end

//busy_flag: 置位表示正在进行矩阵乘法运算，清除表示完成运算，保持置位状态
always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        busy_flag <= 1'b0;
    end
    else if(end_flag == 1'b1) begin
        busy_flag <= 1'b0;
    end
    else if(en && start_flag) begin
        busy_flag <= 1'b1;
    end
    else begin
        busy_flag <= busy_flag;
    end
end

//done_flag: 置位表示矩阵乘法运算完成，清除表示运算未完成，保持置位状态
assign done_flag = (rd_mac_res_fifo_en && mac_res_count_sum ==  8'd100) ?1'b1:1'b0;


/*-----------fifo1-----------*/
//rd_fifo1_en: 置位表示从fifo1读取数据，清除表示不读取数据
always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        rd_fifo1_en <= 1'b0;
    end
    else if(busy_flag == 1'b1 && (fifo1_data_count > 1) && (col_cnt[0])) begin
        rd_fifo1_en <= 1'b1;
    end
    else begin
        rd_fifo1_en <= 1'b0;
    end
end
//rd_fifo1_data_valid
always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        rd_fifo1_data_valid <= 1'b0;
    end
    else begin
        rd_fifo1_data_valid <= rd_fifo1_en;
    end
end
/*-----------fifo2-----------*/
//rd_fifo2_en
always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        rd_fifo2_en <= 1'b0;
    end
    else if(busy_flag == 1'b1 && (fifo2_data_count > 1) && (!col_cnt[0])) begin
        rd_fifo2_en <= 1'b1;
    end
    else begin
        rd_fifo2_en <= 1'b0;
    end
end
//rd_fifo2_data_valid
always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        rd_fifo2_data_valid <= 1'b0;
    end
    else begin
        rd_fifo2_data_valid <= rd_fifo2_en;
    end
end

/*-----------读bram-----------*/
// assign rd_bram_addr0 = {5'd0,DATA_COUNT - fifo1_data_count };
assign rd_weight_bram_addr =  (DATA_COUNT - (rd_fifo1_en?fifo1_data_count:fifo2_data_count)) + 785*(col_cnt - 1);

assign wr_fifo1_en = wr_fifo_en || rd_fifo2_data_valid && (col_cnt != 5'd20);
assign wr_fifo1_data = wr_fifo_en ? wr_fifo_data : (wr_fifo1_en ? rd_fifo2_data : 16'b0);

fcnn_fifo fcnn_fifo_inst1 (
    .clk(clk),                // input wire clk
    .din(wr_fifo1_data),                // input wire [15 : 0] din
    .wr_en(wr_fifo1_en),            // input wire wr_en
    .rd_en(rd_fifo1_en),            // input wire rd_en
    .dout(rd_fifo1_data),              // output wire [15 : 0] dout
    .full( ),              // output wire full
    .empty( ),            // output wire empty
    .data_count(fifo1_data_count)  // output wire [9 : 0] data_count
);

assign wr_fifo2_en = rd_fifo1_data_valid;
assign wr_fifo2_data = rd_fifo1_data;

fcnn_fifo fcnn_fifo_inst2 (
    .clk(clk),                // input wire clk
    .din(wr_fifo2_data),                // input wire [15 : 0] din
    .wr_en(wr_fifo2_en),            // input wire wr_en
    .rd_en(rd_fifo2_en),            // input wire rd_en
    .dout(rd_fifo2_data),              // output wire [15 : 0] dout
    .full( ),              // output wire full
    .empty( ),            // output wire empty
    .data_count(fifo2_data_count)  // output wire [9 : 0] data_count
);


assign mac_in_a = col_cnt[0]?rd_fifo1_data:rd_fifo2_data;

assign mac_in_b[0] = rd_bram_dout[0];
assign mac_in_b[1] = rd_bram_dout[1];
assign mac_in_b[2] = rd_bram_dout[2];
assign mac_in_b[3] = rd_bram_dout[3];
assign mac_in_b[4] = rd_bram_dout[4];




assign mac_res_count_sum = mac_res_fifo_data_count[0] + mac_res_fifo_data_count[1] + mac_res_fifo_data_count[2] + mac_res_fifo_data_count[3] + mac_res_fifo_data_count[4];
/*-----------mac_res_fifo-----------*/
//rd_mac_res_fifo_flag
always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        rd_mac_res_fifo_flag <= 1'b0;
    end
    else if(mac_res_count_sum == 8'd100) begin
        rd_mac_res_fifo_flag <= 1'b1;
    end
    else if(mac_res_count_sum == 8'd0) begin
        rd_mac_res_fifo_flag <= 1'b0;
    end
    else begin
        rd_mac_res_fifo_flag <= rd_mac_res_fifo_flag;
    end
end

// rd_mac_res_fifo_en:
always @(*) begin
    if(rd_mac_res_fifo_flag == 1'b1) begin
        if (mac_res_count_sum <= 8'd100 && mac_res_count_sum > 8'd80) begin
            rd_mac_res_fifo_en = 5'd1;
        end
        else if (mac_res_count_sum <= 8'd80 && mac_res_count_sum > 8'd60) begin
            rd_mac_res_fifo_en = 5'd2;
        end
        else if (mac_res_count_sum <= 8'd60 && mac_res_count_sum > 8'd40) begin
            rd_mac_res_fifo_en = 5'd4;
        end
        else if (mac_res_count_sum <= 8'd40 && mac_res_count_sum > 8'd20) begin
            rd_mac_res_fifo_en = 5'd8;
        end
        else if (mac_res_count_sum <= 8'd20 && mac_res_count_sum > 8'd0) begin
            rd_mac_res_fifo_en = 5'd16; 
        end
        else begin
            rd_mac_res_fifo_en <= 5'd0;
        end
    end
    else begin
        rd_mac_res_fifo_en <= 5'd0;;
    end
end

//rd_mac_res_fifo_en_r1
reg [4:0] rd_mac_res_fifo_en_r1;
always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        rd_mac_res_fifo_en_r1 <= 5'd0;
        end
    else begin
        rd_mac_res_fifo_en_r1 <= rd_mac_res_fifo_en;
    end
end

//matmul_res
always @(*) begin
    case (rd_mac_res_fifo_en_r1)
        5'd1:matmul_res <= rd_mac_res_fifo_data[0];
        5'd2:matmul_res <= rd_mac_res_fifo_data[1];
        5'd4:matmul_res <= rd_mac_res_fifo_data[2];
        5'd8:matmul_res <= rd_mac_res_fifo_data[3];
        5'd16:matmul_res <= rd_mac_res_fifo_data[4];
        default: matmul_res <= 16'd0;
    endcase
end

//matmul_res_valid
assign matmul_res_valid = |rd_mac_res_fifo_en_r1;



mac_q6_10  mac_q6_10_inst0 (
    .clk(clk),
    .mac_en(mac_en),
    .A(mac_in_a),
    .B(mac_in_b[0]),
    .res_q6_10(mac_res[0])
);
mac_res_fifo mac_res_fifo_inst0 (
  .clk(clk),                // input wire clk
  .din(mac_res[0]),                // input wire [15 : 0] din
  .wr_en(mac_res_valid),            // input wire wr_en
  .rd_en(rd_mac_res_fifo_en[0]),            // input wire rd_en
  .dout(rd_mac_res_fifo_data[0]),              // output wire [15 : 0] dout
  .full( ),              // output wire full
  .empty( ),            // output wire empty
  .data_count(mac_res_fifo_data_count[0])  // output wire [4 : 0] data_count
);

mac_q6_10  mac_q6_10_inst1 (
    .clk(clk),
    .mac_en(mac_en),
    .A(mac_in_a),
    .B(mac_in_b[1]),
    .res_q6_10(mac_res[1])
);
mac_res_fifo mac_res_fifo_inst1 (
  .clk(clk),                // input wire clk
  .din(mac_res[1]),                // input wire [15 : 0] din
  .wr_en(mac_res_valid),            // input wire wr_en
  .rd_en(rd_mac_res_fifo_en[1]),            // input wire rd_en
  .dout(rd_mac_res_fifo_data[1]),              // output wire [15 : 0] dout
  .full( ),              // output wire full
  .empty( ),            // output wire empty
  .data_count(mac_res_fifo_data_count[1])  // output wire [4 : 0] data_count
);

mac_q6_10  mac_q6_10_inst2 (
    .clk(clk),
    .mac_en(mac_en),
    .A(mac_in_a),
    .B(mac_in_b[2]),
    .res_q6_10(mac_res[2])
);
mac_res_fifo mac_res_fifo_inst2 (
  .clk(clk),                // input wire clk
  .din(mac_res[2]),                // input wire [15 : 0] din
  .wr_en(mac_res_valid),            // input wire wr_en
  .rd_en(rd_mac_res_fifo_en[2]),            // input wire rd_en
  .dout(rd_mac_res_fifo_data[2]),              // output wire [15 : 0] dout
  .full( ),              // output wire full
  .empty( ),            // output wire empty
  .data_count(mac_res_fifo_data_count[2])  // output wire [4 : 0] data_count
);
mac_q6_10  mac_q6_10_inst3 (
    .clk(clk),
    .mac_en(mac_en),
    .A(mac_in_a),
    .B(mac_in_b[3]),
    .res_q6_10(mac_res[3])
);
mac_res_fifo mac_res_fifo_inst3 (
  .clk(clk),                // input wire clk
  .din(mac_res[3]),                // input wire [15 : 0] din
  .wr_en(mac_res_valid),            // input wire wr_en
  .rd_en(rd_mac_res_fifo_en[3]),            // input wire rd_en
  .dout(rd_mac_res_fifo_data[3]),              // output wire [15 : 0] dout
  .full( ),              // output wire full
  .empty( ),            // output wire empty
  .data_count(mac_res_fifo_data_count[3])  // output wire [4 : 0] data_count
);
mac_q6_10  mac_q6_10_inst4 (
    .clk(clk),
    .mac_en(mac_en),
    .A(mac_in_a),
    .B(mac_in_b[4]),
    .res_q6_10(mac_res[4])
);
mac_res_fifo mac_res_fifo_inst4 (
  .clk(clk),                // input wire clk
  .din(mac_res[4]),                // input wire [15 : 0] din
  .wr_en(mac_res_valid),            // input wire wr_en
  .rd_en(rd_mac_res_fifo_en[4]),            // input wire rd_en
  .dout(rd_mac_res_fifo_data[4]),              // output wire [15 : 0] dout
  .full( ),              // output wire full
  .empty( ),            // output wire empty
  .data_count(mac_res_fifo_data_count[4])  // output wire [4 : 0] data_count
);

neural_weights1_bram u_weights (
  .clk   (clk),                 // 全局时钟
  .bram_en(rd_weight_bram_en),  // 使能信号
  .bram_addr  (rd_weight_bram_addr), // 地址数组输入
  .bram_dout_flat  (rd_weight_bram_dout)  // 数据数组输出
);

endmodule
