/*
推理部分顶层模块,输入为8位灰度数据,输出为8位softmax结果
8位灰度数据首先进入一个帧缓存fifo模块,经过跨时钟域后再读出
然后数据进入预处理模块,pretreatment_inst,把8位灰度数据归一化并转化为Q6.10定点数格式
接着数据进入矩阵乘法模块MatrixMultiplier_inst,计算h1层的矩阵乘法
h1层的结果经过Relu激活函数,然后进入矩阵乘法模块MatrixMultiplier_100_10_inst,计算h2层的矩阵乘法
h2层的结果经过softmax激活函数,输出为8位softmax结果
*/

module fcnn_top (
    input wire  clk,
    input wire  rst_n,
    input wire  wr_fifo_clk,
    input wire  wr_fifo_en,
    input wire  [7:0] wr_fifo_data,
    output wire [7:0] norm_res,
    output wire norm_res_valid
);


/******帧缓存fifo********/
reg         rd_buffer_fifo_en;
wire [7:0]  rd_buffer_fifo_data;
wire [9:0]  fifo0_data_count;
reg         rd_buffer_fifo_data_valid;

always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        rd_buffer_fifo_en <= 1'b0;
    end
    else if(fifo0_data_count >= 785) begin
        rd_buffer_fifo_en <= 1'b1;
    end
    else if(fifo0_data_count == 1) begin
        rd_buffer_fifo_en <= 1'b0;
    end
    else begin
        rd_buffer_fifo_en <= rd_buffer_fifo_en;
    end
end

// rd_buffer_fifo_data_valid:
always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        rd_buffer_fifo_data_valid <= 1'b0;
    end
    else begin
        rd_buffer_fifo_data_valid <= rd_buffer_fifo_en;
    end
end

buf_fifo buf_fifo_inst (
  .wr_clk(wr_fifo_clk),                // input wire wr_clk
  .rd_clk(clk),                // input wire rd_clk
  .din(wr_fifo_data),                      // input wire [7 : 0] din
  .wr_en(wr_fifo_en),                  // input wire wr_en
  .rd_en(rd_buffer_fifo_en),                  // input wire rd_en
  .dout(rd_buffer_fifo_data),                    // output wire [7 : 0] dout
  .full( ),                    // output wire full
  .empty( ),                  // output wire empty
  .rd_data_count(fifo0_data_count)  // output wire [9 : 0] rd_data_count
);


/******预处理模块********/
// 数据预处理,把8位灰度数据归一化并转化为Q6.10定点数格式
wire [15:0] pre_data;
wire pre_data_valid;
pretreatment  pretreatment_inst (
    .clk(clk),
    .rst_n(rst_n),
    .data_in(rd_buffer_fifo_data),
    .data_in_valid(rd_buffer_fifo_data_valid),
    .data_out(pre_data),
    .data_out_valid(pre_data_valid)
);

wire done_flag;
wire [15:0] matmul_h1_res;
wire matmul_h1_res_valid;
MatrixMultiplier  MatrixMultiplier_inst (
    .clk(clk),
    .rst_n(rst_n),
    .en(1'b1),    
    
    .wr_fifo_en(pre_data_valid),
    .wr_fifo_data(pre_data),
    .done_flag(done_flag),
    .matmul_res(matmul_h1_res),
    .matmul_res_valid(matmul_h1_res_valid)
);

wire [15:0] h1_relu_res;
wire h1_relu_res_valid;
Relu  Relu_inst (
    .data_in(matmul_h1_res),
    .data_in_valid(matmul_h1_res_valid),
    .data_out(h1_relu_res),
    .data_out_valid(h1_relu_res_valid)
);
wire [15:0] matmul_h2_res;
wire  matmul_h2_res_valid;
wire done_flag_l2;

MatrixMultiplier_100_10  MatrixMultiplier_100_10_inst (
    .clk(clk),
    .rst_n(rst_n),
    .wr_fifo_en(h1_relu_res_valid),
    .wr_fifo_data(h1_relu_res),
    .done_flag(done_flag_l2),
    .matmul_res(matmul_h2_res),
    .matmul_res_valid(matmul_h2_res_valid)
);


Softmax  Softmax_inst (
    .clk(clk),
    .rst_n(rst_n),
    .data_in(matmul_h2_res),
    .data_in_valid(matmul_h2_res_valid),
    .data_out(norm_res),
    .data_out_valid(norm_res_valid)
);


endmodule