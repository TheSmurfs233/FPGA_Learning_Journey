// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Sat May 10 17:15:35 2025
// Host        : DESKTOP-I8GGJRG running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               D:/CNN/OV5640_DDR3_HDMI_UDP_gray_v2___/project/project_1.srcs/sources_1/ip/clk_wiz_1/clk_wiz_1_stub.v
// Design      : clk_wiz_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tfgg484-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module clk_wiz_1(clk_50m, clk_125m, clk_25m, clk_40m, clk_200m, 
  resetn, locked, clk_in1)
/* synthesis syn_black_box black_box_pad_pin="clk_50m,clk_125m,clk_25m,clk_40m,clk_200m,resetn,locked,clk_in1" */;
  output clk_50m;
  output clk_125m;
  output clk_25m;
  output clk_40m;
  output clk_200m;
  input resetn;
  output locked;
  input clk_in1;
endmodule
