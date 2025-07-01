// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module ddr3_test(sys_clk, sys_rst_n, led, uart_rx_d, uart_tx_d, 
  ov5640_pclk, ov5640_href, ov5640_vsync, ov5640_data, ov5640_pwdn, ov5640_rst_n, sccb_scl, 
  sccb_sda, ddc_scl, ddc_sda, tmds_clk_p, tmds_clk_n, tmds_data_p, tmds_data_n, ddr3_dq, 
  ddr3_dqs_n, ddr3_dqs_p, ddr3_addr, ddr3_ba, ddr3_ras_n, ddr3_cas_n, ddr3_we_n, ddr3_reset_n, 
  ddr3_ck_p, ddr3_ck_n, ddr3_cke, ddr3_cs_n, ddr3_dm, ddr3_odt);
  input sys_clk;
  input sys_rst_n;
  output [3:0]led;
  input uart_rx_d;
  output uart_tx_d;
  input ov5640_pclk;
  input ov5640_href;
  input ov5640_vsync;
  input [7:0]ov5640_data;
  output ov5640_pwdn;
  output ov5640_rst_n;
  output sccb_scl;
  inout sccb_sda;
  output ddc_scl;
  output ddc_sda;
  output tmds_clk_p;
  output tmds_clk_n;
  output [2:0]tmds_data_p;
  output [2:0]tmds_data_n;
  inout [15:0]ddr3_dq;
  inout [1:0]ddr3_dqs_n;
  inout [1:0]ddr3_dqs_p;
  output [13:0]ddr3_addr;
  output [2:0]ddr3_ba;
  output ddr3_ras_n;
  output ddr3_cas_n;
  output ddr3_we_n;
  output ddr3_reset_n;
  output [0:0]ddr3_ck_p;
  output [0:0]ddr3_ck_n;
  output [0:0]ddr3_cke;
  output [0:0]ddr3_cs_n;
  output [1:0]ddr3_dm;
  output [0:0]ddr3_odt;
endmodule
