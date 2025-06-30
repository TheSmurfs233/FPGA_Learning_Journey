//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
//Date        : Tue Jun 24 15:26:40 2025
//Host        : DESKTOP-I8GGJRG running 64-bit major release  (build 9200)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (irq_ack,
    key_tri_i,
    led_tri_o,
    lnk_up_led,
    pcie_7x_mgt_rtl_0_rxn,
    pcie_7x_mgt_rtl_0_rxp,
    pcie_7x_mgt_rtl_0_txn,
    pcie_7x_mgt_rtl_0_txp,
    pcie_ref_clk_n,
    pcie_ref_clk_p,
    pcie_rst_n);
  output [0:0]irq_ack;
  input [3:0]key_tri_i;
  output [2:0]led_tri_o;
  output lnk_up_led;
  input [1:0]pcie_7x_mgt_rtl_0_rxn;
  input [1:0]pcie_7x_mgt_rtl_0_rxp;
  output [1:0]pcie_7x_mgt_rtl_0_txn;
  output [1:0]pcie_7x_mgt_rtl_0_txp;
  input [0:0]pcie_ref_clk_n;
  input [0:0]pcie_ref_clk_p;
  input pcie_rst_n;

  wire [0:0]irq_ack;
  wire [3:0]key_tri_i;
  wire [2:0]led_tri_o;
  wire lnk_up_led;
  wire [1:0]pcie_7x_mgt_rtl_0_rxn;
  wire [1:0]pcie_7x_mgt_rtl_0_rxp;
  wire [1:0]pcie_7x_mgt_rtl_0_txn;
  wire [1:0]pcie_7x_mgt_rtl_0_txp;
  wire [0:0]pcie_ref_clk_n;
  wire [0:0]pcie_ref_clk_p;
  wire pcie_rst_n;

  design_1 design_1_i
       (.irq_ack(irq_ack),
        .key_tri_i(key_tri_i),
        .led_tri_o(led_tri_o),
        .lnk_up_led(lnk_up_led),
        .pcie_7x_mgt_rtl_0_rxn(pcie_7x_mgt_rtl_0_rxn),
        .pcie_7x_mgt_rtl_0_rxp(pcie_7x_mgt_rtl_0_rxp),
        .pcie_7x_mgt_rtl_0_txn(pcie_7x_mgt_rtl_0_txn),
        .pcie_7x_mgt_rtl_0_txp(pcie_7x_mgt_rtl_0_txp),
        .pcie_ref_clk_n(pcie_ref_clk_n),
        .pcie_ref_clk_p(pcie_ref_clk_p),
        .pcie_rst_n(pcie_rst_n));
endmodule
