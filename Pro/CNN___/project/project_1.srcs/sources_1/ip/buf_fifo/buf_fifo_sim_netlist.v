// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Wed Jul  2 15:18:01 2025
// Host        : DESKTOP-I8GGJRG running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/FPGA_Learning_Journey/Pro/CNN___/project/project_1.srcs/sources_1/ip/buf_fifo/buf_fifo_sim_netlist.v
// Design      : buf_fifo
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tfgg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "buf_fifo,fifo_generator_v13_2_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_5,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module buf_fifo
   (wr_clk,
    rd_clk,
    din,
    wr_en,
    rd_en,
    dout,
    full,
    empty,
    rd_data_count);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 write_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME write_clk, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0" *) input wr_clk;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 read_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME read_clk, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0" *) input rd_clk;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) input [7:0]din;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input wr_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) input rd_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [7:0]dout;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;
  output [9:0]rd_data_count;

  wire [7:0]din;
  wire [7:0]dout;
  wire empty;
  wire full;
  wire rd_clk;
  wire [9:0]rd_data_count;
  wire rd_en;
  wire wr_clk;
  wire wr_en;
  wire NLW_U0_almost_empty_UNCONNECTED;
  wire NLW_U0_almost_full_UNCONNECTED;
  wire NLW_U0_axi_ar_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_overflow_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_full_UNCONNECTED;
  wire NLW_U0_axi_ar_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_underflow_UNCONNECTED;
  wire NLW_U0_axi_aw_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_overflow_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_full_UNCONNECTED;
  wire NLW_U0_axi_aw_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_underflow_UNCONNECTED;
  wire NLW_U0_axi_b_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_overflow_UNCONNECTED;
  wire NLW_U0_axi_b_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_b_prog_full_UNCONNECTED;
  wire NLW_U0_axi_b_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_underflow_UNCONNECTED;
  wire NLW_U0_axi_r_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_overflow_UNCONNECTED;
  wire NLW_U0_axi_r_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_r_prog_full_UNCONNECTED;
  wire NLW_U0_axi_r_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_underflow_UNCONNECTED;
  wire NLW_U0_axi_w_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_overflow_UNCONNECTED;
  wire NLW_U0_axi_w_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_w_prog_full_UNCONNECTED;
  wire NLW_U0_axi_w_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_underflow_UNCONNECTED;
  wire NLW_U0_axis_dbiterr_UNCONNECTED;
  wire NLW_U0_axis_overflow_UNCONNECTED;
  wire NLW_U0_axis_prog_empty_UNCONNECTED;
  wire NLW_U0_axis_prog_full_UNCONNECTED;
  wire NLW_U0_axis_sbiterr_UNCONNECTED;
  wire NLW_U0_axis_underflow_UNCONNECTED;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_m_axi_arvalid_UNCONNECTED;
  wire NLW_U0_m_axi_awvalid_UNCONNECTED;
  wire NLW_U0_m_axi_bready_UNCONNECTED;
  wire NLW_U0_m_axi_rready_UNCONNECTED;
  wire NLW_U0_m_axi_wlast_UNCONNECTED;
  wire NLW_U0_m_axi_wvalid_UNCONNECTED;
  wire NLW_U0_m_axis_tlast_UNCONNECTED;
  wire NLW_U0_m_axis_tvalid_UNCONNECTED;
  wire NLW_U0_overflow_UNCONNECTED;
  wire NLW_U0_prog_empty_UNCONNECTED;
  wire NLW_U0_prog_full_UNCONNECTED;
  wire NLW_U0_rd_rst_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_s_axis_tready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire NLW_U0_underflow_UNCONNECTED;
  wire NLW_U0_valid_UNCONNECTED;
  wire NLW_U0_wr_ack_UNCONNECTED;
  wire NLW_U0_wr_rst_busy_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_wr_data_count_UNCONNECTED;
  wire [9:0]NLW_U0_data_count_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_araddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_arburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_arlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_aruser_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_awaddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_awburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_awlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awuser_UNCONNECTED;
  wire [63:0]NLW_U0_m_axi_wdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_wstrb_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wuser_UNCONNECTED;
  wire [7:0]NLW_U0_m_axis_tdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tdest_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tid_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tkeep_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tstrb_UNCONNECTED;
  wire [3:0]NLW_U0_m_axis_tuser_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_buser_UNCONNECTED;
  wire [63:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_ruser_UNCONNECTED;
  wire [9:0]NLW_U0_wr_data_count_UNCONNECTED;

  (* C_ADD_NGC_CONSTRAINT = "0" *) 
  (* C_APPLICATION_TYPE_AXIS = "0" *) 
  (* C_APPLICATION_TYPE_RACH = "0" *) 
  (* C_APPLICATION_TYPE_RDCH = "0" *) 
  (* C_APPLICATION_TYPE_WACH = "0" *) 
  (* C_APPLICATION_TYPE_WDCH = "0" *) 
  (* C_APPLICATION_TYPE_WRCH = "0" *) 
  (* C_AXIS_TDATA_WIDTH = "8" *) 
  (* C_AXIS_TDEST_WIDTH = "1" *) 
  (* C_AXIS_TID_WIDTH = "1" *) 
  (* C_AXIS_TKEEP_WIDTH = "1" *) 
  (* C_AXIS_TSTRB_WIDTH = "1" *) 
  (* C_AXIS_TUSER_WIDTH = "4" *) 
  (* C_AXIS_TYPE = "0" *) 
  (* C_AXI_ADDR_WIDTH = "32" *) 
  (* C_AXI_ARUSER_WIDTH = "1" *) 
  (* C_AXI_AWUSER_WIDTH = "1" *) 
  (* C_AXI_BUSER_WIDTH = "1" *) 
  (* C_AXI_DATA_WIDTH = "64" *) 
  (* C_AXI_ID_WIDTH = "1" *) 
  (* C_AXI_LEN_WIDTH = "8" *) 
  (* C_AXI_LOCK_WIDTH = "1" *) 
  (* C_AXI_RUSER_WIDTH = "1" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_AXI_WUSER_WIDTH = "1" *) 
  (* C_COMMON_CLOCK = "0" *) 
  (* C_COUNT_TYPE = "0" *) 
  (* C_DATA_COUNT_WIDTH = "10" *) 
  (* C_DEFAULT_VALUE = "BlankString" *) 
  (* C_DIN_WIDTH = "8" *) 
  (* C_DIN_WIDTH_AXIS = "1" *) 
  (* C_DIN_WIDTH_RACH = "32" *) 
  (* C_DIN_WIDTH_RDCH = "64" *) 
  (* C_DIN_WIDTH_WACH = "1" *) 
  (* C_DIN_WIDTH_WDCH = "64" *) 
  (* C_DIN_WIDTH_WRCH = "2" *) 
  (* C_DOUT_RST_VAL = "0" *) 
  (* C_DOUT_WIDTH = "8" *) 
  (* C_ENABLE_RLOCS = "0" *) 
  (* C_ENABLE_RST_SYNC = "1" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_ERROR_INJECTION_TYPE = "0" *) 
  (* C_ERROR_INJECTION_TYPE_AXIS = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_FULL_FLAGS_RST_VAL = "0" *) 
  (* C_HAS_ALMOST_EMPTY = "0" *) 
  (* C_HAS_ALMOST_FULL = "0" *) 
  (* C_HAS_AXIS_TDATA = "1" *) 
  (* C_HAS_AXIS_TDEST = "0" *) 
  (* C_HAS_AXIS_TID = "0" *) 
  (* C_HAS_AXIS_TKEEP = "0" *) 
  (* C_HAS_AXIS_TLAST = "0" *) 
  (* C_HAS_AXIS_TREADY = "1" *) 
  (* C_HAS_AXIS_TSTRB = "0" *) 
  (* C_HAS_AXIS_TUSER = "1" *) 
  (* C_HAS_AXI_ARUSER = "0" *) 
  (* C_HAS_AXI_AWUSER = "0" *) 
  (* C_HAS_AXI_BUSER = "0" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_AXI_RD_CHANNEL = "1" *) 
  (* C_HAS_AXI_RUSER = "0" *) 
  (* C_HAS_AXI_WR_CHANNEL = "1" *) 
  (* C_HAS_AXI_WUSER = "0" *) 
  (* C_HAS_BACKUP = "0" *) 
  (* C_HAS_DATA_COUNT = "0" *) 
  (* C_HAS_DATA_COUNTS_AXIS = "0" *) 
  (* C_HAS_DATA_COUNTS_RACH = "0" *) 
  (* C_HAS_DATA_COUNTS_RDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WACH = "0" *) 
  (* C_HAS_DATA_COUNTS_WDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WRCH = "0" *) 
  (* C_HAS_INT_CLK = "0" *) 
  (* C_HAS_MASTER_CE = "0" *) 
  (* C_HAS_MEMINIT_FILE = "0" *) 
  (* C_HAS_OVERFLOW = "0" *) 
  (* C_HAS_PROG_FLAGS_AXIS = "0" *) 
  (* C_HAS_PROG_FLAGS_RACH = "0" *) 
  (* C_HAS_PROG_FLAGS_RDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WACH = "0" *) 
  (* C_HAS_PROG_FLAGS_WDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WRCH = "0" *) 
  (* C_HAS_RD_DATA_COUNT = "1" *) 
  (* C_HAS_RD_RST = "0" *) 
  (* C_HAS_RST = "0" *) 
  (* C_HAS_SLAVE_CE = "0" *) 
  (* C_HAS_SRST = "0" *) 
  (* C_HAS_UNDERFLOW = "0" *) 
  (* C_HAS_VALID = "0" *) 
  (* C_HAS_WR_ACK = "0" *) 
  (* C_HAS_WR_DATA_COUNT = "0" *) 
  (* C_HAS_WR_RST = "0" *) 
  (* C_IMPLEMENTATION_TYPE = "2" *) 
  (* C_IMPLEMENTATION_TYPE_AXIS = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WRCH = "1" *) 
  (* C_INIT_WR_PNTR_VAL = "0" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_MEMORY_TYPE = "2" *) 
  (* C_MIF_FILE_NAME = "BlankString" *) 
  (* C_MSGON_VAL = "1" *) 
  (* C_OPTIMIZATION_MODE = "0" *) 
  (* C_OVERFLOW_LOW = "0" *) 
  (* C_POWER_SAVING_MODE = "0" *) 
  (* C_PRELOAD_LATENCY = "1" *) 
  (* C_PRELOAD_REGS = "0" *) 
  (* C_PRIM_FIFO_TYPE = "1kx18" *) 
  (* C_PRIM_FIFO_TYPE_AXIS = "1kx18" *) 
  (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL = "2" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "3" *) 
  (* C_PROG_EMPTY_TYPE = "0" *) 
  (* C_PROG_EMPTY_TYPE_AXIS = "0" *) 
  (* C_PROG_EMPTY_TYPE_RACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "1021" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "1020" *) 
  (* C_PROG_FULL_TYPE = "0" *) 
  (* C_PROG_FULL_TYPE_AXIS = "0" *) 
  (* C_PROG_FULL_TYPE_RACH = "0" *) 
  (* C_PROG_FULL_TYPE_RDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WACH = "0" *) 
  (* C_PROG_FULL_TYPE_WDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WRCH = "0" *) 
  (* C_RACH_TYPE = "0" *) 
  (* C_RDCH_TYPE = "0" *) 
  (* C_RD_DATA_COUNT_WIDTH = "10" *) 
  (* C_RD_DEPTH = "1024" *) 
  (* C_RD_FREQ = "1" *) 
  (* C_RD_PNTR_WIDTH = "10" *) 
  (* C_REG_SLICE_MODE_AXIS = "0" *) 
  (* C_REG_SLICE_MODE_RACH = "0" *) 
  (* C_REG_SLICE_MODE_RDCH = "0" *) 
  (* C_REG_SLICE_MODE_WACH = "0" *) 
  (* C_REG_SLICE_MODE_WDCH = "0" *) 
  (* C_REG_SLICE_MODE_WRCH = "0" *) 
  (* C_SELECT_XPM = "0" *) 
  (* C_SYNCHRONIZER_STAGE = "2" *) 
  (* C_UNDERFLOW_LOW = "0" *) 
  (* C_USE_COMMON_OVERFLOW = "0" *) 
  (* C_USE_COMMON_UNDERFLOW = "0" *) 
  (* C_USE_DEFAULT_SETTINGS = "0" *) 
  (* C_USE_DOUT_RST = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_ECC_AXIS = "0" *) 
  (* C_USE_ECC_RACH = "0" *) 
  (* C_USE_ECC_RDCH = "0" *) 
  (* C_USE_ECC_WACH = "0" *) 
  (* C_USE_ECC_WDCH = "0" *) 
  (* C_USE_ECC_WRCH = "0" *) 
  (* C_USE_EMBEDDED_REG = "0" *) 
  (* C_USE_FIFO16_FLAGS = "0" *) 
  (* C_USE_FWFT_DATA_COUNT = "0" *) 
  (* C_USE_PIPELINE_REG = "0" *) 
  (* C_VALID_LOW = "0" *) 
  (* C_WACH_TYPE = "0" *) 
  (* C_WDCH_TYPE = "0" *) 
  (* C_WRCH_TYPE = "0" *) 
  (* C_WR_ACK_LOW = "0" *) 
  (* C_WR_DATA_COUNT_WIDTH = "10" *) 
  (* C_WR_DEPTH = "1024" *) 
  (* C_WR_DEPTH_AXIS = "1024" *) 
  (* C_WR_DEPTH_RACH = "16" *) 
  (* C_WR_DEPTH_RDCH = "1024" *) 
  (* C_WR_DEPTH_WACH = "16" *) 
  (* C_WR_DEPTH_WDCH = "1024" *) 
  (* C_WR_DEPTH_WRCH = "16" *) 
  (* C_WR_FREQ = "1" *) 
  (* C_WR_PNTR_WIDTH = "10" *) 
  (* C_WR_PNTR_WIDTH_AXIS = "10" *) 
  (* C_WR_PNTR_WIDTH_RACH = "4" *) 
  (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WACH = "4" *) 
  (* C_WR_PNTR_WIDTH_WDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
  (* C_WR_RESPONSE_LATENCY = "1" *) 
  buf_fifo_fifo_generator_v13_2_5 U0
       (.almost_empty(NLW_U0_almost_empty_UNCONNECTED),
        .almost_full(NLW_U0_almost_full_UNCONNECTED),
        .axi_ar_data_count(NLW_U0_axi_ar_data_count_UNCONNECTED[4:0]),
        .axi_ar_dbiterr(NLW_U0_axi_ar_dbiterr_UNCONNECTED),
        .axi_ar_injectdbiterr(1'b0),
        .axi_ar_injectsbiterr(1'b0),
        .axi_ar_overflow(NLW_U0_axi_ar_overflow_UNCONNECTED),
        .axi_ar_prog_empty(NLW_U0_axi_ar_prog_empty_UNCONNECTED),
        .axi_ar_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_prog_full(NLW_U0_axi_ar_prog_full_UNCONNECTED),
        .axi_ar_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_rd_data_count(NLW_U0_axi_ar_rd_data_count_UNCONNECTED[4:0]),
        .axi_ar_sbiterr(NLW_U0_axi_ar_sbiterr_UNCONNECTED),
        .axi_ar_underflow(NLW_U0_axi_ar_underflow_UNCONNECTED),
        .axi_ar_wr_data_count(NLW_U0_axi_ar_wr_data_count_UNCONNECTED[4:0]),
        .axi_aw_data_count(NLW_U0_axi_aw_data_count_UNCONNECTED[4:0]),
        .axi_aw_dbiterr(NLW_U0_axi_aw_dbiterr_UNCONNECTED),
        .axi_aw_injectdbiterr(1'b0),
        .axi_aw_injectsbiterr(1'b0),
        .axi_aw_overflow(NLW_U0_axi_aw_overflow_UNCONNECTED),
        .axi_aw_prog_empty(NLW_U0_axi_aw_prog_empty_UNCONNECTED),
        .axi_aw_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_prog_full(NLW_U0_axi_aw_prog_full_UNCONNECTED),
        .axi_aw_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_rd_data_count(NLW_U0_axi_aw_rd_data_count_UNCONNECTED[4:0]),
        .axi_aw_sbiterr(NLW_U0_axi_aw_sbiterr_UNCONNECTED),
        .axi_aw_underflow(NLW_U0_axi_aw_underflow_UNCONNECTED),
        .axi_aw_wr_data_count(NLW_U0_axi_aw_wr_data_count_UNCONNECTED[4:0]),
        .axi_b_data_count(NLW_U0_axi_b_data_count_UNCONNECTED[4:0]),
        .axi_b_dbiterr(NLW_U0_axi_b_dbiterr_UNCONNECTED),
        .axi_b_injectdbiterr(1'b0),
        .axi_b_injectsbiterr(1'b0),
        .axi_b_overflow(NLW_U0_axi_b_overflow_UNCONNECTED),
        .axi_b_prog_empty(NLW_U0_axi_b_prog_empty_UNCONNECTED),
        .axi_b_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_prog_full(NLW_U0_axi_b_prog_full_UNCONNECTED),
        .axi_b_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_rd_data_count(NLW_U0_axi_b_rd_data_count_UNCONNECTED[4:0]),
        .axi_b_sbiterr(NLW_U0_axi_b_sbiterr_UNCONNECTED),
        .axi_b_underflow(NLW_U0_axi_b_underflow_UNCONNECTED),
        .axi_b_wr_data_count(NLW_U0_axi_b_wr_data_count_UNCONNECTED[4:0]),
        .axi_r_data_count(NLW_U0_axi_r_data_count_UNCONNECTED[10:0]),
        .axi_r_dbiterr(NLW_U0_axi_r_dbiterr_UNCONNECTED),
        .axi_r_injectdbiterr(1'b0),
        .axi_r_injectsbiterr(1'b0),
        .axi_r_overflow(NLW_U0_axi_r_overflow_UNCONNECTED),
        .axi_r_prog_empty(NLW_U0_axi_r_prog_empty_UNCONNECTED),
        .axi_r_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_prog_full(NLW_U0_axi_r_prog_full_UNCONNECTED),
        .axi_r_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_rd_data_count(NLW_U0_axi_r_rd_data_count_UNCONNECTED[10:0]),
        .axi_r_sbiterr(NLW_U0_axi_r_sbiterr_UNCONNECTED),
        .axi_r_underflow(NLW_U0_axi_r_underflow_UNCONNECTED),
        .axi_r_wr_data_count(NLW_U0_axi_r_wr_data_count_UNCONNECTED[10:0]),
        .axi_w_data_count(NLW_U0_axi_w_data_count_UNCONNECTED[10:0]),
        .axi_w_dbiterr(NLW_U0_axi_w_dbiterr_UNCONNECTED),
        .axi_w_injectdbiterr(1'b0),
        .axi_w_injectsbiterr(1'b0),
        .axi_w_overflow(NLW_U0_axi_w_overflow_UNCONNECTED),
        .axi_w_prog_empty(NLW_U0_axi_w_prog_empty_UNCONNECTED),
        .axi_w_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_prog_full(NLW_U0_axi_w_prog_full_UNCONNECTED),
        .axi_w_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_rd_data_count(NLW_U0_axi_w_rd_data_count_UNCONNECTED[10:0]),
        .axi_w_sbiterr(NLW_U0_axi_w_sbiterr_UNCONNECTED),
        .axi_w_underflow(NLW_U0_axi_w_underflow_UNCONNECTED),
        .axi_w_wr_data_count(NLW_U0_axi_w_wr_data_count_UNCONNECTED[10:0]),
        .axis_data_count(NLW_U0_axis_data_count_UNCONNECTED[10:0]),
        .axis_dbiterr(NLW_U0_axis_dbiterr_UNCONNECTED),
        .axis_injectdbiterr(1'b0),
        .axis_injectsbiterr(1'b0),
        .axis_overflow(NLW_U0_axis_overflow_UNCONNECTED),
        .axis_prog_empty(NLW_U0_axis_prog_empty_UNCONNECTED),
        .axis_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_prog_full(NLW_U0_axis_prog_full_UNCONNECTED),
        .axis_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_rd_data_count(NLW_U0_axis_rd_data_count_UNCONNECTED[10:0]),
        .axis_sbiterr(NLW_U0_axis_sbiterr_UNCONNECTED),
        .axis_underflow(NLW_U0_axis_underflow_UNCONNECTED),
        .axis_wr_data_count(NLW_U0_axis_wr_data_count_UNCONNECTED[10:0]),
        .backup(1'b0),
        .backup_marker(1'b0),
        .clk(1'b0),
        .data_count(NLW_U0_data_count_UNCONNECTED[9:0]),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .int_clk(1'b0),
        .m_aclk(1'b0),
        .m_aclk_en(1'b0),
        .m_axi_araddr(NLW_U0_m_axi_araddr_UNCONNECTED[31:0]),
        .m_axi_arburst(NLW_U0_m_axi_arburst_UNCONNECTED[1:0]),
        .m_axi_arcache(NLW_U0_m_axi_arcache_UNCONNECTED[3:0]),
        .m_axi_arid(NLW_U0_m_axi_arid_UNCONNECTED[0]),
        .m_axi_arlen(NLW_U0_m_axi_arlen_UNCONNECTED[7:0]),
        .m_axi_arlock(NLW_U0_m_axi_arlock_UNCONNECTED[0]),
        .m_axi_arprot(NLW_U0_m_axi_arprot_UNCONNECTED[2:0]),
        .m_axi_arqos(NLW_U0_m_axi_arqos_UNCONNECTED[3:0]),
        .m_axi_arready(1'b0),
        .m_axi_arregion(NLW_U0_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arsize(NLW_U0_m_axi_arsize_UNCONNECTED[2:0]),
        .m_axi_aruser(NLW_U0_m_axi_aruser_UNCONNECTED[0]),
        .m_axi_arvalid(NLW_U0_m_axi_arvalid_UNCONNECTED),
        .m_axi_awaddr(NLW_U0_m_axi_awaddr_UNCONNECTED[31:0]),
        .m_axi_awburst(NLW_U0_m_axi_awburst_UNCONNECTED[1:0]),
        .m_axi_awcache(NLW_U0_m_axi_awcache_UNCONNECTED[3:0]),
        .m_axi_awid(NLW_U0_m_axi_awid_UNCONNECTED[0]),
        .m_axi_awlen(NLW_U0_m_axi_awlen_UNCONNECTED[7:0]),
        .m_axi_awlock(NLW_U0_m_axi_awlock_UNCONNECTED[0]),
        .m_axi_awprot(NLW_U0_m_axi_awprot_UNCONNECTED[2:0]),
        .m_axi_awqos(NLW_U0_m_axi_awqos_UNCONNECTED[3:0]),
        .m_axi_awready(1'b0),
        .m_axi_awregion(NLW_U0_m_axi_awregion_UNCONNECTED[3:0]),
        .m_axi_awsize(NLW_U0_m_axi_awsize_UNCONNECTED[2:0]),
        .m_axi_awuser(NLW_U0_m_axi_awuser_UNCONNECTED[0]),
        .m_axi_awvalid(NLW_U0_m_axi_awvalid_UNCONNECTED),
        .m_axi_bid(1'b0),
        .m_axi_bready(NLW_U0_m_axi_bready_UNCONNECTED),
        .m_axi_bresp({1'b0,1'b0}),
        .m_axi_buser(1'b0),
        .m_axi_bvalid(1'b0),
        .m_axi_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rid(1'b0),
        .m_axi_rlast(1'b0),
        .m_axi_rready(NLW_U0_m_axi_rready_UNCONNECTED),
        .m_axi_rresp({1'b0,1'b0}),
        .m_axi_ruser(1'b0),
        .m_axi_rvalid(1'b0),
        .m_axi_wdata(NLW_U0_m_axi_wdata_UNCONNECTED[63:0]),
        .m_axi_wid(NLW_U0_m_axi_wid_UNCONNECTED[0]),
        .m_axi_wlast(NLW_U0_m_axi_wlast_UNCONNECTED),
        .m_axi_wready(1'b0),
        .m_axi_wstrb(NLW_U0_m_axi_wstrb_UNCONNECTED[7:0]),
        .m_axi_wuser(NLW_U0_m_axi_wuser_UNCONNECTED[0]),
        .m_axi_wvalid(NLW_U0_m_axi_wvalid_UNCONNECTED),
        .m_axis_tdata(NLW_U0_m_axis_tdata_UNCONNECTED[7:0]),
        .m_axis_tdest(NLW_U0_m_axis_tdest_UNCONNECTED[0]),
        .m_axis_tid(NLW_U0_m_axis_tid_UNCONNECTED[0]),
        .m_axis_tkeep(NLW_U0_m_axis_tkeep_UNCONNECTED[0]),
        .m_axis_tlast(NLW_U0_m_axis_tlast_UNCONNECTED),
        .m_axis_tready(1'b0),
        .m_axis_tstrb(NLW_U0_m_axis_tstrb_UNCONNECTED[0]),
        .m_axis_tuser(NLW_U0_m_axis_tuser_UNCONNECTED[3:0]),
        .m_axis_tvalid(NLW_U0_m_axis_tvalid_UNCONNECTED),
        .overflow(NLW_U0_overflow_UNCONNECTED),
        .prog_empty(NLW_U0_prog_empty_UNCONNECTED),
        .prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full(NLW_U0_prog_full_UNCONNECTED),
        .prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rd_clk(rd_clk),
        .rd_data_count(rd_data_count),
        .rd_en(rd_en),
        .rd_rst(1'b0),
        .rd_rst_busy(NLW_U0_rd_rst_busy_UNCONNECTED),
        .rst(1'b0),
        .s_aclk(1'b0),
        .s_aclk_en(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arid(1'b0),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlock(1'b0),
        .s_axi_arprot({1'b0,1'b0,1'b0}),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_aruser(1'b0),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awid(1'b0),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlock(1'b0),
        .s_axi_awprot({1'b0,1'b0,1'b0}),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awuser(1'b0),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_buser(NLW_U0_s_axi_buser_UNCONNECTED[0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[63:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_ruser(NLW_U0_s_axi_ruser_UNCONNECTED[0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wid(1'b0),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wuser(1'b0),
        .s_axi_wvalid(1'b0),
        .s_axis_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tdest(1'b0),
        .s_axis_tid(1'b0),
        .s_axis_tkeep(1'b0),
        .s_axis_tlast(1'b0),
        .s_axis_tready(NLW_U0_s_axis_tready_UNCONNECTED),
        .s_axis_tstrb(1'b0),
        .s_axis_tuser({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .sleep(1'b0),
        .srst(1'b0),
        .underflow(NLW_U0_underflow_UNCONNECTED),
        .valid(NLW_U0_valid_UNCONNECTED),
        .wr_ack(NLW_U0_wr_ack_UNCONNECTED),
        .wr_clk(wr_clk),
        .wr_data_count(NLW_U0_wr_data_count_UNCONNECTED[9:0]),
        .wr_en(wr_en),
        .wr_rst(1'b0),
        .wr_rst_busy(NLW_U0_wr_rst_busy_UNCONNECTED));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "1" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "10" *) (* XPM_MODULE = "TRUE" *) 
(* xpm_cdc = "GRAY" *) 
module buf_fifo_xpm_cdc_gray
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [9:0]src_in_bin;
  input dest_clk;
  output [9:0]dest_out_bin;

  wire [9:0]async_path;
  wire [8:0]binval;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [9:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [9:0]\dest_graysync_ff[1] ;
  wire [9:0]dest_out_bin;
  wire [8:0]gray_enc;
  wire src_clk;
  wire [9:0]src_in_bin;

  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[4]),
        .Q(\dest_graysync_ff[0] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[5]),
        .Q(\dest_graysync_ff[0] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[6]),
        .Q(\dest_graysync_ff[0] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[7]),
        .Q(\dest_graysync_ff[0] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[8]),
        .Q(\dest_graysync_ff[0] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[9]),
        .Q(\dest_graysync_ff[0] [9]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [4]),
        .Q(\dest_graysync_ff[1] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [5]),
        .Q(\dest_graysync_ff[1] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [6]),
        .Q(\dest_graysync_ff[1] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [7]),
        .Q(\dest_graysync_ff[1] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [8]),
        .Q(\dest_graysync_ff[1] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [9]),
        .Q(\dest_graysync_ff[1] [9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(\dest_graysync_ff[1] [2]),
        .I2(binval[4]),
        .I3(\dest_graysync_ff[1] [3]),
        .I4(\dest_graysync_ff[1] [1]),
        .O(binval[0]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(\dest_graysync_ff[1] [3]),
        .I2(binval[4]),
        .I3(\dest_graysync_ff[1] [2]),
        .O(binval[1]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(binval[4]),
        .I2(\dest_graysync_ff[1] [3]),
        .O(binval[2]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[3]_i_1 
       (.I0(\dest_graysync_ff[1] [3]),
        .I1(binval[4]),
        .O(binval[3]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin_ff[4]_i_1 
       (.I0(\dest_graysync_ff[1] [4]),
        .I1(\dest_graysync_ff[1] [6]),
        .I2(\dest_graysync_ff[1] [8]),
        .I3(\dest_graysync_ff[1] [9]),
        .I4(\dest_graysync_ff[1] [7]),
        .I5(\dest_graysync_ff[1] [5]),
        .O(binval[4]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[5]_i_1 
       (.I0(\dest_graysync_ff[1] [5]),
        .I1(\dest_graysync_ff[1] [7]),
        .I2(\dest_graysync_ff[1] [9]),
        .I3(\dest_graysync_ff[1] [8]),
        .I4(\dest_graysync_ff[1] [6]),
        .O(binval[5]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[6]_i_1 
       (.I0(\dest_graysync_ff[1] [6]),
        .I1(\dest_graysync_ff[1] [8]),
        .I2(\dest_graysync_ff[1] [9]),
        .I3(\dest_graysync_ff[1] [7]),
        .O(binval[6]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[7]_i_1 
       (.I0(\dest_graysync_ff[1] [7]),
        .I1(\dest_graysync_ff[1] [9]),
        .I2(\dest_graysync_ff[1] [8]),
        .O(binval[7]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[8]_i_1 
       (.I0(\dest_graysync_ff[1] [8]),
        .I1(\dest_graysync_ff[1] [9]),
        .O(binval[8]));
  FDRE \dest_out_bin_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[0]),
        .Q(dest_out_bin[0]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[1]),
        .Q(dest_out_bin[1]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[2]),
        .Q(dest_out_bin[2]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[3]),
        .Q(dest_out_bin[3]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[4]),
        .Q(dest_out_bin[4]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[5]),
        .Q(dest_out_bin[5]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[6]),
        .Q(dest_out_bin[6]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[7]),
        .Q(dest_out_bin[7]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[8]),
        .Q(dest_out_bin[8]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [9]),
        .Q(dest_out_bin[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[3]_i_1 
       (.I0(src_in_bin[4]),
        .I1(src_in_bin[3]),
        .O(gray_enc[3]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[4]_i_1 
       (.I0(src_in_bin[5]),
        .I1(src_in_bin[4]),
        .O(gray_enc[4]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[5]_i_1 
       (.I0(src_in_bin[6]),
        .I1(src_in_bin[5]),
        .O(gray_enc[5]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[6]_i_1 
       (.I0(src_in_bin[7]),
        .I1(src_in_bin[6]),
        .O(gray_enc[6]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[7]_i_1 
       (.I0(src_in_bin[8]),
        .I1(src_in_bin[7]),
        .O(gray_enc[7]));
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[8]_i_1 
       (.I0(src_in_bin[9]),
        .I1(src_in_bin[8]),
        .O(gray_enc[8]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[3]),
        .Q(async_path[3]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[4] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[4]),
        .Q(async_path[4]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[5] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[5]),
        .Q(async_path[5]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[6] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[6]),
        .Q(async_path[6]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[7] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[7]),
        .Q(async_path[7]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[8] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[8]),
        .Q(async_path[8]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[9] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[9]),
        .Q(async_path[9]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "1" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "10" *) (* XPM_MODULE = "TRUE" *) 
(* xpm_cdc = "GRAY" *) 
module buf_fifo_xpm_cdc_gray__2
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [9:0]src_in_bin;
  input dest_clk;
  output [9:0]dest_out_bin;

  wire [9:0]async_path;
  wire [8:0]binval;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [9:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [9:0]\dest_graysync_ff[1] ;
  wire [9:0]dest_out_bin;
  wire [8:0]gray_enc;
  wire src_clk;
  wire [9:0]src_in_bin;

  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[4]),
        .Q(\dest_graysync_ff[0] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[5]),
        .Q(\dest_graysync_ff[0] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[6]),
        .Q(\dest_graysync_ff[0] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[7]),
        .Q(\dest_graysync_ff[0] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[8]),
        .Q(\dest_graysync_ff[0] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[9]),
        .Q(\dest_graysync_ff[0] [9]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [4]),
        .Q(\dest_graysync_ff[1] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [5]),
        .Q(\dest_graysync_ff[1] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [6]),
        .Q(\dest_graysync_ff[1] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [7]),
        .Q(\dest_graysync_ff[1] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [8]),
        .Q(\dest_graysync_ff[1] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [9]),
        .Q(\dest_graysync_ff[1] [9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(\dest_graysync_ff[1] [2]),
        .I2(binval[4]),
        .I3(\dest_graysync_ff[1] [3]),
        .I4(\dest_graysync_ff[1] [1]),
        .O(binval[0]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(\dest_graysync_ff[1] [3]),
        .I2(binval[4]),
        .I3(\dest_graysync_ff[1] [2]),
        .O(binval[1]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(binval[4]),
        .I2(\dest_graysync_ff[1] [3]),
        .O(binval[2]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[3]_i_1 
       (.I0(\dest_graysync_ff[1] [3]),
        .I1(binval[4]),
        .O(binval[3]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin_ff[4]_i_1 
       (.I0(\dest_graysync_ff[1] [4]),
        .I1(\dest_graysync_ff[1] [6]),
        .I2(\dest_graysync_ff[1] [8]),
        .I3(\dest_graysync_ff[1] [9]),
        .I4(\dest_graysync_ff[1] [7]),
        .I5(\dest_graysync_ff[1] [5]),
        .O(binval[4]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[5]_i_1 
       (.I0(\dest_graysync_ff[1] [5]),
        .I1(\dest_graysync_ff[1] [7]),
        .I2(\dest_graysync_ff[1] [9]),
        .I3(\dest_graysync_ff[1] [8]),
        .I4(\dest_graysync_ff[1] [6]),
        .O(binval[5]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[6]_i_1 
       (.I0(\dest_graysync_ff[1] [6]),
        .I1(\dest_graysync_ff[1] [8]),
        .I2(\dest_graysync_ff[1] [9]),
        .I3(\dest_graysync_ff[1] [7]),
        .O(binval[6]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[7]_i_1 
       (.I0(\dest_graysync_ff[1] [7]),
        .I1(\dest_graysync_ff[1] [9]),
        .I2(\dest_graysync_ff[1] [8]),
        .O(binval[7]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[8]_i_1 
       (.I0(\dest_graysync_ff[1] [8]),
        .I1(\dest_graysync_ff[1] [9]),
        .O(binval[8]));
  FDRE \dest_out_bin_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[0]),
        .Q(dest_out_bin[0]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[1]),
        .Q(dest_out_bin[1]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[2]),
        .Q(dest_out_bin[2]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[3]),
        .Q(dest_out_bin[3]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[4]),
        .Q(dest_out_bin[4]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[5]),
        .Q(dest_out_bin[5]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[6]),
        .Q(dest_out_bin[6]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[7]),
        .Q(dest_out_bin[7]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[8]),
        .Q(dest_out_bin[8]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [9]),
        .Q(dest_out_bin[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[3]_i_1 
       (.I0(src_in_bin[4]),
        .I1(src_in_bin[3]),
        .O(gray_enc[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[4]_i_1 
       (.I0(src_in_bin[5]),
        .I1(src_in_bin[4]),
        .O(gray_enc[4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[5]_i_1 
       (.I0(src_in_bin[6]),
        .I1(src_in_bin[5]),
        .O(gray_enc[5]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[6]_i_1 
       (.I0(src_in_bin[7]),
        .I1(src_in_bin[6]),
        .O(gray_enc[6]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[7]_i_1 
       (.I0(src_in_bin[8]),
        .I1(src_in_bin[7]),
        .O(gray_enc[7]));
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[8]_i_1 
       (.I0(src_in_bin[9]),
        .I1(src_in_bin[8]),
        .O(gray_enc[8]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[3]),
        .Q(async_path[3]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[4] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[4]),
        .Q(async_path[4]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[5] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[5]),
        .Q(async_path[5]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[6] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[6]),
        .Q(async_path[6]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[7] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[7]),
        .Q(async_path[7]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[8] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[8]),
        .Q(async_path[8]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[9] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[9]),
        .Q(async_path[9]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "clk_x_pntrs" *) 
module buf_fifo_clk_x_pntrs
   (S,
    WR_PNTR_RD,
    \dest_out_bin_ff_reg[7] ,
    \dest_out_bin_ff_reg[9] ,
    v1_reg,
    v1_reg_0,
    v1_reg_1,
    Q,
    \gmux.gm[4].gms.ms ,
    \gmux.gm[4].gms.ms_0 ,
    wr_clk,
    \src_gray_ff_reg[9] ,
    rd_clk);
  output [3:0]S;
  output [9:0]WR_PNTR_RD;
  output [3:0]\dest_out_bin_ff_reg[7] ;
  output [1:0]\dest_out_bin_ff_reg[9] ;
  output [4:0]v1_reg;
  output [4:0]v1_reg_0;
  output [4:0]v1_reg_1;
  input [9:0]Q;
  input [9:0]\gmux.gm[4].gms.ms ;
  input [9:0]\gmux.gm[4].gms.ms_0 ;
  input wr_clk;
  input [9:0]\src_gray_ff_reg[9] ;
  input rd_clk;

  wire [9:0]Q;
  wire [3:0]S;
  wire [9:0]WR_PNTR_RD;
  wire [3:0]\dest_out_bin_ff_reg[7] ;
  wire [1:0]\dest_out_bin_ff_reg[9] ;
  wire [9:0]\gmux.gm[4].gms.ms ;
  wire [9:0]\gmux.gm[4].gms.ms_0 ;
  wire rd_clk;
  wire [9:0]rd_pntr_wr;
  wire [9:0]\src_gray_ff_reg[9] ;
  wire [4:0]v1_reg;
  wire [4:0]v1_reg_0;
  wire [4:0]v1_reg_1;
  wire wr_clk;

  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[0].gm1.m1_i_1 
       (.I0(WR_PNTR_RD[0]),
        .I1(Q[0]),
        .I2(WR_PNTR_RD[1]),
        .I3(Q[1]),
        .O(v1_reg[0]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[0].gm1.m1_i_1__1 
       (.I0(rd_pntr_wr[0]),
        .I1(\gmux.gm[4].gms.ms [0]),
        .I2(rd_pntr_wr[1]),
        .I3(\gmux.gm[4].gms.ms [1]),
        .O(v1_reg_0[0]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[0].gm1.m1_i_1__2 
       (.I0(rd_pntr_wr[0]),
        .I1(\gmux.gm[4].gms.ms_0 [0]),
        .I2(rd_pntr_wr[1]),
        .I3(\gmux.gm[4].gms.ms_0 [1]),
        .O(v1_reg_1[0]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[1].gms.ms_i_1 
       (.I0(WR_PNTR_RD[2]),
        .I1(Q[2]),
        .I2(WR_PNTR_RD[3]),
        .I3(Q[3]),
        .O(v1_reg[1]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[1].gms.ms_i_1__1 
       (.I0(rd_pntr_wr[2]),
        .I1(\gmux.gm[4].gms.ms [2]),
        .I2(rd_pntr_wr[3]),
        .I3(\gmux.gm[4].gms.ms [3]),
        .O(v1_reg_0[1]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[1].gms.ms_i_1__2 
       (.I0(rd_pntr_wr[2]),
        .I1(\gmux.gm[4].gms.ms_0 [2]),
        .I2(rd_pntr_wr[3]),
        .I3(\gmux.gm[4].gms.ms_0 [3]),
        .O(v1_reg_1[1]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[2].gms.ms_i_1 
       (.I0(WR_PNTR_RD[4]),
        .I1(Q[4]),
        .I2(WR_PNTR_RD[5]),
        .I3(Q[5]),
        .O(v1_reg[2]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[2].gms.ms_i_1__1 
       (.I0(rd_pntr_wr[4]),
        .I1(\gmux.gm[4].gms.ms [4]),
        .I2(rd_pntr_wr[5]),
        .I3(\gmux.gm[4].gms.ms [5]),
        .O(v1_reg_0[2]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[2].gms.ms_i_1__2 
       (.I0(rd_pntr_wr[4]),
        .I1(\gmux.gm[4].gms.ms_0 [4]),
        .I2(rd_pntr_wr[5]),
        .I3(\gmux.gm[4].gms.ms_0 [5]),
        .O(v1_reg_1[2]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[3].gms.ms_i_1 
       (.I0(WR_PNTR_RD[6]),
        .I1(Q[6]),
        .I2(WR_PNTR_RD[7]),
        .I3(Q[7]),
        .O(v1_reg[3]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[3].gms.ms_i_1__1 
       (.I0(rd_pntr_wr[6]),
        .I1(\gmux.gm[4].gms.ms [6]),
        .I2(rd_pntr_wr[7]),
        .I3(\gmux.gm[4].gms.ms [7]),
        .O(v1_reg_0[3]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[3].gms.ms_i_1__2 
       (.I0(rd_pntr_wr[6]),
        .I1(\gmux.gm[4].gms.ms_0 [6]),
        .I2(rd_pntr_wr[7]),
        .I3(\gmux.gm[4].gms.ms_0 [7]),
        .O(v1_reg_1[3]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[4].gms.ms_i_1 
       (.I0(WR_PNTR_RD[8]),
        .I1(Q[8]),
        .I2(WR_PNTR_RD[9]),
        .I3(Q[9]),
        .O(v1_reg[4]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[4].gms.ms_i_1__1 
       (.I0(rd_pntr_wr[8]),
        .I1(\gmux.gm[4].gms.ms [8]),
        .I2(rd_pntr_wr[9]),
        .I3(\gmux.gm[4].gms.ms [9]),
        .O(v1_reg_0[4]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[4].gms.ms_i_1__2 
       (.I0(rd_pntr_wr[8]),
        .I1(\gmux.gm[4].gms.ms_0 [8]),
        .I2(rd_pntr_wr[9]),
        .I3(\gmux.gm[4].gms.ms_0 [9]),
        .O(v1_reg_1[4]));
  LUT2 #(
    .INIT(4'h9)) 
    minusOp_carry__0_i_1
       (.I0(WR_PNTR_RD[7]),
        .I1(Q[7]),
        .O(\dest_out_bin_ff_reg[7] [3]));
  LUT2 #(
    .INIT(4'h9)) 
    minusOp_carry__0_i_2
       (.I0(WR_PNTR_RD[6]),
        .I1(Q[6]),
        .O(\dest_out_bin_ff_reg[7] [2]));
  LUT2 #(
    .INIT(4'h9)) 
    minusOp_carry__0_i_3
       (.I0(WR_PNTR_RD[5]),
        .I1(Q[5]),
        .O(\dest_out_bin_ff_reg[7] [1]));
  LUT2 #(
    .INIT(4'h9)) 
    minusOp_carry__0_i_4
       (.I0(WR_PNTR_RD[4]),
        .I1(Q[4]),
        .O(\dest_out_bin_ff_reg[7] [0]));
  LUT2 #(
    .INIT(4'h9)) 
    minusOp_carry__1_i_1
       (.I0(WR_PNTR_RD[9]),
        .I1(Q[9]),
        .O(\dest_out_bin_ff_reg[9] [1]));
  LUT2 #(
    .INIT(4'h9)) 
    minusOp_carry__1_i_2
       (.I0(WR_PNTR_RD[8]),
        .I1(Q[8]),
        .O(\dest_out_bin_ff_reg[9] [0]));
  LUT2 #(
    .INIT(4'h9)) 
    minusOp_carry_i_1
       (.I0(WR_PNTR_RD[3]),
        .I1(Q[3]),
        .O(S[3]));
  LUT2 #(
    .INIT(4'h9)) 
    minusOp_carry_i_2
       (.I0(WR_PNTR_RD[2]),
        .I1(Q[2]),
        .O(S[2]));
  LUT2 #(
    .INIT(4'h9)) 
    minusOp_carry_i_3
       (.I0(WR_PNTR_RD[1]),
        .I1(Q[1]),
        .O(S[1]));
  LUT2 #(
    .INIT(4'h9)) 
    minusOp_carry_i_4
       (.I0(WR_PNTR_RD[0]),
        .I1(Q[0]),
        .O(S[0]));
  (* DEST_SYNC_FF = "2" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* REG_OUTPUT = "1" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
  (* VERSION = "0" *) 
  (* WIDTH = "10" *) 
  (* XPM_CDC = "GRAY" *) 
  (* XPM_MODULE = "TRUE" *) 
  buf_fifo_xpm_cdc_gray rd_pntr_cdc_inst
       (.dest_clk(wr_clk),
        .dest_out_bin(rd_pntr_wr),
        .src_clk(rd_clk),
        .src_in_bin(Q));
  (* DEST_SYNC_FF = "2" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* REG_OUTPUT = "1" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
  (* VERSION = "0" *) 
  (* WIDTH = "10" *) 
  (* XPM_CDC = "GRAY" *) 
  (* XPM_MODULE = "TRUE" *) 
  buf_fifo_xpm_cdc_gray__2 wr_pntr_cdc_inst
       (.dest_clk(rd_clk),
        .dest_out_bin(WR_PNTR_RD),
        .src_clk(wr_clk),
        .src_in_bin(\src_gray_ff_reg[9] ));
endmodule

(* ORIG_REF_NAME = "compare" *) 
module buf_fifo_compare
   (wr_en_0,
    v1_reg,
    wr_en,
    out,
    comp2);
  output wr_en_0;
  input [4:0]v1_reg;
  input wr_en;
  input out;
  input comp2;

  wire carrynet_0;
  wire carrynet_1;
  wire carrynet_2;
  wire carrynet_3;
  wire comp1;
  wire comp2;
  wire out;
  wire [4:0]v1_reg;
  wire wr_en;
  wire wr_en_0;
  wire [3:0]\NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED ;
  wire [3:1]\NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED ;
  wire [3:1]\NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED ;
  wire [3:0]\NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED ;
  wire [3:1]\NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED ;

  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \gmux.gm[0].gm1.m1_CARRY4 
       (.CI(1'b0),
        .CO({carrynet_3,carrynet_2,carrynet_1,carrynet_0}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED [3:0]),
        .S(v1_reg[3:0]));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \gmux.gm[4].gms.ms_CARRY4 
       (.CI(carrynet_3),
        .CO({\NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED [3:1],comp1}),
        .CYINIT(1'b0),
        .DI({\NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED [3:1],1'b0}),
        .O(\NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED [3:0]),
        .S({\NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED [3:1],v1_reg[4]}));
  LUT4 #(
    .INIT(16'hAEAA)) 
    ram_full_i_i_1
       (.I0(comp1),
        .I1(wr_en),
        .I2(out),
        .I3(comp2),
        .O(wr_en_0));
endmodule

(* ORIG_REF_NAME = "compare" *) 
module buf_fifo_compare_0
   (comp2,
    v1_reg_0);
  output comp2;
  input [4:0]v1_reg_0;

  wire carrynet_0;
  wire carrynet_1;
  wire carrynet_2;
  wire carrynet_3;
  wire comp2;
  wire [4:0]v1_reg_0;
  wire [3:0]\NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED ;
  wire [3:1]\NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED ;
  wire [3:1]\NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED ;
  wire [3:0]\NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED ;
  wire [3:1]\NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED ;

  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \gmux.gm[0].gm1.m1_CARRY4 
       (.CI(1'b0),
        .CO({carrynet_3,carrynet_2,carrynet_1,carrynet_0}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED [3:0]),
        .S(v1_reg_0[3:0]));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \gmux.gm[4].gms.ms_CARRY4 
       (.CI(carrynet_3),
        .CO({\NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED [3:1],comp2}),
        .CYINIT(1'b0),
        .DI({\NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED [3:1],1'b0}),
        .O(\NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED [3:0]),
        .S({\NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED [3:1],v1_reg_0[4]}));
endmodule

(* ORIG_REF_NAME = "compare" *) 
module buf_fifo_compare_1
   (rd_en_0,
    v1_reg,
    rd_en,
    out,
    comp1);
  output rd_en_0;
  input [4:0]v1_reg;
  input rd_en;
  input out;
  input comp1;

  wire carrynet_0;
  wire carrynet_1;
  wire carrynet_2;
  wire carrynet_3;
  wire comp0;
  wire comp1;
  wire out;
  wire rd_en;
  wire rd_en_0;
  wire [4:0]v1_reg;
  wire [3:0]\NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED ;
  wire [3:1]\NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED ;
  wire [3:1]\NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED ;
  wire [3:0]\NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED ;
  wire [3:1]\NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED ;

  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \gmux.gm[0].gm1.m1_CARRY4 
       (.CI(1'b0),
        .CO({carrynet_3,carrynet_2,carrynet_1,carrynet_0}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED [3:0]),
        .S(v1_reg[3:0]));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \gmux.gm[4].gms.ms_CARRY4 
       (.CI(carrynet_3),
        .CO({\NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED [3:1],comp0}),
        .CYINIT(1'b0),
        .DI({\NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED [3:1],1'b0}),
        .O(\NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED [3:0]),
        .S({\NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED [3:1],v1_reg[4]}));
  LUT4 #(
    .INIT(16'hAEAA)) 
    ram_empty_i_i_1
       (.I0(comp0),
        .I1(rd_en),
        .I2(out),
        .I3(comp1),
        .O(rd_en_0));
endmodule

(* ORIG_REF_NAME = "compare" *) 
module buf_fifo_compare_2
   (comp1,
    v1_reg_0);
  output comp1;
  input [4:0]v1_reg_0;

  wire carrynet_0;
  wire carrynet_1;
  wire carrynet_2;
  wire carrynet_3;
  wire comp1;
  wire [4:0]v1_reg_0;
  wire [3:0]\NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED ;
  wire [3:1]\NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED ;
  wire [3:1]\NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED ;
  wire [3:0]\NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED ;
  wire [3:1]\NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED ;

  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \gmux.gm[0].gm1.m1_CARRY4 
       (.CI(1'b0),
        .CO({carrynet_3,carrynet_2,carrynet_1,carrynet_0}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED [3:0]),
        .S(v1_reg_0[3:0]));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \gmux.gm[4].gms.ms_CARRY4 
       (.CI(carrynet_3),
        .CO({\NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED [3:1],comp1}),
        .CYINIT(1'b0),
        .DI({\NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED [3:1],1'b0}),
        .O(\NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED [3:0]),
        .S({\NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED [3:1],v1_reg_0[4]}));
endmodule

(* ORIG_REF_NAME = "dmem" *) 
module buf_fifo_dmem
   (dout,
    wr_clk,
    din,
    \gpr1.dout_i[2]_i_4_0 ,
    Q,
    \gpr1.dout_i[7]_i_8_0 ,
    \gpr1.dout_i[2]_i_4_1 ,
    \gpr1.dout_i[2]_i_4_2 ,
    \gpr1.dout_i[2]_i_4_3 ,
    \gpr1.dout_i[2]_i_5_0 ,
    \gpr1.dout_i[2]_i_5_1 ,
    \gpr1.dout_i[2]_i_5_2 ,
    \gpr1.dout_i[2]_i_5_3 ,
    \gpr1.dout_i[2]_i_6_0 ,
    \gpr1.dout_i[2]_i_6_1 ,
    \gpr1.dout_i[2]_i_6_2 ,
    \gpr1.dout_i[2]_i_6_3 ,
    \gpr1.dout_i[2]_i_7_0 ,
    \gpr1.dout_i[2]_i_7_1 ,
    \gpr1.dout_i[2]_i_7_2 ,
    \gpr1.dout_i[2]_i_7_3 ,
    E,
    rd_clk);
  output [7:0]dout;
  input wr_clk;
  input [7:0]din;
  input \gpr1.dout_i[2]_i_4_0 ;
  input [9:0]Q;
  input [5:0]\gpr1.dout_i[7]_i_8_0 ;
  input \gpr1.dout_i[2]_i_4_1 ;
  input \gpr1.dout_i[2]_i_4_2 ;
  input \gpr1.dout_i[2]_i_4_3 ;
  input \gpr1.dout_i[2]_i_5_0 ;
  input \gpr1.dout_i[2]_i_5_1 ;
  input \gpr1.dout_i[2]_i_5_2 ;
  input \gpr1.dout_i[2]_i_5_3 ;
  input \gpr1.dout_i[2]_i_6_0 ;
  input \gpr1.dout_i[2]_i_6_1 ;
  input \gpr1.dout_i[2]_i_6_2 ;
  input \gpr1.dout_i[2]_i_6_3 ;
  input \gpr1.dout_i[2]_i_7_0 ;
  input \gpr1.dout_i[2]_i_7_1 ;
  input \gpr1.dout_i[2]_i_7_2 ;
  input \gpr1.dout_i[2]_i_7_3 ;
  input [0:0]E;
  input rd_clk;

  wire [0:0]E;
  wire [9:0]Q;
  wire RAM_reg_0_63_0_2_n_0;
  wire RAM_reg_0_63_0_2_n_1;
  wire RAM_reg_0_63_0_2_n_2;
  wire RAM_reg_0_63_3_5_n_0;
  wire RAM_reg_0_63_3_5_n_1;
  wire RAM_reg_0_63_3_5_n_2;
  wire RAM_reg_0_63_6_6_n_0;
  wire RAM_reg_0_63_7_7_n_0;
  wire RAM_reg_128_191_0_2_n_0;
  wire RAM_reg_128_191_0_2_n_1;
  wire RAM_reg_128_191_0_2_n_2;
  wire RAM_reg_128_191_3_5_n_0;
  wire RAM_reg_128_191_3_5_n_1;
  wire RAM_reg_128_191_3_5_n_2;
  wire RAM_reg_128_191_6_6_n_0;
  wire RAM_reg_128_191_7_7_n_0;
  wire RAM_reg_192_255_0_2_n_0;
  wire RAM_reg_192_255_0_2_n_1;
  wire RAM_reg_192_255_0_2_n_2;
  wire RAM_reg_192_255_3_5_n_0;
  wire RAM_reg_192_255_3_5_n_1;
  wire RAM_reg_192_255_3_5_n_2;
  wire RAM_reg_192_255_6_6_n_0;
  wire RAM_reg_192_255_7_7_n_0;
  wire RAM_reg_256_319_0_2_n_0;
  wire RAM_reg_256_319_0_2_n_1;
  wire RAM_reg_256_319_0_2_n_2;
  wire RAM_reg_256_319_3_5_n_0;
  wire RAM_reg_256_319_3_5_n_1;
  wire RAM_reg_256_319_3_5_n_2;
  wire RAM_reg_256_319_6_6_n_0;
  wire RAM_reg_256_319_7_7_n_0;
  wire RAM_reg_320_383_0_2_n_0;
  wire RAM_reg_320_383_0_2_n_1;
  wire RAM_reg_320_383_0_2_n_2;
  wire RAM_reg_320_383_3_5_n_0;
  wire RAM_reg_320_383_3_5_n_1;
  wire RAM_reg_320_383_3_5_n_2;
  wire RAM_reg_320_383_6_6_n_0;
  wire RAM_reg_320_383_7_7_n_0;
  wire RAM_reg_384_447_0_2_n_0;
  wire RAM_reg_384_447_0_2_n_1;
  wire RAM_reg_384_447_0_2_n_2;
  wire RAM_reg_384_447_3_5_n_0;
  wire RAM_reg_384_447_3_5_n_1;
  wire RAM_reg_384_447_3_5_n_2;
  wire RAM_reg_384_447_6_6_n_0;
  wire RAM_reg_384_447_7_7_n_0;
  wire RAM_reg_448_511_0_2_n_0;
  wire RAM_reg_448_511_0_2_n_1;
  wire RAM_reg_448_511_0_2_n_2;
  wire RAM_reg_448_511_3_5_n_0;
  wire RAM_reg_448_511_3_5_n_1;
  wire RAM_reg_448_511_3_5_n_2;
  wire RAM_reg_448_511_6_6_n_0;
  wire RAM_reg_448_511_7_7_n_0;
  wire RAM_reg_512_575_0_2_n_0;
  wire RAM_reg_512_575_0_2_n_1;
  wire RAM_reg_512_575_0_2_n_2;
  wire RAM_reg_512_575_3_5_n_0;
  wire RAM_reg_512_575_3_5_n_1;
  wire RAM_reg_512_575_3_5_n_2;
  wire RAM_reg_512_575_6_6_n_0;
  wire RAM_reg_512_575_7_7_n_0;
  wire RAM_reg_576_639_0_2_n_0;
  wire RAM_reg_576_639_0_2_n_1;
  wire RAM_reg_576_639_0_2_n_2;
  wire RAM_reg_576_639_3_5_n_0;
  wire RAM_reg_576_639_3_5_n_1;
  wire RAM_reg_576_639_3_5_n_2;
  wire RAM_reg_576_639_6_6_n_0;
  wire RAM_reg_576_639_7_7_n_0;
  wire RAM_reg_640_703_0_2_n_0;
  wire RAM_reg_640_703_0_2_n_1;
  wire RAM_reg_640_703_0_2_n_2;
  wire RAM_reg_640_703_3_5_n_0;
  wire RAM_reg_640_703_3_5_n_1;
  wire RAM_reg_640_703_3_5_n_2;
  wire RAM_reg_640_703_6_6_n_0;
  wire RAM_reg_640_703_7_7_n_0;
  wire RAM_reg_64_127_0_2_n_0;
  wire RAM_reg_64_127_0_2_n_1;
  wire RAM_reg_64_127_0_2_n_2;
  wire RAM_reg_64_127_3_5_n_0;
  wire RAM_reg_64_127_3_5_n_1;
  wire RAM_reg_64_127_3_5_n_2;
  wire RAM_reg_64_127_6_6_n_0;
  wire RAM_reg_64_127_7_7_n_0;
  wire RAM_reg_704_767_0_2_n_0;
  wire RAM_reg_704_767_0_2_n_1;
  wire RAM_reg_704_767_0_2_n_2;
  wire RAM_reg_704_767_3_5_n_0;
  wire RAM_reg_704_767_3_5_n_1;
  wire RAM_reg_704_767_3_5_n_2;
  wire RAM_reg_704_767_6_6_n_0;
  wire RAM_reg_704_767_7_7_n_0;
  wire RAM_reg_768_831_0_2_n_0;
  wire RAM_reg_768_831_0_2_n_1;
  wire RAM_reg_768_831_0_2_n_2;
  wire RAM_reg_768_831_3_5_n_0;
  wire RAM_reg_768_831_3_5_n_1;
  wire RAM_reg_768_831_3_5_n_2;
  wire RAM_reg_768_831_6_6_n_0;
  wire RAM_reg_768_831_7_7_n_0;
  wire RAM_reg_832_895_0_2_n_0;
  wire RAM_reg_832_895_0_2_n_1;
  wire RAM_reg_832_895_0_2_n_2;
  wire RAM_reg_832_895_3_5_n_0;
  wire RAM_reg_832_895_3_5_n_1;
  wire RAM_reg_832_895_3_5_n_2;
  wire RAM_reg_832_895_6_6_n_0;
  wire RAM_reg_832_895_7_7_n_0;
  wire RAM_reg_896_959_0_2_n_0;
  wire RAM_reg_896_959_0_2_n_1;
  wire RAM_reg_896_959_0_2_n_2;
  wire RAM_reg_896_959_3_5_n_0;
  wire RAM_reg_896_959_3_5_n_1;
  wire RAM_reg_896_959_3_5_n_2;
  wire RAM_reg_896_959_6_6_n_0;
  wire RAM_reg_896_959_7_7_n_0;
  wire RAM_reg_960_1023_0_2_n_0;
  wire RAM_reg_960_1023_0_2_n_1;
  wire RAM_reg_960_1023_0_2_n_2;
  wire RAM_reg_960_1023_3_5_n_0;
  wire RAM_reg_960_1023_3_5_n_1;
  wire RAM_reg_960_1023_3_5_n_2;
  wire RAM_reg_960_1023_6_6_n_0;
  wire RAM_reg_960_1023_7_7_n_0;
  wire [7:0]din;
  wire [7:0]dout;
  wire [7:0]dout_i0;
  wire \gpr1.dout_i[0]_i_4_n_0 ;
  wire \gpr1.dout_i[0]_i_5_n_0 ;
  wire \gpr1.dout_i[0]_i_6_n_0 ;
  wire \gpr1.dout_i[0]_i_7_n_0 ;
  wire \gpr1.dout_i[1]_i_4_n_0 ;
  wire \gpr1.dout_i[1]_i_5_n_0 ;
  wire \gpr1.dout_i[1]_i_6_n_0 ;
  wire \gpr1.dout_i[1]_i_7_n_0 ;
  wire \gpr1.dout_i[2]_i_4_0 ;
  wire \gpr1.dout_i[2]_i_4_1 ;
  wire \gpr1.dout_i[2]_i_4_2 ;
  wire \gpr1.dout_i[2]_i_4_3 ;
  wire \gpr1.dout_i[2]_i_4_n_0 ;
  wire \gpr1.dout_i[2]_i_5_0 ;
  wire \gpr1.dout_i[2]_i_5_1 ;
  wire \gpr1.dout_i[2]_i_5_2 ;
  wire \gpr1.dout_i[2]_i_5_3 ;
  wire \gpr1.dout_i[2]_i_5_n_0 ;
  wire \gpr1.dout_i[2]_i_6_0 ;
  wire \gpr1.dout_i[2]_i_6_1 ;
  wire \gpr1.dout_i[2]_i_6_2 ;
  wire \gpr1.dout_i[2]_i_6_3 ;
  wire \gpr1.dout_i[2]_i_6_n_0 ;
  wire \gpr1.dout_i[2]_i_7_0 ;
  wire \gpr1.dout_i[2]_i_7_1 ;
  wire \gpr1.dout_i[2]_i_7_2 ;
  wire \gpr1.dout_i[2]_i_7_3 ;
  wire \gpr1.dout_i[2]_i_7_n_0 ;
  wire \gpr1.dout_i[3]_i_4_n_0 ;
  wire \gpr1.dout_i[3]_i_5_n_0 ;
  wire \gpr1.dout_i[3]_i_6_n_0 ;
  wire \gpr1.dout_i[3]_i_7_n_0 ;
  wire \gpr1.dout_i[4]_i_4_n_0 ;
  wire \gpr1.dout_i[4]_i_5_n_0 ;
  wire \gpr1.dout_i[4]_i_6_n_0 ;
  wire \gpr1.dout_i[4]_i_7_n_0 ;
  wire \gpr1.dout_i[5]_i_4_n_0 ;
  wire \gpr1.dout_i[5]_i_5_n_0 ;
  wire \gpr1.dout_i[5]_i_6_n_0 ;
  wire \gpr1.dout_i[5]_i_7_n_0 ;
  wire \gpr1.dout_i[6]_i_4_n_0 ;
  wire \gpr1.dout_i[6]_i_5_n_0 ;
  wire \gpr1.dout_i[6]_i_6_n_0 ;
  wire \gpr1.dout_i[6]_i_7_n_0 ;
  wire \gpr1.dout_i[7]_i_5_n_0 ;
  wire \gpr1.dout_i[7]_i_6_n_0 ;
  wire \gpr1.dout_i[7]_i_7_n_0 ;
  wire [5:0]\gpr1.dout_i[7]_i_8_0 ;
  wire \gpr1.dout_i[7]_i_8_n_0 ;
  wire \gpr1.dout_i_reg[0]_i_2_n_0 ;
  wire \gpr1.dout_i_reg[0]_i_3_n_0 ;
  wire \gpr1.dout_i_reg[1]_i_2_n_0 ;
  wire \gpr1.dout_i_reg[1]_i_3_n_0 ;
  wire \gpr1.dout_i_reg[2]_i_2_n_0 ;
  wire \gpr1.dout_i_reg[2]_i_3_n_0 ;
  wire \gpr1.dout_i_reg[3]_i_2_n_0 ;
  wire \gpr1.dout_i_reg[3]_i_3_n_0 ;
  wire \gpr1.dout_i_reg[4]_i_2_n_0 ;
  wire \gpr1.dout_i_reg[4]_i_3_n_0 ;
  wire \gpr1.dout_i_reg[5]_i_2_n_0 ;
  wire \gpr1.dout_i_reg[5]_i_3_n_0 ;
  wire \gpr1.dout_i_reg[6]_i_2_n_0 ;
  wire \gpr1.dout_i_reg[6]_i_3_n_0 ;
  wire \gpr1.dout_i_reg[7]_i_3_n_0 ;
  wire \gpr1.dout_i_reg[7]_i_4_n_0 ;
  wire rd_clk;
  wire wr_clk;
  wire NLW_RAM_reg_0_63_0_2_DOD_UNCONNECTED;
  wire NLW_RAM_reg_0_63_3_5_DOD_UNCONNECTED;
  wire NLW_RAM_reg_0_63_6_6_SPO_UNCONNECTED;
  wire NLW_RAM_reg_0_63_7_7_SPO_UNCONNECTED;
  wire NLW_RAM_reg_128_191_0_2_DOD_UNCONNECTED;
  wire NLW_RAM_reg_128_191_3_5_DOD_UNCONNECTED;
  wire NLW_RAM_reg_128_191_6_6_SPO_UNCONNECTED;
  wire NLW_RAM_reg_128_191_7_7_SPO_UNCONNECTED;
  wire NLW_RAM_reg_192_255_0_2_DOD_UNCONNECTED;
  wire NLW_RAM_reg_192_255_3_5_DOD_UNCONNECTED;
  wire NLW_RAM_reg_192_255_6_6_SPO_UNCONNECTED;
  wire NLW_RAM_reg_192_255_7_7_SPO_UNCONNECTED;
  wire NLW_RAM_reg_256_319_0_2_DOD_UNCONNECTED;
  wire NLW_RAM_reg_256_319_3_5_DOD_UNCONNECTED;
  wire NLW_RAM_reg_256_319_6_6_SPO_UNCONNECTED;
  wire NLW_RAM_reg_256_319_7_7_SPO_UNCONNECTED;
  wire NLW_RAM_reg_320_383_0_2_DOD_UNCONNECTED;
  wire NLW_RAM_reg_320_383_3_5_DOD_UNCONNECTED;
  wire NLW_RAM_reg_320_383_6_6_SPO_UNCONNECTED;
  wire NLW_RAM_reg_320_383_7_7_SPO_UNCONNECTED;
  wire NLW_RAM_reg_384_447_0_2_DOD_UNCONNECTED;
  wire NLW_RAM_reg_384_447_3_5_DOD_UNCONNECTED;
  wire NLW_RAM_reg_384_447_6_6_SPO_UNCONNECTED;
  wire NLW_RAM_reg_384_447_7_7_SPO_UNCONNECTED;
  wire NLW_RAM_reg_448_511_0_2_DOD_UNCONNECTED;
  wire NLW_RAM_reg_448_511_3_5_DOD_UNCONNECTED;
  wire NLW_RAM_reg_448_511_6_6_SPO_UNCONNECTED;
  wire NLW_RAM_reg_448_511_7_7_SPO_UNCONNECTED;
  wire NLW_RAM_reg_512_575_0_2_DOD_UNCONNECTED;
  wire NLW_RAM_reg_512_575_3_5_DOD_UNCONNECTED;
  wire NLW_RAM_reg_512_575_6_6_SPO_UNCONNECTED;
  wire NLW_RAM_reg_512_575_7_7_SPO_UNCONNECTED;
  wire NLW_RAM_reg_576_639_0_2_DOD_UNCONNECTED;
  wire NLW_RAM_reg_576_639_3_5_DOD_UNCONNECTED;
  wire NLW_RAM_reg_576_639_6_6_SPO_UNCONNECTED;
  wire NLW_RAM_reg_576_639_7_7_SPO_UNCONNECTED;
  wire NLW_RAM_reg_640_703_0_2_DOD_UNCONNECTED;
  wire NLW_RAM_reg_640_703_3_5_DOD_UNCONNECTED;
  wire NLW_RAM_reg_640_703_6_6_SPO_UNCONNECTED;
  wire NLW_RAM_reg_640_703_7_7_SPO_UNCONNECTED;
  wire NLW_RAM_reg_64_127_0_2_DOD_UNCONNECTED;
  wire NLW_RAM_reg_64_127_3_5_DOD_UNCONNECTED;
  wire NLW_RAM_reg_64_127_6_6_SPO_UNCONNECTED;
  wire NLW_RAM_reg_64_127_7_7_SPO_UNCONNECTED;
  wire NLW_RAM_reg_704_767_0_2_DOD_UNCONNECTED;
  wire NLW_RAM_reg_704_767_3_5_DOD_UNCONNECTED;
  wire NLW_RAM_reg_704_767_6_6_SPO_UNCONNECTED;
  wire NLW_RAM_reg_704_767_7_7_SPO_UNCONNECTED;
  wire NLW_RAM_reg_768_831_0_2_DOD_UNCONNECTED;
  wire NLW_RAM_reg_768_831_3_5_DOD_UNCONNECTED;
  wire NLW_RAM_reg_768_831_6_6_SPO_UNCONNECTED;
  wire NLW_RAM_reg_768_831_7_7_SPO_UNCONNECTED;
  wire NLW_RAM_reg_832_895_0_2_DOD_UNCONNECTED;
  wire NLW_RAM_reg_832_895_3_5_DOD_UNCONNECTED;
  wire NLW_RAM_reg_832_895_6_6_SPO_UNCONNECTED;
  wire NLW_RAM_reg_832_895_7_7_SPO_UNCONNECTED;
  wire NLW_RAM_reg_896_959_0_2_DOD_UNCONNECTED;
  wire NLW_RAM_reg_896_959_3_5_DOD_UNCONNECTED;
  wire NLW_RAM_reg_896_959_6_6_SPO_UNCONNECTED;
  wire NLW_RAM_reg_896_959_7_7_SPO_UNCONNECTED;
  wire NLW_RAM_reg_960_1023_0_2_DOD_UNCONNECTED;
  wire NLW_RAM_reg_960_1023_3_5_DOD_UNCONNECTED;
  wire NLW_RAM_reg_960_1023_6_6_SPO_UNCONNECTED;
  wire NLW_RAM_reg_960_1023_7_7_SPO_UNCONNECTED;

  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M RAM_reg_0_63_0_2
       (.ADDRA(Q[5:0]),
        .ADDRB(Q[5:0]),
        .ADDRC(Q[5:0]),
        .ADDRD(\gpr1.dout_i[7]_i_8_0 ),
        .DIA(din[0]),
        .DIB(din[1]),
        .DIC(din[2]),
        .DID(1'b0),
        .DOA(RAM_reg_0_63_0_2_n_0),
        .DOB(RAM_reg_0_63_0_2_n_1),
        .DOC(RAM_reg_0_63_0_2_n_2),
        .DOD(NLW_RAM_reg_0_63_0_2_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_4_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M RAM_reg_0_63_3_5
       (.ADDRA(Q[5:0]),
        .ADDRB(Q[5:0]),
        .ADDRC(Q[5:0]),
        .ADDRD(\gpr1.dout_i[7]_i_8_0 ),
        .DIA(din[3]),
        .DIB(din[4]),
        .DIC(din[5]),
        .DID(1'b0),
        .DOA(RAM_reg_0_63_3_5_n_0),
        .DOB(RAM_reg_0_63_3_5_n_1),
        .DOC(RAM_reg_0_63_3_5_n_2),
        .DOD(NLW_RAM_reg_0_63_3_5_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_4_0 ));
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "6" *) 
  RAM64X1D RAM_reg_0_63_6_6
       (.A0(\gpr1.dout_i[7]_i_8_0 [0]),
        .A1(\gpr1.dout_i[7]_i_8_0 [1]),
        .A2(\gpr1.dout_i[7]_i_8_0 [2]),
        .A3(\gpr1.dout_i[7]_i_8_0 [3]),
        .A4(\gpr1.dout_i[7]_i_8_0 [4]),
        .A5(\gpr1.dout_i[7]_i_8_0 [5]),
        .D(din[6]),
        .DPO(RAM_reg_0_63_6_6_n_0),
        .DPRA0(Q[0]),
        .DPRA1(Q[1]),
        .DPRA2(Q[2]),
        .DPRA3(Q[3]),
        .DPRA4(Q[4]),
        .DPRA5(Q[5]),
        .SPO(NLW_RAM_reg_0_63_6_6_SPO_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_4_0 ));
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "7" *) 
  (* ram_slice_end = "7" *) 
  RAM64X1D RAM_reg_0_63_7_7
       (.A0(\gpr1.dout_i[7]_i_8_0 [0]),
        .A1(\gpr1.dout_i[7]_i_8_0 [1]),
        .A2(\gpr1.dout_i[7]_i_8_0 [2]),
        .A3(\gpr1.dout_i[7]_i_8_0 [3]),
        .A4(\gpr1.dout_i[7]_i_8_0 [4]),
        .A5(\gpr1.dout_i[7]_i_8_0 [5]),
        .D(din[7]),
        .DPO(RAM_reg_0_63_7_7_n_0),
        .DPRA0(Q[0]),
        .DPRA1(Q[1]),
        .DPRA2(Q[2]),
        .DPRA3(Q[3]),
        .DPRA4(Q[4]),
        .DPRA5(Q[5]),
        .SPO(NLW_RAM_reg_0_63_7_7_SPO_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_4_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "191" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M RAM_reg_128_191_0_2
       (.ADDRA(Q[5:0]),
        .ADDRB(Q[5:0]),
        .ADDRC(Q[5:0]),
        .ADDRD(\gpr1.dout_i[7]_i_8_0 ),
        .DIA(din[0]),
        .DIB(din[1]),
        .DIC(din[2]),
        .DID(1'b0),
        .DOA(RAM_reg_128_191_0_2_n_0),
        .DOB(RAM_reg_128_191_0_2_n_1),
        .DOC(RAM_reg_128_191_0_2_n_2),
        .DOD(NLW_RAM_reg_128_191_0_2_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_4_2 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "191" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M RAM_reg_128_191_3_5
       (.ADDRA(Q[5:0]),
        .ADDRB(Q[5:0]),
        .ADDRC(Q[5:0]),
        .ADDRD(\gpr1.dout_i[7]_i_8_0 ),
        .DIA(din[3]),
        .DIB(din[4]),
        .DIC(din[5]),
        .DID(1'b0),
        .DOA(RAM_reg_128_191_3_5_n_0),
        .DOB(RAM_reg_128_191_3_5_n_1),
        .DOC(RAM_reg_128_191_3_5_n_2),
        .DOD(NLW_RAM_reg_128_191_3_5_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_4_2 ));
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "191" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "6" *) 
  RAM64X1D RAM_reg_128_191_6_6
       (.A0(\gpr1.dout_i[7]_i_8_0 [0]),
        .A1(\gpr1.dout_i[7]_i_8_0 [1]),
        .A2(\gpr1.dout_i[7]_i_8_0 [2]),
        .A3(\gpr1.dout_i[7]_i_8_0 [3]),
        .A4(\gpr1.dout_i[7]_i_8_0 [4]),
        .A5(\gpr1.dout_i[7]_i_8_0 [5]),
        .D(din[6]),
        .DPO(RAM_reg_128_191_6_6_n_0),
        .DPRA0(Q[0]),
        .DPRA1(Q[1]),
        .DPRA2(Q[2]),
        .DPRA3(Q[3]),
        .DPRA4(Q[4]),
        .DPRA5(Q[5]),
        .SPO(NLW_RAM_reg_128_191_6_6_SPO_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_4_2 ));
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "191" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "7" *) 
  (* ram_slice_end = "7" *) 
  RAM64X1D RAM_reg_128_191_7_7
       (.A0(\gpr1.dout_i[7]_i_8_0 [0]),
        .A1(\gpr1.dout_i[7]_i_8_0 [1]),
        .A2(\gpr1.dout_i[7]_i_8_0 [2]),
        .A3(\gpr1.dout_i[7]_i_8_0 [3]),
        .A4(\gpr1.dout_i[7]_i_8_0 [4]),
        .A5(\gpr1.dout_i[7]_i_8_0 [5]),
        .D(din[7]),
        .DPO(RAM_reg_128_191_7_7_n_0),
        .DPRA0(Q[0]),
        .DPRA1(Q[1]),
        .DPRA2(Q[2]),
        .DPRA3(Q[3]),
        .DPRA4(Q[4]),
        .DPRA5(Q[5]),
        .SPO(NLW_RAM_reg_128_191_7_7_SPO_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_4_2 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* ram_addr_begin = "192" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M RAM_reg_192_255_0_2
       (.ADDRA(Q[5:0]),
        .ADDRB(Q[5:0]),
        .ADDRC(Q[5:0]),
        .ADDRD(\gpr1.dout_i[7]_i_8_0 ),
        .DIA(din[0]),
        .DIB(din[1]),
        .DIC(din[2]),
        .DID(1'b0),
        .DOA(RAM_reg_192_255_0_2_n_0),
        .DOB(RAM_reg_192_255_0_2_n_1),
        .DOC(RAM_reg_192_255_0_2_n_2),
        .DOD(NLW_RAM_reg_192_255_0_2_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_4_3 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* ram_addr_begin = "192" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M RAM_reg_192_255_3_5
       (.ADDRA(Q[5:0]),
        .ADDRB(Q[5:0]),
        .ADDRC(Q[5:0]),
        .ADDRD(\gpr1.dout_i[7]_i_8_0 ),
        .DIA(din[3]),
        .DIB(din[4]),
        .DIC(din[5]),
        .DID(1'b0),
        .DOA(RAM_reg_192_255_3_5_n_0),
        .DOB(RAM_reg_192_255_3_5_n_1),
        .DOC(RAM_reg_192_255_3_5_n_2),
        .DOD(NLW_RAM_reg_192_255_3_5_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_4_3 ));
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* ram_addr_begin = "192" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "6" *) 
  RAM64X1D RAM_reg_192_255_6_6
       (.A0(\gpr1.dout_i[7]_i_8_0 [0]),
        .A1(\gpr1.dout_i[7]_i_8_0 [1]),
        .A2(\gpr1.dout_i[7]_i_8_0 [2]),
        .A3(\gpr1.dout_i[7]_i_8_0 [3]),
        .A4(\gpr1.dout_i[7]_i_8_0 [4]),
        .A5(\gpr1.dout_i[7]_i_8_0 [5]),
        .D(din[6]),
        .DPO(RAM_reg_192_255_6_6_n_0),
        .DPRA0(Q[0]),
        .DPRA1(Q[1]),
        .DPRA2(Q[2]),
        .DPRA3(Q[3]),
        .DPRA4(Q[4]),
        .DPRA5(Q[5]),
        .SPO(NLW_RAM_reg_192_255_6_6_SPO_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_4_3 ));
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* ram_addr_begin = "192" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "7" *) 
  (* ram_slice_end = "7" *) 
  RAM64X1D RAM_reg_192_255_7_7
       (.A0(\gpr1.dout_i[7]_i_8_0 [0]),
        .A1(\gpr1.dout_i[7]_i_8_0 [1]),
        .A2(\gpr1.dout_i[7]_i_8_0 [2]),
        .A3(\gpr1.dout_i[7]_i_8_0 [3]),
        .A4(\gpr1.dout_i[7]_i_8_0 [4]),
        .A5(\gpr1.dout_i[7]_i_8_0 [5]),
        .D(din[7]),
        .DPO(RAM_reg_192_255_7_7_n_0),
        .DPRA0(Q[0]),
        .DPRA1(Q[1]),
        .DPRA2(Q[2]),
        .DPRA3(Q[3]),
        .DPRA4(Q[4]),
        .DPRA5(Q[5]),
        .SPO(NLW_RAM_reg_192_255_7_7_SPO_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_4_3 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "319" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M RAM_reg_256_319_0_2
       (.ADDRA(Q[5:0]),
        .ADDRB(Q[5:0]),
        .ADDRC(Q[5:0]),
        .ADDRD(\gpr1.dout_i[7]_i_8_0 ),
        .DIA(din[0]),
        .DIB(din[1]),
        .DIC(din[2]),
        .DID(1'b0),
        .DOA(RAM_reg_256_319_0_2_n_0),
        .DOB(RAM_reg_256_319_0_2_n_1),
        .DOC(RAM_reg_256_319_0_2_n_2),
        .DOD(NLW_RAM_reg_256_319_0_2_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_5_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "319" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M RAM_reg_256_319_3_5
       (.ADDRA(Q[5:0]),
        .ADDRB(Q[5:0]),
        .ADDRC(Q[5:0]),
        .ADDRD(\gpr1.dout_i[7]_i_8_0 ),
        .DIA(din[3]),
        .DIB(din[4]),
        .DIC(din[5]),
        .DID(1'b0),
        .DOA(RAM_reg_256_319_3_5_n_0),
        .DOB(RAM_reg_256_319_3_5_n_1),
        .DOC(RAM_reg_256_319_3_5_n_2),
        .DOD(NLW_RAM_reg_256_319_3_5_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_5_0 ));
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "319" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "6" *) 
  RAM64X1D RAM_reg_256_319_6_6
       (.A0(\gpr1.dout_i[7]_i_8_0 [0]),
        .A1(\gpr1.dout_i[7]_i_8_0 [1]),
        .A2(\gpr1.dout_i[7]_i_8_0 [2]),
        .A3(\gpr1.dout_i[7]_i_8_0 [3]),
        .A4(\gpr1.dout_i[7]_i_8_0 [4]),
        .A5(\gpr1.dout_i[7]_i_8_0 [5]),
        .D(din[6]),
        .DPO(RAM_reg_256_319_6_6_n_0),
        .DPRA0(Q[0]),
        .DPRA1(Q[1]),
        .DPRA2(Q[2]),
        .DPRA3(Q[3]),
        .DPRA4(Q[4]),
        .DPRA5(Q[5]),
        .SPO(NLW_RAM_reg_256_319_6_6_SPO_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_5_0 ));
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "319" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "7" *) 
  (* ram_slice_end = "7" *) 
  RAM64X1D RAM_reg_256_319_7_7
       (.A0(\gpr1.dout_i[7]_i_8_0 [0]),
        .A1(\gpr1.dout_i[7]_i_8_0 [1]),
        .A2(\gpr1.dout_i[7]_i_8_0 [2]),
        .A3(\gpr1.dout_i[7]_i_8_0 [3]),
        .A4(\gpr1.dout_i[7]_i_8_0 [4]),
        .A5(\gpr1.dout_i[7]_i_8_0 [5]),
        .D(din[7]),
        .DPO(RAM_reg_256_319_7_7_n_0),
        .DPRA0(Q[0]),
        .DPRA1(Q[1]),
        .DPRA2(Q[2]),
        .DPRA3(Q[3]),
        .DPRA4(Q[4]),
        .DPRA5(Q[5]),
        .SPO(NLW_RAM_reg_256_319_7_7_SPO_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_5_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* ram_addr_begin = "320" *) 
  (* ram_addr_end = "383" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M RAM_reg_320_383_0_2
       (.ADDRA(Q[5:0]),
        .ADDRB(Q[5:0]),
        .ADDRC(Q[5:0]),
        .ADDRD(\gpr1.dout_i[7]_i_8_0 ),
        .DIA(din[0]),
        .DIB(din[1]),
        .DIC(din[2]),
        .DID(1'b0),
        .DOA(RAM_reg_320_383_0_2_n_0),
        .DOB(RAM_reg_320_383_0_2_n_1),
        .DOC(RAM_reg_320_383_0_2_n_2),
        .DOD(NLW_RAM_reg_320_383_0_2_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_5_1 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* ram_addr_begin = "320" *) 
  (* ram_addr_end = "383" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M RAM_reg_320_383_3_5
       (.ADDRA(Q[5:0]),
        .ADDRB(Q[5:0]),
        .ADDRC(Q[5:0]),
        .ADDRD(\gpr1.dout_i[7]_i_8_0 ),
        .DIA(din[3]),
        .DIB(din[4]),
        .DIC(din[5]),
        .DID(1'b0),
        .DOA(RAM_reg_320_383_3_5_n_0),
        .DOB(RAM_reg_320_383_3_5_n_1),
        .DOC(RAM_reg_320_383_3_5_n_2),
        .DOD(NLW_RAM_reg_320_383_3_5_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_5_1 ));
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* ram_addr_begin = "320" *) 
  (* ram_addr_end = "383" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "6" *) 
  RAM64X1D RAM_reg_320_383_6_6
       (.A0(\gpr1.dout_i[7]_i_8_0 [0]),
        .A1(\gpr1.dout_i[7]_i_8_0 [1]),
        .A2(\gpr1.dout_i[7]_i_8_0 [2]),
        .A3(\gpr1.dout_i[7]_i_8_0 [3]),
        .A4(\gpr1.dout_i[7]_i_8_0 [4]),
        .A5(\gpr1.dout_i[7]_i_8_0 [5]),
        .D(din[6]),
        .DPO(RAM_reg_320_383_6_6_n_0),
        .DPRA0(Q[0]),
        .DPRA1(Q[1]),
        .DPRA2(Q[2]),
        .DPRA3(Q[3]),
        .DPRA4(Q[4]),
        .DPRA5(Q[5]),
        .SPO(NLW_RAM_reg_320_383_6_6_SPO_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_5_1 ));
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* ram_addr_begin = "320" *) 
  (* ram_addr_end = "383" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "7" *) 
  (* ram_slice_end = "7" *) 
  RAM64X1D RAM_reg_320_383_7_7
       (.A0(\gpr1.dout_i[7]_i_8_0 [0]),
        .A1(\gpr1.dout_i[7]_i_8_0 [1]),
        .A2(\gpr1.dout_i[7]_i_8_0 [2]),
        .A3(\gpr1.dout_i[7]_i_8_0 [3]),
        .A4(\gpr1.dout_i[7]_i_8_0 [4]),
        .A5(\gpr1.dout_i[7]_i_8_0 [5]),
        .D(din[7]),
        .DPO(RAM_reg_320_383_7_7_n_0),
        .DPRA0(Q[0]),
        .DPRA1(Q[1]),
        .DPRA2(Q[2]),
        .DPRA3(Q[3]),
        .DPRA4(Q[4]),
        .DPRA5(Q[5]),
        .SPO(NLW_RAM_reg_320_383_7_7_SPO_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_5_1 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* ram_addr_begin = "384" *) 
  (* ram_addr_end = "447" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M RAM_reg_384_447_0_2
       (.ADDRA(Q[5:0]),
        .ADDRB(Q[5:0]),
        .ADDRC(Q[5:0]),
        .ADDRD(\gpr1.dout_i[7]_i_8_0 ),
        .DIA(din[0]),
        .DIB(din[1]),
        .DIC(din[2]),
        .DID(1'b0),
        .DOA(RAM_reg_384_447_0_2_n_0),
        .DOB(RAM_reg_384_447_0_2_n_1),
        .DOC(RAM_reg_384_447_0_2_n_2),
        .DOD(NLW_RAM_reg_384_447_0_2_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_5_2 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* ram_addr_begin = "384" *) 
  (* ram_addr_end = "447" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M RAM_reg_384_447_3_5
       (.ADDRA(Q[5:0]),
        .ADDRB(Q[5:0]),
        .ADDRC(Q[5:0]),
        .ADDRD(\gpr1.dout_i[7]_i_8_0 ),
        .DIA(din[3]),
        .DIB(din[4]),
        .DIC(din[5]),
        .DID(1'b0),
        .DOA(RAM_reg_384_447_3_5_n_0),
        .DOB(RAM_reg_384_447_3_5_n_1),
        .DOC(RAM_reg_384_447_3_5_n_2),
        .DOD(NLW_RAM_reg_384_447_3_5_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_5_2 ));
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* ram_addr_begin = "384" *) 
  (* ram_addr_end = "447" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "6" *) 
  RAM64X1D RAM_reg_384_447_6_6
       (.A0(\gpr1.dout_i[7]_i_8_0 [0]),
        .A1(\gpr1.dout_i[7]_i_8_0 [1]),
        .A2(\gpr1.dout_i[7]_i_8_0 [2]),
        .A3(\gpr1.dout_i[7]_i_8_0 [3]),
        .A4(\gpr1.dout_i[7]_i_8_0 [4]),
        .A5(\gpr1.dout_i[7]_i_8_0 [5]),
        .D(din[6]),
        .DPO(RAM_reg_384_447_6_6_n_0),
        .DPRA0(Q[0]),
        .DPRA1(Q[1]),
        .DPRA2(Q[2]),
        .DPRA3(Q[3]),
        .DPRA4(Q[4]),
        .DPRA5(Q[5]),
        .SPO(NLW_RAM_reg_384_447_6_6_SPO_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_5_2 ));
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* ram_addr_begin = "384" *) 
  (* ram_addr_end = "447" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "7" *) 
  (* ram_slice_end = "7" *) 
  RAM64X1D RAM_reg_384_447_7_7
       (.A0(\gpr1.dout_i[7]_i_8_0 [0]),
        .A1(\gpr1.dout_i[7]_i_8_0 [1]),
        .A2(\gpr1.dout_i[7]_i_8_0 [2]),
        .A3(\gpr1.dout_i[7]_i_8_0 [3]),
        .A4(\gpr1.dout_i[7]_i_8_0 [4]),
        .A5(\gpr1.dout_i[7]_i_8_0 [5]),
        .D(din[7]),
        .DPO(RAM_reg_384_447_7_7_n_0),
        .DPRA0(Q[0]),
        .DPRA1(Q[1]),
        .DPRA2(Q[2]),
        .DPRA3(Q[3]),
        .DPRA4(Q[4]),
        .DPRA5(Q[5]),
        .SPO(NLW_RAM_reg_384_447_7_7_SPO_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_5_2 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* ram_addr_begin = "448" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M RAM_reg_448_511_0_2
       (.ADDRA(Q[5:0]),
        .ADDRB(Q[5:0]),
        .ADDRC(Q[5:0]),
        .ADDRD(\gpr1.dout_i[7]_i_8_0 ),
        .DIA(din[0]),
        .DIB(din[1]),
        .DIC(din[2]),
        .DID(1'b0),
        .DOA(RAM_reg_448_511_0_2_n_0),
        .DOB(RAM_reg_448_511_0_2_n_1),
        .DOC(RAM_reg_448_511_0_2_n_2),
        .DOD(NLW_RAM_reg_448_511_0_2_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_5_3 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* ram_addr_begin = "448" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M RAM_reg_448_511_3_5
       (.ADDRA(Q[5:0]),
        .ADDRB(Q[5:0]),
        .ADDRC(Q[5:0]),
        .ADDRD(\gpr1.dout_i[7]_i_8_0 ),
        .DIA(din[3]),
        .DIB(din[4]),
        .DIC(din[5]),
        .DID(1'b0),
        .DOA(RAM_reg_448_511_3_5_n_0),
        .DOB(RAM_reg_448_511_3_5_n_1),
        .DOC(RAM_reg_448_511_3_5_n_2),
        .DOD(NLW_RAM_reg_448_511_3_5_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_5_3 ));
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* ram_addr_begin = "448" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "6" *) 
  RAM64X1D RAM_reg_448_511_6_6
       (.A0(\gpr1.dout_i[7]_i_8_0 [0]),
        .A1(\gpr1.dout_i[7]_i_8_0 [1]),
        .A2(\gpr1.dout_i[7]_i_8_0 [2]),
        .A3(\gpr1.dout_i[7]_i_8_0 [3]),
        .A4(\gpr1.dout_i[7]_i_8_0 [4]),
        .A5(\gpr1.dout_i[7]_i_8_0 [5]),
        .D(din[6]),
        .DPO(RAM_reg_448_511_6_6_n_0),
        .DPRA0(Q[0]),
        .DPRA1(Q[1]),
        .DPRA2(Q[2]),
        .DPRA3(Q[3]),
        .DPRA4(Q[4]),
        .DPRA5(Q[5]),
        .SPO(NLW_RAM_reg_448_511_6_6_SPO_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_5_3 ));
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* ram_addr_begin = "448" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "7" *) 
  (* ram_slice_end = "7" *) 
  RAM64X1D RAM_reg_448_511_7_7
       (.A0(\gpr1.dout_i[7]_i_8_0 [0]),
        .A1(\gpr1.dout_i[7]_i_8_0 [1]),
        .A2(\gpr1.dout_i[7]_i_8_0 [2]),
        .A3(\gpr1.dout_i[7]_i_8_0 [3]),
        .A4(\gpr1.dout_i[7]_i_8_0 [4]),
        .A5(\gpr1.dout_i[7]_i_8_0 [5]),
        .D(din[7]),
        .DPO(RAM_reg_448_511_7_7_n_0),
        .DPRA0(Q[0]),
        .DPRA1(Q[1]),
        .DPRA2(Q[2]),
        .DPRA3(Q[3]),
        .DPRA4(Q[4]),
        .DPRA5(Q[5]),
        .SPO(NLW_RAM_reg_448_511_7_7_SPO_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_5_3 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* ram_addr_begin = "512" *) 
  (* ram_addr_end = "575" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M RAM_reg_512_575_0_2
       (.ADDRA(Q[5:0]),
        .ADDRB(Q[5:0]),
        .ADDRC(Q[5:0]),
        .ADDRD(\gpr1.dout_i[7]_i_8_0 ),
        .DIA(din[0]),
        .DIB(din[1]),
        .DIC(din[2]),
        .DID(1'b0),
        .DOA(RAM_reg_512_575_0_2_n_0),
        .DOB(RAM_reg_512_575_0_2_n_1),
        .DOC(RAM_reg_512_575_0_2_n_2),
        .DOD(NLW_RAM_reg_512_575_0_2_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_6_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* ram_addr_begin = "512" *) 
  (* ram_addr_end = "575" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M RAM_reg_512_575_3_5
       (.ADDRA(Q[5:0]),
        .ADDRB(Q[5:0]),
        .ADDRC(Q[5:0]),
        .ADDRD(\gpr1.dout_i[7]_i_8_0 ),
        .DIA(din[3]),
        .DIB(din[4]),
        .DIC(din[5]),
        .DID(1'b0),
        .DOA(RAM_reg_512_575_3_5_n_0),
        .DOB(RAM_reg_512_575_3_5_n_1),
        .DOC(RAM_reg_512_575_3_5_n_2),
        .DOD(NLW_RAM_reg_512_575_3_5_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_6_0 ));
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* ram_addr_begin = "512" *) 
  (* ram_addr_end = "575" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "6" *) 
  RAM64X1D RAM_reg_512_575_6_6
       (.A0(\gpr1.dout_i[7]_i_8_0 [0]),
        .A1(\gpr1.dout_i[7]_i_8_0 [1]),
        .A2(\gpr1.dout_i[7]_i_8_0 [2]),
        .A3(\gpr1.dout_i[7]_i_8_0 [3]),
        .A4(\gpr1.dout_i[7]_i_8_0 [4]),
        .A5(\gpr1.dout_i[7]_i_8_0 [5]),
        .D(din[6]),
        .DPO(RAM_reg_512_575_6_6_n_0),
        .DPRA0(Q[0]),
        .DPRA1(Q[1]),
        .DPRA2(Q[2]),
        .DPRA3(Q[3]),
        .DPRA4(Q[4]),
        .DPRA5(Q[5]),
        .SPO(NLW_RAM_reg_512_575_6_6_SPO_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_6_0 ));
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* ram_addr_begin = "512" *) 
  (* ram_addr_end = "575" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "7" *) 
  (* ram_slice_end = "7" *) 
  RAM64X1D RAM_reg_512_575_7_7
       (.A0(\gpr1.dout_i[7]_i_8_0 [0]),
        .A1(\gpr1.dout_i[7]_i_8_0 [1]),
        .A2(\gpr1.dout_i[7]_i_8_0 [2]),
        .A3(\gpr1.dout_i[7]_i_8_0 [3]),
        .A4(\gpr1.dout_i[7]_i_8_0 [4]),
        .A5(\gpr1.dout_i[7]_i_8_0 [5]),
        .D(din[7]),
        .DPO(RAM_reg_512_575_7_7_n_0),
        .DPRA0(Q[0]),
        .DPRA1(Q[1]),
        .DPRA2(Q[2]),
        .DPRA3(Q[3]),
        .DPRA4(Q[4]),
        .DPRA5(Q[5]),
        .SPO(NLW_RAM_reg_512_575_7_7_SPO_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_6_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* ram_addr_begin = "576" *) 
  (* ram_addr_end = "639" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M RAM_reg_576_639_0_2
       (.ADDRA(Q[5:0]),
        .ADDRB(Q[5:0]),
        .ADDRC(Q[5:0]),
        .ADDRD(\gpr1.dout_i[7]_i_8_0 ),
        .DIA(din[0]),
        .DIB(din[1]),
        .DIC(din[2]),
        .DID(1'b0),
        .DOA(RAM_reg_576_639_0_2_n_0),
        .DOB(RAM_reg_576_639_0_2_n_1),
        .DOC(RAM_reg_576_639_0_2_n_2),
        .DOD(NLW_RAM_reg_576_639_0_2_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_6_1 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* ram_addr_begin = "576" *) 
  (* ram_addr_end = "639" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M RAM_reg_576_639_3_5
       (.ADDRA(Q[5:0]),
        .ADDRB(Q[5:0]),
        .ADDRC(Q[5:0]),
        .ADDRD(\gpr1.dout_i[7]_i_8_0 ),
        .DIA(din[3]),
        .DIB(din[4]),
        .DIC(din[5]),
        .DID(1'b0),
        .DOA(RAM_reg_576_639_3_5_n_0),
        .DOB(RAM_reg_576_639_3_5_n_1),
        .DOC(RAM_reg_576_639_3_5_n_2),
        .DOD(NLW_RAM_reg_576_639_3_5_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_6_1 ));
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* ram_addr_begin = "576" *) 
  (* ram_addr_end = "639" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "6" *) 
  RAM64X1D RAM_reg_576_639_6_6
       (.A0(\gpr1.dout_i[7]_i_8_0 [0]),
        .A1(\gpr1.dout_i[7]_i_8_0 [1]),
        .A2(\gpr1.dout_i[7]_i_8_0 [2]),
        .A3(\gpr1.dout_i[7]_i_8_0 [3]),
        .A4(\gpr1.dout_i[7]_i_8_0 [4]),
        .A5(\gpr1.dout_i[7]_i_8_0 [5]),
        .D(din[6]),
        .DPO(RAM_reg_576_639_6_6_n_0),
        .DPRA0(Q[0]),
        .DPRA1(Q[1]),
        .DPRA2(Q[2]),
        .DPRA3(Q[3]),
        .DPRA4(Q[4]),
        .DPRA5(Q[5]),
        .SPO(NLW_RAM_reg_576_639_6_6_SPO_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_6_1 ));
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* ram_addr_begin = "576" *) 
  (* ram_addr_end = "639" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "7" *) 
  (* ram_slice_end = "7" *) 
  RAM64X1D RAM_reg_576_639_7_7
       (.A0(\gpr1.dout_i[7]_i_8_0 [0]),
        .A1(\gpr1.dout_i[7]_i_8_0 [1]),
        .A2(\gpr1.dout_i[7]_i_8_0 [2]),
        .A3(\gpr1.dout_i[7]_i_8_0 [3]),
        .A4(\gpr1.dout_i[7]_i_8_0 [4]),
        .A5(\gpr1.dout_i[7]_i_8_0 [5]),
        .D(din[7]),
        .DPO(RAM_reg_576_639_7_7_n_0),
        .DPRA0(Q[0]),
        .DPRA1(Q[1]),
        .DPRA2(Q[2]),
        .DPRA3(Q[3]),
        .DPRA4(Q[4]),
        .DPRA5(Q[5]),
        .SPO(NLW_RAM_reg_576_639_7_7_SPO_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_6_1 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* ram_addr_begin = "640" *) 
  (* ram_addr_end = "703" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M RAM_reg_640_703_0_2
       (.ADDRA(Q[5:0]),
        .ADDRB(Q[5:0]),
        .ADDRC(Q[5:0]),
        .ADDRD(\gpr1.dout_i[7]_i_8_0 ),
        .DIA(din[0]),
        .DIB(din[1]),
        .DIC(din[2]),
        .DID(1'b0),
        .DOA(RAM_reg_640_703_0_2_n_0),
        .DOB(RAM_reg_640_703_0_2_n_1),
        .DOC(RAM_reg_640_703_0_2_n_2),
        .DOD(NLW_RAM_reg_640_703_0_2_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_6_2 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* ram_addr_begin = "640" *) 
  (* ram_addr_end = "703" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M RAM_reg_640_703_3_5
       (.ADDRA(Q[5:0]),
        .ADDRB(Q[5:0]),
        .ADDRC(Q[5:0]),
        .ADDRD(\gpr1.dout_i[7]_i_8_0 ),
        .DIA(din[3]),
        .DIB(din[4]),
        .DIC(din[5]),
        .DID(1'b0),
        .DOA(RAM_reg_640_703_3_5_n_0),
        .DOB(RAM_reg_640_703_3_5_n_1),
        .DOC(RAM_reg_640_703_3_5_n_2),
        .DOD(NLW_RAM_reg_640_703_3_5_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_6_2 ));
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* ram_addr_begin = "640" *) 
  (* ram_addr_end = "703" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "6" *) 
  RAM64X1D RAM_reg_640_703_6_6
       (.A0(\gpr1.dout_i[7]_i_8_0 [0]),
        .A1(\gpr1.dout_i[7]_i_8_0 [1]),
        .A2(\gpr1.dout_i[7]_i_8_0 [2]),
        .A3(\gpr1.dout_i[7]_i_8_0 [3]),
        .A4(\gpr1.dout_i[7]_i_8_0 [4]),
        .A5(\gpr1.dout_i[7]_i_8_0 [5]),
        .D(din[6]),
        .DPO(RAM_reg_640_703_6_6_n_0),
        .DPRA0(Q[0]),
        .DPRA1(Q[1]),
        .DPRA2(Q[2]),
        .DPRA3(Q[3]),
        .DPRA4(Q[4]),
        .DPRA5(Q[5]),
        .SPO(NLW_RAM_reg_640_703_6_6_SPO_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_6_2 ));
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* ram_addr_begin = "640" *) 
  (* ram_addr_end = "703" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "7" *) 
  (* ram_slice_end = "7" *) 
  RAM64X1D RAM_reg_640_703_7_7
       (.A0(\gpr1.dout_i[7]_i_8_0 [0]),
        .A1(\gpr1.dout_i[7]_i_8_0 [1]),
        .A2(\gpr1.dout_i[7]_i_8_0 [2]),
        .A3(\gpr1.dout_i[7]_i_8_0 [3]),
        .A4(\gpr1.dout_i[7]_i_8_0 [4]),
        .A5(\gpr1.dout_i[7]_i_8_0 [5]),
        .D(din[7]),
        .DPO(RAM_reg_640_703_7_7_n_0),
        .DPRA0(Q[0]),
        .DPRA1(Q[1]),
        .DPRA2(Q[2]),
        .DPRA3(Q[3]),
        .DPRA4(Q[4]),
        .DPRA5(Q[5]),
        .SPO(NLW_RAM_reg_640_703_7_7_SPO_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_6_2 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M RAM_reg_64_127_0_2
       (.ADDRA(Q[5:0]),
        .ADDRB(Q[5:0]),
        .ADDRC(Q[5:0]),
        .ADDRD(\gpr1.dout_i[7]_i_8_0 ),
        .DIA(din[0]),
        .DIB(din[1]),
        .DIC(din[2]),
        .DID(1'b0),
        .DOA(RAM_reg_64_127_0_2_n_0),
        .DOB(RAM_reg_64_127_0_2_n_1),
        .DOC(RAM_reg_64_127_0_2_n_2),
        .DOD(NLW_RAM_reg_64_127_0_2_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_4_1 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M RAM_reg_64_127_3_5
       (.ADDRA(Q[5:0]),
        .ADDRB(Q[5:0]),
        .ADDRC(Q[5:0]),
        .ADDRD(\gpr1.dout_i[7]_i_8_0 ),
        .DIA(din[3]),
        .DIB(din[4]),
        .DIC(din[5]),
        .DID(1'b0),
        .DOA(RAM_reg_64_127_3_5_n_0),
        .DOB(RAM_reg_64_127_3_5_n_1),
        .DOC(RAM_reg_64_127_3_5_n_2),
        .DOD(NLW_RAM_reg_64_127_3_5_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_4_1 ));
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "6" *) 
  RAM64X1D RAM_reg_64_127_6_6
       (.A0(\gpr1.dout_i[7]_i_8_0 [0]),
        .A1(\gpr1.dout_i[7]_i_8_0 [1]),
        .A2(\gpr1.dout_i[7]_i_8_0 [2]),
        .A3(\gpr1.dout_i[7]_i_8_0 [3]),
        .A4(\gpr1.dout_i[7]_i_8_0 [4]),
        .A5(\gpr1.dout_i[7]_i_8_0 [5]),
        .D(din[6]),
        .DPO(RAM_reg_64_127_6_6_n_0),
        .DPRA0(Q[0]),
        .DPRA1(Q[1]),
        .DPRA2(Q[2]),
        .DPRA3(Q[3]),
        .DPRA4(Q[4]),
        .DPRA5(Q[5]),
        .SPO(NLW_RAM_reg_64_127_6_6_SPO_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_4_1 ));
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* ram_addr_begin = "64" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "7" *) 
  (* ram_slice_end = "7" *) 
  RAM64X1D RAM_reg_64_127_7_7
       (.A0(\gpr1.dout_i[7]_i_8_0 [0]),
        .A1(\gpr1.dout_i[7]_i_8_0 [1]),
        .A2(\gpr1.dout_i[7]_i_8_0 [2]),
        .A3(\gpr1.dout_i[7]_i_8_0 [3]),
        .A4(\gpr1.dout_i[7]_i_8_0 [4]),
        .A5(\gpr1.dout_i[7]_i_8_0 [5]),
        .D(din[7]),
        .DPO(RAM_reg_64_127_7_7_n_0),
        .DPRA0(Q[0]),
        .DPRA1(Q[1]),
        .DPRA2(Q[2]),
        .DPRA3(Q[3]),
        .DPRA4(Q[4]),
        .DPRA5(Q[5]),
        .SPO(NLW_RAM_reg_64_127_7_7_SPO_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_4_1 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* ram_addr_begin = "704" *) 
  (* ram_addr_end = "767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M RAM_reg_704_767_0_2
       (.ADDRA(Q[5:0]),
        .ADDRB(Q[5:0]),
        .ADDRC(Q[5:0]),
        .ADDRD(\gpr1.dout_i[7]_i_8_0 ),
        .DIA(din[0]),
        .DIB(din[1]),
        .DIC(din[2]),
        .DID(1'b0),
        .DOA(RAM_reg_704_767_0_2_n_0),
        .DOB(RAM_reg_704_767_0_2_n_1),
        .DOC(RAM_reg_704_767_0_2_n_2),
        .DOD(NLW_RAM_reg_704_767_0_2_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_6_3 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* ram_addr_begin = "704" *) 
  (* ram_addr_end = "767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M RAM_reg_704_767_3_5
       (.ADDRA(Q[5:0]),
        .ADDRB(Q[5:0]),
        .ADDRC(Q[5:0]),
        .ADDRD(\gpr1.dout_i[7]_i_8_0 ),
        .DIA(din[3]),
        .DIB(din[4]),
        .DIC(din[5]),
        .DID(1'b0),
        .DOA(RAM_reg_704_767_3_5_n_0),
        .DOB(RAM_reg_704_767_3_5_n_1),
        .DOC(RAM_reg_704_767_3_5_n_2),
        .DOD(NLW_RAM_reg_704_767_3_5_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_6_3 ));
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* ram_addr_begin = "704" *) 
  (* ram_addr_end = "767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "6" *) 
  RAM64X1D RAM_reg_704_767_6_6
       (.A0(\gpr1.dout_i[7]_i_8_0 [0]),
        .A1(\gpr1.dout_i[7]_i_8_0 [1]),
        .A2(\gpr1.dout_i[7]_i_8_0 [2]),
        .A3(\gpr1.dout_i[7]_i_8_0 [3]),
        .A4(\gpr1.dout_i[7]_i_8_0 [4]),
        .A5(\gpr1.dout_i[7]_i_8_0 [5]),
        .D(din[6]),
        .DPO(RAM_reg_704_767_6_6_n_0),
        .DPRA0(Q[0]),
        .DPRA1(Q[1]),
        .DPRA2(Q[2]),
        .DPRA3(Q[3]),
        .DPRA4(Q[4]),
        .DPRA5(Q[5]),
        .SPO(NLW_RAM_reg_704_767_6_6_SPO_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_6_3 ));
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* ram_addr_begin = "704" *) 
  (* ram_addr_end = "767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "7" *) 
  (* ram_slice_end = "7" *) 
  RAM64X1D RAM_reg_704_767_7_7
       (.A0(\gpr1.dout_i[7]_i_8_0 [0]),
        .A1(\gpr1.dout_i[7]_i_8_0 [1]),
        .A2(\gpr1.dout_i[7]_i_8_0 [2]),
        .A3(\gpr1.dout_i[7]_i_8_0 [3]),
        .A4(\gpr1.dout_i[7]_i_8_0 [4]),
        .A5(\gpr1.dout_i[7]_i_8_0 [5]),
        .D(din[7]),
        .DPO(RAM_reg_704_767_7_7_n_0),
        .DPRA0(Q[0]),
        .DPRA1(Q[1]),
        .DPRA2(Q[2]),
        .DPRA3(Q[3]),
        .DPRA4(Q[4]),
        .DPRA5(Q[5]),
        .SPO(NLW_RAM_reg_704_767_7_7_SPO_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_6_3 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* ram_addr_begin = "768" *) 
  (* ram_addr_end = "831" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M RAM_reg_768_831_0_2
       (.ADDRA(Q[5:0]),
        .ADDRB(Q[5:0]),
        .ADDRC(Q[5:0]),
        .ADDRD(\gpr1.dout_i[7]_i_8_0 ),
        .DIA(din[0]),
        .DIB(din[1]),
        .DIC(din[2]),
        .DID(1'b0),
        .DOA(RAM_reg_768_831_0_2_n_0),
        .DOB(RAM_reg_768_831_0_2_n_1),
        .DOC(RAM_reg_768_831_0_2_n_2),
        .DOD(NLW_RAM_reg_768_831_0_2_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_7_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* ram_addr_begin = "768" *) 
  (* ram_addr_end = "831" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M RAM_reg_768_831_3_5
       (.ADDRA(Q[5:0]),
        .ADDRB(Q[5:0]),
        .ADDRC(Q[5:0]),
        .ADDRD(\gpr1.dout_i[7]_i_8_0 ),
        .DIA(din[3]),
        .DIB(din[4]),
        .DIC(din[5]),
        .DID(1'b0),
        .DOA(RAM_reg_768_831_3_5_n_0),
        .DOB(RAM_reg_768_831_3_5_n_1),
        .DOC(RAM_reg_768_831_3_5_n_2),
        .DOD(NLW_RAM_reg_768_831_3_5_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_7_0 ));
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* ram_addr_begin = "768" *) 
  (* ram_addr_end = "831" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "6" *) 
  RAM64X1D RAM_reg_768_831_6_6
       (.A0(\gpr1.dout_i[7]_i_8_0 [0]),
        .A1(\gpr1.dout_i[7]_i_8_0 [1]),
        .A2(\gpr1.dout_i[7]_i_8_0 [2]),
        .A3(\gpr1.dout_i[7]_i_8_0 [3]),
        .A4(\gpr1.dout_i[7]_i_8_0 [4]),
        .A5(\gpr1.dout_i[7]_i_8_0 [5]),
        .D(din[6]),
        .DPO(RAM_reg_768_831_6_6_n_0),
        .DPRA0(Q[0]),
        .DPRA1(Q[1]),
        .DPRA2(Q[2]),
        .DPRA3(Q[3]),
        .DPRA4(Q[4]),
        .DPRA5(Q[5]),
        .SPO(NLW_RAM_reg_768_831_6_6_SPO_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_7_0 ));
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* ram_addr_begin = "768" *) 
  (* ram_addr_end = "831" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "7" *) 
  (* ram_slice_end = "7" *) 
  RAM64X1D RAM_reg_768_831_7_7
       (.A0(\gpr1.dout_i[7]_i_8_0 [0]),
        .A1(\gpr1.dout_i[7]_i_8_0 [1]),
        .A2(\gpr1.dout_i[7]_i_8_0 [2]),
        .A3(\gpr1.dout_i[7]_i_8_0 [3]),
        .A4(\gpr1.dout_i[7]_i_8_0 [4]),
        .A5(\gpr1.dout_i[7]_i_8_0 [5]),
        .D(din[7]),
        .DPO(RAM_reg_768_831_7_7_n_0),
        .DPRA0(Q[0]),
        .DPRA1(Q[1]),
        .DPRA2(Q[2]),
        .DPRA3(Q[3]),
        .DPRA4(Q[4]),
        .DPRA5(Q[5]),
        .SPO(NLW_RAM_reg_768_831_7_7_SPO_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_7_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* ram_addr_begin = "832" *) 
  (* ram_addr_end = "895" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M RAM_reg_832_895_0_2
       (.ADDRA(Q[5:0]),
        .ADDRB(Q[5:0]),
        .ADDRC(Q[5:0]),
        .ADDRD(\gpr1.dout_i[7]_i_8_0 ),
        .DIA(din[0]),
        .DIB(din[1]),
        .DIC(din[2]),
        .DID(1'b0),
        .DOA(RAM_reg_832_895_0_2_n_0),
        .DOB(RAM_reg_832_895_0_2_n_1),
        .DOC(RAM_reg_832_895_0_2_n_2),
        .DOD(NLW_RAM_reg_832_895_0_2_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_7_1 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* ram_addr_begin = "832" *) 
  (* ram_addr_end = "895" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M RAM_reg_832_895_3_5
       (.ADDRA(Q[5:0]),
        .ADDRB(Q[5:0]),
        .ADDRC(Q[5:0]),
        .ADDRD(\gpr1.dout_i[7]_i_8_0 ),
        .DIA(din[3]),
        .DIB(din[4]),
        .DIC(din[5]),
        .DID(1'b0),
        .DOA(RAM_reg_832_895_3_5_n_0),
        .DOB(RAM_reg_832_895_3_5_n_1),
        .DOC(RAM_reg_832_895_3_5_n_2),
        .DOD(NLW_RAM_reg_832_895_3_5_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_7_1 ));
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* ram_addr_begin = "832" *) 
  (* ram_addr_end = "895" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "6" *) 
  RAM64X1D RAM_reg_832_895_6_6
       (.A0(\gpr1.dout_i[7]_i_8_0 [0]),
        .A1(\gpr1.dout_i[7]_i_8_0 [1]),
        .A2(\gpr1.dout_i[7]_i_8_0 [2]),
        .A3(\gpr1.dout_i[7]_i_8_0 [3]),
        .A4(\gpr1.dout_i[7]_i_8_0 [4]),
        .A5(\gpr1.dout_i[7]_i_8_0 [5]),
        .D(din[6]),
        .DPO(RAM_reg_832_895_6_6_n_0),
        .DPRA0(Q[0]),
        .DPRA1(Q[1]),
        .DPRA2(Q[2]),
        .DPRA3(Q[3]),
        .DPRA4(Q[4]),
        .DPRA5(Q[5]),
        .SPO(NLW_RAM_reg_832_895_6_6_SPO_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_7_1 ));
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* ram_addr_begin = "832" *) 
  (* ram_addr_end = "895" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "7" *) 
  (* ram_slice_end = "7" *) 
  RAM64X1D RAM_reg_832_895_7_7
       (.A0(\gpr1.dout_i[7]_i_8_0 [0]),
        .A1(\gpr1.dout_i[7]_i_8_0 [1]),
        .A2(\gpr1.dout_i[7]_i_8_0 [2]),
        .A3(\gpr1.dout_i[7]_i_8_0 [3]),
        .A4(\gpr1.dout_i[7]_i_8_0 [4]),
        .A5(\gpr1.dout_i[7]_i_8_0 [5]),
        .D(din[7]),
        .DPO(RAM_reg_832_895_7_7_n_0),
        .DPRA0(Q[0]),
        .DPRA1(Q[1]),
        .DPRA2(Q[2]),
        .DPRA3(Q[3]),
        .DPRA4(Q[4]),
        .DPRA5(Q[5]),
        .SPO(NLW_RAM_reg_832_895_7_7_SPO_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_7_1 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* ram_addr_begin = "896" *) 
  (* ram_addr_end = "959" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M RAM_reg_896_959_0_2
       (.ADDRA(Q[5:0]),
        .ADDRB(Q[5:0]),
        .ADDRC(Q[5:0]),
        .ADDRD(\gpr1.dout_i[7]_i_8_0 ),
        .DIA(din[0]),
        .DIB(din[1]),
        .DIC(din[2]),
        .DID(1'b0),
        .DOA(RAM_reg_896_959_0_2_n_0),
        .DOB(RAM_reg_896_959_0_2_n_1),
        .DOC(RAM_reg_896_959_0_2_n_2),
        .DOD(NLW_RAM_reg_896_959_0_2_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_7_2 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* ram_addr_begin = "896" *) 
  (* ram_addr_end = "959" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M RAM_reg_896_959_3_5
       (.ADDRA(Q[5:0]),
        .ADDRB(Q[5:0]),
        .ADDRC(Q[5:0]),
        .ADDRD(\gpr1.dout_i[7]_i_8_0 ),
        .DIA(din[3]),
        .DIB(din[4]),
        .DIC(din[5]),
        .DID(1'b0),
        .DOA(RAM_reg_896_959_3_5_n_0),
        .DOB(RAM_reg_896_959_3_5_n_1),
        .DOC(RAM_reg_896_959_3_5_n_2),
        .DOD(NLW_RAM_reg_896_959_3_5_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_7_2 ));
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* ram_addr_begin = "896" *) 
  (* ram_addr_end = "959" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "6" *) 
  RAM64X1D RAM_reg_896_959_6_6
       (.A0(\gpr1.dout_i[7]_i_8_0 [0]),
        .A1(\gpr1.dout_i[7]_i_8_0 [1]),
        .A2(\gpr1.dout_i[7]_i_8_0 [2]),
        .A3(\gpr1.dout_i[7]_i_8_0 [3]),
        .A4(\gpr1.dout_i[7]_i_8_0 [4]),
        .A5(\gpr1.dout_i[7]_i_8_0 [5]),
        .D(din[6]),
        .DPO(RAM_reg_896_959_6_6_n_0),
        .DPRA0(Q[0]),
        .DPRA1(Q[1]),
        .DPRA2(Q[2]),
        .DPRA3(Q[3]),
        .DPRA4(Q[4]),
        .DPRA5(Q[5]),
        .SPO(NLW_RAM_reg_896_959_6_6_SPO_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_7_2 ));
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* ram_addr_begin = "896" *) 
  (* ram_addr_end = "959" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "7" *) 
  (* ram_slice_end = "7" *) 
  RAM64X1D RAM_reg_896_959_7_7
       (.A0(\gpr1.dout_i[7]_i_8_0 [0]),
        .A1(\gpr1.dout_i[7]_i_8_0 [1]),
        .A2(\gpr1.dout_i[7]_i_8_0 [2]),
        .A3(\gpr1.dout_i[7]_i_8_0 [3]),
        .A4(\gpr1.dout_i[7]_i_8_0 [4]),
        .A5(\gpr1.dout_i[7]_i_8_0 [5]),
        .D(din[7]),
        .DPO(RAM_reg_896_959_7_7_n_0),
        .DPRA0(Q[0]),
        .DPRA1(Q[1]),
        .DPRA2(Q[2]),
        .DPRA3(Q[3]),
        .DPRA4(Q[4]),
        .DPRA5(Q[5]),
        .SPO(NLW_RAM_reg_896_959_7_7_SPO_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_7_2 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* ram_addr_begin = "960" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "2" *) 
  RAM64M RAM_reg_960_1023_0_2
       (.ADDRA(Q[5:0]),
        .ADDRB(Q[5:0]),
        .ADDRC(Q[5:0]),
        .ADDRD(\gpr1.dout_i[7]_i_8_0 ),
        .DIA(din[0]),
        .DIB(din[1]),
        .DIC(din[2]),
        .DID(1'b0),
        .DOA(RAM_reg_960_1023_0_2_n_0),
        .DOB(RAM_reg_960_1023_0_2_n_1),
        .DOC(RAM_reg_960_1023_0_2_n_2),
        .DOD(NLW_RAM_reg_960_1023_0_2_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_7_3 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* ram_addr_begin = "960" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "5" *) 
  RAM64M RAM_reg_960_1023_3_5
       (.ADDRA(Q[5:0]),
        .ADDRB(Q[5:0]),
        .ADDRC(Q[5:0]),
        .ADDRD(\gpr1.dout_i[7]_i_8_0 ),
        .DIA(din[3]),
        .DIB(din[4]),
        .DIC(din[5]),
        .DID(1'b0),
        .DOA(RAM_reg_960_1023_3_5_n_0),
        .DOB(RAM_reg_960_1023_3_5_n_1),
        .DOC(RAM_reg_960_1023_3_5_n_2),
        .DOD(NLW_RAM_reg_960_1023_3_5_DOD_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_7_3 ));
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* ram_addr_begin = "960" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "6" *) 
  RAM64X1D RAM_reg_960_1023_6_6
       (.A0(\gpr1.dout_i[7]_i_8_0 [0]),
        .A1(\gpr1.dout_i[7]_i_8_0 [1]),
        .A2(\gpr1.dout_i[7]_i_8_0 [2]),
        .A3(\gpr1.dout_i[7]_i_8_0 [3]),
        .A4(\gpr1.dout_i[7]_i_8_0 [4]),
        .A5(\gpr1.dout_i[7]_i_8_0 [5]),
        .D(din[6]),
        .DPO(RAM_reg_960_1023_6_6_n_0),
        .DPRA0(Q[0]),
        .DPRA1(Q[1]),
        .DPRA2(Q[2]),
        .DPRA3(Q[3]),
        .DPRA4(Q[4]),
        .DPRA5(Q[5]),
        .SPO(NLW_RAM_reg_960_1023_6_6_SPO_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_7_3 ));
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM" *) 
  (* ram_addr_begin = "960" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "7" *) 
  (* ram_slice_end = "7" *) 
  RAM64X1D RAM_reg_960_1023_7_7
       (.A0(\gpr1.dout_i[7]_i_8_0 [0]),
        .A1(\gpr1.dout_i[7]_i_8_0 [1]),
        .A2(\gpr1.dout_i[7]_i_8_0 [2]),
        .A3(\gpr1.dout_i[7]_i_8_0 [3]),
        .A4(\gpr1.dout_i[7]_i_8_0 [4]),
        .A5(\gpr1.dout_i[7]_i_8_0 [5]),
        .D(din[7]),
        .DPO(RAM_reg_960_1023_7_7_n_0),
        .DPRA0(Q[0]),
        .DPRA1(Q[1]),
        .DPRA2(Q[2]),
        .DPRA3(Q[3]),
        .DPRA4(Q[4]),
        .DPRA5(Q[5]),
        .SPO(NLW_RAM_reg_960_1023_7_7_SPO_UNCONNECTED),
        .WCLK(wr_clk),
        .WE(\gpr1.dout_i[2]_i_7_3 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[0]_i_4 
       (.I0(RAM_reg_192_255_0_2_n_0),
        .I1(RAM_reg_128_191_0_2_n_0),
        .I2(Q[7]),
        .I3(RAM_reg_64_127_0_2_n_0),
        .I4(Q[6]),
        .I5(RAM_reg_0_63_0_2_n_0),
        .O(\gpr1.dout_i[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[0]_i_5 
       (.I0(RAM_reg_448_511_0_2_n_0),
        .I1(RAM_reg_384_447_0_2_n_0),
        .I2(Q[7]),
        .I3(RAM_reg_320_383_0_2_n_0),
        .I4(Q[6]),
        .I5(RAM_reg_256_319_0_2_n_0),
        .O(\gpr1.dout_i[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[0]_i_6 
       (.I0(RAM_reg_704_767_0_2_n_0),
        .I1(RAM_reg_640_703_0_2_n_0),
        .I2(Q[7]),
        .I3(RAM_reg_576_639_0_2_n_0),
        .I4(Q[6]),
        .I5(RAM_reg_512_575_0_2_n_0),
        .O(\gpr1.dout_i[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[0]_i_7 
       (.I0(RAM_reg_960_1023_0_2_n_0),
        .I1(RAM_reg_896_959_0_2_n_0),
        .I2(Q[7]),
        .I3(RAM_reg_832_895_0_2_n_0),
        .I4(Q[6]),
        .I5(RAM_reg_768_831_0_2_n_0),
        .O(\gpr1.dout_i[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[1]_i_4 
       (.I0(RAM_reg_192_255_0_2_n_1),
        .I1(RAM_reg_128_191_0_2_n_1),
        .I2(Q[7]),
        .I3(RAM_reg_64_127_0_2_n_1),
        .I4(Q[6]),
        .I5(RAM_reg_0_63_0_2_n_1),
        .O(\gpr1.dout_i[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[1]_i_5 
       (.I0(RAM_reg_448_511_0_2_n_1),
        .I1(RAM_reg_384_447_0_2_n_1),
        .I2(Q[7]),
        .I3(RAM_reg_320_383_0_2_n_1),
        .I4(Q[6]),
        .I5(RAM_reg_256_319_0_2_n_1),
        .O(\gpr1.dout_i[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[1]_i_6 
       (.I0(RAM_reg_704_767_0_2_n_1),
        .I1(RAM_reg_640_703_0_2_n_1),
        .I2(Q[7]),
        .I3(RAM_reg_576_639_0_2_n_1),
        .I4(Q[6]),
        .I5(RAM_reg_512_575_0_2_n_1),
        .O(\gpr1.dout_i[1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[1]_i_7 
       (.I0(RAM_reg_960_1023_0_2_n_1),
        .I1(RAM_reg_896_959_0_2_n_1),
        .I2(Q[7]),
        .I3(RAM_reg_832_895_0_2_n_1),
        .I4(Q[6]),
        .I5(RAM_reg_768_831_0_2_n_1),
        .O(\gpr1.dout_i[1]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[2]_i_4 
       (.I0(RAM_reg_192_255_0_2_n_2),
        .I1(RAM_reg_128_191_0_2_n_2),
        .I2(Q[7]),
        .I3(RAM_reg_64_127_0_2_n_2),
        .I4(Q[6]),
        .I5(RAM_reg_0_63_0_2_n_2),
        .O(\gpr1.dout_i[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[2]_i_5 
       (.I0(RAM_reg_448_511_0_2_n_2),
        .I1(RAM_reg_384_447_0_2_n_2),
        .I2(Q[7]),
        .I3(RAM_reg_320_383_0_2_n_2),
        .I4(Q[6]),
        .I5(RAM_reg_256_319_0_2_n_2),
        .O(\gpr1.dout_i[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[2]_i_6 
       (.I0(RAM_reg_704_767_0_2_n_2),
        .I1(RAM_reg_640_703_0_2_n_2),
        .I2(Q[7]),
        .I3(RAM_reg_576_639_0_2_n_2),
        .I4(Q[6]),
        .I5(RAM_reg_512_575_0_2_n_2),
        .O(\gpr1.dout_i[2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[2]_i_7 
       (.I0(RAM_reg_960_1023_0_2_n_2),
        .I1(RAM_reg_896_959_0_2_n_2),
        .I2(Q[7]),
        .I3(RAM_reg_832_895_0_2_n_2),
        .I4(Q[6]),
        .I5(RAM_reg_768_831_0_2_n_2),
        .O(\gpr1.dout_i[2]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[3]_i_4 
       (.I0(RAM_reg_192_255_3_5_n_0),
        .I1(RAM_reg_128_191_3_5_n_0),
        .I2(Q[7]),
        .I3(RAM_reg_64_127_3_5_n_0),
        .I4(Q[6]),
        .I5(RAM_reg_0_63_3_5_n_0),
        .O(\gpr1.dout_i[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[3]_i_5 
       (.I0(RAM_reg_448_511_3_5_n_0),
        .I1(RAM_reg_384_447_3_5_n_0),
        .I2(Q[7]),
        .I3(RAM_reg_320_383_3_5_n_0),
        .I4(Q[6]),
        .I5(RAM_reg_256_319_3_5_n_0),
        .O(\gpr1.dout_i[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[3]_i_6 
       (.I0(RAM_reg_704_767_3_5_n_0),
        .I1(RAM_reg_640_703_3_5_n_0),
        .I2(Q[7]),
        .I3(RAM_reg_576_639_3_5_n_0),
        .I4(Q[6]),
        .I5(RAM_reg_512_575_3_5_n_0),
        .O(\gpr1.dout_i[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[3]_i_7 
       (.I0(RAM_reg_960_1023_3_5_n_0),
        .I1(RAM_reg_896_959_3_5_n_0),
        .I2(Q[7]),
        .I3(RAM_reg_832_895_3_5_n_0),
        .I4(Q[6]),
        .I5(RAM_reg_768_831_3_5_n_0),
        .O(\gpr1.dout_i[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[4]_i_4 
       (.I0(RAM_reg_192_255_3_5_n_1),
        .I1(RAM_reg_128_191_3_5_n_1),
        .I2(Q[7]),
        .I3(RAM_reg_64_127_3_5_n_1),
        .I4(Q[6]),
        .I5(RAM_reg_0_63_3_5_n_1),
        .O(\gpr1.dout_i[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[4]_i_5 
       (.I0(RAM_reg_448_511_3_5_n_1),
        .I1(RAM_reg_384_447_3_5_n_1),
        .I2(Q[7]),
        .I3(RAM_reg_320_383_3_5_n_1),
        .I4(Q[6]),
        .I5(RAM_reg_256_319_3_5_n_1),
        .O(\gpr1.dout_i[4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[4]_i_6 
       (.I0(RAM_reg_704_767_3_5_n_1),
        .I1(RAM_reg_640_703_3_5_n_1),
        .I2(Q[7]),
        .I3(RAM_reg_576_639_3_5_n_1),
        .I4(Q[6]),
        .I5(RAM_reg_512_575_3_5_n_1),
        .O(\gpr1.dout_i[4]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[4]_i_7 
       (.I0(RAM_reg_960_1023_3_5_n_1),
        .I1(RAM_reg_896_959_3_5_n_1),
        .I2(Q[7]),
        .I3(RAM_reg_832_895_3_5_n_1),
        .I4(Q[6]),
        .I5(RAM_reg_768_831_3_5_n_1),
        .O(\gpr1.dout_i[4]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[5]_i_4 
       (.I0(RAM_reg_192_255_3_5_n_2),
        .I1(RAM_reg_128_191_3_5_n_2),
        .I2(Q[7]),
        .I3(RAM_reg_64_127_3_5_n_2),
        .I4(Q[6]),
        .I5(RAM_reg_0_63_3_5_n_2),
        .O(\gpr1.dout_i[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[5]_i_5 
       (.I0(RAM_reg_448_511_3_5_n_2),
        .I1(RAM_reg_384_447_3_5_n_2),
        .I2(Q[7]),
        .I3(RAM_reg_320_383_3_5_n_2),
        .I4(Q[6]),
        .I5(RAM_reg_256_319_3_5_n_2),
        .O(\gpr1.dout_i[5]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[5]_i_6 
       (.I0(RAM_reg_704_767_3_5_n_2),
        .I1(RAM_reg_640_703_3_5_n_2),
        .I2(Q[7]),
        .I3(RAM_reg_576_639_3_5_n_2),
        .I4(Q[6]),
        .I5(RAM_reg_512_575_3_5_n_2),
        .O(\gpr1.dout_i[5]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[5]_i_7 
       (.I0(RAM_reg_960_1023_3_5_n_2),
        .I1(RAM_reg_896_959_3_5_n_2),
        .I2(Q[7]),
        .I3(RAM_reg_832_895_3_5_n_2),
        .I4(Q[6]),
        .I5(RAM_reg_768_831_3_5_n_2),
        .O(\gpr1.dout_i[5]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[6]_i_4 
       (.I0(RAM_reg_192_255_6_6_n_0),
        .I1(RAM_reg_128_191_6_6_n_0),
        .I2(Q[7]),
        .I3(RAM_reg_64_127_6_6_n_0),
        .I4(Q[6]),
        .I5(RAM_reg_0_63_6_6_n_0),
        .O(\gpr1.dout_i[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[6]_i_5 
       (.I0(RAM_reg_448_511_6_6_n_0),
        .I1(RAM_reg_384_447_6_6_n_0),
        .I2(Q[7]),
        .I3(RAM_reg_320_383_6_6_n_0),
        .I4(Q[6]),
        .I5(RAM_reg_256_319_6_6_n_0),
        .O(\gpr1.dout_i[6]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[6]_i_6 
       (.I0(RAM_reg_704_767_6_6_n_0),
        .I1(RAM_reg_640_703_6_6_n_0),
        .I2(Q[7]),
        .I3(RAM_reg_576_639_6_6_n_0),
        .I4(Q[6]),
        .I5(RAM_reg_512_575_6_6_n_0),
        .O(\gpr1.dout_i[6]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[6]_i_7 
       (.I0(RAM_reg_960_1023_6_6_n_0),
        .I1(RAM_reg_896_959_6_6_n_0),
        .I2(Q[7]),
        .I3(RAM_reg_832_895_6_6_n_0),
        .I4(Q[6]),
        .I5(RAM_reg_768_831_6_6_n_0),
        .O(\gpr1.dout_i[6]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[7]_i_5 
       (.I0(RAM_reg_192_255_7_7_n_0),
        .I1(RAM_reg_128_191_7_7_n_0),
        .I2(Q[7]),
        .I3(RAM_reg_64_127_7_7_n_0),
        .I4(Q[6]),
        .I5(RAM_reg_0_63_7_7_n_0),
        .O(\gpr1.dout_i[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[7]_i_6 
       (.I0(RAM_reg_448_511_7_7_n_0),
        .I1(RAM_reg_384_447_7_7_n_0),
        .I2(Q[7]),
        .I3(RAM_reg_320_383_7_7_n_0),
        .I4(Q[6]),
        .I5(RAM_reg_256_319_7_7_n_0),
        .O(\gpr1.dout_i[7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[7]_i_7 
       (.I0(RAM_reg_704_767_7_7_n_0),
        .I1(RAM_reg_640_703_7_7_n_0),
        .I2(Q[7]),
        .I3(RAM_reg_576_639_7_7_n_0),
        .I4(Q[6]),
        .I5(RAM_reg_512_575_7_7_n_0),
        .O(\gpr1.dout_i[7]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \gpr1.dout_i[7]_i_8 
       (.I0(RAM_reg_960_1023_7_7_n_0),
        .I1(RAM_reg_896_959_7_7_n_0),
        .I2(Q[7]),
        .I3(RAM_reg_832_895_7_7_n_0),
        .I4(Q[6]),
        .I5(RAM_reg_768_831_7_7_n_0),
        .O(\gpr1.dout_i[7]_i_8_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[0] 
       (.C(rd_clk),
        .CE(E),
        .D(dout_i0[0]),
        .Q(dout[0]),
        .R(1'b0));
  MUXF8 \gpr1.dout_i_reg[0]_i_1 
       (.I0(\gpr1.dout_i_reg[0]_i_2_n_0 ),
        .I1(\gpr1.dout_i_reg[0]_i_3_n_0 ),
        .O(dout_i0[0]),
        .S(Q[9]));
  MUXF7 \gpr1.dout_i_reg[0]_i_2 
       (.I0(\gpr1.dout_i[0]_i_4_n_0 ),
        .I1(\gpr1.dout_i[0]_i_5_n_0 ),
        .O(\gpr1.dout_i_reg[0]_i_2_n_0 ),
        .S(Q[8]));
  MUXF7 \gpr1.dout_i_reg[0]_i_3 
       (.I0(\gpr1.dout_i[0]_i_6_n_0 ),
        .I1(\gpr1.dout_i[0]_i_7_n_0 ),
        .O(\gpr1.dout_i_reg[0]_i_3_n_0 ),
        .S(Q[8]));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[1] 
       (.C(rd_clk),
        .CE(E),
        .D(dout_i0[1]),
        .Q(dout[1]),
        .R(1'b0));
  MUXF8 \gpr1.dout_i_reg[1]_i_1 
       (.I0(\gpr1.dout_i_reg[1]_i_2_n_0 ),
        .I1(\gpr1.dout_i_reg[1]_i_3_n_0 ),
        .O(dout_i0[1]),
        .S(Q[9]));
  MUXF7 \gpr1.dout_i_reg[1]_i_2 
       (.I0(\gpr1.dout_i[1]_i_4_n_0 ),
        .I1(\gpr1.dout_i[1]_i_5_n_0 ),
        .O(\gpr1.dout_i_reg[1]_i_2_n_0 ),
        .S(Q[8]));
  MUXF7 \gpr1.dout_i_reg[1]_i_3 
       (.I0(\gpr1.dout_i[1]_i_6_n_0 ),
        .I1(\gpr1.dout_i[1]_i_7_n_0 ),
        .O(\gpr1.dout_i_reg[1]_i_3_n_0 ),
        .S(Q[8]));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[2] 
       (.C(rd_clk),
        .CE(E),
        .D(dout_i0[2]),
        .Q(dout[2]),
        .R(1'b0));
  MUXF8 \gpr1.dout_i_reg[2]_i_1 
       (.I0(\gpr1.dout_i_reg[2]_i_2_n_0 ),
        .I1(\gpr1.dout_i_reg[2]_i_3_n_0 ),
        .O(dout_i0[2]),
        .S(Q[9]));
  MUXF7 \gpr1.dout_i_reg[2]_i_2 
       (.I0(\gpr1.dout_i[2]_i_4_n_0 ),
        .I1(\gpr1.dout_i[2]_i_5_n_0 ),
        .O(\gpr1.dout_i_reg[2]_i_2_n_0 ),
        .S(Q[8]));
  MUXF7 \gpr1.dout_i_reg[2]_i_3 
       (.I0(\gpr1.dout_i[2]_i_6_n_0 ),
        .I1(\gpr1.dout_i[2]_i_7_n_0 ),
        .O(\gpr1.dout_i_reg[2]_i_3_n_0 ),
        .S(Q[8]));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[3] 
       (.C(rd_clk),
        .CE(E),
        .D(dout_i0[3]),
        .Q(dout[3]),
        .R(1'b0));
  MUXF8 \gpr1.dout_i_reg[3]_i_1 
       (.I0(\gpr1.dout_i_reg[3]_i_2_n_0 ),
        .I1(\gpr1.dout_i_reg[3]_i_3_n_0 ),
        .O(dout_i0[3]),
        .S(Q[9]));
  MUXF7 \gpr1.dout_i_reg[3]_i_2 
       (.I0(\gpr1.dout_i[3]_i_4_n_0 ),
        .I1(\gpr1.dout_i[3]_i_5_n_0 ),
        .O(\gpr1.dout_i_reg[3]_i_2_n_0 ),
        .S(Q[8]));
  MUXF7 \gpr1.dout_i_reg[3]_i_3 
       (.I0(\gpr1.dout_i[3]_i_6_n_0 ),
        .I1(\gpr1.dout_i[3]_i_7_n_0 ),
        .O(\gpr1.dout_i_reg[3]_i_3_n_0 ),
        .S(Q[8]));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[4] 
       (.C(rd_clk),
        .CE(E),
        .D(dout_i0[4]),
        .Q(dout[4]),
        .R(1'b0));
  MUXF8 \gpr1.dout_i_reg[4]_i_1 
       (.I0(\gpr1.dout_i_reg[4]_i_2_n_0 ),
        .I1(\gpr1.dout_i_reg[4]_i_3_n_0 ),
        .O(dout_i0[4]),
        .S(Q[9]));
  MUXF7 \gpr1.dout_i_reg[4]_i_2 
       (.I0(\gpr1.dout_i[4]_i_4_n_0 ),
        .I1(\gpr1.dout_i[4]_i_5_n_0 ),
        .O(\gpr1.dout_i_reg[4]_i_2_n_0 ),
        .S(Q[8]));
  MUXF7 \gpr1.dout_i_reg[4]_i_3 
       (.I0(\gpr1.dout_i[4]_i_6_n_0 ),
        .I1(\gpr1.dout_i[4]_i_7_n_0 ),
        .O(\gpr1.dout_i_reg[4]_i_3_n_0 ),
        .S(Q[8]));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[5] 
       (.C(rd_clk),
        .CE(E),
        .D(dout_i0[5]),
        .Q(dout[5]),
        .R(1'b0));
  MUXF8 \gpr1.dout_i_reg[5]_i_1 
       (.I0(\gpr1.dout_i_reg[5]_i_2_n_0 ),
        .I1(\gpr1.dout_i_reg[5]_i_3_n_0 ),
        .O(dout_i0[5]),
        .S(Q[9]));
  MUXF7 \gpr1.dout_i_reg[5]_i_2 
       (.I0(\gpr1.dout_i[5]_i_4_n_0 ),
        .I1(\gpr1.dout_i[5]_i_5_n_0 ),
        .O(\gpr1.dout_i_reg[5]_i_2_n_0 ),
        .S(Q[8]));
  MUXF7 \gpr1.dout_i_reg[5]_i_3 
       (.I0(\gpr1.dout_i[5]_i_6_n_0 ),
        .I1(\gpr1.dout_i[5]_i_7_n_0 ),
        .O(\gpr1.dout_i_reg[5]_i_3_n_0 ),
        .S(Q[8]));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[6] 
       (.C(rd_clk),
        .CE(E),
        .D(dout_i0[6]),
        .Q(dout[6]),
        .R(1'b0));
  MUXF8 \gpr1.dout_i_reg[6]_i_1 
       (.I0(\gpr1.dout_i_reg[6]_i_2_n_0 ),
        .I1(\gpr1.dout_i_reg[6]_i_3_n_0 ),
        .O(dout_i0[6]),
        .S(Q[9]));
  MUXF7 \gpr1.dout_i_reg[6]_i_2 
       (.I0(\gpr1.dout_i[6]_i_4_n_0 ),
        .I1(\gpr1.dout_i[6]_i_5_n_0 ),
        .O(\gpr1.dout_i_reg[6]_i_2_n_0 ),
        .S(Q[8]));
  MUXF7 \gpr1.dout_i_reg[6]_i_3 
       (.I0(\gpr1.dout_i[6]_i_6_n_0 ),
        .I1(\gpr1.dout_i[6]_i_7_n_0 ),
        .O(\gpr1.dout_i_reg[6]_i_3_n_0 ),
        .S(Q[8]));
  FDRE #(
    .INIT(1'b0)) 
    \gpr1.dout_i_reg[7] 
       (.C(rd_clk),
        .CE(E),
        .D(dout_i0[7]),
        .Q(dout[7]),
        .R(1'b0));
  MUXF8 \gpr1.dout_i_reg[7]_i_2 
       (.I0(\gpr1.dout_i_reg[7]_i_3_n_0 ),
        .I1(\gpr1.dout_i_reg[7]_i_4_n_0 ),
        .O(dout_i0[7]),
        .S(Q[9]));
  MUXF7 \gpr1.dout_i_reg[7]_i_3 
       (.I0(\gpr1.dout_i[7]_i_5_n_0 ),
        .I1(\gpr1.dout_i[7]_i_6_n_0 ),
        .O(\gpr1.dout_i_reg[7]_i_3_n_0 ),
        .S(Q[8]));
  MUXF7 \gpr1.dout_i_reg[7]_i_4 
       (.I0(\gpr1.dout_i[7]_i_7_n_0 ),
        .I1(\gpr1.dout_i[7]_i_8_n_0 ),
        .O(\gpr1.dout_i_reg[7]_i_4_n_0 ),
        .S(Q[8]));
endmodule

(* ORIG_REF_NAME = "fifo_generator_ramfifo" *) 
module buf_fifo_fifo_generator_ramfifo
   (empty,
    full,
    rd_data_count,
    dout,
    wr_clk,
    rd_clk,
    din,
    wr_en,
    rd_en);
  output empty;
  output full;
  output [9:0]rd_data_count;
  output [7:0]dout;
  input wr_clk;
  input rd_clk;
  input [7:0]din;
  input wr_en;
  input rd_en;

  wire [7:0]din;
  wire [7:0]dout;
  wire empty;
  wire full;
  wire \gntv_or_sync_fifo.gcx.clkx_n_0 ;
  wire \gntv_or_sync_fifo.gcx.clkx_n_1 ;
  wire \gntv_or_sync_fifo.gcx.clkx_n_14 ;
  wire \gntv_or_sync_fifo.gcx.clkx_n_15 ;
  wire \gntv_or_sync_fifo.gcx.clkx_n_16 ;
  wire \gntv_or_sync_fifo.gcx.clkx_n_17 ;
  wire \gntv_or_sync_fifo.gcx.clkx_n_18 ;
  wire \gntv_or_sync_fifo.gcx.clkx_n_19 ;
  wire \gntv_or_sync_fifo.gcx.clkx_n_2 ;
  wire \gntv_or_sync_fifo.gcx.clkx_n_3 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_1 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_12 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_13 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_14 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_15 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_16 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_17 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_18 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_19 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_20 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_21 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_22 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_23 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_24 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_25 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_26 ;
  wire [4:0]\gras.rsts/c0/v1_reg ;
  wire [4:0]\gwas.wsts/c1/v1_reg ;
  wire [4:0]\gwas.wsts/c2/v1_reg ;
  wire ram_rd_en_i;
  wire rd_clk;
  wire [9:0]rd_data_count;
  wire rd_en;
  wire [9:0]rd_pntr;
  wire wr_clk;
  wire wr_en;
  wire [9:0]wr_pntr;
  wire [9:0]wr_pntr_plus1;
  wire [9:0]wr_pntr_plus2;
  wire [9:0]wr_pntr_rd;

  buf_fifo_clk_x_pntrs \gntv_or_sync_fifo.gcx.clkx 
       (.Q(rd_pntr),
        .S({\gntv_or_sync_fifo.gcx.clkx_n_0 ,\gntv_or_sync_fifo.gcx.clkx_n_1 ,\gntv_or_sync_fifo.gcx.clkx_n_2 ,\gntv_or_sync_fifo.gcx.clkx_n_3 }),
        .WR_PNTR_RD(wr_pntr_rd),
        .\dest_out_bin_ff_reg[7] ({\gntv_or_sync_fifo.gcx.clkx_n_14 ,\gntv_or_sync_fifo.gcx.clkx_n_15 ,\gntv_or_sync_fifo.gcx.clkx_n_16 ,\gntv_or_sync_fifo.gcx.clkx_n_17 }),
        .\dest_out_bin_ff_reg[9] ({\gntv_or_sync_fifo.gcx.clkx_n_18 ,\gntv_or_sync_fifo.gcx.clkx_n_19 }),
        .\gmux.gm[4].gms.ms (wr_pntr_plus1),
        .\gmux.gm[4].gms.ms_0 (wr_pntr_plus2),
        .rd_clk(rd_clk),
        .\src_gray_ff_reg[9] (wr_pntr),
        .v1_reg(\gras.rsts/c0/v1_reg ),
        .v1_reg_0(\gwas.wsts/c1/v1_reg ),
        .v1_reg_1(\gwas.wsts/c2/v1_reg ),
        .wr_clk(wr_clk));
  buf_fifo_rd_logic \gntv_or_sync_fifo.gl0.rd 
       (.E(ram_rd_en_i),
        .Q(rd_pntr),
        .S({\gntv_or_sync_fifo.gcx.clkx_n_0 ,\gntv_or_sync_fifo.gcx.clkx_n_1 ,\gntv_or_sync_fifo.gcx.clkx_n_2 ,\gntv_or_sync_fifo.gcx.clkx_n_3 }),
        .WR_PNTR_RD(wr_pntr_rd),
        .empty(empty),
        .rd_clk(rd_clk),
        .rd_data_count(rd_data_count),
        .\rd_dc_i_reg[7] ({\gntv_or_sync_fifo.gcx.clkx_n_14 ,\gntv_or_sync_fifo.gcx.clkx_n_15 ,\gntv_or_sync_fifo.gcx.clkx_n_16 ,\gntv_or_sync_fifo.gcx.clkx_n_17 }),
        .\rd_dc_i_reg[9] ({\gntv_or_sync_fifo.gcx.clkx_n_18 ,\gntv_or_sync_fifo.gcx.clkx_n_19 }),
        .rd_en(rd_en),
        .v1_reg(\gras.rsts/c0/v1_reg ));
  buf_fifo_wr_logic \gntv_or_sync_fifo.gl0.wr 
       (.Q(wr_pntr),
        .full(full),
        .\gic0.gc0.count_d1_reg[9] (wr_pntr_plus1),
        .\gic0.gc0.count_d2_reg[6] (\gntv_or_sync_fifo.gl0.wr_n_22 ),
        .\gic0.gc0.count_d2_reg[7] (\gntv_or_sync_fifo.gl0.wr_n_20 ),
        .\gic0.gc0.count_d2_reg[7]_0 (\gntv_or_sync_fifo.gl0.wr_n_26 ),
        .\gic0.gc0.count_d2_reg[8] (\gntv_or_sync_fifo.gl0.wr_n_17 ),
        .\gic0.gc0.count_d2_reg[8]_0 (\gntv_or_sync_fifo.gl0.wr_n_24 ),
        .\gic0.gc0.count_d2_reg[8]_1 (\gntv_or_sync_fifo.gl0.wr_n_25 ),
        .\gic0.gc0.count_d2_reg[9] (\gntv_or_sync_fifo.gl0.wr_n_16 ),
        .\gic0.gc0.count_d2_reg[9]_0 (\gntv_or_sync_fifo.gl0.wr_n_19 ),
        .\gic0.gc0.count_d2_reg[9]_1 (\gntv_or_sync_fifo.gl0.wr_n_21 ),
        .\gic0.gc0.count_d2_reg[9]_2 (\gntv_or_sync_fifo.gl0.wr_n_23 ),
        .\gic0.gc0.count_reg[9] (wr_pntr_plus2),
        .ram_full_fb_i_reg(\gntv_or_sync_fifo.gl0.wr_n_1 ),
        .ram_full_fb_i_reg_0(\gntv_or_sync_fifo.gl0.wr_n_12 ),
        .ram_full_fb_i_reg_1(\gntv_or_sync_fifo.gl0.wr_n_13 ),
        .ram_full_fb_i_reg_2(\gntv_or_sync_fifo.gl0.wr_n_14 ),
        .ram_full_fb_i_reg_3(\gntv_or_sync_fifo.gl0.wr_n_15 ),
        .ram_full_fb_i_reg_4(\gntv_or_sync_fifo.gl0.wr_n_18 ),
        .v1_reg(\gwas.wsts/c1/v1_reg ),
        .v1_reg_0(\gwas.wsts/c2/v1_reg ),
        .wr_clk(wr_clk),
        .wr_en(wr_en));
  buf_fifo_memory \gntv_or_sync_fifo.mem 
       (.E(ram_rd_en_i),
        .Q(rd_pntr),
        .din(din),
        .dout(dout),
        .\gpr1.dout_i[2]_i_4 (\gntv_or_sync_fifo.gl0.wr_n_13 ),
        .\gpr1.dout_i[2]_i_4_0 (\gntv_or_sync_fifo.gl0.wr_n_14 ),
        .\gpr1.dout_i[2]_i_4_1 (\gntv_or_sync_fifo.gl0.wr_n_15 ),
        .\gpr1.dout_i[2]_i_4_2 (\gntv_or_sync_fifo.gl0.wr_n_19 ),
        .\gpr1.dout_i[2]_i_5 (\gntv_or_sync_fifo.gl0.wr_n_1 ),
        .\gpr1.dout_i[2]_i_5_0 (\gntv_or_sync_fifo.gl0.wr_n_21 ),
        .\gpr1.dout_i[2]_i_5_1 (\gntv_or_sync_fifo.gl0.wr_n_23 ),
        .\gpr1.dout_i[2]_i_5_2 (\gntv_or_sync_fifo.gl0.wr_n_16 ),
        .\gpr1.dout_i[2]_i_6 (\gntv_or_sync_fifo.gl0.wr_n_12 ),
        .\gpr1.dout_i[2]_i_6_0 (\gntv_or_sync_fifo.gl0.wr_n_24 ),
        .\gpr1.dout_i[2]_i_6_1 (\gntv_or_sync_fifo.gl0.wr_n_25 ),
        .\gpr1.dout_i[2]_i_6_2 (\gntv_or_sync_fifo.gl0.wr_n_17 ),
        .\gpr1.dout_i[2]_i_7 (\gntv_or_sync_fifo.gl0.wr_n_26 ),
        .\gpr1.dout_i[2]_i_7_0 (\gntv_or_sync_fifo.gl0.wr_n_20 ),
        .\gpr1.dout_i[2]_i_7_1 (\gntv_or_sync_fifo.gl0.wr_n_22 ),
        .\gpr1.dout_i[2]_i_7_2 (\gntv_or_sync_fifo.gl0.wr_n_18 ),
        .\gpr1.dout_i[7]_i_8 (wr_pntr[5:0]),
        .rd_clk(rd_clk),
        .wr_clk(wr_clk));
endmodule

(* ORIG_REF_NAME = "fifo_generator_top" *) 
module buf_fifo_fifo_generator_top
   (empty,
    full,
    rd_data_count,
    dout,
    wr_clk,
    rd_clk,
    din,
    wr_en,
    rd_en);
  output empty;
  output full;
  output [9:0]rd_data_count;
  output [7:0]dout;
  input wr_clk;
  input rd_clk;
  input [7:0]din;
  input wr_en;
  input rd_en;

  wire [7:0]din;
  wire [7:0]dout;
  wire empty;
  wire full;
  wire rd_clk;
  wire [9:0]rd_data_count;
  wire rd_en;
  wire wr_clk;
  wire wr_en;

  buf_fifo_fifo_generator_ramfifo \grf.rf 
       (.din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .rd_clk(rd_clk),
        .rd_data_count(rd_data_count),
        .rd_en(rd_en),
        .wr_clk(wr_clk),
        .wr_en(wr_en));
endmodule

(* C_ADD_NGC_CONSTRAINT = "0" *) (* C_APPLICATION_TYPE_AXIS = "0" *) (* C_APPLICATION_TYPE_RACH = "0" *) 
(* C_APPLICATION_TYPE_RDCH = "0" *) (* C_APPLICATION_TYPE_WACH = "0" *) (* C_APPLICATION_TYPE_WDCH = "0" *) 
(* C_APPLICATION_TYPE_WRCH = "0" *) (* C_AXIS_TDATA_WIDTH = "8" *) (* C_AXIS_TDEST_WIDTH = "1" *) 
(* C_AXIS_TID_WIDTH = "1" *) (* C_AXIS_TKEEP_WIDTH = "1" *) (* C_AXIS_TSTRB_WIDTH = "1" *) 
(* C_AXIS_TUSER_WIDTH = "4" *) (* C_AXIS_TYPE = "0" *) (* C_AXI_ADDR_WIDTH = "32" *) 
(* C_AXI_ARUSER_WIDTH = "1" *) (* C_AXI_AWUSER_WIDTH = "1" *) (* C_AXI_BUSER_WIDTH = "1" *) 
(* C_AXI_DATA_WIDTH = "64" *) (* C_AXI_ID_WIDTH = "1" *) (* C_AXI_LEN_WIDTH = "8" *) 
(* C_AXI_LOCK_WIDTH = "1" *) (* C_AXI_RUSER_WIDTH = "1" *) (* C_AXI_TYPE = "1" *) 
(* C_AXI_WUSER_WIDTH = "1" *) (* C_COMMON_CLOCK = "0" *) (* C_COUNT_TYPE = "0" *) 
(* C_DATA_COUNT_WIDTH = "10" *) (* C_DEFAULT_VALUE = "BlankString" *) (* C_DIN_WIDTH = "8" *) 
(* C_DIN_WIDTH_AXIS = "1" *) (* C_DIN_WIDTH_RACH = "32" *) (* C_DIN_WIDTH_RDCH = "64" *) 
(* C_DIN_WIDTH_WACH = "1" *) (* C_DIN_WIDTH_WDCH = "64" *) (* C_DIN_WIDTH_WRCH = "2" *) 
(* C_DOUT_RST_VAL = "0" *) (* C_DOUT_WIDTH = "8" *) (* C_ENABLE_RLOCS = "0" *) 
(* C_ENABLE_RST_SYNC = "1" *) (* C_EN_SAFETY_CKT = "0" *) (* C_ERROR_INJECTION_TYPE = "0" *) 
(* C_ERROR_INJECTION_TYPE_AXIS = "0" *) (* C_ERROR_INJECTION_TYPE_RACH = "0" *) (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) 
(* C_ERROR_INJECTION_TYPE_WACH = "0" *) (* C_ERROR_INJECTION_TYPE_WDCH = "0" *) (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) 
(* C_FAMILY = "artix7" *) (* C_FULL_FLAGS_RST_VAL = "0" *) (* C_HAS_ALMOST_EMPTY = "0" *) 
(* C_HAS_ALMOST_FULL = "0" *) (* C_HAS_AXIS_TDATA = "1" *) (* C_HAS_AXIS_TDEST = "0" *) 
(* C_HAS_AXIS_TID = "0" *) (* C_HAS_AXIS_TKEEP = "0" *) (* C_HAS_AXIS_TLAST = "0" *) 
(* C_HAS_AXIS_TREADY = "1" *) (* C_HAS_AXIS_TSTRB = "0" *) (* C_HAS_AXIS_TUSER = "1" *) 
(* C_HAS_AXI_ARUSER = "0" *) (* C_HAS_AXI_AWUSER = "0" *) (* C_HAS_AXI_BUSER = "0" *) 
(* C_HAS_AXI_ID = "0" *) (* C_HAS_AXI_RD_CHANNEL = "1" *) (* C_HAS_AXI_RUSER = "0" *) 
(* C_HAS_AXI_WR_CHANNEL = "1" *) (* C_HAS_AXI_WUSER = "0" *) (* C_HAS_BACKUP = "0" *) 
(* C_HAS_DATA_COUNT = "0" *) (* C_HAS_DATA_COUNTS_AXIS = "0" *) (* C_HAS_DATA_COUNTS_RACH = "0" *) 
(* C_HAS_DATA_COUNTS_RDCH = "0" *) (* C_HAS_DATA_COUNTS_WACH = "0" *) (* C_HAS_DATA_COUNTS_WDCH = "0" *) 
(* C_HAS_DATA_COUNTS_WRCH = "0" *) (* C_HAS_INT_CLK = "0" *) (* C_HAS_MASTER_CE = "0" *) 
(* C_HAS_MEMINIT_FILE = "0" *) (* C_HAS_OVERFLOW = "0" *) (* C_HAS_PROG_FLAGS_AXIS = "0" *) 
(* C_HAS_PROG_FLAGS_RACH = "0" *) (* C_HAS_PROG_FLAGS_RDCH = "0" *) (* C_HAS_PROG_FLAGS_WACH = "0" *) 
(* C_HAS_PROG_FLAGS_WDCH = "0" *) (* C_HAS_PROG_FLAGS_WRCH = "0" *) (* C_HAS_RD_DATA_COUNT = "1" *) 
(* C_HAS_RD_RST = "0" *) (* C_HAS_RST = "0" *) (* C_HAS_SLAVE_CE = "0" *) 
(* C_HAS_SRST = "0" *) (* C_HAS_UNDERFLOW = "0" *) (* C_HAS_VALID = "0" *) 
(* C_HAS_WR_ACK = "0" *) (* C_HAS_WR_DATA_COUNT = "0" *) (* C_HAS_WR_RST = "0" *) 
(* C_IMPLEMENTATION_TYPE = "2" *) (* C_IMPLEMENTATION_TYPE_AXIS = "1" *) (* C_IMPLEMENTATION_TYPE_RACH = "1" *) 
(* C_IMPLEMENTATION_TYPE_RDCH = "1" *) (* C_IMPLEMENTATION_TYPE_WACH = "1" *) (* C_IMPLEMENTATION_TYPE_WDCH = "1" *) 
(* C_IMPLEMENTATION_TYPE_WRCH = "1" *) (* C_INIT_WR_PNTR_VAL = "0" *) (* C_INTERFACE_TYPE = "0" *) 
(* C_MEMORY_TYPE = "2" *) (* C_MIF_FILE_NAME = "BlankString" *) (* C_MSGON_VAL = "1" *) 
(* C_OPTIMIZATION_MODE = "0" *) (* C_OVERFLOW_LOW = "0" *) (* C_POWER_SAVING_MODE = "0" *) 
(* C_PRELOAD_LATENCY = "1" *) (* C_PRELOAD_REGS = "0" *) (* C_PRIM_FIFO_TYPE = "1kx18" *) 
(* C_PRIM_FIFO_TYPE_AXIS = "1kx18" *) (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) (* C_PRIM_FIFO_TYPE_RDCH = "1kx36" *) 
(* C_PRIM_FIFO_TYPE_WACH = "512x36" *) (* C_PRIM_FIFO_TYPE_WDCH = "1kx36" *) (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
(* C_PROG_EMPTY_THRESH_ASSERT_VAL = "2" *) (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "1022" *) 
(* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "1022" *) (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
(* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "1022" *) (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "3" *) (* C_PROG_EMPTY_TYPE = "0" *) 
(* C_PROG_EMPTY_TYPE_AXIS = "0" *) (* C_PROG_EMPTY_TYPE_RACH = "0" *) (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
(* C_PROG_EMPTY_TYPE_WACH = "0" *) (* C_PROG_EMPTY_TYPE_WDCH = "0" *) (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
(* C_PROG_FULL_THRESH_ASSERT_VAL = "1021" *) (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
(* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
(* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) (* C_PROG_FULL_THRESH_NEGATE_VAL = "1020" *) (* C_PROG_FULL_TYPE = "0" *) 
(* C_PROG_FULL_TYPE_AXIS = "0" *) (* C_PROG_FULL_TYPE_RACH = "0" *) (* C_PROG_FULL_TYPE_RDCH = "0" *) 
(* C_PROG_FULL_TYPE_WACH = "0" *) (* C_PROG_FULL_TYPE_WDCH = "0" *) (* C_PROG_FULL_TYPE_WRCH = "0" *) 
(* C_RACH_TYPE = "0" *) (* C_RDCH_TYPE = "0" *) (* C_RD_DATA_COUNT_WIDTH = "10" *) 
(* C_RD_DEPTH = "1024" *) (* C_RD_FREQ = "1" *) (* C_RD_PNTR_WIDTH = "10" *) 
(* C_REG_SLICE_MODE_AXIS = "0" *) (* C_REG_SLICE_MODE_RACH = "0" *) (* C_REG_SLICE_MODE_RDCH = "0" *) 
(* C_REG_SLICE_MODE_WACH = "0" *) (* C_REG_SLICE_MODE_WDCH = "0" *) (* C_REG_SLICE_MODE_WRCH = "0" *) 
(* C_SELECT_XPM = "0" *) (* C_SYNCHRONIZER_STAGE = "2" *) (* C_UNDERFLOW_LOW = "0" *) 
(* C_USE_COMMON_OVERFLOW = "0" *) (* C_USE_COMMON_UNDERFLOW = "0" *) (* C_USE_DEFAULT_SETTINGS = "0" *) 
(* C_USE_DOUT_RST = "0" *) (* C_USE_ECC = "0" *) (* C_USE_ECC_AXIS = "0" *) 
(* C_USE_ECC_RACH = "0" *) (* C_USE_ECC_RDCH = "0" *) (* C_USE_ECC_WACH = "0" *) 
(* C_USE_ECC_WDCH = "0" *) (* C_USE_ECC_WRCH = "0" *) (* C_USE_EMBEDDED_REG = "0" *) 
(* C_USE_FIFO16_FLAGS = "0" *) (* C_USE_FWFT_DATA_COUNT = "0" *) (* C_USE_PIPELINE_REG = "0" *) 
(* C_VALID_LOW = "0" *) (* C_WACH_TYPE = "0" *) (* C_WDCH_TYPE = "0" *) 
(* C_WRCH_TYPE = "0" *) (* C_WR_ACK_LOW = "0" *) (* C_WR_DATA_COUNT_WIDTH = "10" *) 
(* C_WR_DEPTH = "1024" *) (* C_WR_DEPTH_AXIS = "1024" *) (* C_WR_DEPTH_RACH = "16" *) 
(* C_WR_DEPTH_RDCH = "1024" *) (* C_WR_DEPTH_WACH = "16" *) (* C_WR_DEPTH_WDCH = "1024" *) 
(* C_WR_DEPTH_WRCH = "16" *) (* C_WR_FREQ = "1" *) (* C_WR_PNTR_WIDTH = "10" *) 
(* C_WR_PNTR_WIDTH_AXIS = "10" *) (* C_WR_PNTR_WIDTH_RACH = "4" *) (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
(* C_WR_PNTR_WIDTH_WACH = "4" *) (* C_WR_PNTR_WIDTH_WDCH = "10" *) (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
(* C_WR_RESPONSE_LATENCY = "1" *) (* ORIG_REF_NAME = "fifo_generator_v13_2_5" *) 
module buf_fifo_fifo_generator_v13_2_5
   (backup,
    backup_marker,
    clk,
    rst,
    srst,
    wr_clk,
    wr_rst,
    rd_clk,
    rd_rst,
    din,
    wr_en,
    rd_en,
    prog_empty_thresh,
    prog_empty_thresh_assert,
    prog_empty_thresh_negate,
    prog_full_thresh,
    prog_full_thresh_assert,
    prog_full_thresh_negate,
    int_clk,
    injectdbiterr,
    injectsbiterr,
    sleep,
    dout,
    full,
    almost_full,
    wr_ack,
    overflow,
    empty,
    almost_empty,
    valid,
    underflow,
    data_count,
    rd_data_count,
    wr_data_count,
    prog_full,
    prog_empty,
    sbiterr,
    dbiterr,
    wr_rst_busy,
    rd_rst_busy,
    m_aclk,
    s_aclk,
    s_aresetn,
    m_aclk_en,
    s_aclk_en,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awqos,
    s_axi_awregion,
    s_axi_awuser,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wid,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wuser,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_buser,
    s_axi_bvalid,
    s_axi_bready,
    m_axi_awid,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awqos,
    m_axi_awregion,
    m_axi_awuser,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wid,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wlast,
    m_axi_wuser,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bid,
    m_axi_bresp,
    m_axi_buser,
    m_axi_bvalid,
    m_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arqos,
    s_axi_arregion,
    s_axi_aruser,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_ruser,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_arid,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_arsize,
    m_axi_arburst,
    m_axi_arlock,
    m_axi_arcache,
    m_axi_arprot,
    m_axi_arqos,
    m_axi_arregion,
    m_axi_aruser,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rid,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rlast,
    m_axi_ruser,
    m_axi_rvalid,
    m_axi_rready,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tdata,
    s_axis_tstrb,
    s_axis_tkeep,
    s_axis_tlast,
    s_axis_tid,
    s_axis_tdest,
    s_axis_tuser,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tdata,
    m_axis_tstrb,
    m_axis_tkeep,
    m_axis_tlast,
    m_axis_tid,
    m_axis_tdest,
    m_axis_tuser,
    axi_aw_injectsbiterr,
    axi_aw_injectdbiterr,
    axi_aw_prog_full_thresh,
    axi_aw_prog_empty_thresh,
    axi_aw_data_count,
    axi_aw_wr_data_count,
    axi_aw_rd_data_count,
    axi_aw_sbiterr,
    axi_aw_dbiterr,
    axi_aw_overflow,
    axi_aw_underflow,
    axi_aw_prog_full,
    axi_aw_prog_empty,
    axi_w_injectsbiterr,
    axi_w_injectdbiterr,
    axi_w_prog_full_thresh,
    axi_w_prog_empty_thresh,
    axi_w_data_count,
    axi_w_wr_data_count,
    axi_w_rd_data_count,
    axi_w_sbiterr,
    axi_w_dbiterr,
    axi_w_overflow,
    axi_w_underflow,
    axi_w_prog_full,
    axi_w_prog_empty,
    axi_b_injectsbiterr,
    axi_b_injectdbiterr,
    axi_b_prog_full_thresh,
    axi_b_prog_empty_thresh,
    axi_b_data_count,
    axi_b_wr_data_count,
    axi_b_rd_data_count,
    axi_b_sbiterr,
    axi_b_dbiterr,
    axi_b_overflow,
    axi_b_underflow,
    axi_b_prog_full,
    axi_b_prog_empty,
    axi_ar_injectsbiterr,
    axi_ar_injectdbiterr,
    axi_ar_prog_full_thresh,
    axi_ar_prog_empty_thresh,
    axi_ar_data_count,
    axi_ar_wr_data_count,
    axi_ar_rd_data_count,
    axi_ar_sbiterr,
    axi_ar_dbiterr,
    axi_ar_overflow,
    axi_ar_underflow,
    axi_ar_prog_full,
    axi_ar_prog_empty,
    axi_r_injectsbiterr,
    axi_r_injectdbiterr,
    axi_r_prog_full_thresh,
    axi_r_prog_empty_thresh,
    axi_r_data_count,
    axi_r_wr_data_count,
    axi_r_rd_data_count,
    axi_r_sbiterr,
    axi_r_dbiterr,
    axi_r_overflow,
    axi_r_underflow,
    axi_r_prog_full,
    axi_r_prog_empty,
    axis_injectsbiterr,
    axis_injectdbiterr,
    axis_prog_full_thresh,
    axis_prog_empty_thresh,
    axis_data_count,
    axis_wr_data_count,
    axis_rd_data_count,
    axis_sbiterr,
    axis_dbiterr,
    axis_overflow,
    axis_underflow,
    axis_prog_full,
    axis_prog_empty);
  input backup;
  input backup_marker;
  input clk;
  input rst;
  input srst;
  input wr_clk;
  input wr_rst;
  input rd_clk;
  input rd_rst;
  input [7:0]din;
  input wr_en;
  input rd_en;
  input [9:0]prog_empty_thresh;
  input [9:0]prog_empty_thresh_assert;
  input [9:0]prog_empty_thresh_negate;
  input [9:0]prog_full_thresh;
  input [9:0]prog_full_thresh_assert;
  input [9:0]prog_full_thresh_negate;
  input int_clk;
  input injectdbiterr;
  input injectsbiterr;
  input sleep;
  output [7:0]dout;
  output full;
  output almost_full;
  output wr_ack;
  output overflow;
  output empty;
  output almost_empty;
  output valid;
  output underflow;
  output [9:0]data_count;
  output [9:0]rd_data_count;
  output [9:0]wr_data_count;
  output prog_full;
  output prog_empty;
  output sbiterr;
  output dbiterr;
  output wr_rst_busy;
  output rd_rst_busy;
  input m_aclk;
  input s_aclk;
  input s_aresetn;
  input m_aclk_en;
  input s_aclk_en;
  input [0:0]s_axi_awid;
  input [31:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input [0:0]s_axi_awlock;
  input [3:0]s_axi_awcache;
  input [2:0]s_axi_awprot;
  input [3:0]s_axi_awqos;
  input [3:0]s_axi_awregion;
  input [0:0]s_axi_awuser;
  input s_axi_awvalid;
  output s_axi_awready;
  input [0:0]s_axi_wid;
  input [63:0]s_axi_wdata;
  input [7:0]s_axi_wstrb;
  input s_axi_wlast;
  input [0:0]s_axi_wuser;
  input s_axi_wvalid;
  output s_axi_wready;
  output [0:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output [0:0]s_axi_buser;
  output s_axi_bvalid;
  input s_axi_bready;
  output [0:0]m_axi_awid;
  output [31:0]m_axi_awaddr;
  output [7:0]m_axi_awlen;
  output [2:0]m_axi_awsize;
  output [1:0]m_axi_awburst;
  output [0:0]m_axi_awlock;
  output [3:0]m_axi_awcache;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awqos;
  output [3:0]m_axi_awregion;
  output [0:0]m_axi_awuser;
  output m_axi_awvalid;
  input m_axi_awready;
  output [0:0]m_axi_wid;
  output [63:0]m_axi_wdata;
  output [7:0]m_axi_wstrb;
  output m_axi_wlast;
  output [0:0]m_axi_wuser;
  output m_axi_wvalid;
  input m_axi_wready;
  input [0:0]m_axi_bid;
  input [1:0]m_axi_bresp;
  input [0:0]m_axi_buser;
  input m_axi_bvalid;
  output m_axi_bready;
  input [0:0]s_axi_arid;
  input [31:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input [0:0]s_axi_arlock;
  input [3:0]s_axi_arcache;
  input [2:0]s_axi_arprot;
  input [3:0]s_axi_arqos;
  input [3:0]s_axi_arregion;
  input [0:0]s_axi_aruser;
  input s_axi_arvalid;
  output s_axi_arready;
  output [0:0]s_axi_rid;
  output [63:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output [0:0]s_axi_ruser;
  output s_axi_rvalid;
  input s_axi_rready;
  output [0:0]m_axi_arid;
  output [31:0]m_axi_araddr;
  output [7:0]m_axi_arlen;
  output [2:0]m_axi_arsize;
  output [1:0]m_axi_arburst;
  output [0:0]m_axi_arlock;
  output [3:0]m_axi_arcache;
  output [2:0]m_axi_arprot;
  output [3:0]m_axi_arqos;
  output [3:0]m_axi_arregion;
  output [0:0]m_axi_aruser;
  output m_axi_arvalid;
  input m_axi_arready;
  input [0:0]m_axi_rid;
  input [63:0]m_axi_rdata;
  input [1:0]m_axi_rresp;
  input m_axi_rlast;
  input [0:0]m_axi_ruser;
  input m_axi_rvalid;
  output m_axi_rready;
  input s_axis_tvalid;
  output s_axis_tready;
  input [7:0]s_axis_tdata;
  input [0:0]s_axis_tstrb;
  input [0:0]s_axis_tkeep;
  input s_axis_tlast;
  input [0:0]s_axis_tid;
  input [0:0]s_axis_tdest;
  input [3:0]s_axis_tuser;
  output m_axis_tvalid;
  input m_axis_tready;
  output [7:0]m_axis_tdata;
  output [0:0]m_axis_tstrb;
  output [0:0]m_axis_tkeep;
  output m_axis_tlast;
  output [0:0]m_axis_tid;
  output [0:0]m_axis_tdest;
  output [3:0]m_axis_tuser;
  input axi_aw_injectsbiterr;
  input axi_aw_injectdbiterr;
  input [3:0]axi_aw_prog_full_thresh;
  input [3:0]axi_aw_prog_empty_thresh;
  output [4:0]axi_aw_data_count;
  output [4:0]axi_aw_wr_data_count;
  output [4:0]axi_aw_rd_data_count;
  output axi_aw_sbiterr;
  output axi_aw_dbiterr;
  output axi_aw_overflow;
  output axi_aw_underflow;
  output axi_aw_prog_full;
  output axi_aw_prog_empty;
  input axi_w_injectsbiterr;
  input axi_w_injectdbiterr;
  input [9:0]axi_w_prog_full_thresh;
  input [9:0]axi_w_prog_empty_thresh;
  output [10:0]axi_w_data_count;
  output [10:0]axi_w_wr_data_count;
  output [10:0]axi_w_rd_data_count;
  output axi_w_sbiterr;
  output axi_w_dbiterr;
  output axi_w_overflow;
  output axi_w_underflow;
  output axi_w_prog_full;
  output axi_w_prog_empty;
  input axi_b_injectsbiterr;
  input axi_b_injectdbiterr;
  input [3:0]axi_b_prog_full_thresh;
  input [3:0]axi_b_prog_empty_thresh;
  output [4:0]axi_b_data_count;
  output [4:0]axi_b_wr_data_count;
  output [4:0]axi_b_rd_data_count;
  output axi_b_sbiterr;
  output axi_b_dbiterr;
  output axi_b_overflow;
  output axi_b_underflow;
  output axi_b_prog_full;
  output axi_b_prog_empty;
  input axi_ar_injectsbiterr;
  input axi_ar_injectdbiterr;
  input [3:0]axi_ar_prog_full_thresh;
  input [3:0]axi_ar_prog_empty_thresh;
  output [4:0]axi_ar_data_count;
  output [4:0]axi_ar_wr_data_count;
  output [4:0]axi_ar_rd_data_count;
  output axi_ar_sbiterr;
  output axi_ar_dbiterr;
  output axi_ar_overflow;
  output axi_ar_underflow;
  output axi_ar_prog_full;
  output axi_ar_prog_empty;
  input axi_r_injectsbiterr;
  input axi_r_injectdbiterr;
  input [9:0]axi_r_prog_full_thresh;
  input [9:0]axi_r_prog_empty_thresh;
  output [10:0]axi_r_data_count;
  output [10:0]axi_r_wr_data_count;
  output [10:0]axi_r_rd_data_count;
  output axi_r_sbiterr;
  output axi_r_dbiterr;
  output axi_r_overflow;
  output axi_r_underflow;
  output axi_r_prog_full;
  output axi_r_prog_empty;
  input axis_injectsbiterr;
  input axis_injectdbiterr;
  input [9:0]axis_prog_full_thresh;
  input [9:0]axis_prog_empty_thresh;
  output [10:0]axis_data_count;
  output [10:0]axis_wr_data_count;
  output [10:0]axis_rd_data_count;
  output axis_sbiterr;
  output axis_dbiterr;
  output axis_overflow;
  output axis_underflow;
  output axis_prog_full;
  output axis_prog_empty;

  wire \<const0> ;
  wire \<const1> ;
  wire [7:0]din;
  wire [7:0]dout;
  wire empty;
  wire full;
  wire rd_clk;
  wire [9:0]rd_data_count;
  wire rd_en;
  wire wr_clk;
  wire wr_en;

  assign almost_empty = \<const0> ;
  assign almost_full = \<const0> ;
  assign axi_ar_data_count[4] = \<const0> ;
  assign axi_ar_data_count[3] = \<const0> ;
  assign axi_ar_data_count[2] = \<const0> ;
  assign axi_ar_data_count[1] = \<const0> ;
  assign axi_ar_data_count[0] = \<const0> ;
  assign axi_ar_dbiterr = \<const0> ;
  assign axi_ar_overflow = \<const0> ;
  assign axi_ar_prog_empty = \<const1> ;
  assign axi_ar_prog_full = \<const0> ;
  assign axi_ar_rd_data_count[4] = \<const0> ;
  assign axi_ar_rd_data_count[3] = \<const0> ;
  assign axi_ar_rd_data_count[2] = \<const0> ;
  assign axi_ar_rd_data_count[1] = \<const0> ;
  assign axi_ar_rd_data_count[0] = \<const0> ;
  assign axi_ar_sbiterr = \<const0> ;
  assign axi_ar_underflow = \<const0> ;
  assign axi_ar_wr_data_count[4] = \<const0> ;
  assign axi_ar_wr_data_count[3] = \<const0> ;
  assign axi_ar_wr_data_count[2] = \<const0> ;
  assign axi_ar_wr_data_count[1] = \<const0> ;
  assign axi_ar_wr_data_count[0] = \<const0> ;
  assign axi_aw_data_count[4] = \<const0> ;
  assign axi_aw_data_count[3] = \<const0> ;
  assign axi_aw_data_count[2] = \<const0> ;
  assign axi_aw_data_count[1] = \<const0> ;
  assign axi_aw_data_count[0] = \<const0> ;
  assign axi_aw_dbiterr = \<const0> ;
  assign axi_aw_overflow = \<const0> ;
  assign axi_aw_prog_empty = \<const1> ;
  assign axi_aw_prog_full = \<const0> ;
  assign axi_aw_rd_data_count[4] = \<const0> ;
  assign axi_aw_rd_data_count[3] = \<const0> ;
  assign axi_aw_rd_data_count[2] = \<const0> ;
  assign axi_aw_rd_data_count[1] = \<const0> ;
  assign axi_aw_rd_data_count[0] = \<const0> ;
  assign axi_aw_sbiterr = \<const0> ;
  assign axi_aw_underflow = \<const0> ;
  assign axi_aw_wr_data_count[4] = \<const0> ;
  assign axi_aw_wr_data_count[3] = \<const0> ;
  assign axi_aw_wr_data_count[2] = \<const0> ;
  assign axi_aw_wr_data_count[1] = \<const0> ;
  assign axi_aw_wr_data_count[0] = \<const0> ;
  assign axi_b_data_count[4] = \<const0> ;
  assign axi_b_data_count[3] = \<const0> ;
  assign axi_b_data_count[2] = \<const0> ;
  assign axi_b_data_count[1] = \<const0> ;
  assign axi_b_data_count[0] = \<const0> ;
  assign axi_b_dbiterr = \<const0> ;
  assign axi_b_overflow = \<const0> ;
  assign axi_b_prog_empty = \<const1> ;
  assign axi_b_prog_full = \<const0> ;
  assign axi_b_rd_data_count[4] = \<const0> ;
  assign axi_b_rd_data_count[3] = \<const0> ;
  assign axi_b_rd_data_count[2] = \<const0> ;
  assign axi_b_rd_data_count[1] = \<const0> ;
  assign axi_b_rd_data_count[0] = \<const0> ;
  assign axi_b_sbiterr = \<const0> ;
  assign axi_b_underflow = \<const0> ;
  assign axi_b_wr_data_count[4] = \<const0> ;
  assign axi_b_wr_data_count[3] = \<const0> ;
  assign axi_b_wr_data_count[2] = \<const0> ;
  assign axi_b_wr_data_count[1] = \<const0> ;
  assign axi_b_wr_data_count[0] = \<const0> ;
  assign axi_r_data_count[10] = \<const0> ;
  assign axi_r_data_count[9] = \<const0> ;
  assign axi_r_data_count[8] = \<const0> ;
  assign axi_r_data_count[7] = \<const0> ;
  assign axi_r_data_count[6] = \<const0> ;
  assign axi_r_data_count[5] = \<const0> ;
  assign axi_r_data_count[4] = \<const0> ;
  assign axi_r_data_count[3] = \<const0> ;
  assign axi_r_data_count[2] = \<const0> ;
  assign axi_r_data_count[1] = \<const0> ;
  assign axi_r_data_count[0] = \<const0> ;
  assign axi_r_dbiterr = \<const0> ;
  assign axi_r_overflow = \<const0> ;
  assign axi_r_prog_empty = \<const1> ;
  assign axi_r_prog_full = \<const0> ;
  assign axi_r_rd_data_count[10] = \<const0> ;
  assign axi_r_rd_data_count[9] = \<const0> ;
  assign axi_r_rd_data_count[8] = \<const0> ;
  assign axi_r_rd_data_count[7] = \<const0> ;
  assign axi_r_rd_data_count[6] = \<const0> ;
  assign axi_r_rd_data_count[5] = \<const0> ;
  assign axi_r_rd_data_count[4] = \<const0> ;
  assign axi_r_rd_data_count[3] = \<const0> ;
  assign axi_r_rd_data_count[2] = \<const0> ;
  assign axi_r_rd_data_count[1] = \<const0> ;
  assign axi_r_rd_data_count[0] = \<const0> ;
  assign axi_r_sbiterr = \<const0> ;
  assign axi_r_underflow = \<const0> ;
  assign axi_r_wr_data_count[10] = \<const0> ;
  assign axi_r_wr_data_count[9] = \<const0> ;
  assign axi_r_wr_data_count[8] = \<const0> ;
  assign axi_r_wr_data_count[7] = \<const0> ;
  assign axi_r_wr_data_count[6] = \<const0> ;
  assign axi_r_wr_data_count[5] = \<const0> ;
  assign axi_r_wr_data_count[4] = \<const0> ;
  assign axi_r_wr_data_count[3] = \<const0> ;
  assign axi_r_wr_data_count[2] = \<const0> ;
  assign axi_r_wr_data_count[1] = \<const0> ;
  assign axi_r_wr_data_count[0] = \<const0> ;
  assign axi_w_data_count[10] = \<const0> ;
  assign axi_w_data_count[9] = \<const0> ;
  assign axi_w_data_count[8] = \<const0> ;
  assign axi_w_data_count[7] = \<const0> ;
  assign axi_w_data_count[6] = \<const0> ;
  assign axi_w_data_count[5] = \<const0> ;
  assign axi_w_data_count[4] = \<const0> ;
  assign axi_w_data_count[3] = \<const0> ;
  assign axi_w_data_count[2] = \<const0> ;
  assign axi_w_data_count[1] = \<const0> ;
  assign axi_w_data_count[0] = \<const0> ;
  assign axi_w_dbiterr = \<const0> ;
  assign axi_w_overflow = \<const0> ;
  assign axi_w_prog_empty = \<const1> ;
  assign axi_w_prog_full = \<const0> ;
  assign axi_w_rd_data_count[10] = \<const0> ;
  assign axi_w_rd_data_count[9] = \<const0> ;
  assign axi_w_rd_data_count[8] = \<const0> ;
  assign axi_w_rd_data_count[7] = \<const0> ;
  assign axi_w_rd_data_count[6] = \<const0> ;
  assign axi_w_rd_data_count[5] = \<const0> ;
  assign axi_w_rd_data_count[4] = \<const0> ;
  assign axi_w_rd_data_count[3] = \<const0> ;
  assign axi_w_rd_data_count[2] = \<const0> ;
  assign axi_w_rd_data_count[1] = \<const0> ;
  assign axi_w_rd_data_count[0] = \<const0> ;
  assign axi_w_sbiterr = \<const0> ;
  assign axi_w_underflow = \<const0> ;
  assign axi_w_wr_data_count[10] = \<const0> ;
  assign axi_w_wr_data_count[9] = \<const0> ;
  assign axi_w_wr_data_count[8] = \<const0> ;
  assign axi_w_wr_data_count[7] = \<const0> ;
  assign axi_w_wr_data_count[6] = \<const0> ;
  assign axi_w_wr_data_count[5] = \<const0> ;
  assign axi_w_wr_data_count[4] = \<const0> ;
  assign axi_w_wr_data_count[3] = \<const0> ;
  assign axi_w_wr_data_count[2] = \<const0> ;
  assign axi_w_wr_data_count[1] = \<const0> ;
  assign axi_w_wr_data_count[0] = \<const0> ;
  assign axis_data_count[10] = \<const0> ;
  assign axis_data_count[9] = \<const0> ;
  assign axis_data_count[8] = \<const0> ;
  assign axis_data_count[7] = \<const0> ;
  assign axis_data_count[6] = \<const0> ;
  assign axis_data_count[5] = \<const0> ;
  assign axis_data_count[4] = \<const0> ;
  assign axis_data_count[3] = \<const0> ;
  assign axis_data_count[2] = \<const0> ;
  assign axis_data_count[1] = \<const0> ;
  assign axis_data_count[0] = \<const0> ;
  assign axis_dbiterr = \<const0> ;
  assign axis_overflow = \<const0> ;
  assign axis_prog_empty = \<const1> ;
  assign axis_prog_full = \<const0> ;
  assign axis_rd_data_count[10] = \<const0> ;
  assign axis_rd_data_count[9] = \<const0> ;
  assign axis_rd_data_count[8] = \<const0> ;
  assign axis_rd_data_count[7] = \<const0> ;
  assign axis_rd_data_count[6] = \<const0> ;
  assign axis_rd_data_count[5] = \<const0> ;
  assign axis_rd_data_count[4] = \<const0> ;
  assign axis_rd_data_count[3] = \<const0> ;
  assign axis_rd_data_count[2] = \<const0> ;
  assign axis_rd_data_count[1] = \<const0> ;
  assign axis_rd_data_count[0] = \<const0> ;
  assign axis_sbiterr = \<const0> ;
  assign axis_underflow = \<const0> ;
  assign axis_wr_data_count[10] = \<const0> ;
  assign axis_wr_data_count[9] = \<const0> ;
  assign axis_wr_data_count[8] = \<const0> ;
  assign axis_wr_data_count[7] = \<const0> ;
  assign axis_wr_data_count[6] = \<const0> ;
  assign axis_wr_data_count[5] = \<const0> ;
  assign axis_wr_data_count[4] = \<const0> ;
  assign axis_wr_data_count[3] = \<const0> ;
  assign axis_wr_data_count[2] = \<const0> ;
  assign axis_wr_data_count[1] = \<const0> ;
  assign axis_wr_data_count[0] = \<const0> ;
  assign data_count[9] = \<const0> ;
  assign data_count[8] = \<const0> ;
  assign data_count[7] = \<const0> ;
  assign data_count[6] = \<const0> ;
  assign data_count[5] = \<const0> ;
  assign data_count[4] = \<const0> ;
  assign data_count[3] = \<const0> ;
  assign data_count[2] = \<const0> ;
  assign data_count[1] = \<const0> ;
  assign data_count[0] = \<const0> ;
  assign dbiterr = \<const0> ;
  assign m_axi_araddr[31] = \<const0> ;
  assign m_axi_araddr[30] = \<const0> ;
  assign m_axi_araddr[29] = \<const0> ;
  assign m_axi_araddr[28] = \<const0> ;
  assign m_axi_araddr[27] = \<const0> ;
  assign m_axi_araddr[26] = \<const0> ;
  assign m_axi_araddr[25] = \<const0> ;
  assign m_axi_araddr[24] = \<const0> ;
  assign m_axi_araddr[23] = \<const0> ;
  assign m_axi_araddr[22] = \<const0> ;
  assign m_axi_araddr[21] = \<const0> ;
  assign m_axi_araddr[20] = \<const0> ;
  assign m_axi_araddr[19] = \<const0> ;
  assign m_axi_araddr[18] = \<const0> ;
  assign m_axi_araddr[17] = \<const0> ;
  assign m_axi_araddr[16] = \<const0> ;
  assign m_axi_araddr[15] = \<const0> ;
  assign m_axi_araddr[14] = \<const0> ;
  assign m_axi_araddr[13] = \<const0> ;
  assign m_axi_araddr[12] = \<const0> ;
  assign m_axi_araddr[11] = \<const0> ;
  assign m_axi_araddr[10] = \<const0> ;
  assign m_axi_araddr[9] = \<const0> ;
  assign m_axi_araddr[8] = \<const0> ;
  assign m_axi_araddr[7] = \<const0> ;
  assign m_axi_araddr[6] = \<const0> ;
  assign m_axi_araddr[5] = \<const0> ;
  assign m_axi_araddr[4] = \<const0> ;
  assign m_axi_araddr[3] = \<const0> ;
  assign m_axi_araddr[2] = \<const0> ;
  assign m_axi_araddr[1] = \<const0> ;
  assign m_axi_araddr[0] = \<const0> ;
  assign m_axi_arburst[1] = \<const0> ;
  assign m_axi_arburst[0] = \<const0> ;
  assign m_axi_arcache[3] = \<const0> ;
  assign m_axi_arcache[2] = \<const0> ;
  assign m_axi_arcache[1] = \<const0> ;
  assign m_axi_arcache[0] = \<const0> ;
  assign m_axi_arid[0] = \<const0> ;
  assign m_axi_arlen[7] = \<const0> ;
  assign m_axi_arlen[6] = \<const0> ;
  assign m_axi_arlen[5] = \<const0> ;
  assign m_axi_arlen[4] = \<const0> ;
  assign m_axi_arlen[3] = \<const0> ;
  assign m_axi_arlen[2] = \<const0> ;
  assign m_axi_arlen[1] = \<const0> ;
  assign m_axi_arlen[0] = \<const0> ;
  assign m_axi_arlock[0] = \<const0> ;
  assign m_axi_arprot[2] = \<const0> ;
  assign m_axi_arprot[1] = \<const0> ;
  assign m_axi_arprot[0] = \<const0> ;
  assign m_axi_arqos[3] = \<const0> ;
  assign m_axi_arqos[2] = \<const0> ;
  assign m_axi_arqos[1] = \<const0> ;
  assign m_axi_arqos[0] = \<const0> ;
  assign m_axi_arregion[3] = \<const0> ;
  assign m_axi_arregion[2] = \<const0> ;
  assign m_axi_arregion[1] = \<const0> ;
  assign m_axi_arregion[0] = \<const0> ;
  assign m_axi_arsize[2] = \<const0> ;
  assign m_axi_arsize[1] = \<const0> ;
  assign m_axi_arsize[0] = \<const0> ;
  assign m_axi_aruser[0] = \<const0> ;
  assign m_axi_arvalid = \<const0> ;
  assign m_axi_awaddr[31] = \<const0> ;
  assign m_axi_awaddr[30] = \<const0> ;
  assign m_axi_awaddr[29] = \<const0> ;
  assign m_axi_awaddr[28] = \<const0> ;
  assign m_axi_awaddr[27] = \<const0> ;
  assign m_axi_awaddr[26] = \<const0> ;
  assign m_axi_awaddr[25] = \<const0> ;
  assign m_axi_awaddr[24] = \<const0> ;
  assign m_axi_awaddr[23] = \<const0> ;
  assign m_axi_awaddr[22] = \<const0> ;
  assign m_axi_awaddr[21] = \<const0> ;
  assign m_axi_awaddr[20] = \<const0> ;
  assign m_axi_awaddr[19] = \<const0> ;
  assign m_axi_awaddr[18] = \<const0> ;
  assign m_axi_awaddr[17] = \<const0> ;
  assign m_axi_awaddr[16] = \<const0> ;
  assign m_axi_awaddr[15] = \<const0> ;
  assign m_axi_awaddr[14] = \<const0> ;
  assign m_axi_awaddr[13] = \<const0> ;
  assign m_axi_awaddr[12] = \<const0> ;
  assign m_axi_awaddr[11] = \<const0> ;
  assign m_axi_awaddr[10] = \<const0> ;
  assign m_axi_awaddr[9] = \<const0> ;
  assign m_axi_awaddr[8] = \<const0> ;
  assign m_axi_awaddr[7] = \<const0> ;
  assign m_axi_awaddr[6] = \<const0> ;
  assign m_axi_awaddr[5] = \<const0> ;
  assign m_axi_awaddr[4] = \<const0> ;
  assign m_axi_awaddr[3] = \<const0> ;
  assign m_axi_awaddr[2] = \<const0> ;
  assign m_axi_awaddr[1] = \<const0> ;
  assign m_axi_awaddr[0] = \<const0> ;
  assign m_axi_awburst[1] = \<const0> ;
  assign m_axi_awburst[0] = \<const0> ;
  assign m_axi_awcache[3] = \<const0> ;
  assign m_axi_awcache[2] = \<const0> ;
  assign m_axi_awcache[1] = \<const0> ;
  assign m_axi_awcache[0] = \<const0> ;
  assign m_axi_awid[0] = \<const0> ;
  assign m_axi_awlen[7] = \<const0> ;
  assign m_axi_awlen[6] = \<const0> ;
  assign m_axi_awlen[5] = \<const0> ;
  assign m_axi_awlen[4] = \<const0> ;
  assign m_axi_awlen[3] = \<const0> ;
  assign m_axi_awlen[2] = \<const0> ;
  assign m_axi_awlen[1] = \<const0> ;
  assign m_axi_awlen[0] = \<const0> ;
  assign m_axi_awlock[0] = \<const0> ;
  assign m_axi_awprot[2] = \<const0> ;
  assign m_axi_awprot[1] = \<const0> ;
  assign m_axi_awprot[0] = \<const0> ;
  assign m_axi_awqos[3] = \<const0> ;
  assign m_axi_awqos[2] = \<const0> ;
  assign m_axi_awqos[1] = \<const0> ;
  assign m_axi_awqos[0] = \<const0> ;
  assign m_axi_awregion[3] = \<const0> ;
  assign m_axi_awregion[2] = \<const0> ;
  assign m_axi_awregion[1] = \<const0> ;
  assign m_axi_awregion[0] = \<const0> ;
  assign m_axi_awsize[2] = \<const0> ;
  assign m_axi_awsize[1] = \<const0> ;
  assign m_axi_awsize[0] = \<const0> ;
  assign m_axi_awuser[0] = \<const0> ;
  assign m_axi_awvalid = \<const0> ;
  assign m_axi_bready = \<const0> ;
  assign m_axi_rready = \<const0> ;
  assign m_axi_wdata[63] = \<const0> ;
  assign m_axi_wdata[62] = \<const0> ;
  assign m_axi_wdata[61] = \<const0> ;
  assign m_axi_wdata[60] = \<const0> ;
  assign m_axi_wdata[59] = \<const0> ;
  assign m_axi_wdata[58] = \<const0> ;
  assign m_axi_wdata[57] = \<const0> ;
  assign m_axi_wdata[56] = \<const0> ;
  assign m_axi_wdata[55] = \<const0> ;
  assign m_axi_wdata[54] = \<const0> ;
  assign m_axi_wdata[53] = \<const0> ;
  assign m_axi_wdata[52] = \<const0> ;
  assign m_axi_wdata[51] = \<const0> ;
  assign m_axi_wdata[50] = \<const0> ;
  assign m_axi_wdata[49] = \<const0> ;
  assign m_axi_wdata[48] = \<const0> ;
  assign m_axi_wdata[47] = \<const0> ;
  assign m_axi_wdata[46] = \<const0> ;
  assign m_axi_wdata[45] = \<const0> ;
  assign m_axi_wdata[44] = \<const0> ;
  assign m_axi_wdata[43] = \<const0> ;
  assign m_axi_wdata[42] = \<const0> ;
  assign m_axi_wdata[41] = \<const0> ;
  assign m_axi_wdata[40] = \<const0> ;
  assign m_axi_wdata[39] = \<const0> ;
  assign m_axi_wdata[38] = \<const0> ;
  assign m_axi_wdata[37] = \<const0> ;
  assign m_axi_wdata[36] = \<const0> ;
  assign m_axi_wdata[35] = \<const0> ;
  assign m_axi_wdata[34] = \<const0> ;
  assign m_axi_wdata[33] = \<const0> ;
  assign m_axi_wdata[32] = \<const0> ;
  assign m_axi_wdata[31] = \<const0> ;
  assign m_axi_wdata[30] = \<const0> ;
  assign m_axi_wdata[29] = \<const0> ;
  assign m_axi_wdata[28] = \<const0> ;
  assign m_axi_wdata[27] = \<const0> ;
  assign m_axi_wdata[26] = \<const0> ;
  assign m_axi_wdata[25] = \<const0> ;
  assign m_axi_wdata[24] = \<const0> ;
  assign m_axi_wdata[23] = \<const0> ;
  assign m_axi_wdata[22] = \<const0> ;
  assign m_axi_wdata[21] = \<const0> ;
  assign m_axi_wdata[20] = \<const0> ;
  assign m_axi_wdata[19] = \<const0> ;
  assign m_axi_wdata[18] = \<const0> ;
  assign m_axi_wdata[17] = \<const0> ;
  assign m_axi_wdata[16] = \<const0> ;
  assign m_axi_wdata[15] = \<const0> ;
  assign m_axi_wdata[14] = \<const0> ;
  assign m_axi_wdata[13] = \<const0> ;
  assign m_axi_wdata[12] = \<const0> ;
  assign m_axi_wdata[11] = \<const0> ;
  assign m_axi_wdata[10] = \<const0> ;
  assign m_axi_wdata[9] = \<const0> ;
  assign m_axi_wdata[8] = \<const0> ;
  assign m_axi_wdata[7] = \<const0> ;
  assign m_axi_wdata[6] = \<const0> ;
  assign m_axi_wdata[5] = \<const0> ;
  assign m_axi_wdata[4] = \<const0> ;
  assign m_axi_wdata[3] = \<const0> ;
  assign m_axi_wdata[2] = \<const0> ;
  assign m_axi_wdata[1] = \<const0> ;
  assign m_axi_wdata[0] = \<const0> ;
  assign m_axi_wid[0] = \<const0> ;
  assign m_axi_wlast = \<const0> ;
  assign m_axi_wstrb[7] = \<const0> ;
  assign m_axi_wstrb[6] = \<const0> ;
  assign m_axi_wstrb[5] = \<const0> ;
  assign m_axi_wstrb[4] = \<const0> ;
  assign m_axi_wstrb[3] = \<const0> ;
  assign m_axi_wstrb[2] = \<const0> ;
  assign m_axi_wstrb[1] = \<const0> ;
  assign m_axi_wstrb[0] = \<const0> ;
  assign m_axi_wuser[0] = \<const0> ;
  assign m_axi_wvalid = \<const0> ;
  assign m_axis_tdata[7] = \<const0> ;
  assign m_axis_tdata[6] = \<const0> ;
  assign m_axis_tdata[5] = \<const0> ;
  assign m_axis_tdata[4] = \<const0> ;
  assign m_axis_tdata[3] = \<const0> ;
  assign m_axis_tdata[2] = \<const0> ;
  assign m_axis_tdata[1] = \<const0> ;
  assign m_axis_tdata[0] = \<const0> ;
  assign m_axis_tdest[0] = \<const0> ;
  assign m_axis_tid[0] = \<const0> ;
  assign m_axis_tkeep[0] = \<const0> ;
  assign m_axis_tlast = \<const0> ;
  assign m_axis_tstrb[0] = \<const0> ;
  assign m_axis_tuser[3] = \<const0> ;
  assign m_axis_tuser[2] = \<const0> ;
  assign m_axis_tuser[1] = \<const0> ;
  assign m_axis_tuser[0] = \<const0> ;
  assign m_axis_tvalid = \<const0> ;
  assign overflow = \<const0> ;
  assign prog_empty = \<const0> ;
  assign prog_full = \<const0> ;
  assign rd_rst_busy = \<const0> ;
  assign s_axi_arready = \<const0> ;
  assign s_axi_awready = \<const0> ;
  assign s_axi_bid[0] = \<const0> ;
  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_buser[0] = \<const0> ;
  assign s_axi_bvalid = \<const0> ;
  assign s_axi_rdata[63] = \<const0> ;
  assign s_axi_rdata[62] = \<const0> ;
  assign s_axi_rdata[61] = \<const0> ;
  assign s_axi_rdata[60] = \<const0> ;
  assign s_axi_rdata[59] = \<const0> ;
  assign s_axi_rdata[58] = \<const0> ;
  assign s_axi_rdata[57] = \<const0> ;
  assign s_axi_rdata[56] = \<const0> ;
  assign s_axi_rdata[55] = \<const0> ;
  assign s_axi_rdata[54] = \<const0> ;
  assign s_axi_rdata[53] = \<const0> ;
  assign s_axi_rdata[52] = \<const0> ;
  assign s_axi_rdata[51] = \<const0> ;
  assign s_axi_rdata[50] = \<const0> ;
  assign s_axi_rdata[49] = \<const0> ;
  assign s_axi_rdata[48] = \<const0> ;
  assign s_axi_rdata[47] = \<const0> ;
  assign s_axi_rdata[46] = \<const0> ;
  assign s_axi_rdata[45] = \<const0> ;
  assign s_axi_rdata[44] = \<const0> ;
  assign s_axi_rdata[43] = \<const0> ;
  assign s_axi_rdata[42] = \<const0> ;
  assign s_axi_rdata[41] = \<const0> ;
  assign s_axi_rdata[40] = \<const0> ;
  assign s_axi_rdata[39] = \<const0> ;
  assign s_axi_rdata[38] = \<const0> ;
  assign s_axi_rdata[37] = \<const0> ;
  assign s_axi_rdata[36] = \<const0> ;
  assign s_axi_rdata[35] = \<const0> ;
  assign s_axi_rdata[34] = \<const0> ;
  assign s_axi_rdata[33] = \<const0> ;
  assign s_axi_rdata[32] = \<const0> ;
  assign s_axi_rdata[31] = \<const0> ;
  assign s_axi_rdata[30] = \<const0> ;
  assign s_axi_rdata[29] = \<const0> ;
  assign s_axi_rdata[28] = \<const0> ;
  assign s_axi_rdata[27] = \<const0> ;
  assign s_axi_rdata[26] = \<const0> ;
  assign s_axi_rdata[25] = \<const0> ;
  assign s_axi_rdata[24] = \<const0> ;
  assign s_axi_rdata[23] = \<const0> ;
  assign s_axi_rdata[22] = \<const0> ;
  assign s_axi_rdata[21] = \<const0> ;
  assign s_axi_rdata[20] = \<const0> ;
  assign s_axi_rdata[19] = \<const0> ;
  assign s_axi_rdata[18] = \<const0> ;
  assign s_axi_rdata[17] = \<const0> ;
  assign s_axi_rdata[16] = \<const0> ;
  assign s_axi_rdata[15] = \<const0> ;
  assign s_axi_rdata[14] = \<const0> ;
  assign s_axi_rdata[13] = \<const0> ;
  assign s_axi_rdata[12] = \<const0> ;
  assign s_axi_rdata[11] = \<const0> ;
  assign s_axi_rdata[10] = \<const0> ;
  assign s_axi_rdata[9] = \<const0> ;
  assign s_axi_rdata[8] = \<const0> ;
  assign s_axi_rdata[7] = \<const0> ;
  assign s_axi_rdata[6] = \<const0> ;
  assign s_axi_rdata[5] = \<const0> ;
  assign s_axi_rdata[4] = \<const0> ;
  assign s_axi_rdata[3] = \<const0> ;
  assign s_axi_rdata[2] = \<const0> ;
  assign s_axi_rdata[1] = \<const0> ;
  assign s_axi_rdata[0] = \<const0> ;
  assign s_axi_rid[0] = \<const0> ;
  assign s_axi_rlast = \<const0> ;
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  assign s_axi_ruser[0] = \<const0> ;
  assign s_axi_rvalid = \<const0> ;
  assign s_axi_wready = \<const0> ;
  assign s_axis_tready = \<const0> ;
  assign sbiterr = \<const0> ;
  assign underflow = \<const0> ;
  assign valid = \<const0> ;
  assign wr_ack = \<const0> ;
  assign wr_data_count[9] = \<const0> ;
  assign wr_data_count[8] = \<const0> ;
  assign wr_data_count[7] = \<const0> ;
  assign wr_data_count[6] = \<const0> ;
  assign wr_data_count[5] = \<const0> ;
  assign wr_data_count[4] = \<const0> ;
  assign wr_data_count[3] = \<const0> ;
  assign wr_data_count[2] = \<const0> ;
  assign wr_data_count[1] = \<const0> ;
  assign wr_data_count[0] = \<const0> ;
  assign wr_rst_busy = \<const0> ;
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  buf_fifo_fifo_generator_v13_2_5_synth inst_fifo_gen
       (.din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .rd_clk(rd_clk),
        .rd_data_count(rd_data_count),
        .rd_en(rd_en),
        .wr_clk(wr_clk),
        .wr_en(wr_en));
endmodule

(* ORIG_REF_NAME = "fifo_generator_v13_2_5_synth" *) 
module buf_fifo_fifo_generator_v13_2_5_synth
   (empty,
    full,
    rd_data_count,
    dout,
    wr_clk,
    rd_clk,
    din,
    wr_en,
    rd_en);
  output empty;
  output full;
  output [9:0]rd_data_count;
  output [7:0]dout;
  input wr_clk;
  input rd_clk;
  input [7:0]din;
  input wr_en;
  input rd_en;

  wire [7:0]din;
  wire [7:0]dout;
  wire empty;
  wire full;
  wire rd_clk;
  wire [9:0]rd_data_count;
  wire rd_en;
  wire wr_clk;
  wire wr_en;

  buf_fifo_fifo_generator_top \gconvfifo.rf 
       (.din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .rd_clk(rd_clk),
        .rd_data_count(rd_data_count),
        .rd_en(rd_en),
        .wr_clk(wr_clk),
        .wr_en(wr_en));
endmodule

(* ORIG_REF_NAME = "memory" *) 
module buf_fifo_memory
   (dout,
    wr_clk,
    din,
    \gpr1.dout_i[2]_i_4 ,
    Q,
    \gpr1.dout_i[7]_i_8 ,
    \gpr1.dout_i[2]_i_4_0 ,
    \gpr1.dout_i[2]_i_4_1 ,
    \gpr1.dout_i[2]_i_4_2 ,
    \gpr1.dout_i[2]_i_5 ,
    \gpr1.dout_i[2]_i_5_0 ,
    \gpr1.dout_i[2]_i_5_1 ,
    \gpr1.dout_i[2]_i_5_2 ,
    \gpr1.dout_i[2]_i_6 ,
    \gpr1.dout_i[2]_i_6_0 ,
    \gpr1.dout_i[2]_i_6_1 ,
    \gpr1.dout_i[2]_i_6_2 ,
    \gpr1.dout_i[2]_i_7 ,
    \gpr1.dout_i[2]_i_7_0 ,
    \gpr1.dout_i[2]_i_7_1 ,
    \gpr1.dout_i[2]_i_7_2 ,
    E,
    rd_clk);
  output [7:0]dout;
  input wr_clk;
  input [7:0]din;
  input \gpr1.dout_i[2]_i_4 ;
  input [9:0]Q;
  input [5:0]\gpr1.dout_i[7]_i_8 ;
  input \gpr1.dout_i[2]_i_4_0 ;
  input \gpr1.dout_i[2]_i_4_1 ;
  input \gpr1.dout_i[2]_i_4_2 ;
  input \gpr1.dout_i[2]_i_5 ;
  input \gpr1.dout_i[2]_i_5_0 ;
  input \gpr1.dout_i[2]_i_5_1 ;
  input \gpr1.dout_i[2]_i_5_2 ;
  input \gpr1.dout_i[2]_i_6 ;
  input \gpr1.dout_i[2]_i_6_0 ;
  input \gpr1.dout_i[2]_i_6_1 ;
  input \gpr1.dout_i[2]_i_6_2 ;
  input \gpr1.dout_i[2]_i_7 ;
  input \gpr1.dout_i[2]_i_7_0 ;
  input \gpr1.dout_i[2]_i_7_1 ;
  input \gpr1.dout_i[2]_i_7_2 ;
  input [0:0]E;
  input rd_clk;

  wire [0:0]E;
  wire [9:0]Q;
  wire [7:0]din;
  wire [7:0]dout;
  wire \gpr1.dout_i[2]_i_4 ;
  wire \gpr1.dout_i[2]_i_4_0 ;
  wire \gpr1.dout_i[2]_i_4_1 ;
  wire \gpr1.dout_i[2]_i_4_2 ;
  wire \gpr1.dout_i[2]_i_5 ;
  wire \gpr1.dout_i[2]_i_5_0 ;
  wire \gpr1.dout_i[2]_i_5_1 ;
  wire \gpr1.dout_i[2]_i_5_2 ;
  wire \gpr1.dout_i[2]_i_6 ;
  wire \gpr1.dout_i[2]_i_6_0 ;
  wire \gpr1.dout_i[2]_i_6_1 ;
  wire \gpr1.dout_i[2]_i_6_2 ;
  wire \gpr1.dout_i[2]_i_7 ;
  wire \gpr1.dout_i[2]_i_7_0 ;
  wire \gpr1.dout_i[2]_i_7_1 ;
  wire \gpr1.dout_i[2]_i_7_2 ;
  wire [5:0]\gpr1.dout_i[7]_i_8 ;
  wire rd_clk;
  wire wr_clk;

  buf_fifo_dmem \gdm.dm_gen.dm 
       (.E(E),
        .Q(Q),
        .din(din),
        .dout(dout),
        .\gpr1.dout_i[2]_i_4_0 (\gpr1.dout_i[2]_i_4 ),
        .\gpr1.dout_i[2]_i_4_1 (\gpr1.dout_i[2]_i_4_0 ),
        .\gpr1.dout_i[2]_i_4_2 (\gpr1.dout_i[2]_i_4_1 ),
        .\gpr1.dout_i[2]_i_4_3 (\gpr1.dout_i[2]_i_4_2 ),
        .\gpr1.dout_i[2]_i_5_0 (\gpr1.dout_i[2]_i_5 ),
        .\gpr1.dout_i[2]_i_5_1 (\gpr1.dout_i[2]_i_5_0 ),
        .\gpr1.dout_i[2]_i_5_2 (\gpr1.dout_i[2]_i_5_1 ),
        .\gpr1.dout_i[2]_i_5_3 (\gpr1.dout_i[2]_i_5_2 ),
        .\gpr1.dout_i[2]_i_6_0 (\gpr1.dout_i[2]_i_6 ),
        .\gpr1.dout_i[2]_i_6_1 (\gpr1.dout_i[2]_i_6_0 ),
        .\gpr1.dout_i[2]_i_6_2 (\gpr1.dout_i[2]_i_6_1 ),
        .\gpr1.dout_i[2]_i_6_3 (\gpr1.dout_i[2]_i_6_2 ),
        .\gpr1.dout_i[2]_i_7_0 (\gpr1.dout_i[2]_i_7 ),
        .\gpr1.dout_i[2]_i_7_1 (\gpr1.dout_i[2]_i_7_0 ),
        .\gpr1.dout_i[2]_i_7_2 (\gpr1.dout_i[2]_i_7_1 ),
        .\gpr1.dout_i[2]_i_7_3 (\gpr1.dout_i[2]_i_7_2 ),
        .\gpr1.dout_i[7]_i_8_0 (\gpr1.dout_i[7]_i_8 ),
        .rd_clk(rd_clk),
        .wr_clk(wr_clk));
endmodule

(* ORIG_REF_NAME = "rd_bin_cntr" *) 
module buf_fifo_rd_bin_cntr
   (v1_reg,
    Q,
    WR_PNTR_RD,
    E,
    rd_clk);
  output [4:0]v1_reg;
  output [9:0]Q;
  input [9:0]WR_PNTR_RD;
  input [0:0]E;
  input rd_clk;

  wire [0:0]E;
  wire [9:0]Q;
  wire [9:0]WR_PNTR_RD;
  wire \gc0.count[9]_i_2_n_0 ;
  wire [9:0]plusOp;
  wire rd_clk;
  wire [9:0]rd_pntr_plus1;
  wire [4:0]v1_reg;

  LUT1 #(
    .INIT(2'h1)) 
    \gc0.count[0]_i_1 
       (.I0(rd_pntr_plus1[0]),
        .O(plusOp[0]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gc0.count[1]_i_1 
       (.I0(rd_pntr_plus1[0]),
        .I1(rd_pntr_plus1[1]),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \gc0.count[2]_i_1 
       (.I0(rd_pntr_plus1[0]),
        .I1(rd_pntr_plus1[1]),
        .I2(rd_pntr_plus1[2]),
        .O(plusOp[2]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \gc0.count[3]_i_1 
       (.I0(rd_pntr_plus1[1]),
        .I1(rd_pntr_plus1[0]),
        .I2(rd_pntr_plus1[2]),
        .I3(rd_pntr_plus1[3]),
        .O(plusOp[3]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \gc0.count[4]_i_1 
       (.I0(rd_pntr_plus1[2]),
        .I1(rd_pntr_plus1[0]),
        .I2(rd_pntr_plus1[1]),
        .I3(rd_pntr_plus1[3]),
        .I4(rd_pntr_plus1[4]),
        .O(plusOp[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \gc0.count[5]_i_1 
       (.I0(rd_pntr_plus1[3]),
        .I1(rd_pntr_plus1[1]),
        .I2(rd_pntr_plus1[0]),
        .I3(rd_pntr_plus1[2]),
        .I4(rd_pntr_plus1[4]),
        .I5(rd_pntr_plus1[5]),
        .O(plusOp[5]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gc0.count[6]_i_1 
       (.I0(\gc0.count[9]_i_2_n_0 ),
        .I1(rd_pntr_plus1[6]),
        .O(plusOp[6]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \gc0.count[7]_i_1 
       (.I0(\gc0.count[9]_i_2_n_0 ),
        .I1(rd_pntr_plus1[6]),
        .I2(rd_pntr_plus1[7]),
        .O(plusOp[7]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \gc0.count[8]_i_1 
       (.I0(rd_pntr_plus1[6]),
        .I1(\gc0.count[9]_i_2_n_0 ),
        .I2(rd_pntr_plus1[7]),
        .I3(rd_pntr_plus1[8]),
        .O(plusOp[8]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \gc0.count[9]_i_1 
       (.I0(rd_pntr_plus1[7]),
        .I1(\gc0.count[9]_i_2_n_0 ),
        .I2(rd_pntr_plus1[6]),
        .I3(rd_pntr_plus1[8]),
        .I4(rd_pntr_plus1[9]),
        .O(plusOp[9]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \gc0.count[9]_i_2 
       (.I0(rd_pntr_plus1[5]),
        .I1(rd_pntr_plus1[3]),
        .I2(rd_pntr_plus1[1]),
        .I3(rd_pntr_plus1[0]),
        .I4(rd_pntr_plus1[2]),
        .I5(rd_pntr_plus1[4]),
        .O(\gc0.count[9]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[0] 
       (.C(rd_clk),
        .CE(E),
        .D(rd_pntr_plus1[0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[1] 
       (.C(rd_clk),
        .CE(E),
        .D(rd_pntr_plus1[1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[2] 
       (.C(rd_clk),
        .CE(E),
        .D(rd_pntr_plus1[2]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[3] 
       (.C(rd_clk),
        .CE(E),
        .D(rd_pntr_plus1[3]),
        .Q(Q[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[4] 
       (.C(rd_clk),
        .CE(E),
        .D(rd_pntr_plus1[4]),
        .Q(Q[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[5] 
       (.C(rd_clk),
        .CE(E),
        .D(rd_pntr_plus1[5]),
        .Q(Q[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[6] 
       (.C(rd_clk),
        .CE(E),
        .D(rd_pntr_plus1[6]),
        .Q(Q[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[7] 
       (.C(rd_clk),
        .CE(E),
        .D(rd_pntr_plus1[7]),
        .Q(Q[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[8] 
       (.C(rd_clk),
        .CE(E),
        .D(rd_pntr_plus1[8]),
        .Q(Q[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[9] 
       (.C(rd_clk),
        .CE(E),
        .D(rd_pntr_plus1[9]),
        .Q(Q[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \gc0.count_reg[0] 
       (.C(rd_clk),
        .CE(E),
        .D(plusOp[0]),
        .Q(rd_pntr_plus1[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_reg[1] 
       (.C(rd_clk),
        .CE(E),
        .D(plusOp[1]),
        .Q(rd_pntr_plus1[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_reg[2] 
       (.C(rd_clk),
        .CE(E),
        .D(plusOp[2]),
        .Q(rd_pntr_plus1[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_reg[3] 
       (.C(rd_clk),
        .CE(E),
        .D(plusOp[3]),
        .Q(rd_pntr_plus1[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_reg[4] 
       (.C(rd_clk),
        .CE(E),
        .D(plusOp[4]),
        .Q(rd_pntr_plus1[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_reg[5] 
       (.C(rd_clk),
        .CE(E),
        .D(plusOp[5]),
        .Q(rd_pntr_plus1[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_reg[6] 
       (.C(rd_clk),
        .CE(E),
        .D(plusOp[6]),
        .Q(rd_pntr_plus1[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_reg[7] 
       (.C(rd_clk),
        .CE(E),
        .D(plusOp[7]),
        .Q(rd_pntr_plus1[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_reg[8] 
       (.C(rd_clk),
        .CE(E),
        .D(plusOp[8]),
        .Q(rd_pntr_plus1[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_reg[9] 
       (.C(rd_clk),
        .CE(E),
        .D(plusOp[9]),
        .Q(rd_pntr_plus1[9]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[0].gm1.m1_i_1__0 
       (.I0(rd_pntr_plus1[0]),
        .I1(WR_PNTR_RD[0]),
        .I2(rd_pntr_plus1[1]),
        .I3(WR_PNTR_RD[1]),
        .O(v1_reg[0]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[1].gms.ms_i_1__0 
       (.I0(rd_pntr_plus1[2]),
        .I1(WR_PNTR_RD[2]),
        .I2(rd_pntr_plus1[3]),
        .I3(WR_PNTR_RD[3]),
        .O(v1_reg[1]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[2].gms.ms_i_1__0 
       (.I0(rd_pntr_plus1[4]),
        .I1(WR_PNTR_RD[4]),
        .I2(rd_pntr_plus1[5]),
        .I3(WR_PNTR_RD[5]),
        .O(v1_reg[2]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[3].gms.ms_i_1__0 
       (.I0(rd_pntr_plus1[6]),
        .I1(WR_PNTR_RD[6]),
        .I2(rd_pntr_plus1[7]),
        .I3(WR_PNTR_RD[7]),
        .O(v1_reg[3]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[4].gms.ms_i_1__0 
       (.I0(rd_pntr_plus1[8]),
        .I1(WR_PNTR_RD[8]),
        .I2(rd_pntr_plus1[9]),
        .I3(WR_PNTR_RD[9]),
        .O(v1_reg[4]));
endmodule

(* ORIG_REF_NAME = "rd_dc_as" *) 
module buf_fifo_rd_dc_as
   (rd_data_count,
    WR_PNTR_RD,
    S,
    \rd_dc_i_reg[7]_0 ,
    \rd_dc_i_reg[9]_0 ,
    rd_clk);
  output [9:0]rd_data_count;
  input [8:0]WR_PNTR_RD;
  input [3:0]S;
  input [3:0]\rd_dc_i_reg[7]_0 ;
  input [1:0]\rd_dc_i_reg[9]_0 ;
  input rd_clk;

  wire [3:0]S;
  wire [8:0]WR_PNTR_RD;
  wire [9:0]minusOp;
  wire minusOp_carry__0_n_0;
  wire minusOp_carry__0_n_1;
  wire minusOp_carry__0_n_2;
  wire minusOp_carry__0_n_3;
  wire minusOp_carry__1_n_3;
  wire minusOp_carry_n_0;
  wire minusOp_carry_n_1;
  wire minusOp_carry_n_2;
  wire minusOp_carry_n_3;
  wire rd_clk;
  wire [9:0]rd_data_count;
  wire [3:0]\rd_dc_i_reg[7]_0 ;
  wire [1:0]\rd_dc_i_reg[9]_0 ;
  wire [3:1]NLW_minusOp_carry__1_CO_UNCONNECTED;
  wire [3:2]NLW_minusOp_carry__1_O_UNCONNECTED;

  CARRY4 minusOp_carry
       (.CI(1'b0),
        .CO({minusOp_carry_n_0,minusOp_carry_n_1,minusOp_carry_n_2,minusOp_carry_n_3}),
        .CYINIT(1'b1),
        .DI(WR_PNTR_RD[3:0]),
        .O(minusOp[3:0]),
        .S(S));
  CARRY4 minusOp_carry__0
       (.CI(minusOp_carry_n_0),
        .CO({minusOp_carry__0_n_0,minusOp_carry__0_n_1,minusOp_carry__0_n_2,minusOp_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(WR_PNTR_RD[7:4]),
        .O(minusOp[7:4]),
        .S(\rd_dc_i_reg[7]_0 ));
  CARRY4 minusOp_carry__1
       (.CI(minusOp_carry__0_n_0),
        .CO({NLW_minusOp_carry__1_CO_UNCONNECTED[3:1],minusOp_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,WR_PNTR_RD[8]}),
        .O({NLW_minusOp_carry__1_O_UNCONNECTED[3:2],minusOp[9:8]}),
        .S({1'b0,1'b0,\rd_dc_i_reg[9]_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \rd_dc_i_reg[0] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(minusOp[0]),
        .Q(rd_data_count[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rd_dc_i_reg[1] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(minusOp[1]),
        .Q(rd_data_count[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rd_dc_i_reg[2] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(minusOp[2]),
        .Q(rd_data_count[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rd_dc_i_reg[3] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(minusOp[3]),
        .Q(rd_data_count[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rd_dc_i_reg[4] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(minusOp[4]),
        .Q(rd_data_count[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rd_dc_i_reg[5] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(minusOp[5]),
        .Q(rd_data_count[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rd_dc_i_reg[6] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(minusOp[6]),
        .Q(rd_data_count[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rd_dc_i_reg[7] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(minusOp[7]),
        .Q(rd_data_count[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rd_dc_i_reg[8] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(minusOp[8]),
        .Q(rd_data_count[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rd_dc_i_reg[9] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(minusOp[9]),
        .Q(rd_data_count[9]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "rd_logic" *) 
module buf_fifo_rd_logic
   (empty,
    E,
    Q,
    rd_data_count,
    v1_reg,
    rd_clk,
    WR_PNTR_RD,
    S,
    \rd_dc_i_reg[7] ,
    \rd_dc_i_reg[9] ,
    rd_en);
  output empty;
  output [0:0]E;
  output [9:0]Q;
  output [9:0]rd_data_count;
  input [4:0]v1_reg;
  input rd_clk;
  input [9:0]WR_PNTR_RD;
  input [3:0]S;
  input [3:0]\rd_dc_i_reg[7] ;
  input [1:0]\rd_dc_i_reg[9] ;
  input rd_en;

  wire [0:0]E;
  wire [9:0]Q;
  wire [3:0]S;
  wire [9:0]WR_PNTR_RD;
  wire [4:0]\c1/v1_reg ;
  wire empty;
  wire rd_clk;
  wire [9:0]rd_data_count;
  wire [3:0]\rd_dc_i_reg[7] ;
  wire [1:0]\rd_dc_i_reg[9] ;
  wire rd_en;
  wire [4:0]v1_reg;

  buf_fifo_rd_dc_as \gras.grdc1.rdc 
       (.S(S),
        .WR_PNTR_RD(WR_PNTR_RD[8:0]),
        .rd_clk(rd_clk),
        .rd_data_count(rd_data_count),
        .\rd_dc_i_reg[7]_0 (\rd_dc_i_reg[7] ),
        .\rd_dc_i_reg[9]_0 (\rd_dc_i_reg[9] ));
  buf_fifo_rd_status_flags_as \gras.rsts 
       (.E(E),
        .empty(empty),
        .rd_clk(rd_clk),
        .rd_en(rd_en),
        .v1_reg(v1_reg),
        .v1_reg_0(\c1/v1_reg ));
  buf_fifo_rd_bin_cntr rpntr
       (.E(E),
        .Q(Q),
        .WR_PNTR_RD(WR_PNTR_RD),
        .rd_clk(rd_clk),
        .v1_reg(\c1/v1_reg ));
endmodule

(* ORIG_REF_NAME = "rd_status_flags_as" *) 
module buf_fifo_rd_status_flags_as
   (empty,
    E,
    v1_reg,
    v1_reg_0,
    rd_clk,
    rd_en);
  output empty;
  output [0:0]E;
  input [4:0]v1_reg;
  input [4:0]v1_reg_0;
  input rd_clk;
  input rd_en;

  wire [0:0]E;
  wire c0_n_0;
  wire comp1;
  (* DONT_TOUCH *) wire ram_empty_fb_i;
  (* DONT_TOUCH *) wire ram_empty_i;
  wire rd_clk;
  wire rd_en;
  wire [4:0]v1_reg;
  wire [4:0]v1_reg_0;

  assign empty = ram_empty_i;
  buf_fifo_compare_1 c0
       (.comp1(comp1),
        .out(ram_empty_fb_i),
        .rd_en(rd_en),
        .rd_en_0(c0_n_0),
        .v1_reg(v1_reg));
  buf_fifo_compare_2 c1
       (.comp1(comp1),
        .v1_reg_0(v1_reg_0));
  LUT2 #(
    .INIT(4'h2)) 
    \gpr1.dout_i[7]_i_1 
       (.I0(rd_en),
        .I1(ram_empty_fb_i),
        .O(E));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b1)) 
    ram_empty_fb_i_reg
       (.C(rd_clk),
        .CE(1'b1),
        .D(c0_n_0),
        .Q(ram_empty_fb_i),
        .R(1'b0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b1)) 
    ram_empty_i_reg
       (.C(rd_clk),
        .CE(1'b1),
        .D(c0_n_0),
        .Q(ram_empty_i),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "reset_blk_ramfifo" *) 
module buf_fifo_reset_blk_ramfifo
   ();

  (* async_reg = "true" *) (* msgon = "true" *) wire rst_wr_reg2;

  LUT1 #(
    .INIT(2'h2)) 
    rstblki_0
       (.I0(1'b0),
        .O(rst_wr_reg2));
endmodule

(* ORIG_REF_NAME = "wr_bin_cntr" *) 
module buf_fifo_wr_bin_cntr
   (ram_full_fb_i_reg,
    Q,
    ram_full_fb_i_reg_0,
    ram_full_fb_i_reg_1,
    ram_full_fb_i_reg_2,
    ram_full_fb_i_reg_3,
    \gic0.gc0.count_d2_reg[9]_0 ,
    \gic0.gc0.count_d2_reg[8]_0 ,
    ram_full_fb_i_reg_4,
    \gic0.gc0.count_d2_reg[9]_1 ,
    \gic0.gc0.count_d2_reg[7]_0 ,
    \gic0.gc0.count_d2_reg[9]_2 ,
    \gic0.gc0.count_d2_reg[6]_0 ,
    \gic0.gc0.count_d2_reg[9]_3 ,
    \gic0.gc0.count_d2_reg[8]_1 ,
    \gic0.gc0.count_d2_reg[8]_2 ,
    \gic0.gc0.count_d2_reg[7]_1 ,
    \gic0.gc0.count_reg[9]_0 ,
    \gic0.gc0.count_d1_reg[9]_0 ,
    out,
    wr_en,
    E,
    wr_clk);
  output ram_full_fb_i_reg;
  output [9:0]Q;
  output ram_full_fb_i_reg_0;
  output ram_full_fb_i_reg_1;
  output ram_full_fb_i_reg_2;
  output ram_full_fb_i_reg_3;
  output \gic0.gc0.count_d2_reg[9]_0 ;
  output \gic0.gc0.count_d2_reg[8]_0 ;
  output ram_full_fb_i_reg_4;
  output \gic0.gc0.count_d2_reg[9]_1 ;
  output \gic0.gc0.count_d2_reg[7]_0 ;
  output \gic0.gc0.count_d2_reg[9]_2 ;
  output \gic0.gc0.count_d2_reg[6]_0 ;
  output \gic0.gc0.count_d2_reg[9]_3 ;
  output \gic0.gc0.count_d2_reg[8]_1 ;
  output \gic0.gc0.count_d2_reg[8]_2 ;
  output \gic0.gc0.count_d2_reg[7]_1 ;
  output [9:0]\gic0.gc0.count_reg[9]_0 ;
  output [9:0]\gic0.gc0.count_d1_reg[9]_0 ;
  input out;
  input wr_en;
  input [0:0]E;
  input wr_clk;

  wire [0:0]E;
  wire [9:0]Q;
  wire \gic0.gc0.count[9]_i_2_n_0 ;
  wire [9:0]\gic0.gc0.count_d1_reg[9]_0 ;
  wire \gic0.gc0.count_d2_reg[6]_0 ;
  wire \gic0.gc0.count_d2_reg[7]_0 ;
  wire \gic0.gc0.count_d2_reg[7]_1 ;
  wire \gic0.gc0.count_d2_reg[8]_0 ;
  wire \gic0.gc0.count_d2_reg[8]_1 ;
  wire \gic0.gc0.count_d2_reg[8]_2 ;
  wire \gic0.gc0.count_d2_reg[9]_0 ;
  wire \gic0.gc0.count_d2_reg[9]_1 ;
  wire \gic0.gc0.count_d2_reg[9]_2 ;
  wire \gic0.gc0.count_d2_reg[9]_3 ;
  wire [9:0]\gic0.gc0.count_reg[9]_0 ;
  wire out;
  wire [9:0]plusOp__0;
  wire ram_full_fb_i_reg;
  wire ram_full_fb_i_reg_0;
  wire ram_full_fb_i_reg_1;
  wire ram_full_fb_i_reg_2;
  wire ram_full_fb_i_reg_3;
  wire ram_full_fb_i_reg_4;
  wire wr_clk;
  wire wr_en;

  LUT6 #(
    .INIT(64'h0000000000000004)) 
    RAM_reg_0_63_0_2_i_1
       (.I0(out),
        .I1(wr_en),
        .I2(Q[7]),
        .I3(Q[6]),
        .I4(Q[9]),
        .I5(Q[8]),
        .O(ram_full_fb_i_reg_1));
  LUT6 #(
    .INIT(64'h0000000400000000)) 
    RAM_reg_128_191_0_2_i_1
       (.I0(out),
        .I1(wr_en),
        .I2(Q[8]),
        .I3(Q[6]),
        .I4(Q[9]),
        .I5(Q[7]),
        .O(ram_full_fb_i_reg_3));
  LUT6 #(
    .INIT(64'h0000004000000000)) 
    RAM_reg_192_255_0_2_i_1
       (.I0(Q[9]),
        .I1(Q[7]),
        .I2(Q[6]),
        .I3(Q[8]),
        .I4(out),
        .I5(wr_en),
        .O(\gic0.gc0.count_d2_reg[9]_1 ));
  LUT6 #(
    .INIT(64'h0000000400000000)) 
    RAM_reg_256_319_0_2_i_1
       (.I0(out),
        .I1(wr_en),
        .I2(Q[7]),
        .I3(Q[6]),
        .I4(Q[9]),
        .I5(Q[8]),
        .O(ram_full_fb_i_reg));
  LUT6 #(
    .INIT(64'h0000004000000000)) 
    RAM_reg_320_383_0_2_i_1
       (.I0(Q[9]),
        .I1(Q[8]),
        .I2(Q[6]),
        .I3(Q[7]),
        .I4(out),
        .I5(wr_en),
        .O(\gic0.gc0.count_d2_reg[9]_2 ));
  LUT6 #(
    .INIT(64'h0000004000000000)) 
    RAM_reg_384_447_0_2_i_1
       (.I0(Q[9]),
        .I1(Q[8]),
        .I2(Q[7]),
        .I3(Q[6]),
        .I4(out),
        .I5(wr_en),
        .O(\gic0.gc0.count_d2_reg[9]_3 ));
  LUT6 #(
    .INIT(64'h0040000000000000)) 
    RAM_reg_448_511_0_2_i_1
       (.I0(Q[9]),
        .I1(Q[7]),
        .I2(Q[6]),
        .I3(out),
        .I4(wr_en),
        .I5(Q[8]),
        .O(\gic0.gc0.count_d2_reg[9]_0 ));
  LUT6 #(
    .INIT(64'h0000000400000000)) 
    RAM_reg_512_575_0_2_i_1
       (.I0(out),
        .I1(wr_en),
        .I2(Q[7]),
        .I3(Q[6]),
        .I4(Q[8]),
        .I5(Q[9]),
        .O(ram_full_fb_i_reg_0));
  LUT6 #(
    .INIT(64'h0000004000000000)) 
    RAM_reg_576_639_0_2_i_1
       (.I0(Q[8]),
        .I1(Q[9]),
        .I2(Q[6]),
        .I3(Q[7]),
        .I4(out),
        .I5(wr_en),
        .O(\gic0.gc0.count_d2_reg[8]_1 ));
  LUT6 #(
    .INIT(64'h0000004000000000)) 
    RAM_reg_640_703_0_2_i_1
       (.I0(Q[8]),
        .I1(Q[9]),
        .I2(Q[7]),
        .I3(Q[6]),
        .I4(out),
        .I5(wr_en),
        .O(\gic0.gc0.count_d2_reg[8]_2 ));
  LUT6 #(
    .INIT(64'h0000000400000000)) 
    RAM_reg_64_127_0_2_i_1
       (.I0(out),
        .I1(wr_en),
        .I2(Q[8]),
        .I3(Q[7]),
        .I4(Q[9]),
        .I5(Q[6]),
        .O(ram_full_fb_i_reg_2));
  LUT6 #(
    .INIT(64'h0040000000000000)) 
    RAM_reg_704_767_0_2_i_1
       (.I0(Q[8]),
        .I1(Q[7]),
        .I2(Q[6]),
        .I3(out),
        .I4(wr_en),
        .I5(Q[9]),
        .O(\gic0.gc0.count_d2_reg[8]_0 ));
  LUT6 #(
    .INIT(64'h0000004000000000)) 
    RAM_reg_768_831_0_2_i_1
       (.I0(Q[7]),
        .I1(Q[9]),
        .I2(Q[8]),
        .I3(Q[6]),
        .I4(out),
        .I5(wr_en),
        .O(\gic0.gc0.count_d2_reg[7]_1 ));
  LUT6 #(
    .INIT(64'h0040000000000000)) 
    RAM_reg_832_895_0_2_i_1
       (.I0(Q[7]),
        .I1(Q[8]),
        .I2(Q[6]),
        .I3(out),
        .I4(wr_en),
        .I5(Q[9]),
        .O(\gic0.gc0.count_d2_reg[7]_0 ));
  LUT6 #(
    .INIT(64'h0040000000000000)) 
    RAM_reg_896_959_0_2_i_1
       (.I0(Q[6]),
        .I1(Q[8]),
        .I2(Q[7]),
        .I3(out),
        .I4(wr_en),
        .I5(Q[9]),
        .O(\gic0.gc0.count_d2_reg[6]_0 ));
  LUT6 #(
    .INIT(64'h4000000000000000)) 
    RAM_reg_960_1023_0_2_i_1
       (.I0(out),
        .I1(wr_en),
        .I2(Q[7]),
        .I3(Q[6]),
        .I4(Q[9]),
        .I5(Q[8]),
        .O(ram_full_fb_i_reg_4));
  LUT1 #(
    .INIT(2'h1)) 
    \gic0.gc0.count[0]_i_1 
       (.I0(\gic0.gc0.count_reg[9]_0 [0]),
        .O(plusOp__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gic0.gc0.count[1]_i_1 
       (.I0(\gic0.gc0.count_reg[9]_0 [0]),
        .I1(\gic0.gc0.count_reg[9]_0 [1]),
        .O(plusOp__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \gic0.gc0.count[2]_i_1 
       (.I0(\gic0.gc0.count_reg[9]_0 [0]),
        .I1(\gic0.gc0.count_reg[9]_0 [1]),
        .I2(\gic0.gc0.count_reg[9]_0 [2]),
        .O(plusOp__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \gic0.gc0.count[3]_i_1 
       (.I0(\gic0.gc0.count_reg[9]_0 [1]),
        .I1(\gic0.gc0.count_reg[9]_0 [0]),
        .I2(\gic0.gc0.count_reg[9]_0 [2]),
        .I3(\gic0.gc0.count_reg[9]_0 [3]),
        .O(plusOp__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \gic0.gc0.count[4]_i_1 
       (.I0(\gic0.gc0.count_reg[9]_0 [2]),
        .I1(\gic0.gc0.count_reg[9]_0 [0]),
        .I2(\gic0.gc0.count_reg[9]_0 [1]),
        .I3(\gic0.gc0.count_reg[9]_0 [3]),
        .I4(\gic0.gc0.count_reg[9]_0 [4]),
        .O(plusOp__0[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \gic0.gc0.count[5]_i_1 
       (.I0(\gic0.gc0.count_reg[9]_0 [3]),
        .I1(\gic0.gc0.count_reg[9]_0 [1]),
        .I2(\gic0.gc0.count_reg[9]_0 [0]),
        .I3(\gic0.gc0.count_reg[9]_0 [2]),
        .I4(\gic0.gc0.count_reg[9]_0 [4]),
        .I5(\gic0.gc0.count_reg[9]_0 [5]),
        .O(plusOp__0[5]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gic0.gc0.count[6]_i_1 
       (.I0(\gic0.gc0.count[9]_i_2_n_0 ),
        .I1(\gic0.gc0.count_reg[9]_0 [6]),
        .O(plusOp__0[6]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \gic0.gc0.count[7]_i_1 
       (.I0(\gic0.gc0.count[9]_i_2_n_0 ),
        .I1(\gic0.gc0.count_reg[9]_0 [6]),
        .I2(\gic0.gc0.count_reg[9]_0 [7]),
        .O(plusOp__0[7]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \gic0.gc0.count[8]_i_1 
       (.I0(\gic0.gc0.count_reg[9]_0 [6]),
        .I1(\gic0.gc0.count[9]_i_2_n_0 ),
        .I2(\gic0.gc0.count_reg[9]_0 [7]),
        .I3(\gic0.gc0.count_reg[9]_0 [8]),
        .O(plusOp__0[8]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \gic0.gc0.count[9]_i_1 
       (.I0(\gic0.gc0.count_reg[9]_0 [7]),
        .I1(\gic0.gc0.count[9]_i_2_n_0 ),
        .I2(\gic0.gc0.count_reg[9]_0 [6]),
        .I3(\gic0.gc0.count_reg[9]_0 [8]),
        .I4(\gic0.gc0.count_reg[9]_0 [9]),
        .O(plusOp__0[9]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \gic0.gc0.count[9]_i_2 
       (.I0(\gic0.gc0.count_reg[9]_0 [5]),
        .I1(\gic0.gc0.count_reg[9]_0 [3]),
        .I2(\gic0.gc0.count_reg[9]_0 [1]),
        .I3(\gic0.gc0.count_reg[9]_0 [0]),
        .I4(\gic0.gc0.count_reg[9]_0 [2]),
        .I5(\gic0.gc0.count_reg[9]_0 [4]),
        .O(\gic0.gc0.count[9]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b1)) 
    \gic0.gc0.count_d1_reg[0] 
       (.C(wr_clk),
        .CE(E),
        .D(\gic0.gc0.count_reg[9]_0 [0]),
        .Q(\gic0.gc0.count_d1_reg[9]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d1_reg[1] 
       (.C(wr_clk),
        .CE(E),
        .D(\gic0.gc0.count_reg[9]_0 [1]),
        .Q(\gic0.gc0.count_d1_reg[9]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d1_reg[2] 
       (.C(wr_clk),
        .CE(E),
        .D(\gic0.gc0.count_reg[9]_0 [2]),
        .Q(\gic0.gc0.count_d1_reg[9]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d1_reg[3] 
       (.C(wr_clk),
        .CE(E),
        .D(\gic0.gc0.count_reg[9]_0 [3]),
        .Q(\gic0.gc0.count_d1_reg[9]_0 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d1_reg[4] 
       (.C(wr_clk),
        .CE(E),
        .D(\gic0.gc0.count_reg[9]_0 [4]),
        .Q(\gic0.gc0.count_d1_reg[9]_0 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d1_reg[5] 
       (.C(wr_clk),
        .CE(E),
        .D(\gic0.gc0.count_reg[9]_0 [5]),
        .Q(\gic0.gc0.count_d1_reg[9]_0 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d1_reg[6] 
       (.C(wr_clk),
        .CE(E),
        .D(\gic0.gc0.count_reg[9]_0 [6]),
        .Q(\gic0.gc0.count_d1_reg[9]_0 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d1_reg[7] 
       (.C(wr_clk),
        .CE(E),
        .D(\gic0.gc0.count_reg[9]_0 [7]),
        .Q(\gic0.gc0.count_d1_reg[9]_0 [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d1_reg[8] 
       (.C(wr_clk),
        .CE(E),
        .D(\gic0.gc0.count_reg[9]_0 [8]),
        .Q(\gic0.gc0.count_d1_reg[9]_0 [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d1_reg[9] 
       (.C(wr_clk),
        .CE(E),
        .D(\gic0.gc0.count_reg[9]_0 [9]),
        .Q(\gic0.gc0.count_d1_reg[9]_0 [9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d2_reg[0] 
       (.C(wr_clk),
        .CE(E),
        .D(\gic0.gc0.count_d1_reg[9]_0 [0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d2_reg[1] 
       (.C(wr_clk),
        .CE(E),
        .D(\gic0.gc0.count_d1_reg[9]_0 [1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d2_reg[2] 
       (.C(wr_clk),
        .CE(E),
        .D(\gic0.gc0.count_d1_reg[9]_0 [2]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d2_reg[3] 
       (.C(wr_clk),
        .CE(E),
        .D(\gic0.gc0.count_d1_reg[9]_0 [3]),
        .Q(Q[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d2_reg[4] 
       (.C(wr_clk),
        .CE(E),
        .D(\gic0.gc0.count_d1_reg[9]_0 [4]),
        .Q(Q[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d2_reg[5] 
       (.C(wr_clk),
        .CE(E),
        .D(\gic0.gc0.count_d1_reg[9]_0 [5]),
        .Q(Q[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d2_reg[6] 
       (.C(wr_clk),
        .CE(E),
        .D(\gic0.gc0.count_d1_reg[9]_0 [6]),
        .Q(Q[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d2_reg[7] 
       (.C(wr_clk),
        .CE(E),
        .D(\gic0.gc0.count_d1_reg[9]_0 [7]),
        .Q(Q[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d2_reg[8] 
       (.C(wr_clk),
        .CE(E),
        .D(\gic0.gc0.count_d1_reg[9]_0 [8]),
        .Q(Q[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d2_reg[9] 
       (.C(wr_clk),
        .CE(E),
        .D(\gic0.gc0.count_d1_reg[9]_0 [9]),
        .Q(Q[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_reg[0] 
       (.C(wr_clk),
        .CE(E),
        .D(plusOp__0[0]),
        .Q(\gic0.gc0.count_reg[9]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \gic0.gc0.count_reg[1] 
       (.C(wr_clk),
        .CE(E),
        .D(plusOp__0[1]),
        .Q(\gic0.gc0.count_reg[9]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_reg[2] 
       (.C(wr_clk),
        .CE(E),
        .D(plusOp__0[2]),
        .Q(\gic0.gc0.count_reg[9]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_reg[3] 
       (.C(wr_clk),
        .CE(E),
        .D(plusOp__0[3]),
        .Q(\gic0.gc0.count_reg[9]_0 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_reg[4] 
       (.C(wr_clk),
        .CE(E),
        .D(plusOp__0[4]),
        .Q(\gic0.gc0.count_reg[9]_0 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_reg[5] 
       (.C(wr_clk),
        .CE(E),
        .D(plusOp__0[5]),
        .Q(\gic0.gc0.count_reg[9]_0 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_reg[6] 
       (.C(wr_clk),
        .CE(E),
        .D(plusOp__0[6]),
        .Q(\gic0.gc0.count_reg[9]_0 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_reg[7] 
       (.C(wr_clk),
        .CE(E),
        .D(plusOp__0[7]),
        .Q(\gic0.gc0.count_reg[9]_0 [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_reg[8] 
       (.C(wr_clk),
        .CE(E),
        .D(plusOp__0[8]),
        .Q(\gic0.gc0.count_reg[9]_0 [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_reg[9] 
       (.C(wr_clk),
        .CE(E),
        .D(plusOp__0[9]),
        .Q(\gic0.gc0.count_reg[9]_0 [9]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "wr_logic" *) 
module buf_fifo_wr_logic
   (full,
    ram_full_fb_i_reg,
    Q,
    ram_full_fb_i_reg_0,
    ram_full_fb_i_reg_1,
    ram_full_fb_i_reg_2,
    ram_full_fb_i_reg_3,
    \gic0.gc0.count_d2_reg[9] ,
    \gic0.gc0.count_d2_reg[8] ,
    ram_full_fb_i_reg_4,
    \gic0.gc0.count_d2_reg[9]_0 ,
    \gic0.gc0.count_d2_reg[7] ,
    \gic0.gc0.count_d2_reg[9]_1 ,
    \gic0.gc0.count_d2_reg[6] ,
    \gic0.gc0.count_d2_reg[9]_2 ,
    \gic0.gc0.count_d2_reg[8]_0 ,
    \gic0.gc0.count_d2_reg[8]_1 ,
    \gic0.gc0.count_d2_reg[7]_0 ,
    \gic0.gc0.count_reg[9] ,
    \gic0.gc0.count_d1_reg[9] ,
    v1_reg,
    v1_reg_0,
    wr_clk,
    wr_en);
  output full;
  output ram_full_fb_i_reg;
  output [9:0]Q;
  output ram_full_fb_i_reg_0;
  output ram_full_fb_i_reg_1;
  output ram_full_fb_i_reg_2;
  output ram_full_fb_i_reg_3;
  output \gic0.gc0.count_d2_reg[9] ;
  output \gic0.gc0.count_d2_reg[8] ;
  output ram_full_fb_i_reg_4;
  output \gic0.gc0.count_d2_reg[9]_0 ;
  output \gic0.gc0.count_d2_reg[7] ;
  output \gic0.gc0.count_d2_reg[9]_1 ;
  output \gic0.gc0.count_d2_reg[6] ;
  output \gic0.gc0.count_d2_reg[9]_2 ;
  output \gic0.gc0.count_d2_reg[8]_0 ;
  output \gic0.gc0.count_d2_reg[8]_1 ;
  output \gic0.gc0.count_d2_reg[7]_0 ;
  output [9:0]\gic0.gc0.count_reg[9] ;
  output [9:0]\gic0.gc0.count_d1_reg[9] ;
  input [4:0]v1_reg;
  input [4:0]v1_reg_0;
  input wr_clk;
  input wr_en;

  wire [9:0]Q;
  wire full;
  wire [9:0]\gic0.gc0.count_d1_reg[9] ;
  wire \gic0.gc0.count_d2_reg[6] ;
  wire \gic0.gc0.count_d2_reg[7] ;
  wire \gic0.gc0.count_d2_reg[7]_0 ;
  wire \gic0.gc0.count_d2_reg[8] ;
  wire \gic0.gc0.count_d2_reg[8]_0 ;
  wire \gic0.gc0.count_d2_reg[8]_1 ;
  wire \gic0.gc0.count_d2_reg[9] ;
  wire \gic0.gc0.count_d2_reg[9]_0 ;
  wire \gic0.gc0.count_d2_reg[9]_1 ;
  wire \gic0.gc0.count_d2_reg[9]_2 ;
  wire [9:0]\gic0.gc0.count_reg[9] ;
  wire \gwas.wsts_n_1 ;
  wire ram_full_fb_i_reg;
  wire ram_full_fb_i_reg_0;
  wire ram_full_fb_i_reg_1;
  wire ram_full_fb_i_reg_2;
  wire ram_full_fb_i_reg_3;
  wire ram_full_fb_i_reg_4;
  wire ram_wr_en;
  wire [4:0]v1_reg;
  wire [4:0]v1_reg_0;
  wire wr_clk;
  wire wr_en;

  buf_fifo_wr_status_flags_as \gwas.wsts 
       (.E(ram_wr_en),
        .full(full),
        .out(\gwas.wsts_n_1 ),
        .v1_reg(v1_reg),
        .v1_reg_0(v1_reg_0),
        .wr_clk(wr_clk),
        .wr_en(wr_en));
  buf_fifo_wr_bin_cntr wpntr
       (.E(ram_wr_en),
        .Q(Q),
        .\gic0.gc0.count_d1_reg[9]_0 (\gic0.gc0.count_d1_reg[9] ),
        .\gic0.gc0.count_d2_reg[6]_0 (\gic0.gc0.count_d2_reg[6] ),
        .\gic0.gc0.count_d2_reg[7]_0 (\gic0.gc0.count_d2_reg[7] ),
        .\gic0.gc0.count_d2_reg[7]_1 (\gic0.gc0.count_d2_reg[7]_0 ),
        .\gic0.gc0.count_d2_reg[8]_0 (\gic0.gc0.count_d2_reg[8] ),
        .\gic0.gc0.count_d2_reg[8]_1 (\gic0.gc0.count_d2_reg[8]_0 ),
        .\gic0.gc0.count_d2_reg[8]_2 (\gic0.gc0.count_d2_reg[8]_1 ),
        .\gic0.gc0.count_d2_reg[9]_0 (\gic0.gc0.count_d2_reg[9] ),
        .\gic0.gc0.count_d2_reg[9]_1 (\gic0.gc0.count_d2_reg[9]_0 ),
        .\gic0.gc0.count_d2_reg[9]_2 (\gic0.gc0.count_d2_reg[9]_1 ),
        .\gic0.gc0.count_d2_reg[9]_3 (\gic0.gc0.count_d2_reg[9]_2 ),
        .\gic0.gc0.count_reg[9]_0 (\gic0.gc0.count_reg[9] ),
        .out(\gwas.wsts_n_1 ),
        .ram_full_fb_i_reg(ram_full_fb_i_reg),
        .ram_full_fb_i_reg_0(ram_full_fb_i_reg_0),
        .ram_full_fb_i_reg_1(ram_full_fb_i_reg_1),
        .ram_full_fb_i_reg_2(ram_full_fb_i_reg_2),
        .ram_full_fb_i_reg_3(ram_full_fb_i_reg_3),
        .ram_full_fb_i_reg_4(ram_full_fb_i_reg_4),
        .wr_clk(wr_clk),
        .wr_en(wr_en));
endmodule

(* ORIG_REF_NAME = "wr_status_flags_as" *) 
module buf_fifo_wr_status_flags_as
   (full,
    out,
    E,
    v1_reg,
    v1_reg_0,
    wr_clk,
    wr_en);
  output full;
  output out;
  output [0:0]E;
  input [4:0]v1_reg;
  input [4:0]v1_reg_0;
  input wr_clk;
  input wr_en;

  wire [0:0]E;
  wire c1_n_0;
  wire comp2;
  (* DONT_TOUCH *) wire ram_full_fb_i;
  (* DONT_TOUCH *) wire ram_full_i;
  wire [4:0]v1_reg;
  wire [4:0]v1_reg_0;
  wire wr_clk;
  wire wr_en;

  assign full = ram_full_i;
  assign out = ram_full_fb_i;
  buf_fifo_compare c1
       (.comp2(comp2),
        .out(ram_full_fb_i),
        .v1_reg(v1_reg),
        .wr_en(wr_en),
        .wr_en_0(c1_n_0));
  buf_fifo_compare_0 c2
       (.comp2(comp2),
        .v1_reg_0(v1_reg_0));
  LUT2 #(
    .INIT(4'h2)) 
    \gic0.gc0.count_d1[9]_i_1 
       (.I0(wr_en),
        .I1(ram_full_fb_i),
        .O(E));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    ram_full_fb_i_reg
       (.C(wr_clk),
        .CE(1'b1),
        .D(c1_n_0),
        .Q(ram_full_fb_i),
        .R(1'b0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    ram_full_i_reg
       (.C(wr_clk),
        .CE(1'b1),
        .D(c1_n_0),
        .Q(ram_full_i),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
