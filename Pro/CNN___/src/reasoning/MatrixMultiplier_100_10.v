/* 双fifo缓存输入 */
module MatrixMultiplier_100_10(
    input   wire          clk,
    input   wire          rst_n,
    input   wire          wr_fifo_en,
    input   wire  [15:0]  wr_fifo_data,

    output  wire          done_flag,
    output  reg  [15:0]   matmul_res,
    output  wire          matmul_res_valid
);


parameter DATA_COUNT = 100;
parameter COLUMNS = 10;
parameter MAC_NUM = 2;
parameter MAC_COL = COLUMNS/MAC_NUM;


wire        mac_en;
reg         mac_en_r1;
wire [15:0] mac_in_a;
wire [15:0] mac_in_b[0:MAC_NUM - 1];
wire [15:0] mac_res [0:MAC_NUM - 1];
wire        mac_res_valid;

reg [4:0] col_cnt; //列计数器 1~5
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
wire [MAC_NUM*16-1:0] rd_weight_bram_dout;  // 2个输出
wire [15:0] rd_bram_dout[0:MAC_NUM-1];

/*-----------mac_res_fifo-----------*/
wire [4:0] mac_res_fifo_data_count[0:MAC_NUM-1];
reg [MAC_NUM-1:0] rd_mac_res_fifo_en;
wire [15:0] rd_mac_res_fifo_data[0:MAC_NUM-1];
wire [7:0] mac_res_count_sum;
reg  rd_mac_res_fifo_flag;

assign rd_weight_bram_en = rd_fifo1_en||rd_fifo2_en;
assign rd_bram_dout[0] = rd_weight_bram_dout[15:0];
assign rd_bram_dout[1] = rd_weight_bram_dout[31:16];


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
        if (col_cnt == MAC_COL) begin
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
    else if((fifo1_data_count == DATA_COUNT - 1) && busy_flag == 1'b0) begin
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
    else if(start_flag) begin
        busy_flag <= 1'b1;
    end
    else begin
        busy_flag <= busy_flag;
    end
end

//done_flag: 置位表示矩阵乘法运算完成，清除表示运算未完成，保持置位状态
assign done_flag = (rd_mac_res_fifo_en && mac_res_count_sum ==  COLUMNS) ?1'b1:1'b0;


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
assign rd_weight_bram_addr =  (DATA_COUNT - (rd_fifo1_en?fifo1_data_count:fifo2_data_count)) + DATA_COUNT*(col_cnt - 1);

assign wr_fifo1_en = wr_fifo_en || rd_fifo2_data_valid && (col_cnt != MAC_COL);
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

assign wr_fifo2_en = rd_fifo1_data_valid && (col_cnt != MAC_COL); //fifo2写使能条件有问题，最后一次计算是否要写应该判断一下
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

assign mac_res_count_sum = mac_res_fifo_data_count[0] + mac_res_fifo_data_count[1];

/*-----------mac_res_fifo-----------*/
//rd_mac_res_fifo_flag
always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        rd_mac_res_fifo_flag <= 1'b0;
    end
    else if(mac_res_count_sum == COLUMNS) begin
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
        if (mac_res_count_sum <= 8'd10 && mac_res_count_sum > 8'd5) begin
            rd_mac_res_fifo_en = 2'd1;
        end
        else if (mac_res_count_sum <= 8'd5 && mac_res_count_sum > 8'd0) begin
            rd_mac_res_fifo_en = 2'd2;
        end
        else begin
            rd_mac_res_fifo_en <= 2'd0;
        end
    end
    else begin
        rd_mac_res_fifo_en <= 2'd0;;
    end
end

//rd_mac_res_fifo_en_r1
reg [MAC_NUM-1:0] rd_mac_res_fifo_en_r1;
always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        rd_mac_res_fifo_en_r1 <= 2'd0;
        end
    else begin
        rd_mac_res_fifo_en_r1 <= rd_mac_res_fifo_en;
    end
end

//matmul_res
always @(*) begin
    case (rd_mac_res_fifo_en_r1)
        2'd1:matmul_res <= rd_mac_res_fifo_data[0];
        2'd2:matmul_res <= rd_mac_res_fifo_data[1];
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


neural_weights2_bram u_weights (
  .clk   (clk),                 // 全局时钟
  .bram_en(rd_weight_bram_en),  // 使能信号
  .bram_addr  (rd_weight_bram_addr), // 地址数组输入
  .bram_dout_flat  (rd_weight_bram_dout)  // 数据数组输出
);

endmodule
