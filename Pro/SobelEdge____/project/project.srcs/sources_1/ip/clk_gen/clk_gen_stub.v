// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Thu Feb 13 18:41:18 2025
// Host        : DESKTOP-I8GGJRG running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/FPGA_Learning_Journey/Pro/SobelEdge____/project/project.srcs/sources_1/ip/clk_gen/clk_gen_stub.v
// Design      : clk_gen
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tfgg484-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module clk_gen(c0, c1, clk_out3, resetn, locked, clk_in1)
/* synthesis syn_black_box black_box_pad_pin="c0,c1,clk_out3,resetn,locked,clk_in1" */;
  output c0;
  output c1;
  output clk_out3;
  input resetn;
  output locked;
  input clk_in1;
endmodule
