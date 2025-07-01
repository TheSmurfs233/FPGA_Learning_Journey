/* 预处理模块 */
// 输入为8位灰度数据，输出为16位Q6.10格式的归一化后的定点数数据
module pretreatment (
    input  wire clk,
    input  wire rst_n,
    input  wire [7:0] data_in,
    input  wire   data_in_valid,
    output wire [15:0]  data_out,
    output wire   data_out_valid
);

// uint32转浮点数

wire fcnn_wr_fifo_din_uint32_valid;
wire [31:0] fcnn_wr_fifo_din_uint32;
wire [31:0] fcnn_wr_fifo_din_float;
wire fcnn_wr_fifo_din_float_valid;

assign fcnn_wr_fifo_din_uint32 = {24'h0,data_in};
assign fcnn_wr_fifo_din_uint32_valid = data_in_valid;

uint32_to_float uint32_to_float_inst (
  .aclk(clk),                                  // input wire aclk
  .s_axis_a_tvalid(fcnn_wr_fifo_din_uint32_valid),    // input wire s_axis_a_tvalid
  .s_axis_a_tdata(fcnn_wr_fifo_din_uint32),          // input wire [31 : 0] s_axis_a_tdata
  .m_axis_result_tvalid(fcnn_wr_fifo_din_float_valid),  // output wire m_axis_result_tvalid
  .m_axis_result_tdata(fcnn_wr_fifo_din_float)    // output wire [31 : 0] m_axis_result_tdata
);

// 浮点数除法
wire [31:0] fcnn_wr_fifo_din_float_norm;
wire fcnn_wr_fifo_din_float_valid_norm;
float_div float_div_inst (
  .aclk(clk),                                  // input wire aclk
  .s_axis_a_tvalid(fcnn_wr_fifo_din_float_valid),            // input wire s_axis_a_tvalid
  .s_axis_a_tdata(fcnn_wr_fifo_din_float),              // input wire [31 : 0] s_axis_a_tdata
  .s_axis_b_tvalid(fcnn_wr_fifo_din_float_valid),            // input wire s_axis_b_tvalid
  .s_axis_b_tdata(32'h437F0000),              // input wire [31 : 0] s_axis_b_tdata
  .m_axis_result_tvalid(fcnn_wr_fifo_din_float_valid_norm),  // output wire m_axis_result_tvalid
  .m_axis_result_tdata(fcnn_wr_fifo_din_float_norm)    // output wire [31 : 0] m_axis_result_tdata
);
// 浮点数转Q6.10定点数
wire fcnn_wr_fifo_din_q6_10_valid;
wire [15:0] fcnn_wr_fifo_din_q6_10;
float_to_q6_10 float_to_q6_10_inst (
  .aclk(clk),                                  // input wire aclk
  .s_axis_a_tvalid(fcnn_wr_fifo_din_float_valid_norm),            // input wire s_axis_a_tvalid
  .s_axis_a_tdata(fcnn_wr_fifo_din_float_norm),              // input wire [31 : 0] s_axis_a_tdata
  .m_axis_result_tvalid(fcnn_wr_fifo_din_q6_10_valid),  // output wire m_axis_result_tvalid
  .m_axis_result_tdata(fcnn_wr_fifo_din_q6_10)    // output wire [15 : 0] m_axis_result_tdata
);

assign data_out = fcnn_wr_fifo_din_q6_10;
assign data_out_valid = fcnn_wr_fifo_din_q6_10_valid;

endmodule //pretreatment