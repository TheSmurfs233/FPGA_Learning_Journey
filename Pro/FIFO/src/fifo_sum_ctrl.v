module fifo_sum_ctrl 
(
    input   wire            sys_clk     ,
    input   wire            sys_rst_n   ,
    input   wire    [7:0]   i_data      ,
    input   wire            i_flag      ,  
    output  reg     [7:0]   o_data      ,
    output  reg             o_flag      
);
//parameter define
parameter COL_CNT_MAT = 8'd49;
parameter ROW_CNT_MAT = 8'd49;

//reg define
reg     [7:0]   col_cnt     ;
reg     [7:0]   row_cnt     ;
reg             wr_en1      ;
reg     [7:0]   wr_data1    ;
reg             wr_en2      ;
reg     [7:0]   wr_data2    ;
reg             rd_en       ;
reg             rd_out_flag ;//wr_out_flag:写输出标志
reg             sum_flag    ;//sum_flag:求和标志

//wire define
wire    [7:0]   rd_data1    ;//rd_data1:fifo_1中读出的数据
wire    [7:0]   rd_data2    ;//rd_data2:fifo_2中读出的数据

//instance define
fifo_generator_0 fifo_ins_1 (
  .clk(sys_clk),      // input wire clk
  .din(wr_data1),      // input wire [7 : 0] din
  .wr_en(wr_en1),  // input wire wr_en
  .rd_en(rd_en),  // input wire rd_en
  .dout(rd_data1),    // output wire [7 : 0] dout
  .full( ),    // output wire full
  .empty( )  // output wire empty
);

fifo_generator_0 fifo_ins_2 (
  .clk(sys_clk),      // input wire clk
  .din(wr_data2),      // input wire [7 : 0] din
  .wr_en(wr_en2),  // input wire wr_en
  .rd_en(rd_en),  // input wire rd_en
  .dout(rd_data2),    // output wire [7 : 0] dout
  .full( ),    // output wire full
  .empty( )  // output wire empty
);

//************* main logic  ******************//

//col_cnt:列计数器
always @(posedge sys_clk) begin
    if(!sys_rst_n) begin
        col_cnt <= 8'h00;
    end
    else if(col_cnt >= COL_CNT_MAT && i_flag == 1'b1) begin
        col_cnt <= 8'd0;
    end
    else if(i_flag == 1'b1) begin
        col_cnt <= col_cnt + 1;
    end
    else begin
        col_cnt <= col_cnt;
    end
end

//row_cnt:行计数器
always @(posedge sys_clk ) begin
    if (!sys_rst_n) begin
        row_cnt <= 8'h00;
    end
    else if(col_cnt == COL_CNT_MAT && row_cnt == ROW_CNT_MAT && i_flag == 1'b1) begin
        row_cnt <= 8'h00;
    end
    else if(col_cnt == COL_CNT_MAT && i_flag == 1'b1) begin
        row_cnt <= row_cnt + 1;
    end
    else begin
        row_cnt <= row_cnt;
    end
end

//wr_en1:写使能1
always @(posedge sys_clk) begin
    if(!sys_rst_n) begin
        wr_en1 <= 1'b0;
    end
    else if(row_cnt == 8'd0 && i_flag == 1'b1 ) begin
        wr_en1 <= 1'b1;
    end
    else begin
        wr_en1 <= rd_out_flag;
    end
end

//wr_data1:写数据1
always @(posedge sys_clk) begin
    if(!sys_rst_n) begin
        wr_data1 <= 8'h00;
    end
    else if(row_cnt == 8'd0 && i_flag == 1'b1) begin
        wr_data1 <= i_data;
    end
    else if(rd_out_flag == 1'b1) begin
        wr_data1 <= rd_data2;
    end
    else begin
        wr_data1 <= wr_data1;
    end
end

//wr_en2:写使能2
always @(posedge sys_clk) begin
    if(!sys_rst_n) begin
        wr_en2 <= 1'b0;
    end
    else if(row_cnt >= 8'd1 && (row_cnt <= COL_CNT_MAT - 1'd1) && i_flag == 1'b1) begin
        wr_en2 <= 1'b1;
    end
    else begin
        wr_en2 <= 1'b0;
    end
end

//wr_data2:写数据2
always @(posedge sys_clk) begin
    if(!sys_rst_n) begin
        wr_data2 <= 8'h00;
    end
    else if(row_cnt >= 8'd1 && (row_cnt <= COL_CNT_MAT - 1'd1) && i_flag == 1'b1) begin
        wr_data2 <= i_data;
    end
    else begin
        wr_data2 <= wr_data2;
    end
end

//rd_en:读使能
always @(posedge sys_clk) begin
    if(!sys_rst_n) begin
        rd_en <= 1'b0;
    end
    else if(row_cnt >=8'd2 && (row_cnt <= COL_CNT_MAT)  && i_flag == 1'b1) begin
        rd_en <= 1'b1;
    end
    else begin
        rd_en <= 1'b0;
    end
end

//rd_out_flag:读输出标志
always @(posedge sys_clk) begin
    if(!sys_rst_n) begin
        rd_out_flag <= 1'b0;
    end
    else if(wr_en2 == 1'b1 && rd_en == 1'b1 ) begin
        rd_out_flag <= 1'b1;
    end
    else begin
        rd_out_flag <= 1'b0;
    end
end

//sum_flag:求和标志
always @(posedge sys_clk) begin
    if(!sys_rst_n) begin
        sum_flag <= 1'b0;
    end
    else if(rd_en == 1'b1) begin
        sum_flag <= 1'b1;
    end
    else begin
        sum_flag <= 1'b0;
    end
end

//o_data:输出数据
always @(posedge sys_clk) begin
    if(!sys_rst_n) begin
        o_data <= 8'h00;
    end
    else if(sum_flag == 1'b1) begin
        o_data <= rd_data1 + rd_data2 + i_data;
    end
    else begin
        o_data <= o_data;
    end
end

//o_flag:输出标志
always @(posedge sys_clk) begin
    if(!sys_rst_n) begin
        o_flag <= 1'b0;
    end
    else begin
        o_flag <= sum_flag;
    end
end
endmodule