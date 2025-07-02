// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Wed Jul  2 15:16:32 2025
// Host        : DESKTOP-I8GGJRG running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               C:/FPGA_Learning_Journey/Pro/CNN___/src/ip/mac_res_fifo/mac_res_fifo_stub.v
// Design      : mac_res_fifo
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tfgg484-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "fifo_generator_v13_2_5,Vivado 2019.2" *)
module mac_res_fifo(clk, din, wr_en, rd_en, dout, full, empty, data_count)
/* synthesis syn_black_box black_box_pad_pin="clk,din[15:0],wr_en,rd_en,dout[15:0],full,empty,data_count[4:0]" */;
  input clk;
  input [15:0]din;
  input wr_en;
  input rd_en;
  output [15:0]dout;
  output full;
  output empty;
  output [4:0]data_count;
endmodule
