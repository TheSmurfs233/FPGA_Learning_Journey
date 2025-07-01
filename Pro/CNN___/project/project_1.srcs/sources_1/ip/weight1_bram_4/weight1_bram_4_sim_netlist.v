// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Mon May  5 00:14:46 2025
// Host        : DESKTOP-I8GGJRG running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/CNN/OV5640_DDR3_HDMI_UDP_gray___/project/project_1.srcs/sources_1/ip/weight1_bram_4/weight1_bram_4_sim_netlist.v
// Design      : weight1_bram_4
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tfgg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "weight1_bram_4,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module weight1_bram_4
   (clka,
    ena,
    wea,
    addra,
    dina,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [13:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [15:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [15:0]douta;

  wire [13:0]addra;
  wire clka;
  wire [15:0]dina;
  wire [15:0]douta;
  wire ena;
  wire [0:0]wea;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [15:0]NLW_U0_doutb_UNCONNECTED;
  wire [13:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [13:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [15:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "14" *) 
  (* C_ADDRB_WIDTH = "14" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "1" *) 
  (* C_COUNT_36K_BRAM = "7" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     11.074251 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "weight1_bram_4.mem" *) 
  (* C_INIT_FILE_NAME = "weight1_bram_4.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "15700" *) 
  (* C_READ_DEPTH_B = "15700" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "16" *) 
  (* C_READ_WIDTH_B = "16" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "15700" *) 
  (* C_WRITE_DEPTH_B = "15700" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "16" *) 
  (* C_WRITE_WIDTH_B = "16" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  weight1_bram_4_blk_mem_gen_v8_4_4 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[15:0]),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[13:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[13:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[15:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(1'b0));
endmodule

(* ORIG_REF_NAME = "bindec" *) 
module weight1_bram_4_bindec
   (ena_array,
    ena,
    addra);
  output [2:0]ena_array;
  input ena;
  input [1:0]addra;

  wire [1:0]addra;
  wire ena;
  wire [2:0]ena_array;

  LUT3 #(
    .INIT(8'h02)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1 
       (.I0(ena),
        .I1(addra[0]),
        .I2(addra[1]),
        .O(ena_array[0]));
  LUT3 #(
    .INIT(8'h40)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1__0 
       (.I0(addra[1]),
        .I1(addra[0]),
        .I2(ena),
        .O(ena_array[1]));
  LUT3 #(
    .INIT(8'h40)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1__1 
       (.I0(addra[0]),
        .I1(ena),
        .I2(addra[1]),
        .O(ena_array[2]));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_generic_cstr" *) 
module weight1_bram_4_blk_mem_gen_generic_cstr
   (douta,
    addra,
    ena,
    clka,
    dina,
    wea);
  output [15:0]douta;
  input [13:0]addra;
  input ena;
  input clka;
  input [15:0]dina;
  input [0:0]wea;

  wire [13:0]addra;
  wire clka;
  wire [15:0]dina;
  wire [15:0]douta;
  wire ena;
  wire [2:0]ena_array;
  wire \ramloop[4].ram.r_n_0 ;
  wire \ramloop[4].ram.r_n_1 ;
  wire \ramloop[4].ram.r_n_2 ;
  wire \ramloop[4].ram.r_n_3 ;
  wire \ramloop[4].ram.r_n_4 ;
  wire \ramloop[4].ram.r_n_5 ;
  wire \ramloop[4].ram.r_n_6 ;
  wire \ramloop[4].ram.r_n_7 ;
  wire \ramloop[4].ram.r_n_8 ;
  wire \ramloop[5].ram.r_n_0 ;
  wire \ramloop[5].ram.r_n_1 ;
  wire \ramloop[5].ram.r_n_2 ;
  wire \ramloop[5].ram.r_n_3 ;
  wire \ramloop[5].ram.r_n_4 ;
  wire \ramloop[5].ram.r_n_5 ;
  wire \ramloop[5].ram.r_n_6 ;
  wire \ramloop[5].ram.r_n_7 ;
  wire \ramloop[5].ram.r_n_8 ;
  wire \ramloop[6].ram.r_n_0 ;
  wire \ramloop[6].ram.r_n_1 ;
  wire \ramloop[6].ram.r_n_2 ;
  wire \ramloop[6].ram.r_n_3 ;
  wire \ramloop[6].ram.r_n_4 ;
  wire \ramloop[6].ram.r_n_5 ;
  wire \ramloop[6].ram.r_n_6 ;
  wire \ramloop[6].ram.r_n_7 ;
  wire \ramloop[6].ram.r_n_8 ;
  wire \ramloop[7].ram.r_n_0 ;
  wire \ramloop[7].ram.r_n_1 ;
  wire \ramloop[7].ram.r_n_2 ;
  wire \ramloop[7].ram.r_n_3 ;
  wire \ramloop[7].ram.r_n_4 ;
  wire \ramloop[7].ram.r_n_5 ;
  wire \ramloop[7].ram.r_n_6 ;
  wire \ramloop[7].ram.r_n_7 ;
  wire \ramloop[7].ram.r_n_8 ;
  wire [0:0]wea;

  weight1_bram_4_bindec \bindec_a.bindec_inst_a 
       (.addra(addra[13:12]),
        .ena(ena),
        .ena_array(ena_array));
  weight1_bram_4_blk_mem_gen_mux \has_mux_a.A 
       (.DOADO({\ramloop[6].ram.r_n_0 ,\ramloop[6].ram.r_n_1 ,\ramloop[6].ram.r_n_2 ,\ramloop[6].ram.r_n_3 ,\ramloop[6].ram.r_n_4 ,\ramloop[6].ram.r_n_5 ,\ramloop[6].ram.r_n_6 ,\ramloop[6].ram.r_n_7 }),
        .DOPADOP(\ramloop[6].ram.r_n_8 ),
        .addra(addra[13:12]),
        .clka(clka),
        .douta(douta[15:7]),
        .\douta[14] ({\ramloop[7].ram.r_n_0 ,\ramloop[7].ram.r_n_1 ,\ramloop[7].ram.r_n_2 ,\ramloop[7].ram.r_n_3 ,\ramloop[7].ram.r_n_4 ,\ramloop[7].ram.r_n_5 ,\ramloop[7].ram.r_n_6 ,\ramloop[7].ram.r_n_7 }),
        .\douta[14]_0 ({\ramloop[4].ram.r_n_0 ,\ramloop[4].ram.r_n_1 ,\ramloop[4].ram.r_n_2 ,\ramloop[4].ram.r_n_3 ,\ramloop[4].ram.r_n_4 ,\ramloop[4].ram.r_n_5 ,\ramloop[4].ram.r_n_6 ,\ramloop[4].ram.r_n_7 }),
        .\douta[14]_1 ({\ramloop[5].ram.r_n_0 ,\ramloop[5].ram.r_n_1 ,\ramloop[5].ram.r_n_2 ,\ramloop[5].ram.r_n_3 ,\ramloop[5].ram.r_n_4 ,\ramloop[5].ram.r_n_5 ,\ramloop[5].ram.r_n_6 ,\ramloop[5].ram.r_n_7 }),
        .\douta[15] (\ramloop[7].ram.r_n_8 ),
        .\douta[15]_0 (\ramloop[4].ram.r_n_8 ),
        .\douta[15]_1 (\ramloop[5].ram.r_n_8 ),
        .ena(ena));
  weight1_bram_4_blk_mem_gen_prim_width \ramloop[0].ram.r 
       (.addra(addra),
        .clka(clka),
        .dina(dina[0]),
        .douta(douta[0]),
        .ena(ena),
        .wea(wea));
  weight1_bram_4_blk_mem_gen_prim_width__parameterized0 \ramloop[1].ram.r 
       (.addra(addra),
        .clka(clka),
        .dina(dina[2:1]),
        .douta(douta[2:1]),
        .ena(ena),
        .wea(wea));
  weight1_bram_4_blk_mem_gen_prim_width__parameterized1 \ramloop[2].ram.r 
       (.addra(addra),
        .clka(clka),
        .dina(dina[4:3]),
        .douta(douta[4:3]),
        .ena(ena),
        .wea(wea));
  weight1_bram_4_blk_mem_gen_prim_width__parameterized2 \ramloop[3].ram.r 
       (.addra(addra),
        .clka(clka),
        .dina(dina[6:5]),
        .douta(douta[6:5]),
        .ena(ena),
        .wea(wea));
  weight1_bram_4_blk_mem_gen_prim_width__parameterized3 \ramloop[4].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[4].ram.r_n_0 ,\ramloop[4].ram.r_n_1 ,\ramloop[4].ram.r_n_2 ,\ramloop[4].ram.r_n_3 ,\ramloop[4].ram.r_n_4 ,\ramloop[4].ram.r_n_5 ,\ramloop[4].ram.r_n_6 ,\ramloop[4].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\ramloop[4].ram.r_n_8 ),
        .addra(addra[11:0]),
        .clka(clka),
        .dina(dina[15:7]),
        .ena_array(ena_array[0]),
        .wea(wea));
  weight1_bram_4_blk_mem_gen_prim_width__parameterized4 \ramloop[5].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[5].ram.r_n_0 ,\ramloop[5].ram.r_n_1 ,\ramloop[5].ram.r_n_2 ,\ramloop[5].ram.r_n_3 ,\ramloop[5].ram.r_n_4 ,\ramloop[5].ram.r_n_5 ,\ramloop[5].ram.r_n_6 ,\ramloop[5].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\ramloop[5].ram.r_n_8 ),
        .addra(addra[11:0]),
        .clka(clka),
        .dina(dina[15:7]),
        .ena_array(ena_array[1]),
        .wea(wea));
  weight1_bram_4_blk_mem_gen_prim_width__parameterized5 \ramloop[6].ram.r 
       (.DOADO({\ramloop[6].ram.r_n_0 ,\ramloop[6].ram.r_n_1 ,\ramloop[6].ram.r_n_2 ,\ramloop[6].ram.r_n_3 ,\ramloop[6].ram.r_n_4 ,\ramloop[6].ram.r_n_5 ,\ramloop[6].ram.r_n_6 ,\ramloop[6].ram.r_n_7 }),
        .DOPADOP(\ramloop[6].ram.r_n_8 ),
        .addra(addra[11:0]),
        .clka(clka),
        .dina(dina[15:7]),
        .ena_array(ena_array[2]),
        .wea(wea));
  weight1_bram_4_blk_mem_gen_prim_width__parameterized6 \ramloop[7].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[7].ram.r_n_0 ,\ramloop[7].ram.r_n_1 ,\ramloop[7].ram.r_n_2 ,\ramloop[7].ram.r_n_3 ,\ramloop[7].ram.r_n_4 ,\ramloop[7].ram.r_n_5 ,\ramloop[7].ram.r_n_6 ,\ramloop[7].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\ramloop[7].ram.r_n_8 ),
        .addra(addra),
        .clka(clka),
        .dina(dina[15:7]),
        .ena(ena),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_mux" *) 
module weight1_bram_4_blk_mem_gen_mux
   (douta,
    addra,
    ena,
    clka,
    DOPADOP,
    \douta[15] ,
    \douta[15]_0 ,
    \douta[15]_1 ,
    DOADO,
    \douta[14] ,
    \douta[14]_0 ,
    \douta[14]_1 );
  output [8:0]douta;
  input [1:0]addra;
  input ena;
  input clka;
  input [0:0]DOPADOP;
  input [0:0]\douta[15] ;
  input [0:0]\douta[15]_0 ;
  input [0:0]\douta[15]_1 ;
  input [7:0]DOADO;
  input [7:0]\douta[14] ;
  input [7:0]\douta[14]_0 ;
  input [7:0]\douta[14]_1 ;

  wire [7:0]DOADO;
  wire [0:0]DOPADOP;
  wire [1:0]addra;
  wire clka;
  wire [8:0]douta;
  wire [7:0]\douta[14] ;
  wire [7:0]\douta[14]_0 ;
  wire [7:0]\douta[14]_1 ;
  wire [0:0]\douta[15] ;
  wire [0:0]\douta[15]_0 ;
  wire [0:0]\douta[15]_1 ;
  wire ena;
  wire \no_softecc_sel_reg.ce_pri.sel_pipe[0]_i_1_n_0 ;
  wire \no_softecc_sel_reg.ce_pri.sel_pipe[1]_i_1_n_0 ;
  wire [1:0]sel_pipe;

  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \douta[10]_INST_0 
       (.I0(DOADO[3]),
        .I1(\douta[14] [3]),
        .I2(\douta[14]_0 [3]),
        .I3(sel_pipe[1]),
        .I4(sel_pipe[0]),
        .I5(\douta[14]_1 [3]),
        .O(douta[3]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \douta[11]_INST_0 
       (.I0(DOADO[4]),
        .I1(\douta[14] [4]),
        .I2(\douta[14]_0 [4]),
        .I3(sel_pipe[1]),
        .I4(sel_pipe[0]),
        .I5(\douta[14]_1 [4]),
        .O(douta[4]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \douta[12]_INST_0 
       (.I0(DOADO[5]),
        .I1(\douta[14] [5]),
        .I2(\douta[14]_0 [5]),
        .I3(sel_pipe[1]),
        .I4(sel_pipe[0]),
        .I5(\douta[14]_1 [5]),
        .O(douta[5]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \douta[13]_INST_0 
       (.I0(DOADO[6]),
        .I1(\douta[14] [6]),
        .I2(\douta[14]_0 [6]),
        .I3(sel_pipe[1]),
        .I4(sel_pipe[0]),
        .I5(\douta[14]_1 [6]),
        .O(douta[6]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \douta[14]_INST_0 
       (.I0(DOADO[7]),
        .I1(\douta[14] [7]),
        .I2(\douta[14]_0 [7]),
        .I3(sel_pipe[1]),
        .I4(sel_pipe[0]),
        .I5(\douta[14]_1 [7]),
        .O(douta[7]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \douta[15]_INST_0 
       (.I0(DOPADOP),
        .I1(\douta[15] ),
        .I2(\douta[15]_0 ),
        .I3(sel_pipe[1]),
        .I4(sel_pipe[0]),
        .I5(\douta[15]_1 ),
        .O(douta[8]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \douta[7]_INST_0 
       (.I0(DOADO[0]),
        .I1(\douta[14] [0]),
        .I2(\douta[14]_0 [0]),
        .I3(sel_pipe[1]),
        .I4(sel_pipe[0]),
        .I5(\douta[14]_1 [0]),
        .O(douta[0]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \douta[8]_INST_0 
       (.I0(DOADO[1]),
        .I1(\douta[14] [1]),
        .I2(\douta[14]_0 [1]),
        .I3(sel_pipe[1]),
        .I4(sel_pipe[0]),
        .I5(\douta[14]_1 [1]),
        .O(douta[1]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \douta[9]_INST_0 
       (.I0(DOADO[2]),
        .I1(\douta[14] [2]),
        .I2(\douta[14]_0 [2]),
        .I3(sel_pipe[1]),
        .I4(sel_pipe[0]),
        .I5(\douta[14]_1 [2]),
        .O(douta[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \no_softecc_sel_reg.ce_pri.sel_pipe[0]_i_1 
       (.I0(addra[0]),
        .I1(ena),
        .I2(sel_pipe[0]),
        .O(\no_softecc_sel_reg.ce_pri.sel_pipe[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \no_softecc_sel_reg.ce_pri.sel_pipe[1]_i_1 
       (.I0(addra[1]),
        .I1(ena),
        .I2(sel_pipe[1]),
        .O(\no_softecc_sel_reg.ce_pri.sel_pipe[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_sel_reg.ce_pri.sel_pipe_reg[0] 
       (.C(clka),
        .CE(1'b1),
        .D(\no_softecc_sel_reg.ce_pri.sel_pipe[0]_i_1_n_0 ),
        .Q(sel_pipe[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_sel_reg.ce_pri.sel_pipe_reg[1] 
       (.C(clka),
        .CE(1'b1),
        .D(\no_softecc_sel_reg.ce_pri.sel_pipe[1]_i_1_n_0 ),
        .Q(sel_pipe[1]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module weight1_bram_4_blk_mem_gen_prim_width
   (douta,
    clka,
    ena,
    addra,
    dina,
    wea);
  output [0:0]douta;
  input clka;
  input ena;
  input [13:0]addra;
  input [0:0]dina;
  input [0:0]wea;

  wire [13:0]addra;
  wire clka;
  wire [0:0]dina;
  wire [0:0]douta;
  wire ena;
  wire [0:0]wea;

  weight1_bram_4_blk_mem_gen_prim_wrapper_init \prim_init.ram 
       (.addra(addra),
        .clka(clka),
        .dina(dina),
        .douta(douta),
        .ena(ena),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module weight1_bram_4_blk_mem_gen_prim_width__parameterized0
   (douta,
    clka,
    ena,
    addra,
    dina,
    wea);
  output [1:0]douta;
  input clka;
  input ena;
  input [13:0]addra;
  input [1:0]dina;
  input [0:0]wea;

  wire [13:0]addra;
  wire clka;
  wire [1:0]dina;
  wire [1:0]douta;
  wire ena;
  wire [0:0]wea;

  weight1_bram_4_blk_mem_gen_prim_wrapper_init__parameterized0 \prim_init.ram 
       (.addra(addra),
        .clka(clka),
        .dina(dina),
        .douta(douta),
        .ena(ena),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module weight1_bram_4_blk_mem_gen_prim_width__parameterized1
   (douta,
    clka,
    ena,
    addra,
    dina,
    wea);
  output [1:0]douta;
  input clka;
  input ena;
  input [13:0]addra;
  input [1:0]dina;
  input [0:0]wea;

  wire [13:0]addra;
  wire clka;
  wire [1:0]dina;
  wire [1:0]douta;
  wire ena;
  wire [0:0]wea;

  weight1_bram_4_blk_mem_gen_prim_wrapper_init__parameterized1 \prim_init.ram 
       (.addra(addra),
        .clka(clka),
        .dina(dina),
        .douta(douta),
        .ena(ena),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module weight1_bram_4_blk_mem_gen_prim_width__parameterized2
   (douta,
    clka,
    ena,
    addra,
    dina,
    wea);
  output [1:0]douta;
  input clka;
  input ena;
  input [13:0]addra;
  input [1:0]dina;
  input [0:0]wea;

  wire [13:0]addra;
  wire clka;
  wire [1:0]dina;
  wire [1:0]douta;
  wire ena;
  wire [0:0]wea;

  weight1_bram_4_blk_mem_gen_prim_wrapper_init__parameterized2 \prim_init.ram 
       (.addra(addra),
        .clka(clka),
        .dina(dina),
        .douta(douta),
        .ena(ena),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module weight1_bram_4_blk_mem_gen_prim_width__parameterized3
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    clka,
    ena_array,
    addra,
    dina,
    wea);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;
  input [8:0]dina;
  input [0:0]wea;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [11:0]addra;
  wire clka;
  wire [8:0]dina;
  wire [0:0]ena_array;
  wire [0:0]wea;

  weight1_bram_4_blk_mem_gen_prim_wrapper_init__parameterized3 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .addra(addra),
        .clka(clka),
        .dina(dina),
        .ena_array(ena_array),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module weight1_bram_4_blk_mem_gen_prim_width__parameterized4
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    clka,
    ena_array,
    addra,
    dina,
    wea);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;
  input [8:0]dina;
  input [0:0]wea;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [11:0]addra;
  wire clka;
  wire [8:0]dina;
  wire [0:0]ena_array;
  wire [0:0]wea;

  weight1_bram_4_blk_mem_gen_prim_wrapper_init__parameterized4 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .addra(addra),
        .clka(clka),
        .dina(dina),
        .ena_array(ena_array),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module weight1_bram_4_blk_mem_gen_prim_width__parameterized5
   (DOADO,
    DOPADOP,
    clka,
    ena_array,
    addra,
    dina,
    wea);
  output [7:0]DOADO;
  output [0:0]DOPADOP;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;
  input [8:0]dina;
  input [0:0]wea;

  wire [7:0]DOADO;
  wire [0:0]DOPADOP;
  wire [11:0]addra;
  wire clka;
  wire [8:0]dina;
  wire [0:0]ena_array;
  wire [0:0]wea;

  weight1_bram_4_blk_mem_gen_prim_wrapper_init__parameterized5 \prim_init.ram 
       (.DOADO(DOADO),
        .DOPADOP(DOPADOP),
        .addra(addra),
        .clka(clka),
        .dina(dina),
        .ena_array(ena_array),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module weight1_bram_4_blk_mem_gen_prim_width__parameterized6
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    clka,
    addra,
    dina,
    wea,
    ena);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input clka;
  input [13:0]addra;
  input [8:0]dina;
  input [0:0]wea;
  input ena;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [13:0]addra;
  wire clka;
  wire [8:0]dina;
  wire ena;
  wire [0:0]wea;

  weight1_bram_4_blk_mem_gen_prim_wrapper_init__parameterized6 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .addra(addra),
        .clka(clka),
        .dina(dina),
        .ena(ena),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module weight1_bram_4_blk_mem_gen_prim_wrapper_init
   (douta,
    clka,
    ena,
    addra,
    dina,
    wea);
  output [0:0]douta;
  input clka;
  input ena;
  input [13:0]addra;
  input [0:0]dina;
  input [0:0]wea;

  wire [13:0]addra;
  wire clka;
  wire [0:0]dina;
  wire [0:0]douta;
  wire ena;
  wire [0:0]wea;
  wire [15:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOADO_UNCONNECTED ;
  wire [15:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOBDO_UNCONNECTED ;
  wire [1:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPADOP_UNCONNECTED ;
  wire [1:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPBDOP_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h43EEBFD9175097B2E6B8A8AD92832F3345D2C5845C670EE8B4FC6E4096881678),
    .INIT_01(256'hED9683CA2ADE2F69C1078C96DF2BDB3D9796D0DCF685F40455192FD2273C5EF3),
    .INIT_02(256'h9FBA64DDF3FCC62C2A6740847D3E4B8B214E4453BA1E013D97024D1A86BC2A7C),
    .INIT_03(256'h3B297C84765388C8FC86B6711CC01AE52A62DFE2DCBE70BEB42ADECEDD3AE1F0),
    .INIT_04(256'h04BF602E1D3CFA6C356BF9EF1FA9F57D7C4F8E3356A135E62BB266E110035BB2),
    .INIT_05(256'h7943C1C2209FD9DDBB981BE7FCB27CC8B326ED5C365B2E44A0F4C8A418A47111),
    .INIT_06(256'hB0AEAF6A5D5B54CFDE2A54E13EC74CD725612B7C0BBE030B8A4F2F1768201890),
    .INIT_07(256'h35DE607652AC68C670FB50A5F18A706DD260445EE60AD91048125E06024D1AF2),
    .INIT_08(256'h4687C49FD4236DDF6394BBE54B6014D7FF5FB21B46879E33655684320594A94B),
    .INIT_09(256'h6C2F29EC6BCD08F6B0178C0E19C2FF4BEA461C8DB9A5B0188DCC5EC365DA38A1),
    .INIT_0A(256'hCDA9D3AAFE29F2D660CDA2C82D9B738EF5D4B3BE2376CE317BB407A45CF39A57),
    .INIT_0B(256'hBD34040D05B519E3DEA631CC4FACCA93F0621F3ACAB1737D1CF862993C7292C1),
    .INIT_0C(256'h2177802E4E006AD039949D4A283CE9AD1D7CD60B9890254981DF40BE019AD0F6),
    .INIT_0D(256'hD7BD3092108BBD82BE17AD623CDA88A8D4A6FD87FFB1FA72A712412C3824F434),
    .INIT_0E(256'hD6A390E7B502873160BB37AD0309E2920C7440FDD1A6D5B1E7784429B4E13EE5),
    .INIT_0F(256'h0E3553B286290EE257224D63142821762DC59A6273FD6C75FA5AED0C6533A1D1),
    .INIT_10(256'h71F96DE01352025467D3DB6B996DD61F08389CEF5BB76EAB6D821027CFA3B8D4),
    .INIT_11(256'h65E648A14FB0FAF393178114F4D772520D39F80153522CDE85E72909C3649673),
    .INIT_12(256'h80FE6D263EE5E148A17227D070C047D0BF043ED22E1194B350AF95DFEA0DE50E),
    .INIT_13(256'h72E1393E789716FD977EB6F62062B8622467A1F9023F0B4282EFCD7ADF0732B9),
    .INIT_14(256'hC601565FFBBFF6B32F7558F8CA9C1AA9B415A62E6EBE5029EB410ECDFE1BD329),
    .INIT_15(256'hA9116F2993772FF05DA243971902FCC9153119616173898DD84B665A6742ACBF),
    .INIT_16(256'hEB98503473E00BCB656E65268F962C66893FA07CEE6C3157C7AE684330C56BEE),
    .INIT_17(256'h120CD53A07CE3F4020231E1EF1439EB1172AC972438495840EF27C8E07206E90),
    .INIT_18(256'h9D9374866C7A867B5557EDE662F8CF09E599AD03CF4F75D2969BBEB1E3F3E2E6),
    .INIT_19(256'h2036853E9647740ABBFFA1A04380B57C3348933F13957D92ED3795210F651439),
    .INIT_1A(256'h8C0619852902252159CEB0F71782B09E499DF1E1BC3BDCEA6FA791E254647827),
    .INIT_1B(256'hA06C44A66E660F83165058B84D210D11939E923658C0598492AFB19F0B8B2AD9),
    .INIT_1C(256'hEEF11D006B19B6909498DF9526EA8FE1579A2E8176F71C14B37959277EC74C52),
    .INIT_1D(256'h91FD6E5F1BF3CFB29D9074FBC6F5A8BAEE7F254F4BE3AC6D15C8BCBF4D41191E),
    .INIT_1E(256'h4CE73FE856B57DCD00A172DC1C68E245EFCAF83FBA02F1C25B861E6AB089A67D),
    .INIT_1F(256'h7F735526D407816EF12C84777A168BA4EB3FDFCE9FDD387B7311C19BDCA33E43),
    .INIT_20(256'h92508C6AD0594A8818CF289D0F95AC9E11DD14E6794D20CBE71F4E4821F9F163),
    .INIT_21(256'hC45403A5085912A766479AAA3A940C818B8FC0E8ED1EE4D83BD7A8781E6FBCA1),
    .INIT_22(256'h08DD1CBEFFDA89C9B68E6ADA83EF6C6E551A9A7CEED65D4B38D8C0BFCDBC526B),
    .INIT_23(256'h8DB39D976825E73D863ABEF617CD261F7B6A256687EA86D5444E683039437FD3),
    .INIT_24(256'hD712E93BB10B013FA1DA9801AC9D6DE611AF88076A369FF10A4661032C6C7C6A),
    .INIT_25(256'h0B678115200FAD58376BE32CCEA117372F9CE61C1697AF79D70A8DDD3287297D),
    .INIT_26(256'h1FAC6974C40696DAB03D269D44DDB6CCF21105E765B62B7AD82B44D30A5F9A3F),
    .INIT_27(256'hEDC600994645778A97B66401709549FFD4C4B29D8100209AAA3D016FDFA7D7DC),
    .INIT_28(256'hF8C9B3FEF7A41C999A71F64F6AF97B9D571A063C30E4B50012179E3F1ACBD55E),
    .INIT_29(256'h0CFFDBC1043C938BE02D5F8B46E61FC8E29866AAA1A498F46BC4BBEE7FFBF4E7),
    .INIT_2A(256'h1B61E80BC7AB93EB5D805A5C2E9F0885B29CB42345E208D02892C9044D98335D),
    .INIT_2B(256'h16CCB3BD22C203E7D083292164F5FF46E8B9156BA9B3722AA495AE1303958BD4),
    .INIT_2C(256'h03C7F7D36D64EDDA2043F07824596EC1798145D8160B2EEC06CC109ADB0ED865),
    .INIT_2D(256'hCBDA832C6BBCA8F7C94FD69595C78A42C60F7E6676400080A31ACF665099316E),
    .INIT_2E(256'hA00C2388EFA1D480951875A3202306248D30B811F8BBFF9215B754713AC48ABF),
    .INIT_2F(256'hD4D47E85E5F61AC92DCBD697D5CCC4BB23CE5097801F40B0DD928B7E16B57572),
    .INIT_30(256'h9E531B22E09049AAE687E5070E304E5990AB550D5BE85274893D3E9EFBEF53F9),
    .INIT_31(256'h388144998BD807F8DE62EB7DD6AF4933FDB8F4F10215FC8BFF582C02B9417CDA),
    .INIT_32(256'h0E6F82F2C272BB8B37FA651EA9FA47532FFA4AB467367F285F1F68FA86D5F51C),
    .INIT_33(256'hF4AD9D6037B28D35B2A49CAA0A67FC6DA5EAC61E455E649B2BC41EAD8FD81F5B),
    .INIT_34(256'h28F04150FD09BFC98F897D62B9B0ACB130B21B5691676B9B85E32E6C3ECEDF5A),
    .INIT_35(256'h5AF134F86EF9F2DC3FC8C5644659D18DC39D0423BA0DC9022387A76EED4436A4),
    .INIT_36(256'hFE37458418014A32FC2AB0D35B049362F208D75CFFC609B0AF906AEC14110BC1),
    .INIT_37(256'h6FB63FCF2AC98E9C3396692E294E39DAEE6DA552CFFE3B34D92C330DC8163FD4),
    .INIT_38(256'hD8DF1D8F3343D3C1AED723FF634697A2A9537C525FF2C21C1A0A09A9AB8FD16E),
    .INIT_39(256'hAF8D816B7E05467D78B24A0AF14CECB885B1F3FE69CC0966AD67F0C8A18758F6),
    .INIT_3A(256'h40217BB5CB347BE1AE35821AE48282F6BD203154F1C98B541EFAA60EBC29ECD2),
    .INIT_3B(256'hF6A57DB9D502CFF4ED4F29028BBD17A12F2B404D2E2DB95383D1E92D227A378B),
    .INIT_3C(256'h3B2FD33BF291A8C4ED6C3CA51B7D60D435989805B7E5196FC72C27CBE3075A6B),
    .INIT_3D(256'h000000000000000000000000000000000000000000071ECD2EC6F81322066C4F),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram 
       (.ADDRARDADDR(addra),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOADO_UNCONNECTED [15:1],douta}),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOBDO_UNCONNECTED [15:0]),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPADOP_UNCONNECTED [1:0]),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPBDOP_UNCONNECTED [1:0]),
        .ENARDEN(ena),
        .ENBWREN(1'b0),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module weight1_bram_4_blk_mem_gen_prim_wrapper_init__parameterized0
   (douta,
    clka,
    ena,
    addra,
    dina,
    wea);
  output [1:0]douta;
  input clka;
  input ena;
  input [13:0]addra;
  input [1:0]dina;
  input [0:0]wea;

  wire [13:0]addra;
  wire clka;
  wire [1:0]dina;
  wire [1:0]douta;
  wire ena;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:2]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'hCDE93AAE077502AF4E83E7C3FC1D6B55C197B704A9B35E0FAAEDB4D28057F65B),
    .INIT_01(256'hDC0D0A07C41C8C04F9118E15C6B876DD485BBFC2B69D112A131230155266DF46),
    .INIT_02(256'h4670C1D6EFFC159CA31345610DBF936A9BF71E30F15B9FB81468531CF96DABA0),
    .INIT_03(256'h32B104C93790B41367C97A61F0F8F0EE4C7D5F98412C582E671D0EAE768497FA),
    .INIT_04(256'h0E4A28D37F572406B70354C6937EFDDDFEEE5A7AB3EB4855505C5BEAE488F2F8),
    .INIT_05(256'hF10CE3D526D677EE5F4B636424022B88EC730E5E6166AD606FDF638CCC2C3CF5),
    .INIT_06(256'h6CC762AE8A80D111C41D90FAFCF7E35132620A8AB4BF930F47E3C5449EA2CE16),
    .INIT_07(256'h07EC20CC575DF8C6EAE111998E2F6411108C69541C5A84362CFF3137B68E5A96),
    .INIT_08(256'h57F2929BD870CAC43C9C02B9A787102FA2400CAE21BFB2E78A1D553B1CE5D8B4),
    .INIT_09(256'h47D9A01F973CFC18BCFE58AA793807FB79B36B1F48411B63EC09ACA667F7298B),
    .INIT_0A(256'h397FD5D013A9D19B543E4507C929CA52BDECC8EC8F6037E071562D6D41E45AC2),
    .INIT_0B(256'h671820184CAB5F5E44B209F8EE39F409232CCFE279C7136AA98311CD92752F86),
    .INIT_0C(256'hB257C54367B585E66B700BB31758AFA012F3C00EFC55E311905163374ECA43BA),
    .INIT_0D(256'hB354EA13C839C764B97DA38320A076C2402154DDABC72F9DDB93C64BA8B91CF5),
    .INIT_0E(256'hA93F595E2486A67837E572CB2E10752F0EBB4AA6EEBE6ECF2338975C7B0248FA),
    .INIT_0F(256'h67EFD5EC64BE63BBA9765CA71782FB1955C95075084DC55042FF326305C59188),
    .INIT_10(256'hAA81E954EBB5DB37DC2CE2D69D5C1C95CAB9B5650CF1C126B752AF4D68133CD6),
    .INIT_11(256'h14D916A434A6BC58F6620E8B121DCCFFABC0FAE69498A9B21C32B796C813CDC7),
    .INIT_12(256'hE992E64DD3D66775EBB7273189576D45330DE80734975D9DA2FF5B2EF97FA506),
    .INIT_13(256'h2FF2487BC9999BF8260ADFAA9EB0B5882434B3B41DEE6107712741CB7DF5AAF9),
    .INIT_14(256'hBB088B1777A227E741EDA191F9CBDEBAF91CDB6CA1D4833964A1B8BB6C4CF822),
    .INIT_15(256'hFF4E6200E483C303D0E88006D33B779F643F47B1C70353D0590E3206877FB250),
    .INIT_16(256'h779497A9A3C0C59EAE976C83540CC93C00A139EAE51602FE27EF4401262AA219),
    .INIT_17(256'hFA2A7746F33376BF12CEA2D99582068763908851FEBD710221B9C9147BA0FD04),
    .INIT_18(256'hACFB608BBDE7B25258E28B6F200539B7C6426382307706275DA484844BC8EAF0),
    .INIT_19(256'hA51E471AF33223AC6AE924E0A836BF8DBB56B5CA232B25BD822A2E3199F82BF1),
    .INIT_1A(256'h82A00E64064C3F2CFE680FCD85CF19BC7B29F041BDA88964E380C19FDCC24F1A),
    .INIT_1B(256'h323F0E7B2B6A88148DD5395C4A312683A5D1935675E639D6DB53716A7FBF5883),
    .INIT_1C(256'h32E9A69E1DA0E2FCE788364AA84227E652F2E60A7CD7A06DF81AB68DA5A92770),
    .INIT_1D(256'hD0039E1CD4739A3C28A2B22B8A0F814ECFF305BBD16D3911EF88CD53489A27D6),
    .INIT_1E(256'h32A1FAB17FFDC2908B5A3D0C1384BEF6149CB9918CB4528BAF1B7F01FA6DEAD1),
    .INIT_1F(256'h3133803F1001EE665F043FB1B22350B6F8DB305CD5028F44B7418F097342DC7F),
    .INIT_20(256'h7BF7F51B94740D4CAF3CD589887B48F1C86159A4F91963EC6A3DA7199712B59E),
    .INIT_21(256'hD1B105AEE801E361AEB77FA58AA042F7B152DDD8B09BDE70CB26F9A6E80C4022),
    .INIT_22(256'h54E90962C1FB8170132105716BDB209768BBD0770112543EA7789F42C0CC7014),
    .INIT_23(256'h27DB6D26FC1528109A5F6B8770DC4BB8B25F8585F1D9C57EAC75508A81E5EDF9),
    .INIT_24(256'hFC124BF9C189C7E270CFCAB6EE7A0C2B5D032556DD335928EB6DC667E6B3F6A1),
    .INIT_25(256'h103F6C51C04EA3F0FCDB5F40A44248304EC3683C1374ABACED5DBBAAC192A3E7),
    .INIT_26(256'hD04BB41D0F9C8E5CC775582B69479FF8765C9E7BF2B339EB9A95DA3490137A7A),
    .INIT_27(256'h5439877C8DD4874DDD180E83B784CD3057602198FE1140C1B9F4D0C5E0C49C1F),
    .INIT_28(256'hDF5E5B2EDEDFD3CD820DA563A36A232B8652CF00324C329D3E73A98BEAD26604),
    .INIT_29(256'hEF855A1EE9F178B4F2A2358909520567BC14976D6D35DD3E3162F5574559DBB6),
    .INIT_2A(256'hFCC5DCE900D11ED2A1B1BCF11A56533F5869C92E3CEBDE818A6F1557F3301444),
    .INIT_2B(256'hD6EAAE8E5D4292BE636F2C9DF5B0B7ED5A6A8A35F935EF0D7D4594759242BC54),
    .INIT_2C(256'h2C673E183CF9EBB3CE9822C79B5A1477695AB7DF9DE43359655EF36E9E54D25C),
    .INIT_2D(256'hF1E3EADF72209CCFA2C3E68904BCA0D607F58DD202100A23A5E5C7635656029F),
    .INIT_2E(256'h0EC23337282C9AF1623EE242B253D839630450BF432B78C78C244435FF8E2CDB),
    .INIT_2F(256'h2F89B4E9CDCB5374399AE53DCC2BDA9AF72F3A25A1CC7203CE903C25472C77EA),
    .INIT_30(256'h201B504C2F11EC0135B289AEA00C6A71F4F899625687A5537C437BBDAC8CD92C),
    .INIT_31(256'h06E38831DE20BD22B7F4801FC268C3C062AABF5BAF27D1DAE6204AF14882D9BD),
    .INIT_32(256'h2C960DBA1CB160FAB5F9D6D0F7BE783B114FA6E5AC2E7CB8773C17522B3FD76E),
    .INIT_33(256'h8120914F0F67D65C11A3EDFF522F2B0CCD03E37A780CDC6C5A34297D2C17B788),
    .INIT_34(256'h0EE5A29267B2403AF7C8A07D4B53562E385793CA47E8CDBBD7BDEF5F28B53CD6),
    .INIT_35(256'h4424E978CB3BBE64AB489E12542BB27DEA4024CD16752751A288E4DE5996A50A),
    .INIT_36(256'hA85025C68AB0F2938C9FBE492BD782D8F8C0B95AF477850FECD72C4F03623EA8),
    .INIT_37(256'h4CC864F8F3D4837F6DEA56E8F67639D40A7775FADAB982DCE3E63E123CA4D940),
    .INIT_38(256'hDA307B6CBFDFB9CB8A3E495F6B99734D173E65BC228824F9EFA35C1A73760638),
    .INIT_39(256'hC1E2DBAF3FCDDB1C8FA9D6C080D0AA39C58D88889A8CB36275DFA5A8195EDCC9),
    .INIT_3A(256'h73CDC7A11434A8931FDCC0D524AD674AAF2FB8E92400E0FC4C57A6E02545327D),
    .INIT_3B(256'h3269475556CC7A7978E5D66329D95689C6361A247F5EB2C4DCDAB5F727EFB56F),
    .INIT_3C(256'h9C2B74C9FBEB6835CE26FE63930C4A68A3EE865CEBCC585B50CF7F56C4F8D817),
    .INIT_3D(256'h5FE0325A6DD6D0AEC2C829762FB337027895D964CC5E6FC1188F885AECE1B591),
    .INIT_3E(256'hCB6464E03EE939324575BC477BBC6B4F891D18839A2AA485F3C410CE34171E20),
    .INIT_3F(256'hBE3514666079A1B5CB6F044FFFA6E3A2FC065F23B48FC8D97632E687DCACC9ED),
    .INIT_40(256'h469B50D7A71E4B1A83ABB429214398B5D513AA2FF9ECE3A7FBAB027BB7CDC936),
    .INIT_41(256'hC38B5D671F2669144184F1A018DBF5E59CE0C8A19A8281DF3155A8CB04F4CAE5),
    .INIT_42(256'hB281001EC6F79557CE3290C60F15D542658DD0764EEAFD0D22D093144D4BC7BE),
    .INIT_43(256'h1F1B11E8FE861E8FB39BE24E082842C3EE803ED193F11DBA59360E54FBD5A470),
    .INIT_44(256'h8D8EB0A094192EF4B49FBE6A6F6F464DEE4BE2CEB5490D423C44ADA017987F8E),
    .INIT_45(256'hC69C8066733D58BBBE3AE984D5A24240DA58C8E36D05E501B9FE2C1F86895864),
    .INIT_46(256'hC44FD0B230AD28D9D1D914CCDB34077CA02F06CFEE21436C2E23254066F7A4A2),
    .INIT_47(256'h85B8417F0BB942406E559A8FC5705D40697436622C7FFBEE93DAD7B5367897DB),
    .INIT_48(256'h1299D0CAC913097F331C08E9E6567D992C8C86805AD9444D1AB603F29E1C2ACB),
    .INIT_49(256'h8821650435EA60AF1C7AD70EF2C942D94B52B4CAFA835B0794E2D923E9A0C238),
    .INIT_4A(256'h5429CFF00204C5559915B950C3B7F9538C3FD819DDADFAF94E44B00F2A7242C9),
    .INIT_4B(256'h23FC31765349465D0ECF98C3F8A618BA57C5A4B45272CF01819D858A57A30CF9),
    .INIT_4C(256'h923225A5D9C9BCF4B758D18D87FDF1AC1A214CA87EB1BA5AA238F144A47A620A),
    .INIT_4D(256'h651614D30E1FDC7275B335C46BCF3028FEEB9FB57F015C8E928C6491AC1A097D),
    .INIT_4E(256'h2C271E7F374FBD7B9A5ED08B8C1B2DAA5891A127FBED666FDA193D0D691130AA),
    .INIT_4F(256'h6034EF9FFF5BB6AEE66AB30C1B742490B823E2B5DE7E3E1767A2151D4ACBFEA7),
    .INIT_50(256'h46EF2F05F36E21904654DB2C1106C2FF4B23B266B89224941B70C88D264CAF26),
    .INIT_51(256'hDDB8274034177C65091344C4BD0E3E026B1F5F62EE160E07A726579B08104779),
    .INIT_52(256'hBF238C3DD4670621C4E51E71013D0609710C08923C2535B696F35D9941780F9F),
    .INIT_53(256'h4D435F0A78A123B2367A7ED2550D37A3CF5CEC3F64FAD8CF5FEFB0E31F9D7317),
    .INIT_54(256'h093C72AE822DC9EDD1CF8B8A82958C62DE2378252DEA283D9D9F177CAA2614CB),
    .INIT_55(256'hD1BEC254B98B6672E4BA02E7BF1B0509DBD82D1D794F45B98C023AD2F016F7FB),
    .INIT_56(256'h5D8EE1D1D67F3DDFCE3663DE86A72C903BAB29495862B13AD017EAEA40E9C215),
    .INIT_57(256'hAE7D542EEA8FD0FAFDEF0B8708D34BB6635E3FBD93E787C92107558335C6E910),
    .INIT_58(256'h2A9A898B5596E9960BC008D64ED260FF397B539199D4D28C3EFE3EA57BD49AEA),
    .INIT_59(256'hBEE174D72C07F157390E729EEB44CBD40DEB535F0B91CF21F7135ED50E014DDC),
    .INIT_5A(256'hBD83264473A82F2AB529A3C97EA829E02B364CB15B82A18C002CBF57BC570624),
    .INIT_5B(256'hCD3016FEB4619D2F0A21A504E77BD297075696C4F44180593B5A265D695CA093),
    .INIT_5C(256'hCD2B608C67C7FC30A08DF35897D5FF658091173C8B4412B3C2A4B01D0762CFDA),
    .INIT_5D(256'h015208F29A9C54C0134FAC98DC023CAB799231B58DAD6DD0FFD219AFF9331AB8),
    .INIT_5E(256'hC72175D7E8BFA46568ED6E71174A9A8E0ED072BA5E18AE022224860DBA4B477C),
    .INIT_5F(256'hBDFB48908DDF0A8994A7DD44E9D63273263DA48478664E30D1CBCC1A4B034E4A),
    .INIT_60(256'h6E60E9FF8149D4E8736E3FF3E62CB902B0DA99C9408FEE3697585E6DD131F02C),
    .INIT_61(256'hA878EBD11C546A763FC90D6AB66E0521E031CCDC5D961320D951A8FC408CB974),
    .INIT_62(256'h2DE639941206E80E0BE0C573E301BD8B1B6D407E601225452AA2C0B08D18D9F3),
    .INIT_63(256'h314EE8917D75251D2F616A79862AE6D5F6AD1D2FBFB12A104D0A2E6A5926C5CC),
    .INIT_64(256'h759793118FF3E01C79AA280BF4E30C31590B2C2384DC3322E49021A417A2A08C),
    .INIT_65(256'h0E9254F94CE407D14D5194B877FB3548FFAF9E5EA9DD68D529C8FAE5C25FF563),
    .INIT_66(256'h8ADE273044623BC4E543B63117D6F0E0353DDCBE4C1975D460528415F4F9BAB3),
    .INIT_67(256'hE7065E8AED88D3F6ACDA77C1690B6FE21561F58BF609BC56579642F476B3B8B9),
    .INIT_68(256'hECB26336257192C1EF0375A7B857081D5808C36A4FE87D9D4918BEA2B7F17888),
    .INIT_69(256'h2A58015B50334E49164555435154CA9ED1D7D94691BFC57203AEE6CB0F551F22),
    .INIT_6A(256'h7430FA941E9A09E9D633F114E773166B81E7482964776CCC896A2B1BDC6277DB),
    .INIT_6B(256'h1C81F020550ECC4F4878F426EA9EE8A8FA218AE7D58EA1DFEAB209529C81019D),
    .INIT_6C(256'h6827821A873370D6071755AA84B8B5CDA372920562E72D9F0E32FF20D85FF374),
    .INIT_6D(256'h2CAAB8B32F4901893E981EA89312B6ED4E64FFC6BBF281311CE8B5634C727AD0),
    .INIT_6E(256'hC0AEF250366B21811985A99DADB268D0092607030B1B709B27012E8908767958),
    .INIT_6F(256'hAA6E085F14F8924FC7298F741D1945EA53C64A0A2B99EBB2E362F18016DA7682),
    .INIT_70(256'h35196FDD19B149B6B3F093EFAD74B92DBA5C6E412CEA03E6603B9AEEF51D0A68),
    .INIT_71(256'hCC6785785917C8095FA815AC10BAF5CF313AB29DBA7B78D9BB309D3E1D4087C1),
    .INIT_72(256'h4A724FA9D0B70D875264B1C624F53488A78ABF6F48BF454B015DEA45517E1FEE),
    .INIT_73(256'h699EACE743B24ADD9E03301C2A711C462FDD800BE44398A160BD30EE8DCF76AA),
    .INIT_74(256'hD9BF878543F679496038B952D925180DE4AC9907DF2C7608175E525C3EC78292),
    .INIT_75(256'h3C480A0AF6AAC308E6BC2BAFCB56CBA756842FA3C2E74FFD6CCFEF1D7EA45B1E),
    .INIT_76(256'hAB0C383C549B8F4895DD8A8F03E21EE1A172AB00DF19B2CBC4AC0B96D017C2B3),
    .INIT_77(256'h793BE7EDFF8C77D5EF9115001549FCB01E1335671715C3F7EC775F9C345C2E90),
    .INIT_78(256'h17A349C6AC282EF9F15582715C8BDBCE46B922C0A2DAD6202A6DA26F379200B9),
    .INIT_79(256'hDC6D81F32E678BCF767811B025B6ACA3E84AFE2C75781FB0CF9FF063AEA245C5),
    .INIT_7A(256'h00000000000000000000005FAACC6A67542BCA2F75EC7A410F2EE3DD6E375FA8),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(2),
    .READ_WIDTH_B(2),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(2),
    .WRITE_WIDTH_B(2)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:2],douta}),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ena),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module weight1_bram_4_blk_mem_gen_prim_wrapper_init__parameterized1
   (douta,
    clka,
    ena,
    addra,
    dina,
    wea);
  output [1:0]douta;
  input clka;
  input ena;
  input [13:0]addra;
  input [1:0]dina;
  input [0:0]wea;

  wire [13:0]addra;
  wire clka;
  wire [1:0]dina;
  wire [1:0]douta;
  wire ena;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:2]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h055C3ED247B2F682DED03DEBE9B516F83878DE4F9DDC8806D7B0C15740C8D2D9),
    .INIT_01(256'h55F5F200012A17103CC93627EC3FFE4FBA0B6159F4DB59133E865C48D54F3DBC),
    .INIT_02(256'h1F4CD55530ABA6B9A941DDEB8CCDFABC208651E607568E3710C3C5ACEE7BA69C),
    .INIT_03(256'h08D546E4B611A174406ACFBB8D91C959BD4121EFA3F2B3B97854D022C6D5229E),
    .INIT_04(256'hE85221CD3D92D535156F12E05F364E7D98186BCE3DD3FB70AF380AFEC4878E92),
    .INIT_05(256'h52DCBC7D117E87A62246515466E37908D5820573C79E2ED186AD0D9492277A88),
    .INIT_06(256'h54D2AA62C7D1A7948C858446EC121742330BEE1267913445833271FD05B934A2),
    .INIT_07(256'h39100E97D510BC8E972A5ACCC6152DFF6174D4BFF7F1A2B6329B81558DA482BF),
    .INIT_08(256'h90137ED8CC0DFB656EE262F8974450F5485B33DD9E9618E5DF3BD6A9520E515F),
    .INIT_09(256'h8D6B7C4C82621A937B17F422CC83B43C72DF44D8D205024F593649CAD80ECD63),
    .INIT_0A(256'h0AF643D79C6902C00D9D263B54B04933665E29628E5E490E91035892DD62AD27),
    .INIT_0B(256'h1ECAAEE6B0201041ABB97AB0A7135DBCD5054E633B7D89D0CEFAE920B28F0826),
    .INIT_0C(256'h52F3ECAE734AF26DFB75C081EF571AA97834ADE4DA1810C0138A01923811EC30),
    .INIT_0D(256'h5925DB8FE41B7BD2E0B5915ADA75D7B95FBEB3602ABAF945C0CCF40D910D492E),
    .INIT_0E(256'hE21CFD21B1319B88B084702B118B7A4B9E2213E88F1EFF92282B7644F8F46F62),
    .INIT_0F(256'h5305386A2A068A5E9C126554C9CB0878503177445C8AC4E557D1E7F78514DF3D),
    .INIT_10(256'h41FFE541F118387A2F015A8F919536752CE52F3C87BCBF853DA12DBC9980AAEF),
    .INIT_11(256'h3A8A4DE0A08D6DE8B288E34D948D9E05A00E60040067A944748DEFDEC6E0F402),
    .INIT_12(256'h2ABBDFF74B4EB87717BF350B3040CC8B636D6F2B4EAB2820CA9F5F996CBDE151),
    .INIT_13(256'h608FAE3BF9AA8C0D973832A678FBE9B5F32D802F777EF45C20F0591D7A5C7F91),
    .INIT_14(256'hB42EF55F0232E6A30E5F8BB7E88245856CD0895BBE0ACA1337D6BF9EDD293205),
    .INIT_15(256'h9C8CA8D9031DC5DC96639BAEF02FD81158FD8D55B924862E258F9913B8D373AA),
    .INIT_16(256'h7A408726D45F9029929D8C2716CEB77DB66D18980A5BCB9E9C353DBB74C7635A),
    .INIT_17(256'h957D3F85ED28CB6781C6B8F9E8478002D74F8AD165E25162784C853B79FA11CA),
    .INIT_18(256'h8BC37EC2F35F2FFBD6072B31D1AAB4B3E77E072B01FE0F42F86CEFD6C82EE34A),
    .INIT_19(256'hA70662646C762F3A71518FEA956EA96A4709E882E3DAB4291C85A7069C2E32A9),
    .INIT_1A(256'h2ADBFBEAFF7EC73CDC4EF9CF545A30213813D09B38CDE890C7A256D8F01BFB9B),
    .INIT_1B(256'hC40151DA210E95DE48E070A9FF209374D349BE78D217B2ACD8A4BDEC409492A2),
    .INIT_1C(256'hE7C3D2348BED7E7256FB143720B5341806AC2FC44679A1499FBCA2CA4D9DFA3B),
    .INIT_1D(256'hF1DDDA605A53824476AA9170E27D3F569887CCE6C0259EBAC450F455178BD2A3),
    .INIT_1E(256'hF326FA7F2A2D31369EC3F897F7ECB7757F6D8272826DA716FA8394C34469034C),
    .INIT_1F(256'h15EE6D0A5CB7E2A9EFA0B79657C5CFC02A21B555DFA4B56BE93E09075CB83288),
    .INIT_20(256'hF4944BEC8E2FEC2B450DB095153AB7B38CB4168E63153BF5E49FB62A0AD5012E),
    .INIT_21(256'h7F675EF718EE4733BC6724D8FFD0EA37621303F232B0CC8C2ACD567E41F0AD95),
    .INIT_22(256'h14D2E7DFA73702C77635C7B9B1328B3D919C083F926951335A38114A3D0E40B5),
    .INIT_23(256'h2FBB25F50287A504E48B35EAE0B8CF9EF19217EDD46B8CC0D54D883C795B6F82),
    .INIT_24(256'hD7A40756BA9FAA1502D4AB5062B06850E9DAB6F2396CA2ED60FFD82EFB227BC1),
    .INIT_25(256'h2414086C29F79CCD2A7E2EA5A241E7A94FA7B8DFF385A90402D9B02533AE3000),
    .INIT_26(256'hBC948ADC8D847DC74AE2E7AF8F97DEBB99970936D197119BF7E9FF27D1B940E2),
    .INIT_27(256'hEA4F055A21C16B044B6D1C73634CD0AC00089601AD9693B3A703DB844473DAB1),
    .INIT_28(256'hFEC6835EE0D8DBCD249F9558C675629FC3024AA83F8A4E55C46696A4057D0BCB),
    .INIT_29(256'hA64356B5900E3471FAB5C263B437AC889F430A132DB3CB5BD62C2CB43B6685F2),
    .INIT_2A(256'hB75A57A05FF250F421D1802E4AAB6A86B1B90C9D09AAEC6CB707C80CC7B9596A),
    .INIT_2B(256'h82A8FF3F3CC188E503CE5F0ED7DF284F076D06BB58865506F153463B83D83533),
    .INIT_2C(256'hD4B8C24BA272B0BB5DFCA2C94407E1B5E1C95454B9E6B95F6B167588086307BA),
    .INIT_2D(256'h83EDEE119CF31BFBA671A072D2CD4319428155AE15071EC4793A0E941DC736B1),
    .INIT_2E(256'hD68CE915535810CBB8001085AE74C3B08120BF2D6C9B4BF0456CED343D39C788),
    .INIT_2F(256'hF48DD3930A0CC0B6AC8160934FDF26129B549E9AEF844D02C9F85243C17D47A2),
    .INIT_30(256'h5B369D38B9AC472A6912119E7A80AA27A180EF14E0619A23213A0B290660CFF6),
    .INIT_31(256'h02BF4F5DC75541F3EC420E9BBB3C7E0E2346DF9260E5C048D01E460290FF1E2F),
    .INIT_32(256'h748CB0CE26DF6EC3F8BAAF109BBB3E93FCCD08F0E9A826445383D1A45BD6A4CE),
    .INIT_33(256'h564D3D298DB3867A282D09C892A05F4A054BA6D1B3117FFD4E2A0391536ED45F),
    .INIT_34(256'hC989D5AC6D9493ED5492D3362333939408A6AC29AB873B441D9A0DB9F2E71A47),
    .INIT_35(256'hBA35B158C8D1B6806C2E192A4F7352C3C0FAEF33D2EF2FA9CB5E28E58AC07D7E),
    .INIT_36(256'h985323817B797EE03710582CCA29B514F1EA842F3B0BEA82EA11A10C48B6353F),
    .INIT_37(256'hD96AE46789F2A55A31504E04087DA2E26F2C849030F29521A04640212FCE5B5E),
    .INIT_38(256'h81A3198B1108613AD1159DB495EE278F6ED18372FEC9111F54B1D27DF923D161),
    .INIT_39(256'hBEDD5EC64FFEBDEF26F8970FAFD159D4BBCC4D580F1376D6015C85BFB94685AA),
    .INIT_3A(256'hD6F1084A9BBC641093C8C1B0D65A3CF4958E856DFA12063257F6C7294E6C142B),
    .INIT_3B(256'h0372DEBAF49ED7653D5EAFFD078069D21A83A6A67EAEA840E6EFD99A22517454),
    .INIT_3C(256'h780F3C0E19EC1BE9DE19AA251030D79C41DCB4E6ED1731175C672C6C84DD3C63),
    .INIT_3D(256'h573184216FD997303842F7437DDCAD16DF28CDE783BB73798DD1DB8A79D775AC),
    .INIT_3E(256'h150DBD9629638BCA6550325708C5978030E684BDE9F11C2BD1679EF1355385F7),
    .INIT_3F(256'hBA1727C7F89DE13D79C7D6E5341E36442684D6CD8C5B985B68232D7D4D0E6644),
    .INIT_40(256'h110F4FCC96BC75744ED7103976549D3679E969C728D0D6908640075A6500085B),
    .INIT_41(256'h442372BBD9E27963A54470D23B161C38B2AEAD721B19D2E317879C94B4BCFC72),
    .INIT_42(256'hC93237C0519EC9A82323A0E85B8B16822574BE1D2B4A49939E043BE608A3024F),
    .INIT_43(256'h5C0467093BB6DBB6103F91A634D8BF3E0DFB036B868DE1B7A83C2B6DD68C1A2E),
    .INIT_44(256'h857FDE99502F577AA87148DF298EFF987909318DFBE1603EFA803EE1CA8B9A5F),
    .INIT_45(256'hA94E46D74E462E8AB1202B2E8D8B0FF984E2EBEDE7E9D5C1CCDD381C08CD7F72),
    .INIT_46(256'h83D3EBD4A3DB3C56CD1E232EA062A14CAE5917AD3B4F290C21DC9058A1F7658D),
    .INIT_47(256'h7A13C537F69C39CE2710C5CACFA434D63D3D2EFF929985CEFF4F326AE304F03C),
    .INIT_48(256'h604F6EB6E9B6906406A09F21373A35D5C027DF75CC4F1F656D519BD30B3FB6C3),
    .INIT_49(256'hC18164EA7A872143D43643084F0D868EBD0CD8DF1DB8338B50531D3FA04EE21D),
    .INIT_4A(256'h742896EB58BF454014BFEE515FF8B76B0895F31EF2E0455695ABE44E58591040),
    .INIT_4B(256'hC6203E95287C9AD486088A9C5039A4C7F76CE6364FC8F026D8D6C52EF486EFEE),
    .INIT_4C(256'h3BF096D33B0BBF1C5AA7FEE95C92D7DAA024CF34D3D5E2C50545DCBBDDD2B1D4),
    .INIT_4D(256'hCCC8602F864EBD5294F8787C1B13A6958BEE2A6AF2592C00A40DDFFE335A4507),
    .INIT_4E(256'hCE12C81389D88A0437C951578D3CC581DA6133C9D88EB08C3A36F679EEEA5E92),
    .INIT_4F(256'hE6E12A8CFB79EA3DA3BB5A8B4F3B0C76C61337D444538EA35681C5DED6AAEFFE),
    .INIT_50(256'hECA21ADF088DF15FD803E60B44B174062DE2385A5771405E86C629ECA461737D),
    .INIT_51(256'h1BC770C76ABBBE48094B87FD172EF12CEB8E7063C1DAB289F88DE12E5CF1532E),
    .INIT_52(256'hED4E5714341F457F060B899044C5040FE449A22994C0719A57F6268117B0DE0E),
    .INIT_53(256'h99C88FA6D544F6199D8FDE92A25FD1EECD4847EEBD4BDA7B0EAB42EC036D86C9),
    .INIT_54(256'hEA88A0189AFD7BC54FD8BB8C68644ABF3101971CBB097A7CA4638DDD027E397F),
    .INIT_55(256'h0784F1EA708A0A8DF5533E153ACA4301434100CE903A5DE9D1C6BC3D09100EAC),
    .INIT_56(256'hB583176A1E0D11BF4F68C445FFDC16F86F7A84FC8808970D6EED653D7F6946FC),
    .INIT_57(256'hD5DF418BA928337652A36FCCF90875E04DDAA5EC8CEC29952DAE20C99BE21F9E),
    .INIT_58(256'h36993719C1360A9099C5500BBD97A06DE4C8EFC7F68B8A404F12D49FAA9351F8),
    .INIT_59(256'h7DE55AEC21A902BD4AAD4C4E3E07209612F5E56412AEB9D85332072BEEAA28B1),
    .INIT_5A(256'h07A1E0E0FA52FB439B755760BF09F2E54637487D59D84CACF95849BADE99DBB5),
    .INIT_5B(256'hB4532619F681E26EEA725178E408A73EAC9AFBD560AEFFA372F1E7A0CDFFF547),
    .INIT_5C(256'hAC84D64AD4BE53AB1254FAEE0B367E554635969C14D26453E9DB2AEF73CEB452),
    .INIT_5D(256'h1C87508A36E6065A3D8F76879F8D1956DD9EF3EF7F6B2F1FCF8951A9FBD33A26),
    .INIT_5E(256'hF10ED596F7228DEDF8AC3B4537F97B49328C5838829BA036817C5ED6F6EFD491),
    .INIT_5F(256'h95094DF90AEAC632CCDD047FE43F60DD8CCBAB1AFADFA423FFFD9CCB2C674AC7),
    .INIT_60(256'hA2206553F2096DF1C21C4F55CA739D9C78915EA00D9685C44F21F0B6E3A5B39B),
    .INIT_61(256'h92069A7AC954EDD92A265D1E04825CEC3BAB5F0BDC28319F8404CC41F431A14E),
    .INIT_62(256'h1803D62399FC4360610614B686275F06691CA3BE82170A622308F2BE30F255FC),
    .INIT_63(256'h17332DC40BFFC55525D3ACEF52E34CE86926A16F3C89F73825EDBC29C4328C27),
    .INIT_64(256'h624732C33268B283CF3F1975E6CACF39BD20279D07067325267838A11F5CA505),
    .INIT_65(256'hABE1BB85811209082503C2F3572B66AE60F93E1D13EB19243729FDF5C1D4F677),
    .INIT_66(256'h05EA1640C7617835277F1A270C4AFF4C09414089944A64D6215999548BFF7CA7),
    .INIT_67(256'hB15A6BE1ED545DB97A66E8A1BE93BB0E0C551F9B8295E9BE441D9914DE55A44B),
    .INIT_68(256'h4F7BDAD59E93B0741FD5BB41D5ED919482F3CAB6CCA32ACD3CE5D1CBF83E720E),
    .INIT_69(256'hD8AF521CFF0981130B16CC8C644F4DC35C7BD191EC0FB3187F770000B2B51706),
    .INIT_6A(256'h053131E8DBD8BAD8779671902E596FDDA33A144FB44D138107F4BEE6FE810F8F),
    .INIT_6B(256'hEB144283AEEF489EA894D7BCBD37B353A56AE24195AEABCB940F9E512FA4F1DD),
    .INIT_6C(256'h83942BE97D23DF1497F8275E03F71ED7B3A374789E74AEF2C61F2B5590D3E8B4),
    .INIT_6D(256'h6E1E477459C49E833159648AE108378B63B9CA00D3024709FC1818A8236C998D),
    .INIT_6E(256'h870428577227D151AAFDEAC07F0C944B8BDDA3FAF0964FD42A8634FF22754524),
    .INIT_6F(256'h9631A3A46EC58EA90CC3A125465893938E7EF1569BECA31BD8595D97CCB82BC4),
    .INIT_70(256'h447FE16032D6D62A8EECA02B8176FBCEC865A28CFB501B89162441460666E2C0),
    .INIT_71(256'h36974A6F7B0BB8B0D0B6A605877C330B4A4F860776AF2F0A71D183483D237928),
    .INIT_72(256'hBF53AE7552CFB4A12DB1A57C78B85B632027DB4C4C4F36FEBE937C2AEE32A6C9),
    .INIT_73(256'h83BADB1B49D3BC8418A21BEC1E534C68ECFCC182734A8686F4C657A0A4A130E1),
    .INIT_74(256'h9BC461FE53DD5DAE51F7898F7B1007E685FEC05224595DCA0A3C3CE8116B91C3),
    .INIT_75(256'h96CF7A5F284CDD47059DA7A9E8E86CA0A893D1E35D0392A321CB79482B466983),
    .INIT_76(256'hA857C08DFF002AAD06C06B8726451A3027187EAC7D19B6CEAAD21393A1B33F64),
    .INIT_77(256'h2B3D49D8EFD446D30CD6906684D1D014BE247540A4E99E05B31E61D289962749),
    .INIT_78(256'hD76D5C0F665F086864C562A8AF2C9F3907950CF07E01D98BDA41F58C5526F23E),
    .INIT_79(256'h5B6676994D24DB64584919B19FFBC17A5ACCC236007F182BFFD9348B45768397),
    .INIT_7A(256'h000000000000000000000075A93600FCA4E2EEFA3700759C5AA962701713AF1E),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(2),
    .READ_WIDTH_B(2),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(2),
    .WRITE_WIDTH_B(2)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:2],douta}),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ena),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module weight1_bram_4_blk_mem_gen_prim_wrapper_init__parameterized2
   (douta,
    clka,
    ena,
    addra,
    dina,
    wea);
  output [1:0]douta;
  input clka;
  input ena;
  input [13:0]addra;
  input [1:0]dina;
  input [0:0]wea;

  wire [13:0]addra;
  wire clka;
  wire [1:0]dina;
  wire [1:0]douta;
  wire ena;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:2]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h9B8A332E110210D40208CF23C0EF61999B1B27AFD28F34CF2FAEA24EF18021EB),
    .INIT_01(256'h00F1B70897A4442F68B3B2233CFE714DB28F27DB795A0DFF8E4891E8CA250E8B),
    .INIT_02(256'hA17F31543F3F5013788046BB58DD852F5786F098CB603E8654490A8697ED7253),
    .INIT_03(256'hCF7334F532CB5FFFCF3001D0EDC94E2FB2EA1DEC69C5F016F6E9F9F8441A4E3B),
    .INIT_04(256'hFAC69CF116F184AA83C4B9DEC3396FE41E0D9C97C03917E119475BDB5408A490),
    .INIT_05(256'hECBBF3519F98C089897070605634608685724DDCE07015F809B89574943EB554),
    .INIT_06(256'hB561B3437DBE305BE3DE61A5F5532A3AEB3DB580D18972730BF67BFF5669C0C3),
    .INIT_07(256'hC8AAD3F5A5574EE44B2D430049CBA02738BC01E5688A5E632FECBD940FB38BAA),
    .INIT_08(256'h4CCFBCD1904C58B780F8930A5CE3575441B6ACF75FA5AFF0C2CB3C1F20910627),
    .INIT_09(256'h79D85DDC725F8EA0862C6FD01401273A2BDCBD0C039921ECC641C6EA01A1373F),
    .INIT_0A(256'hF01BC7030CA03862E4BC0E84C0E10C1C14F5584A9C6829571671F82D42D15AC3),
    .INIT_0B(256'hCA21983C2329173B5F989C2BBD1125C19C0349EE2EAEFDCC3B3EC74E5F17DC13),
    .INIT_0C(256'hDC963DE5C4CC153C6271CA03779BCE1FA7CD701CD2AB6A6D2210CD9D25F20EE5),
    .INIT_0D(256'h05C929D55D2A98E5FAA1EE906D54045ED29CBBE85FB9050826F2F8130F9AE395),
    .INIT_0E(256'h7A57B46C456260EFAB021181975BC30B58EB49F2B6795EE1EA4657EC954BD908),
    .INIT_0F(256'h4670B4211080B02E1B1D63478A260F0FFA318FE9D1114231231696C930BBC6D7),
    .INIT_10(256'hA1BD3417C408288E804C6E3C318124E2DE3D9341FBA5E1C2035932B6D9CB9334),
    .INIT_11(256'h01749F062C83F1035877C0BBB5D70FCC772A2223E22BE0706C23434DD967E1DB),
    .INIT_12(256'h3492327F4D51CCDD23CD5887A4C9A97853D818299B43001F36554E2D4FA14853),
    .INIT_13(256'h1717ABD6D681870821A505889543960833FB03BDC600619F31EF161E6B2F2FDB),
    .INIT_14(256'hB162051ADB63720E36E24D02EAC95AA7B4422F5AB1B5CCBBAB7D1A8B300420F5),
    .INIT_15(256'h010044BC1DCA97AEC7FEE11017F1D028C437E23E73191770E0E35987F4695EBC),
    .INIT_16(256'h23558D22E66F4ED3696CFDC70D8EAFC49CF0532DD6E21E92BE022FBF32264C7C),
    .INIT_17(256'hECFDC569E8F0BDE8F3AD0D793F97502E8E73402A3628BF2CBFD886C5A8411B7D),
    .INIT_18(256'h30C86B4EA9E99BE0427953F2B5600FEB315008C0D982B275939FDF312E2D6688),
    .INIT_19(256'h3FFC446324A57A82D414ED53F346B591337AED47817ECFAC09D8D6F85F5B3F8E),
    .INIT_1A(256'h10A8745AF4871B48D30855B5BD45A0CE398887957FA84C4BBECAB08677060593),
    .INIT_1B(256'h3C63D2DEBF745DF4363FD57846BCEBD5461EFE6FD73DFB9D1A707F9E21FE9FDF),
    .INIT_1C(256'hE212F0D049E69030685D0D390D4047A18F4E8B319D31383541F32E7486710F56),
    .INIT_1D(256'h322A0CD8DE80797D3D5A8AB3CFA18A6FA8991627F03B989549A618CD02676D8B),
    .INIT_1E(256'h894CA54C581D20FBE08C9713C1EE2F3C96B6C614BC286A4E15491D8AB9D1D6C9),
    .INIT_1F(256'h1710F8058EFCCDF7BFF03AA1FA3339731C2206A75D2BDB9237F240C57DBE280C),
    .INIT_20(256'h479662D774A87F6544BEDB9CAA89F0DBDB13E7A1787891BD71896540E93FE0AB),
    .INIT_21(256'h80738E3614EEC13BD08A57B33C9278373B33445C9D7B36B6C3E1A1BCF2326E44),
    .INIT_22(256'h984EAFBED1F6821F4ECB26EED8A85DDE4C11E6897CEFA3E350FE84B383FE89A6),
    .INIT_23(256'h0C89DDD226184196E677BE0FFE6E4B84A3EC9B5C2D7FCC12AFB27D4E413D186F),
    .INIT_24(256'hD65A0713230E0FD8424AD60F7448CDB7719ED9CC0DAFD45AFFFB5682D3582C42),
    .INIT_25(256'hF1AFFBA92AEE445CBF70B5804CF68001DDE55D724B8A51A40C20BDF56CCEB4D2),
    .INIT_26(256'h04097F786D391D5C1BE6AA2699D44E364B3B9D4F170F34DB2CD8A540A1B21E6E),
    .INIT_27(256'h30F98FC257931D12345156387C1423CF3FEA81D23C77DFFACDE244C4AB360AAC),
    .INIT_28(256'h1F2627D200F2A60753D2826270530E76135FEF1FB8303F358524DDC62F6AE91F),
    .INIT_29(256'h9B80DFF298F4788E5D2001D36374A20AD36FC9E678AD5C7CBCF3B7A786272B60),
    .INIT_2A(256'hD82B754DBB641BFCD9145D1A05BA910E09F49168C8CBD1CEF10BD1038E415DD3),
    .INIT_2B(256'h1051B3CC81B3B49CCBCA7068C61BC7BAA2D46799827128DCABFAE997AA9E584E),
    .INIT_2C(256'h6099BE1E5838C15FE4B3D528A70D182DBFA11A7E1692BE2A4D6E31768D12E0DA),
    .INIT_2D(256'h67A4D948466CD1EFBBA09B8670642BBA76AB6F4E025DEC320538C8E2F5FEF696),
    .INIT_2E(256'hECBBBC9E3A3853BFBAF4DC0D9A78C02807E309FD8F66BF039872765DF3A1EF3B),
    .INIT_2F(256'hBCBCF02A29DBB55ACE567EBE72BE1E660CC1DB2B7AF4AC907FA1BA8B8A3D7FDC),
    .INIT_30(256'hB97BFA72C437B28340428C654FAC9EEBB80F1646DC9CB4723830A52FD44391A4),
    .INIT_31(256'h7C20B78C9AC8123AC2E6E6E96B358F087E630EBBF6AF0CC2BDCB931A32F29249),
    .INIT_32(256'h5D38F4E44EBE4CFDBA7E8AC222BB847A750FBD7939F21FC26B7521371011B010),
    .INIT_33(256'hC5E25409A9471A937B265861BF63D60F18FA104A0FCAC43094A58896F20D2BD4),
    .INIT_34(256'h8607300927214671A2E87BB6FB2EDE8B0293A0F90DCB3259F5DD0373C37CF0E3),
    .INIT_35(256'h24D54CD943305883F18F857F124DEC51A7E8F5C4CA59E06DCF52D9990A1C41EC),
    .INIT_36(256'h2C1561CC7A6F98738EC8C628949EB8BEAB243268157F8C0AB8B9D68DB06BF494),
    .INIT_37(256'h106A3AE70A493FADF92EF4ED5CC5C31390E6802696142EF876E2E62EFD1B8CEC),
    .INIT_38(256'h665898D5C72413B7A7ED882758978BC4D0CAAA0D9EC9342FA33DA39B91797602),
    .INIT_39(256'h9F61DC63C87E112F86940678FBB1F46E4AEC6A39122F70F0113B3E744872B38A),
    .INIT_3A(256'h477A4C18C1BC149B2334CB7DBE73F2E0DE5514D29D185C8107D2D849CEFEE7C6),
    .INIT_3B(256'h25FD038C7AC4D0B3C4ACC06D5E10F77E63804BEE11A4957B2B470B86B5298C44),
    .INIT_3C(256'hC4ABF847BD8CCC9FBE24D68E8F6CA27F8896F9E3028D3FA171ECEC2B8174B289),
    .INIT_3D(256'h0191491DBFF840033199141F68946DC6A519C21F46B54F302F4D46FF6D2E25FF),
    .INIT_3E(256'h11E30ED232164DAAA90AFD02C9842834437FF37F1E8A811F37669B9234BFD236),
    .INIT_3F(256'h3397FC9CB157971F4B93A627B8BB819EFE89D0966A88F9839986B37C8CAD6B57),
    .INIT_40(256'hC941EE7DDDBDBB061D6BB3F0B28D75D9DCFE9B6905BD5F628B391A35D1F7F8F5),
    .INIT_41(256'h16F92254615F104D33FAE015A5F977D5AF7E939EBCEAC314EF556B1CA59B4226),
    .INIT_42(256'hCEB5EACA964E0AAE7EE5464250581F3148348570609A00E521B2BCDF035437CF),
    .INIT_43(256'h1FB78069D556A0AD3122EFFDF4A124F0B36611071E1412B99DFF2D2319E14C9C),
    .INIT_44(256'h13583C5D34499FB8909362CE75FCBD90EBC6F01D23E42A5A7A06F5672AA3AC42),
    .INIT_45(256'h99EC0C83F85C9A508A41FB4F43C808453CA5E49862DB193CF25F27CAF295B9C4),
    .INIT_46(256'h0BCE8AC9927508AFBBEFA3C212F42AE008745080C5CA5B3CCBEFA4DCC58EB10F),
    .INIT_47(256'h562969CC8B65E6A9FB5B302B3B44E7809EA3F48963B9B5CA0511E4361DEECAD8),
    .INIT_48(256'h4A0E513B0FD4FF54FBBD7568D7A1BBD86BE43EB59C0EE367F60C01D5D681E5A8),
    .INIT_49(256'h69EF4D98D167CAFF203C08282B491DA20F7C657854FD83553A5C5DF31045E22B),
    .INIT_4A(256'hE427401C1A9852FA1361FE48A03841D291942200FA9718B8DFD9ACAC2AD45178),
    .INIT_4B(256'hCD25E9ABF9AA8D00BBF6613BE2569BD7CEEDCCC8C7C2D306D44091AFB8CEDE7C),
    .INIT_4C(256'h3718E6FDFCEDF34185CC32CD6E23F64FD2A1A72B320FF8CE36DBDABBA5AB2697),
    .INIT_4D(256'hF866834DC3ADFA791B8E7CF11E1355E20106B0D002FD601F961FA9E7B4B5F1EA),
    .INIT_4E(256'h5C796D7AF937825F223E9532FC00114317DA22B6BF7AB32E2061D4474BCEF2FC),
    .INIT_4F(256'hA5EEAC477C9BEBCEF2836B09AE497C36220E45D4BA5E93A08F9D907BC7CCB7F9),
    .INIT_50(256'h0AAB080859EDB237E06E4F4520231CCEAA0F05EBD5848FD30312EB6058020D9E),
    .INIT_51(256'h6C9D59F92D76D0F8F194D3CAA7F916DE60667D7326E16CA5D5435BEC9A10E4FC),
    .INIT_52(256'h7E31AD540F5A444FB07FB147B1F720BDC47BA59ECE64DB4C5A3770A176B6DEF3),
    .INIT_53(256'hE544EF31C14506A4FAF24BA010CDFDFA3B63A0FB6052ADAD31000787B1A87912),
    .INIT_54(256'hB38C57FBB1C0FFF6583F03DBC86E79994F8DB38A9CE0EFB94687DBA5E1F45B3A),
    .INIT_55(256'hE88C53F5EB70DE7F37AC741D33A703D7AA0EA73DFB20F63F7324260913392BBB),
    .INIT_56(256'h70E40D2FFDBED0DA734B9FFC8A2E7D69E604FE2B894F202E8948CF45133FC818),
    .INIT_57(256'h13BA4DFD496A5FFA98FA6EA5A8D33FB1420B0560C3D997F22B8DFF15D1491DA6),
    .INIT_58(256'h62D332A112E657F38A8776FE618204B029DF8374BA790C0E4A1720B04880C1BA),
    .INIT_59(256'hC89DFB1201DBE3743AAB8444D09E51A30BD2822B1535177F518C3BAFCBB98C59),
    .INIT_5A(256'h0E0CEC2CEDCC7FDEDB59FFC3CD8F8D996C67A10840B7C5C79C59CCA99D2BE150),
    .INIT_5B(256'hFBC588D3E3D5C564073FFCCACC0EFED3DE8B7D5BEF9BDDB14EA3BA3F5E81F7CC),
    .INIT_5C(256'hCF770EE10089013FF1CD8BB7745E444EF0F03E4759B07EB6E7F0755DEA60F909),
    .INIT_5D(256'h2DC03447BB7033855C8E5D6A582698EF3B67E49418A093EA257EBDE8C797A911),
    .INIT_5E(256'h6D943C437EB17E738534523EFB8403EF0D59791AC7ACF53FD31E4F80396D2EB3),
    .INIT_5F(256'hD1B2846211A057C3534819A4393BF0889046FB96A27A0F5FB77A778327B2E8BF),
    .INIT_60(256'hFB5A02365121791F109972D1B22190EA5CD75633148C5ED552A4BB837A1CEBAA),
    .INIT_61(256'h3B4F293C30FFA6CA8BA30A0D4CA90F38D8B3C2AB827E8AD3D75663B8A60B9979),
    .INIT_62(256'h7DF8A2A84D3DED31514110B0092AAE7CD29F73FADF981EB7E8D5A326403E1EC8),
    .INIT_63(256'h1D5B682D8A324D53F1BE75C4EFE5DFD71342B3C646DA2F82EC2527D8B74ED551),
    .INIT_64(256'hF1D66992EB8D40FC151BEF42FDB83D689B90D5615EE795419A4DA7C52AB63B5D),
    .INIT_65(256'h8CFA743A3A100982E1BE834FAC18F24039106480FB7355C01F5B1D70D19C1CEA),
    .INIT_66(256'hE57467C81C57DC1DD5B3B8049146566412127A831D34938BBC67C70A68E8B24D),
    .INIT_67(256'h65330C3ADC66E7DCD1F614A7739A5CB09B4D357E2F4A65363179BE71768E90AC),
    .INIT_68(256'hE6798AA5B08E10CCDE6262B2C28EBE82EEC045EB7996EEF832483008B9B14623),
    .INIT_69(256'h1678D1B7F65F5115D085D4E94171FE4E39283E4142ACED7CADAC007098049B00),
    .INIT_6A(256'h4B7D907F783B2A4EAFB114F182B7834E06966DFA72E6DA332B733E2CF206DC05),
    .INIT_6B(256'h4F65702EDBCBBE7866ED06200021D3875AD77EE6EC4D997F99417B011E37C5FB),
    .INIT_6C(256'hFC62EE7F2C58156162976B41BEE7378F18D76D1ED51826EFE02F477034E02950),
    .INIT_6D(256'h8C537F283819B597BE92B3AF039277BA47507630139C03C801A67D5C947F2880),
    .INIT_6E(256'h3863CFE520643ECAFFC1946B5E1ABCF1F34A6ED97385BC873A1363742C57FF21),
    .INIT_6F(256'h3E01135B9BD836B43B792CA406517BA2DAC1ED5972415E5F0FE00841913E350C),
    .INIT_70(256'h4D49D33433C3BDEA6633C8A23E1CD91331EEBCDDB819498E657AD4FBE39B2EAA),
    .INIT_71(256'h1AE77B62B72F120D36DE1EDC5452474A30863BF0E01B6FC9F86C455CB69FD105),
    .INIT_72(256'h8037A209636A88FE387BE30B4F197F45886E9F6A26834E4CE17D32CBA05BECB8),
    .INIT_73(256'hDBDA145CF3E8BB54EAAADFC9ADF793B4B1B9ABE71DFC41E1E24225A8FE704DDC),
    .INIT_74(256'hB72A073E1501006E3058F40ECD2BFFE4E9C7627B30839215F7DA7549B28DDAB0),
    .INIT_75(256'h2C3DB605A27F4AF283D687C9C3B5650F89A7BFD189B0B0D4D5F38742B80B9172),
    .INIT_76(256'h9B88C719EB409C9E7EE81670C55BD95A6AEA1A0FAD941EC85102D3D4EBAE8C78),
    .INIT_77(256'h68E581979AFE75C6C7FC1AC3ED2D48C02727F6D722CFC7BF40650622E52414BB),
    .INIT_78(256'hDD0B0190A1CC00FA4FC3B2C840D0BA718B822CC58A0EC8AD90D4FAF267DA066E),
    .INIT_79(256'h7624B1C109F873CA862B6C1F83533DA3AFDE3B08ADFB37A451BBF41B17F51595),
    .INIT_7A(256'h0000000000000000000000529EFA05C42F4EDAABB4C012B6C231BDE16F10C37A),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(2),
    .READ_WIDTH_B(2),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(2),
    .WRITE_WIDTH_B(2)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:2],douta}),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ena),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module weight1_bram_4_blk_mem_gen_prim_wrapper_init__parameterized3
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ,
    clka,
    ena_array,
    addra,
    dina,
    wea);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;
  input [8:0]dina;
  input [0:0]wea;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  wire [11:0]addra;
  wire clka;
  wire [8:0]dina;
  wire [0:0]ena_array;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0C50B085FF556F46D359EB2DB20EB43B3F52018812B5CFDA515F93EB3E83804D),
    .INITP_01(256'h364A4F03B408F83F4F2E09C1FACA322556407205E81F2A3F5BCFB0FA42315FC5),
    .INITP_02(256'hAED87FA845C015C98528C43E0E0416C8F18C3C8F984F97F87A2987B521BB08C8),
    .INITP_03(256'h2F9CC839F3902BDFEC1FF7E57EED3DBDC5FDEF41FE98C056FFA088413E5F1F89),
    .INITP_04(256'hE06FDBBC17ECD767FAE2981B80AFC7572BEE02AF8ED0381004073DA081674801),
    .INITP_05(256'hA8E694159866F118610E3FE8479933A14599AE6CCE7A8CA6ADE3AF437C228D7D),
    .INITP_06(256'h4A082369FAE82007F8DE3C3BDDE137F989688A665481D5B37AD29CC450AAEC3C),
    .INITP_07(256'h14A048C7321BB537E1FE84861FFB07C1FFE71E0FF158D0930F2C0438E7300000),
    .INITP_08(256'h04A02091E5CFEA389751D7C4FD3EADCBFF6192FF0BF64DE5F5B0BC5B1E078B5C),
    .INITP_09(256'h71F9FD9A061BED485E1EB0C74D97737B49DF2AAF1B09E8B418A2B96382373401),
    .INITP_0A(256'h008A3F9EDFD47C8485D7C147C9F9EF5E4C07FD4231318A190372C48DFE9B404F),
    .INITP_0B(256'hEEAFEA7BDA2E7D87350154E6E82AB036143487AD32E12AFBAC1F3DBFE17F55AC),
    .INITP_0C(256'h7E010460008980CE16ABC67628BE32720ADBE57C871CC4375028A8C50FA496D2),
    .INITP_0D(256'h6012F63C409692FC46F797DA0C7B7E7B4A5FEF72E0AFE14A62F87E21F9E81131),
    .INITP_0E(256'h5F3EB0E663FDBC390735C500220A100184CA00042B60206832342D4D0C20B425),
    .INITP_0F(256'h366316BDEC5C7D6D6499AFF959886F6282CA724D88818E76D6B466F84333C89A),
    .INIT_00(256'h0000FFFFFFFFFF00FF0000000000FFFFFF0000000000000000FF0000FFFF00FF),
    .INIT_01(256'h00FF00FF000000FF00FF00FFFFFFFFFFFF0000FF0000FFFFFFFFFF00FF00FFFF),
    .INIT_02(256'h000000FF0000FF00FF00FFFF00FF00FFFFFF0000FFFFFFFFFFFF00FFFF00FF00),
    .INIT_03(256'h0000FFFEFFFFFFFF00FF00FF0000FF0000000000000000FFFF000000FF000000),
    .INIT_04(256'hFF00FFFF0000FF0000000000FFFFFF00FF00FFFF00FF00000000FFFFFF00FFFF),
    .INIT_05(256'hFFFF00FF0000FFFF00FF00FFFF0000FFFFFFFF00FF00FFFF0000FF00FFFF00FF),
    .INIT_06(256'hFFFFFFFFFFFFFFFF00FF00FF00FF00FF00FFFF00FFFFFFFF00FF000000FFFF00),
    .INIT_07(256'h00010000FFFF000000FF00FF00000000FF00FFFF00000000FF00000000FF00FF),
    .INIT_08(256'h00FF00000000FF000000FFFF000000FF00FF00FFFFFFFFFFFFFF000000FF00FF),
    .INIT_09(256'h00FF00FFFF00FFFFFFFF0000FFFFFFFFFF00FFFF00000000FFFFFFFFFF00FF00),
    .INIT_0A(256'hFFFFFF00FF000001000000FFFFFFFFFF0000FF00FF00FF000000FFFFFFFFFFFF),
    .INIT_0B(256'h00FF00FF00FFFF0000FF00000000000000FFFFFF0000FF000000000000FF00FF),
    .INIT_0C(256'hFFFFFFFFFF00FF00FFFF0000FF00FF000000FFFF0000FF000000FF0000FF00FF),
    .INIT_0D(256'h00FF0000FFFFFFFF0000FF00FFFFFF0000000000FF0000FFFFFF0100000000FF),
    .INIT_0E(256'hFF00FEFF00FF000000010000FF000000FFFFFFFFFF0000000000FFFFFFFFFFFF),
    .INIT_0F(256'h0000FFFF00FFFF0000FF0000FF00FF0000FF0000FFFFFFFF000000000000FFFF),
    .INIT_10(256'h0000FF00000000FFFF00FFFFFF00FFFF00000000FF000000FFFF0000FF000000),
    .INIT_11(256'h00FFFFFFFF00FF000000FF00FF0000FFFF00000000FFFFFFFF00FFFF00FF00FF),
    .INIT_12(256'hFF0000FFFF00000000FF0000FFFFFFFFFF0000FF00FFFFFFFFFFFFFFFF000000),
    .INIT_13(256'hFEFFFFFF000000FFFF000000FFFF00000000FFFFFFFF0000FF000000FFFFFFFF),
    .INIT_14(256'h00000000FFFFFF000000000000FF0000000000FF00FFFF00FFFF0000FF000000),
    .INIT_15(256'hFF00000000FF00FF0000FF00FF000000FFFF000000FF00000000FFFFFFFFFF00),
    .INIT_16(256'h00FF000000FF01FFFFFF000000000000000000FF00FF00FFFFFF0000FF0000FF),
    .INIT_17(256'hFF00FF00FEFFFF00FFFF00FFFF00000000FFFFFFFFFFFFFFFF00FF00FF000000),
    .INIT_18(256'h0000FFFFFFFFFF0000FF00FFFFFFFFFF000000FFFFFFFFFFFF000000FF0000FF),
    .INIT_19(256'hFFFFFFFFFFFFFFFFFF00FF0000000000FF000000FF00000000FF0000000000FF),
    .INIT_1A(256'hFFFFFFFFFFFFFF00FF0000FFFF000000FFFF00000000000000FF00FF00FFFF00),
    .INIT_1B(256'hFFFF000000FF00FFFFFFFFFFFFFF00FFFFFFFF00FFFFFFFF00FF0000000000FF),
    .INIT_1C(256'h00FFFFFFFFFFFF00FFFFFF00FFFF00FF0000FFFFFFFF00FFFF00FFFFFFFF00FF),
    .INIT_1D(256'hFFFFFF00FFFF0000000000FFFFFFFFFFFFFFFFFF00FFFFFEFFFFFF0000FF00FF),
    .INIT_1E(256'hFFFFFFFF0000FFFFFF0000FF000000000000FF00FF00FFFFFFFF00FFFFFFFFFF),
    .INIT_1F(256'h0000FF00FFFFFFFFFF0000FFFFFF0000FFFF0100FF0000000000FFFFFF0000FF),
    .INIT_20(256'hFF000000000000FF00FFFF0000FFFEFE00FF0000FF00000000000000010000FF),
    .INIT_21(256'h0000000000FF00000000000000FFFFFF0000FFFFFFFF00FFFF00FF0000000100),
    .INIT_22(256'hFF000000FFFEFF00FFFF00FF000000000000FFFFFF000000000000FF00000000),
    .INIT_23(256'h0000FF00FF00FFFFFFFFFF00FFFFFF00000000000000FF00FF00FF00FFFFFFFF),
    .INIT_24(256'hFF00000000000000FF00FF00FFFFFFFFFFFF000000FFFFFF00FF00FF00FFFFFF),
    .INIT_25(256'hFFFFFFFFFF00FF00FFFFFF000000FF00FF0000FFFF000000010000FFFF00FFFF),
    .INIT_26(256'h000000FF00FFFFFFFFFFFF00FFFF0000FFFF00FF00FFFFFF00FFFF0001FFFFFF),
    .INIT_27(256'hFFFFFF000000000000FFFE00FFFFFFFFFFFF01FFFF00FFFFFF00FEFFFFFF0000),
    .INIT_28(256'h00FFFFFFFFFF00000000FF000000FF00FF000000FFFF00FF00FFFFFFFFFF00FF),
    .INIT_29(256'hFF00FF00FFFF00FFFFFFFF000000FFFFFF00FF00FFFFFFFF00FF00000000FFFF),
    .INIT_2A(256'hFFFF0000FFFFFF0000FFFFFFFF00FF00FF000000FFFF0000FF00FF0000FFFF00),
    .INIT_2B(256'h00FF000000FE00FFFF0000FFFF0000FEFF00FF00FFFFFF0000FFFF00FFFF0000),
    .INIT_2C(256'h00FF000000FFFFFFFF0000FFFF0000FF0000FFFF0000FFFFFF00FF00000000FF),
    .INIT_2D(256'h00FFFF00000000FF00000000FFFFFF000000FFFFFFFFFFFFFFFFFF00FF000000),
    .INIT_2E(256'hFF0000FFFF00000000FFFF0000FFFF00FFFFFFFF000000FF000000FFFF000000),
    .INIT_2F(256'hFF00FF00FF000000FFFFFF0000FFFF00FF0000FF00FF0000000000FF00FF00FF),
    .INIT_30(256'h00FF00FF00000000FF00FF00FF00FF00FFFFFF00FFFF00000000FFFFFFFF0000),
    .INIT_31(256'h00FFFFFFFF00FF00FFFF00FF0000FF00FF0000FFFFFF0000FFFF000000FF0000),
    .INIT_32(256'h00FF00FF01FF0000FF000000000000FFFFFF00FF00FF00FFFF00FFFF0000FFFF),
    .INIT_33(256'hFF000000FF0000FF00FFFF00FF000000FF000000FF00FF0000FFFF0000FFFF00),
    .INIT_34(256'hFFFF00FFFFFF00FFFFFFFF00000000FF0000FFFF00FFFFFFFFFFFFFFFF0000FF),
    .INIT_35(256'hFFFFFFFFFF000000FFFF00FFFFFFFF000000FFFFFFFF00000000FFFFFF00FFFF),
    .INIT_36(256'hFFFFFFFFFF00FF00FFFFFF00FF0000000000FF00000000000000000000FFFEFF),
    .INIT_37(256'h00FF0000FF00FF0000000000FF0100000000FF000000FFFF00FFFF00FF0000FE),
    .INIT_38(256'hFFFFFF0000FFFFFF0000FFFF0000000101000100000100000000000000000000),
    .INIT_39(256'h00000000FFFFFFFF0000FF00FFFF00000000000000FF00000000FFFFFF000000),
    .INIT_3A(256'hFFFEFFFF000000FF00FF01FFFF000000FFFF00FF00010000FF0000FF0000FFFF),
    .INIT_3B(256'hFFFEFFFFFFFFFFFFFFFFFF0000FFFFFF000000FFFFFFFF0000000000FFFFFFFF),
    .INIT_3C(256'h010000FFFFFFFFFFFFFFFFFFFF00FFFF0000000000FFFFFFFFFF0000000000FE),
    .INIT_3D(256'hFFFFFF00010000FFFFFFFFFFFFFFFF00FE00000000FF0000FF01000000FFFF00),
    .INIT_3E(256'h0000FFFF0000FF00000000FFFF00FFFFFF00FFFF00FF00FF0000FFFF00FFFFFF),
    .INIT_3F(256'h000000FF00FF0000FF00FF000100000000FF0000FF000000FFFF000000FFFFFF),
    .INIT_40(256'h000000FFFFFFFF000000000000FFFFFFFF000000FF00FFFF00FF01FFFFFF0000),
    .INIT_41(256'hFFFFFEFF00FF00FFFF00FFFF00000000FF00FFFFFFFF000000FF00FFFF00FFFF),
    .INIT_42(256'h00000000FF00FEFFFFFFFEFF00FFFE0000FF0000FFFF00FFFFFFFF0000FF00FF),
    .INIT_43(256'hFFFFFFFFFFFFFFFF00FFFF00000000FFFF0000FF0000FF01FFFFFFFFFFFFFFFF),
    .INIT_44(256'hFFFFFFFFFFFF00FF0000FFFFFFFFFF00FF00FF00FFFF00FFFFFF0000FF00FEFE),
    .INIT_45(256'hFF0000FF00FFFFFF00FF00FF000000FFFFFF00FF00FFFFFFFFFF000000FF0000),
    .INIT_46(256'hFFFFFF0000FF00FFFFFF0000FFFFFFFFFFFFFF00FF00FF000000FFFFFF000000),
    .INIT_47(256'h0000000000FF0000FF00FF00000000000000FF0000000000FF0000FF000000FF),
    .INIT_48(256'hFF0000000000FF000000FFFE00FFFFFF0000FFFF00FF000000000000000000FF),
    .INIT_49(256'h000000FFFF000000FF00FF000001FF00FF00FFFFFF0000FF00FFFF000000FFFF),
    .INIT_4A(256'h000000FFFF00FFFF00000000FF0000FFFFFFFF00FF000000FF00FFFF00FF0000),
    .INIT_4B(256'h00FF0000FF0000FFFFFF00FFFFFFFFFF0000FF00FF00FF00FF00FF00FFFFFFFF),
    .INIT_4C(256'h00FF0001FFFF00FFFF0000FF00FFFFFF00FFFFFF0000FFFF00FFFFFFFF00FFFF),
    .INIT_4D(256'h00FF00FFFFFFFF00000000FFFFFFFE00FF00FFFF00000000FFFF000000FFFFFF),
    .INIT_4E(256'h0000000000FFFF00000000FFFF00FFFFFFFFFF00FFFF00FF00FF0000FF000000),
    .INIT_4F(256'h00FFFFFF000000FFFFFFFFFFFF0000FFFFFFFFFFFFFF00FFFF0000FFFF00FF00),
    .INIT_50(256'hFFFFFFFFFFFFFF00FF0000FFFF00FFFF00FF00010000000000FF0000FFFFFFFF),
    .INIT_51(256'h000000000000FFFF00FFFFFF0000FF00FFFF000000FF0000FF000000FFFF00FF),
    .INIT_52(256'h0000FFFF000001FF0000FFFF000000FFFF000000FF00FF00000000FFFF0000FF),
    .INIT_53(256'h00FF0000FFFF00000000000000FFFFFFFFFFFFFFFFFF00FF00FF00000100FF00),
    .INIT_54(256'hFFFF0000FF0000FFFFFFFFFFFF0100FFFFFFFF00FFFFFFFF00FF00FFFFFFFF00),
    .INIT_55(256'hFF00000000FF00FFFFFF00FF00FFFFFFFFFF0000000000FF00FF000000FFFFFF),
    .INIT_56(256'hFFFF00FFFFFFFFFFFFFF00FF00FF000000FFFFFFFFFF0000FF00000000FF0000),
    .INIT_57(256'h0001000000000000FF000000FF00FF000000FFFFFFFFFFFFFF0000FFFFFFFF00),
    .INIT_58(256'hFFFFFF00010000FF00FFFFFFFFFFFFFF00FF00FF00FF00FFFF00FF00FFFF0000),
    .INIT_59(256'hFF00FF00FFFF0000000000FFFFFFFFFF0000FFFFFFFF00FFFF00FFFFFFFFFFFF),
    .INIT_5A(256'h0000FFFF0000FF00FFFFFF00000000FF0100FF00FF00FF00FFFFFFFFFF00FFFF),
    .INIT_5B(256'h000000FF00FF00000000FFFF00FF0000FF00000000FFFFFFFF00FF00FFFF00FF),
    .INIT_5C(256'hFFFFFF00FF0000000000FF00FF00FF00FF00FFFF000000000000FFFF00FFFF00),
    .INIT_5D(256'h0000FFFF00FF00FF00010000000000FF01FF00FF00FF0000FFFFFF0000FFFF00),
    .INIT_5E(256'hFEFF00FFFF00FF000000FF00FFFFFF0000FFFFFFFFFF00FFFF00000000FFFFFF),
    .INIT_5F(256'hFFFFFF00FFFFFF00FF00FF00FFFFFFFFFFFFFF00FF00FF0000FFFFFFFF00FFFF),
    .INIT_60(256'h00000000FFFFFFFFFF00FF0000FF0000FF0000FF00FFFF00FFFF00FF0000FF00),
    .INIT_61(256'h00FF00FF000000000000FF00FF000000FF00FF00FF000000FFFF000000FF00FF),
    .INIT_62(256'hFF00000000FFFFFF000000FFFFFF0000FFFF000000FF00000000FFFF01FFFFFF),
    .INIT_63(256'h00000000FF00FF00FFFF00FFFF00FFFFFFFFFF0000FF00FF00FFFFFFFFFF0000),
    .INIT_64(256'h0000FF00FF000000FF00FFFFFFFFFF000000FFFF0000FF0000FFFFFF0000FF00),
    .INIT_65(256'h000001FF00FFFF00FF00FF00FF00FFFFFFFF000000FFFF0000FFFFFF00FFFF00),
    .INIT_66(256'h0000000000000000FF000000FF0000FFFF00000000000000FFFF0000FFFFFF00),
    .INIT_67(256'h00FFFFFFFFFFFF0000000000000000FF0000000000FF000000FFFF0000000000),
    .INIT_68(256'hFFFFFFFFFF0000FEFFFFFF00FF000000000000FF000000FF0000FFFF000000FF),
    .INIT_69(256'h00FEFF000000FF00FFFFFFFFFF00000000FFFFFFFFFFFF000000FF01000000FF),
    .INIT_6A(256'hFFFFFF0000000000FF00FF00FFFFFFFFFFFFFF00000000FF00FF0001FF00FF00),
    .INIT_6B(256'h00FF0000FF00FF0000FF00FFFFFFFFFFFFFEFF00FFFFFFFF00FFFFFF0000FF00),
    .INIT_6C(256'h00000000FFFE000000FFFFFFFF00FFFF00FFFFFFFFFEFF0000FFFFFFFE00FFFF),
    .INIT_6D(256'h00FF000000FFFF00FFFFFFFF00FFFFFFFF0000FF00FFFFFFFFFF00FFFF00FF00),
    .INIT_6E(256'h01FF000000000000FF0000FF00FFFF00FF0000FF0000FF00FFFFFFFFFFFF0000),
    .INIT_6F(256'h00FFFF0000000000000000FF0000FF00FFFFFFFF00FFFF000000FFFFFFFF0000),
    .INIT_70(256'h00010000FFFF00000000FF0000000000FF00FFFF00FF00000000FF0000FF00FF),
    .INIT_71(256'h0000FFFF0001FF000000FFFF00FF00000000FF00FFFF00FF00FF0000FFFF00FF),
    .INIT_72(256'h0100FF00FF00FFFF00FFFF00000000000000FF000000000000FFFF00FF000000),
    .INIT_73(256'hFF00000000FF0000FFFF0000FF00FF0000000000000000000000000000FF0000),
    .INIT_74(256'h0000FF000000FF0000000000FF00FF00000000FF0000000000000000000100FF),
    .INIT_75(256'h0000000000FFFFFF0000FFFF00FF00FFFFFF000000FF00FF0000000000000000),
    .INIT_76(256'h00FFFF000000FFFFFFFFFFFEFFFE00FFFF00FFFFFFFF00000000FFFFFF0000FF),
    .INIT_77(256'h00FF00FFFFFFFFFF0000FFFFFFFFFF00FF00FFFF00000000FFFFFF0000FFFF00),
    .INIT_78(256'h00FF00000001FFFF0000FFFF0000FEFFFFFF0000FF000000FF0000FFFF00FF00),
    .INIT_79(256'hFFFF00FF00FFFF00FF00FFFF00FF000000FFFF0000FFFF00FFFFFFFFFF000000),
    .INIT_7A(256'hFF000000FF000000FF000000000000FFFF000000FFFFFF0000FFFFFF01FFFF00),
    .INIT_7B(256'hFF0000000000FF00FFFF0000FF00FF0000FFFFFF0000FF0000FF0000FFFF00FF),
    .INIT_7C(256'h00FF00FFFF0000FFFF000000FF00000000FFFE00FFFFFFFF00FFFF000000FF00),
    .INIT_7D(256'h00FFFF0000FF0000FF0000FFFF0000FFFF00FF00FFFFFFFFFFFFFFFFFF0000FF),
    .INIT_7E(256'hFFFFFF00FFFF000000FF00FFFFFF000000FFFFFFFFFF00FF00FFFF00FFFF00FF),
    .INIT_7F(256'h0000FFFF00FFFF0000FFFF000000FFFF000000FF00FFFF00FF00FFFFFFFF00FF),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina[7:0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,dina[8]}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ena_array),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module weight1_bram_4_blk_mem_gen_prim_wrapper_init__parameterized4
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ,
    clka,
    ena_array,
    addra,
    dina,
    wea);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;
  input [8:0]dina;
  input [0:0]wea;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  wire [11:0]addra;
  wire clka;
  wire [8:0]dina;
  wire [0:0]ena_array;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h85216E878A1DE16571FE8575BBEED4F03C0BC23443EF714DB1CC468543C8E4C7),
    .INITP_01(256'hB7E55681D371E23AD2FA07A17C7016090227D511380FCE6721686BDD06AC1FC0),
    .INITP_02(256'hEBBC6B32F4480C84ED655AC8246DCBC8AB15521A1B9146254AAE2FCEDF8AB561),
    .INITP_03(256'h4FB9997C5C24628B7A89ECBFB0BA87BE03F436723F74783417239123EAF0CC3E),
    .INITP_04(256'hF87DAE6BA0095EF013A92FA4ECFDFD1B751D41D8599C07B731C3E47D203B3CD3),
    .INITP_05(256'h10DA8CCE3946D3B6C85F9C6AE7FFFA23C323FC3EA8270FC36C5EAD8BDBA1A02D),
    .INITP_06(256'h16A20EDF797CD634DF7A02F564DCEFDD0A73A68BBD02F046F4F611E7B7C5A58F),
    .INITP_07(256'hEEC74BCFB1EE3F0421F3FC64F813F67EA0E7561F07A2F6843D36B335E54315F5),
    .INITP_08(256'h44FA3817890D3490513FCF2A4B135D32D5E505490A0C56EFE383EACC6423A5DC),
    .INITP_09(256'h3D43A3896620759328003BA504295B1866CF672FFEB8172FEBB66D39144540C0),
    .INITP_0A(256'hEF3A1429CA2632A05FDCA246B08E101E9140FC145FFDF377388F2A58C11F96ED),
    .INITP_0B(256'h096D3A7FE2EC2A915FC5E09C5CE7F3AE214A7F6C22E60BC7F0D635A1EEBACF52),
    .INITP_0C(256'h74E5AFE7B2167CD0AA34158C05642542387D96499A85E3B089FBFA47DF51E444),
    .INITP_0D(256'h0F86780DEEBEA0F7B13A4CA4793955231FA20E0F16949DCC8009F2AC9DCFBFFB),
    .INITP_0E(256'h0E06DE1057430069D283D9347A8FE73EE5E322ABB49ABAC389ED9274DAE986C2),
    .INITP_0F(256'h51E249B33110EF0AF007E6FBC1DE26790D69536BF3D1A82417CF60035DA90795),
    .INIT_00(256'h00FF00000000FFFFFFFF0000FF000000FFFFFF0000FF0000FFFF000000FFFFFF),
    .INIT_01(256'hFF00FFFF000000FFFFFF0000FFFF000000FF000000FFFF00FF00000000FF00FF),
    .INIT_02(256'h00FF00000000FFFFFFFFFF00FFFFFFFF00FFFFFF000000FF00FF0000FFFF00FF),
    .INIT_03(256'h0000FFFFFEFF000000000000FF00FFFFFFFF00000000FF000000FFFF00FF0000),
    .INIT_04(256'hFF00FFFFFF00FFFFFFFFFF00FFFFFF00FFFF00FF00FF0000FFFEFFFF00000000),
    .INIT_05(256'h00FFFFFF000000FFFFFFFFFFFFFFFF00FF00000000FF00FF00FFFFFF00FF00FF),
    .INIT_06(256'hFF000000FF00FF00000000FFFFFE00FFFFFFFF00000000FF00FFFF0000FF00FF),
    .INIT_07(256'hFF00000000FF00FF0000FF00000000FF00FFFF00FFFFFF00FF00000000FFFFFF),
    .INIT_08(256'h0000000000FFFF00FF00FF00FFFF0000000000FFFFFFFFFFFFFF000000000000),
    .INIT_09(256'h0000FE00010001FF00FFFF00FF00000000FFFF00FF00FFFFFFFF00FFFFFF00FF),
    .INIT_0A(256'h0000FFFFFF00000001000000FFFFFFFFFFFF0000FFFFFF0000FFFF0000FFFFFF),
    .INIT_0B(256'h000000000000FF000000FF0000FFFFFFFFFF00FF00FF00FF000000FF000000FF),
    .INIT_0C(256'h00FFFFFFFFFF000000FFFFFF00010000000000FF00FFFF0000000000FF0000FF),
    .INIT_0D(256'hFFFE00FF0000FF00FFFFFFFEFF00FF000000000000FFFFFFFF00FF00000000FF),
    .INIT_0E(256'hFFFF00FF0000FFFF00FFFFFF000000FFFFFFFF000000FF000000FFFFFF00FF00),
    .INIT_0F(256'hFF00FFFF00FFFFFFFFFFFF0000FF00FF00FF00FF00FFFF00FF000000000000FF),
    .INIT_10(256'hFFFF00FFFFFFFFFFFF000000FF00FF00FF00FFFF00FF00FF00FFFF00000000FF),
    .INIT_11(256'h00FF0000FF00FF00FF00FF00FFFFFF000000FF01FFFFFFFFFFFF0000FFFFFF00),
    .INIT_12(256'h000000FFFF00FFFFFF0000FF000000FF00FF000000FFFF000000FF0000FF00FF),
    .INIT_13(256'hFF00FF00FF00FFFF000000FF00FF00FF00FF00FF0000FF00000000FFFF00FF00),
    .INIT_14(256'h0000FF0000FF000000FFFF00FFFF00FFFFFF0000FE00FFFFFFFE0000FF000000),
    .INIT_15(256'hFFFFFF00FFFF00FF00FFFF0000FF00FF00FF00FFFF00FF00FFFF0000FF000000),
    .INIT_16(256'hFFFFFFFF00FF000000FF0000FF00000000000000FFFF0000FF00000000FF0000),
    .INIT_17(256'hFFFFFF00FF00FFFFFF00FFFFFFFF000000FFFF00FF00FFFF0000FFFF0000FF00),
    .INIT_18(256'hFFFFFF00FF00FF00FFFFFFFF00000000FFFF0000FFFF00000000FFFFFFFFFF00),
    .INIT_19(256'h000000FF00FFFFFF0000FF000100FFFFFF0000FF000000FF0000FF000000FFFF),
    .INIT_1A(256'h0000FFFFFFFFFFFF00FFFFFF00FF000000FFFFFFFF0000000000FFFE00FF0000),
    .INIT_1B(256'h000000000000FFFFFFFFFFFF00FF00000000FEFF00FFFF0000FFFFFF0000FF00),
    .INIT_1C(256'hFF00FFFF00000000FF00FFFFFF00FF00FF00000000FFFFFFFF00FFFFFFFFFF00),
    .INIT_1D(256'h00FFFFFFFF00FF00FF000000FF0000FFFFFFFF00FFFF0000FF00FEFEFFFFFFFF),
    .INIT_1E(256'h00FF00FFFFFF00000000FF0000FF000000FFFF000000FF00FF000100FF00FEFE),
    .INIT_1F(256'h00FF0101FFFFFFFFFF00FFFFFF0000FFFF0000FFFF0000FF00FFFFFFFFFF0100),
    .INIT_20(256'h0000FF00000001010000FFFFFF00FFFF0000FFFFFFFF0000FFFF00FF0000FFFF),
    .INIT_21(256'h0000FFFF000000FFFFFF00000100FFFFFFFFFF0000FF000000FFFFFFFFFF00FF),
    .INIT_22(256'h00FF00FFFF0000FFFF0000FFFFFF00010100000000FFFFFFFF00FFFF00FFFFFF),
    .INIT_23(256'h00FFFFFF00FF01FF000000FFFFFF00FF00FF0000010000FFFFFF00FFFF000000),
    .INIT_24(256'hFFFFFF00FFFF0000FFFFFFFFFFFF00FFFFFFFFFFFFFF00FF000000FFFF00FFFF),
    .INIT_25(256'h000000FE0000FFFFFF00FF00FF0000FF0000FF00FFFFFEFFFF00FF0000FF0000),
    .INIT_26(256'hFF00FF000000000000000000FF0000FF00FF00FFFFFEFF00FFFFFFFF00000000),
    .INIT_27(256'hFFFFFFFFFF00000000FFFFFFFFFF00FFFF00FF00FFFFFF0100FFFF00FF00FFFF),
    .INIT_28(256'hFFFF00FFFF00FFFEFF00FF00000000FFFF00FF00000000000000FF00FFFF00FF),
    .INIT_29(256'h00FFFF00FFFF000000FF00FFFFFFFF00FE00FF00FFFF00FFFF000000FF00FFFF),
    .INIT_2A(256'hFF00FF00FF0000000000FF0001FFFFFF00000000FFFFFFFFFFFF00000000FFFF),
    .INIT_2B(256'hFFFF00000000FFFF0000FF000000FFFFFFFFFFFFFFFF00000000FFFFFFFFFF00),
    .INIT_2C(256'hFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FF000000FF000000FFFF),
    .INIT_2D(256'hFFFF0000FF00000000FF00FFFFFFFFFFFF0000FFFFFF000000FFFF00FF00FF00),
    .INIT_2E(256'h0000FFFFFF0000FF00FF000000FFFF00FFFF00FF0000FFFFFF00FFFF00FFFF00),
    .INIT_2F(256'h000000FF00000000FFFF00FFFF00FE00FF000000FFFF0000FFFF0000FFFFFF00),
    .INIT_30(256'hFF00FFFF00FFFFFFFFFF000000FF00FFFF00FF0000FF00FFFF000000FFFFFFFF),
    .INIT_31(256'hFFFFFFFF00FF0000FFFFFFFF00FFFF00000000FF000000FFFFFFFF0000FFFFFF),
    .INIT_32(256'hFF00FFFFFFFF00FF000000000000FF00FFFFFFFF0000000000FF000000FFFF00),
    .INIT_33(256'h00000000FF00FF0000FFFFFF0000FFFFFF00FF0000FFFF00FF000000FF00FFFF),
    .INIT_34(256'h00FFFF0000FF0000FFFF00FFFFFF0000FFFFFF00FFFFFFFFFEFF00FFFFFF00FF),
    .INIT_35(256'hFFFF00FFFFFFFFFF00FFFFFFFF00FF00000000000000FF00FFFFFFFF00FF00FF),
    .INIT_36(256'h00FFFFFFFF0000FF00FFFFFFFFFF0000FFFF00FF00FFFF000000FFFF00FF0000),
    .INIT_37(256'h000000FF00FFFF00FF00FF000000FF0000000000FFFFFF00FEFF00FFFFFFFFFF),
    .INIT_38(256'hFFFFFF0000FF00FF00FF00000000FFFF000000FF00FF00FFFFFFFFFF00FF00FF),
    .INIT_39(256'h0000FFFFFFFF01FF0000FFFF00FFFF00FF00FFFF0000FFFF0000FFFF00FF00FF),
    .INIT_3A(256'h0000000000FFFFFFFF00FF000000FF00FFFFFFFF00FFFF00FF00000000FF0000),
    .INIT_3B(256'hFF00FF0000000000FFFFFF0000FFFFFF00FF00FF00FFFF00000000FFFFFFFFFF),
    .INIT_3C(256'hFFFFFFFFFF000000000000FF0000FFFFFFFFFFFF00FFFF0000FFFFFFFFFFFF00),
    .INIT_3D(256'h0000FF00000000FFFFFFFFFF0000FFFFFFFFFFFFFFFF000000FFFF0000FF0000),
    .INIT_3E(256'hFF00FFFF000000FFFFFFFF00FFFFFF000000FFFFFFFFFFFF0000000000FF0000),
    .INIT_3F(256'hFFFFFF00FFFFFF00FFFF000000FFFFFF00FF0000FF00FFFFFFFF0000FFFFFFFF),
    .INIT_40(256'h00FFFF0000FF00000000FF000000FFFFFF00FF0000FF00FFFFFF00FFFFFF0000),
    .INIT_41(256'hFFFFFF000000FFFFFF0000000000FFFFFFFFFF00FF00FF00FFFF0000FFFF0000),
    .INIT_42(256'h00000000FF00FF0000000000FFFF000000FF00FF00FFFF00FFFFFF00FFFFFFFF),
    .INIT_43(256'hFFFF00FF00FF00FFFFFFFF0000FF00FF0000000000FF00FF00FF0000FF0000FF),
    .INIT_44(256'h00FF0000FF00FFFF000000FF0000FFFF00FF00FFFFFF00FF0000FFFF0000FF00),
    .INIT_45(256'h01FF00FF000000FF0000FEFFFFFFFFFFFFFF0000FFFFFFFF0000FF00FF00FF00),
    .INIT_46(256'hFF000000FF0000FF00000000FFFF00FF0000FFFF00FF0001FF0000FF00000000),
    .INIT_47(256'h00FF000000FF0000FFFFFFFFFF00FF000000FFFFFF000000000000FF00FFFFFF),
    .INIT_48(256'h000000FF00FF000000FF000001FF00FF00FF000000000000FFFF000000000000),
    .INIT_49(256'hFFFFFF00FF00FEFFFF00FFFF00FFFF0000FFFF00FFFF00FF0000FFFFFF0000FF),
    .INIT_4A(256'hFFFFFFFFFFFFFF00FF00FFFFFF000000000000FF00FFFFFF0000FF00FFFFFFFF),
    .INIT_4B(256'h00FFFF0000FFFF00FFFF0000FFFFFFFF00FFFF0000FFFFFF0000FE00FFFFFFFF),
    .INIT_4C(256'h0000000000FF00000000FF00FF0000FF00FF00FFFF00FFFF000000FFFF000001),
    .INIT_4D(256'h0100FF00FF00000001000100000000000000FFFEFF00FFFFFF00FF0000FF00FF),
    .INIT_4E(256'h00FFFF0000FFFF000000FF000000000000FFFFFF00FF00FFFF0000FF0000FEFF),
    .INIT_4F(256'h0000FFFFFFFF00FF00FF00000000FFFFFF00FF000000FFFFFF000000FF0000FF),
    .INIT_50(256'hFFFF0000000000FF000000FFFFFFFFFFFF0000FF00FFFF00FFFFFF00FFFF00FF),
    .INIT_51(256'h0000FFFFFF000000FF000001FFFFFFFF0000FF00FF00FF0000FF00FFFF000000),
    .INIT_52(256'h00FE00FFFFFFFFFFFFFFFFFFFFFE00FFFFFFFFFF0000FFFF00FFFFFF00FFFFFF),
    .INIT_53(256'hFF0000FF000000FF00FF000001000000FFFFFFFFFFFF0000000000FF00FF0000),
    .INIT_54(256'hFF00FFFF00000000FF000000FFFFFF00000000FF00000000000000FFFFFFFF00),
    .INIT_55(256'h00FF00FFFEFFFFFFFFFF00FEFFFF0000FF00FF000000FF0000FF000000FFFF00),
    .INIT_56(256'hFFFF0000FF00FF000000FF0000FFFF000000FFFF0000FF00FE00FF0000000000),
    .INIT_57(256'hFFFFFF00FFFFFFFF0000FFFFFF00FF00000000FF00FF00000000FF00FF0000FF),
    .INIT_58(256'hFFFFFF00FFFFFF00FF00FFFFFF00FF00FFFF0000FFFFFFFF00FF00FF0000FF00),
    .INIT_59(256'hFFFFFFFF00000000FFFF00FF00FFFF000000FFFF00FF00FFFF00FF00000000FF),
    .INIT_5A(256'h0000FF000000FF00FFFFFF0000FFFF0000000000FF00FFFFFFFF000000FFFFFF),
    .INIT_5B(256'h0000FF00000000FF00FF0000FF00FF0100FFFFFFFFFFFFFF00FFFF00FFFF0000),
    .INIT_5C(256'h00FF00FFFFFF0000FFFFFF0000FFFFFFFEFFFFFF0000FFFFFF01FF00FFFFFF00),
    .INIT_5D(256'h00FF00FFFFFFFFFFFFFF000000FF00FFFFFFFF0000000000FF0000FFFFFF0000),
    .INIT_5E(256'hFFFFFF000000FF00FFFFFF00FFFF00000000FF00FF00FF00FF0000FF000000FF),
    .INIT_5F(256'h00000000FF0000FF00FFFF00FFFF00FF0000FFFFFF00FF0000FFFFFFFFFFFFFF),
    .INIT_60(256'hFFFF00FFFFFFFFFF00FF00FF000000FFFFFFFF0000FF000000FF000000FF0000),
    .INIT_61(256'hFF000000FF0000FFFFFFFFFFFF00FFFFFFFFFFFFFF00FF0000FF000000FFFFFF),
    .INIT_62(256'hFF0000FFFF00FF00FF00000000FF00FFFFFFFF000000FFFFFF00FFFF00000000),
    .INIT_63(256'h0000FFFFFF00000000FFFFFFFFFF00FFFF0000FF00FFFF0001FF0000FF0000FE),
    .INIT_64(256'h0000000000FF00FF00FFFF0000FF00000000FF0000FF00FF00FF00000001FF00),
    .INIT_65(256'hFF00FF00FF00FF010000FFFF00FF0000000000FF00FF00FFFF000000FFFF0000),
    .INIT_66(256'hFF00FFFF0000FF00000000FF00FFFF0000FFFFFFFFFF0000FFFF00FF00000000),
    .INIT_67(256'h00FFFEFF00FF0000FFFFFF0000FF00FFFF00FF00FFFFFFFFFFFFFF0000FFFFFF),
    .INIT_68(256'hFF0000FFFFFF00FFFFFF0000FFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFF00FFFF),
    .INIT_69(256'hFF0000000000000000000000FF0000FFFFFFFFFF0000FF00FF00FF00FFFF0000),
    .INIT_6A(256'h000000FF00FFFF00FF0000FE00FF0000FF0000FFFFFF00FFFFFF0000FFFF0000),
    .INIT_6B(256'h000000FFFFFFFFFFFF00FF000000FF0000000000FFFFFF0000000000FFFFFFFF),
    .INIT_6C(256'h00FFFFFFFF0000FF0000FFFFFF0000FF00FF00FF00FF00FF0000FF000000FFFF),
    .INIT_6D(256'hFF00FFFF000000FE0000FFFFFF00FF0000FF0000FFFF0000FF00FF0000FF0000),
    .INIT_6E(256'hFFFFFF00FFFFFF00FF00FFFFFFFFFF00FF00FF0000000000FFFFFFFF00FFFFFF),
    .INIT_6F(256'h00000000FFFFFFFFFF00000000FFFF0000FFFFFFFF01000000000000FFFF00FF),
    .INIT_70(256'hFFFF00FFFF00FF00FFFFFF00FF0000FFFF00000000FFFF00FFFF00000000FF00),
    .INIT_71(256'hFF000000FF0000FFFFFFFF00FEFF00FFFF0000FF0000FF0000FFFFFF00FF0000),
    .INIT_72(256'hFF00FFFF00FF0000FF0000FFFF00FF00FF00FFFFFF00FF00FFFF00000000FEFF),
    .INIT_73(256'hFFFFFF0000FF00FFFFFFFF000000FFFF0000FF000000FF00FF00FF00FF00FFFF),
    .INIT_74(256'h00FFFFFFFF00FF00FF000000FFFFFFFFFFFFFF0000FFFFFF0000FFFFFFFFFF00),
    .INIT_75(256'hFFFF00FF0000FF00FF0000000000FFFFFFFF00FFFF0000FF0000FFFF00FF0000),
    .INIT_76(256'h00FF00FF00FFFFFF00FF00000000FFFF000000000000000000FFFF00FF0000FF),
    .INIT_77(256'h00000000FFFFFF000000000000FFFF00FFFF00FFFFFFFF00000000FF00000000),
    .INIT_78(256'h00FF00FFFFFE00FFFF00FF00FF0000FF0000000100FFFFFFFF0000FF00FF00FF),
    .INIT_79(256'h000000FF00FFFFFFFFFE0000FFFFFFFF00FFFF0000000000000000000000FFFF),
    .INIT_7A(256'hFFFFFFFE0000FFFFFFFF00FF000000FFFF00FF00FF0000000000FF0001FF0000),
    .INIT_7B(256'h00000000FFFF00FF00FFFF00FF0000FF01FF00FF0000FFFF00FFFF00FF00FFFF),
    .INIT_7C(256'hFFFF0000000100FFFFFF00FFFFFFFF000000FF0000FFFF0000FFFFFFFF0000FF),
    .INIT_7D(256'hFFFFFFFF000000000000010000FFFFFFFFFFFF0000FFFF00FFFFFFFFFF00FFFF),
    .INIT_7E(256'h0000FFFF000000FF000000FF00000000FFFFFF00FFFFFFFF00000000FF00FF00),
    .INIT_7F(256'h00FF00FF000000FFFFFFFF000000FF0000FF0000FF0000FFFF00FFFF0000FFFF),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina[7:0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,dina[8]}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ena_array),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module weight1_bram_4_blk_mem_gen_prim_wrapper_init__parameterized5
   (DOADO,
    DOPADOP,
    clka,
    ena_array,
    addra,
    dina,
    wea);
  output [7:0]DOADO;
  output [0:0]DOPADOP;
  input clka;
  input [0:0]ena_array;
  input [11:0]addra;
  input [8:0]dina;
  input [0:0]wea;

  wire [7:0]DOADO;
  wire [0:0]DOPADOP;
  wire [11:0]addra;
  wire clka;
  wire [8:0]dina;
  wire [0:0]ena_array;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h145000023DC0846BF6C3EFB6B17EC71403FE96907F5CCA5FE5BE0AF4364C8F84),
    .INITP_01(256'h3D9AFD474DDCC8245112301F2D254D2EB8D803BAFF19423F24845D08006F1B10),
    .INITP_02(256'hBE29E2803173180969E00026CB0AC8400AC343BCCD1B5EC8F8C251E761FD6961),
    .INITP_03(256'h740AD55FD34712F8ECDA7F6801853FFA6BBADC2EBAFBDE32457C9916BFCA83D3),
    .INITP_04(256'h4BB8959F4724762636462F50536F48D793053C72FEE654F8CA7C239DC20911DB),
    .INITP_05(256'hA6ED7738BD45C799FEAA88D30183EAAFA7C2129C1CF000DCC890DF06F9AA380E),
    .INITP_06(256'hE0029CD67D6C31CD12EC2642D1FFCEDF5ED28FF0BA5A7483143741CB50FD0DC0),
    .INITP_07(256'hFFFA6EBBCDF2F365072EFDB4BA8F92FE266FE7925ED5E004195DE4D34581018E),
    .INITP_08(256'h422A678EC49AFC7F64E51C68A812F48E212ACEC58FB90562536BC82910F0414F),
    .INITP_09(256'hE0F588CC0F3C5AE4758FC9A7040B4215E4F823124FD94F02A5C3A0FF154C4CFC),
    .INITP_0A(256'h6A1CD48352E35D01F216746FDE62143F923F027D871A276EBAC0ECF79B34CE97),
    .INITP_0B(256'h1F2EAEFE2D7069741154F80D7AF280295037E28951FEA274ECF7B312A2B81780),
    .INITP_0C(256'h80F00BF05700830B180341FF0863BEE159501F7D8989FB4C5C9FFE23330EE98F),
    .INITP_0D(256'hFBA9DD8C17EAA2FBBFF39BEC3DF778EA22EA6EF886F86A822502880B60AF0780),
    .INITP_0E(256'h784150786900202F7584251D5FDADBE133088807DADD6253CE73BC79BCC3BCE0),
    .INITP_0F(256'hCCA11FF93200F7C041FFDC379FF925E1EDE1FD3FF012F21F2E479FC796B8463D),
    .INIT_00(256'h0000FFFF00FFFF0000FF0000FFFF0000FE000000FFFFFFFFFF00000000FF0000),
    .INIT_01(256'hFEFFFF0000FE00FFFF00FFFFFFFFFF0000000000FF00FF00FFFFFEFF00FF0000),
    .INIT_02(256'h00FFFFFEFFFFFEFF00FF00FFFFFF0000FFFF0000FF00FF0000FF00FFFFFFFEFF),
    .INIT_03(256'h000000000000FFFFFEFFFEFEFFFFFF00FF0000FF00FFFF00FF0000FF00000000),
    .INIT_04(256'hFF00FFFF000000FF00FFFFFFFFFFFE00FFFF000000FFFFFF000000FF00FF0000),
    .INIT_05(256'hFFFFFFFF00FFFF00FFFF00000000FFFFFFFFFE00FFFFFFFFFF00FFFF00FFFF00),
    .INIT_06(256'h0000FFFFFFFF00FFFFFF000000000000FF00000000FF000000FFFF00FF00FFFF),
    .INIT_07(256'h000000FF00FF000000FF00FF000000000000000000000000010001000100FF00),
    .INIT_08(256'h000000000000000000FFFF00FFFFFFFF000000FFFF00FFFF000000FF00010000),
    .INIT_09(256'h0000FE0000FF0001FF00000001FF000000FF00FFFFFF00FF00000000FF000000),
    .INIT_0A(256'hFFFFFFFFFFFFFFFF000000FFFF0000FF00FF00000000FF000000FFFFFFFFFFFF),
    .INIT_0B(256'hFF00FFFFFF000000FFFF00FFFF000000000000000000FFFFFF00FFFFFF00FF00),
    .INIT_0C(256'h0000FF00FFFF00FF0000FF0000FF00FF00FF0000FFFF00FF0000FF00FFFFFF00),
    .INIT_0D(256'h00FF00FF000000FF000000FF0000FF000000FFFF00000000000000FFFFFFFFFF),
    .INIT_0E(256'h01FF0000FFFF00FFFFFF00FFFFFF0000FFFF0000FF0000000000FF0000FF0000),
    .INIT_0F(256'h0000FFFFFFFF00FFFF0000FFFF00FF00FFFFFFFFFFFF00FF00FF000000FFFFFF),
    .INIT_10(256'h00FFFF00000000FFFFFFFFFFFFFF00FF00FFFF00FF0000FF00FFFF00000000FF),
    .INIT_11(256'hFFFFFFFFFF000000FFFF00000000FF0000FF00FF000000FFFFFFFF0000FFFFFF),
    .INIT_12(256'hFFFF0000FFFF00FF000000FFFF00FFFF00FF00FFFFFFFF00FFFF0000FF000000),
    .INIT_13(256'h00000000FF00FF00FFFF00000000FFFF00FF00000000FFFFFF00FFFFFFFF0000),
    .INIT_14(256'hFEFF0000FF00FFFF00000000FF00FF00FFFF0000FF00000000FF000000000000),
    .INIT_15(256'h00FFFF00FF0000FFFFFFFF000000000000000100000000000000FF0000FFFF00),
    .INIT_16(256'h0000FFFF000000FF00FFFFFF0000FFFF000000FFFF01010001010000FF0000FF),
    .INIT_17(256'hFF00FFFFFFFFFF000000FF00FF0000FEFFFFFF000000FF00FF00000000000000),
    .INIT_18(256'hFF00FFFFFFFFFFFFFFFF0000FF00FF00FF0000000000FFFFFFFF00FF0000FFFF),
    .INIT_19(256'h00FF000000FF00FF00FFFFFFFFFF0000FF0001FFFF0000FF000000FF00FFFF00),
    .INIT_1A(256'hFF00FFFFFF00FF00FFFFFFFFFF00FFFFFFFF00FFFFFFFF000000FFFF0000FF00),
    .INIT_1B(256'h00FFFF00FF00FFFFFF00FFFFFF00FF00FFFF00FFFFFF00000000FF00FFFFFF00),
    .INIT_1C(256'h00000000000000FFFF00000000FF00FF0000FFFFFFFFFFFFFFFFFFFFFF00FF00),
    .INIT_1D(256'hFFFFFE00FFFF0000FFFF00FFFF00FF0000FFFFFFFFFFFFFF00FFFF00FF000000),
    .INIT_1E(256'hFFFF00FF0000FFFF00FF000000FFFFFF000000FF0000FF00FFFFFFFFFF000000),
    .INIT_1F(256'h00FFFFFF00FF000000000000FF00FF00FFFF00FF00FF00FF00FF00FFFFFFFFFF),
    .INIT_20(256'hFFFF00000000FF0000000000FF0000FF000000FF000000FFFFFF00FFFF00FFFF),
    .INIT_21(256'hFFFF0000FF00FF0000FFFFFFFFFF00000000FF000000FFFFFF0000FFFFFF00FF),
    .INIT_22(256'hFFFFFFFFFFFFFF00FFFFFF0000FFFF0000FF00FF00FF0000FFFFFFFFFF000000),
    .INIT_23(256'hFF0000FF0000FFFF0000000000FF00FF0000FFFFFFFF000000FFFFFF0000FF00),
    .INIT_24(256'h00FF00FF0000FFFF00FFFF00FFFFFFFF00FF0000FF010000FFFF01FF01FFFFFF),
    .INIT_25(256'h0000FFFF00FFFF0000FF000000FFFF000000FF00FFFFFFFF00FF00FF00000000),
    .INIT_26(256'h00FE000000FFFFFF0000FF0000FF000000FFFFFF00FFFF000000FF0000FFFF00),
    .INIT_27(256'h00FF0000FF00FFFFFF00FFFFFF000001FF0000FF00FF00FFFF0000FFFFFFFFFF),
    .INIT_28(256'hFFFFFFFFFF0000FFFF00FF00FF00FF000000FFFFFF00000000000100FFFFFF00),
    .INIT_29(256'hFFFF0000FF000000FF0000FF00000000FFFF00FFFFFFFFFF0001000000FFFF00),
    .INIT_2A(256'h000001FFFFFF0000FFFFFFFF000000000000000000000001FFFF00FFFFFF0000),
    .INIT_2B(256'hFF00FF0000FFFFFFFFFF00000000FF00000000FF0000FF00FF0000FFFFFF0000),
    .INIT_2C(256'h00000000000000FFFF0000000000FEFFFFFFFF00FF00FF00FF00FE00FFFFFFFF),
    .INIT_2D(256'hFFFFFFFFFFFFFF00FF00FF00FF00FF00FF000000FF000000FFFF00FF0000FFFF),
    .INIT_2E(256'hFF00FFFFFFFF00FF00FF000000FF00FFFFFF000000FFFFFFFF0000FFFF0000FF),
    .INIT_2F(256'hFF00FF0000FFFF00FFFFFF00FFFF00FF00FFFFFF00FFFFFF0000FFFFFF000000),
    .INIT_30(256'h00FF00FF00000000FFFFFFFFFFFF00FF00000001FFFF00FFFFFF000000000000),
    .INIT_31(256'h000000FF00FF00000000FFFE00FFFFFF00FF0000000100FFFFFF0000FF00FFFF),
    .INIT_32(256'hFF00FFFFFF00FF0000FF00FFFE00FF0000FFFFFF00FF0000FE0001000000FFFF),
    .INIT_33(256'h00FF00FFFFFFFF00FFFF00FF0000FF00FF000000FFFFFFFFFFFFFFFF00000100),
    .INIT_34(256'hFFFF00FF000000FFFFFFFFFFFFFFFFFFFFFF0000FEFFFF00FFFF00FFFFFFFFFF),
    .INIT_35(256'h000000FF0000FF00FFFFFF00FFFF00000000FF0000FFFF0000FF00000000FF00),
    .INIT_36(256'h00FFFFFFFFFF00FF00FFFF00FFFF00000000FFFF000000FFFFFF0000FFFF00FF),
    .INIT_37(256'hFFFFFF0000000000000000000000FF00FF0000FFFFFF0000FFFF00FF00FFFF00),
    .INIT_38(256'h00FF000000FF00FFFF000000000000FF01000000000000FFFF000000FFFFFF00),
    .INIT_39(256'h000000FFFF0000FF00FF00FFFFFF00FEFFFFFF0000FF0000FFFF01FF0000FFFF),
    .INIT_3A(256'h00FF00FFFFFFFF00FFFF00FF00FF00FFFFFFFE00000000000000000000FF0000),
    .INIT_3B(256'h0000FF0000FFFF0000FFFF00FFFFFFFFFFFFFF0000FFFFFFFF0000FF0000FF00),
    .INIT_3C(256'hFF00FFFFFF00FF00FF000000FFFFFFFFFF0000FF0000FF00FFFFFFFFFFFFFF00),
    .INIT_3D(256'h0000000000FFFFFF0000FF00FFFFFF00FFFFFFFFFFFF00FFFF00FFFF00FF0000),
    .INIT_3E(256'hFFFF0000FFFF00FFFFFFFFFF0000FF00FFFFFFFF0000FFFF00FFFF0000FF00FF),
    .INIT_3F(256'hFFFFFFFFFFFFFFFFFFFFFEFFFF00FF0000FFFF00FFFFFF00FF00FFFFFF00FFFF),
    .INIT_40(256'h000000FF00000000FFFFFFFF0000000000FF0000000000FF00FF0000FFFFFFFF),
    .INIT_41(256'h00FF00FF0000FFFF01FFFF00FF00FFFFFFFF0000FF0000000000FF00FF0000FF),
    .INIT_42(256'hFF000000FFFFFFFFFF00FFFFFF0000FF0000000000FF00FF00FFFF000000FF00),
    .INIT_43(256'h0100FF00000000FF0000FF00FF00FF00FFFF0000FFFFFF00FFFF000000FF00FF),
    .INIT_44(256'hFE00FF00FF000000000000FF0000FF00FFFFFFFF00FF0000FF000000FFFFFF00),
    .INIT_45(256'h00FFFF0000FF0000FFFFFF0000FF00FF000000FFFFFF000000FFFF00FF000000),
    .INIT_46(256'hFFFF000000FF0000FF0000FFFF00FF00FFFFFFFFFFFF000000FFFFFFFFFFFFFF),
    .INIT_47(256'h00FF00000000FF000000FF00FF00FF0000FFFE0000FFFFFFFF000000FFFFFF00),
    .INIT_48(256'h000000FF00FF00FF00FF0000FFFF000000FF0100FFFF0000FFFFFFFFFFFF0000),
    .INIT_49(256'hFF00FF0000FF00FFFFFF00000000FFFFFF00FF0000000000FFFFFFFFFFFFFEFF),
    .INIT_4A(256'h00FF0000FFFFFFFFFFFF00FFFF0000FF00FF0000FFFFFFFF000000010000FF00),
    .INIT_4B(256'hFFFFFF0000FF0000FFFFFFFFFF0000000000FF000000FFFF000000FF0000FE00),
    .INIT_4C(256'h0000000000FF000000000000FF00FFFF00FF00000000FF00000000FF00FF00FF),
    .INIT_4D(256'h00FFFFFF00FF00FFFF000000FFFFFFFFFFFF0000FF0000FFFF00FF0000FFFFFF),
    .INIT_4E(256'h00000000FFFFFFFF0000FFFFFFFF000000FF00FFFF00FF00FEFFFF0100FF0000),
    .INIT_4F(256'hFFFFFF0000000000FFFFFFFF00FF00FFFF000000FF000000FFFF0000FFFF0000),
    .INIT_50(256'hFF0000FFFF00FFFF0000FFFF00FF0000FFFF0000FFFFFF00FF0000FF00FFFFFF),
    .INIT_51(256'hFF00FFFFFE00FF00FFFF000000010000FFFFFF00FEFF0000FFFFFFFF00FFFFFF),
    .INIT_52(256'hFF00000000FFFFFF000000FFFF01FF000000FF0000FFFFFF00FFFF00FFFFFF00),
    .INIT_53(256'hFF0000FF0001FF000000FFFFFFFFFFFF000000000000FF0000FFFFFFFFFF00FF),
    .INIT_54(256'hFFFE00FFFFFFFF0000FFFF000000FF00000000FF00FF00000000FFFEFFFFFFFF),
    .INIT_55(256'hFFFFFFFF0000FF00000000FF00FFFF0000FFFFFF00FF000000FFFF00FFFFFFFF),
    .INIT_56(256'h00FE00FF0000FF00FFFFFF000000FFFF00FF00FFFFFF00FF00000000000000FF),
    .INIT_57(256'h00FFFF00FF00FF01000000FFFFFF0000FFFF00FF00FF0000FF0000000000FFFF),
    .INIT_58(256'hFF00FF000000FF00FF00FFFFFF000000000000FF00FFFFFFFF01000000000000),
    .INIT_59(256'hFFFFFF00FFFF0000FFFFFFFF00FFFFFFFF00FFFF0000FFFF000000FF0000FF00),
    .INIT_5A(256'h00FF00FF000000FFFFFFFFFFFFFFFF01FF00FF000000FF0000FFFFFF00FF0000),
    .INIT_5B(256'h00FF00FF000000000000FFFF00FFFFFFFFFFFF000000FF00FF000000FF0000FF),
    .INIT_5C(256'h00FFFFFFFF00FF00FFFFFFFF0000FF00FF000000000000000000FF00FF0000FF),
    .INIT_5D(256'h000000FF000000FF00FF00FF00FF0000FEFFFFFFFF00000000000000FFFF00FF),
    .INIT_5E(256'h0000FF00FFFF00FF00FFFFFF0000000000FFFF00FF0001FF00FFFFFF00FF0000),
    .INIT_5F(256'h000000FFFFFFFFFF0000FF00FFFFFF00FF00FF00FFFFFF00FFFFFFFFFFFFFF00),
    .INIT_60(256'h0000FFFF0000FFFF00000000FFFFFF00FFFFFF00FF0000FFFF000000FFFFFFFF),
    .INIT_61(256'h00FF00FFFFFF0000FF0000FEFFFEFFFFFEFFFFFFFFFFFF000000FF000000FFFF),
    .INIT_62(256'hFF000000FF0000FFFF000000FF0000FFFFFFFFFFFF00FFFF00FF0000FFFF0000),
    .INIT_63(256'h00FF00FFFF0000FF00FF00FF00000000000000FFFFFFFFFF00FFFFFFFFFF00FF),
    .INIT_64(256'h00000000FF01000000FFFF000000FFFFFF00FFFFFFFFFF00FFFFFF00000000FF),
    .INIT_65(256'h000000FFFF000100000001000000FFFF00FF0000000000FFFFFFFFFFFFFFFFFF),
    .INIT_66(256'h00FF00FF00FFFFFF0001010100000000FF0000000000FFFF00000001FF00FFFF),
    .INIT_67(256'hFF00000000000000FFFFFFFF0001010001010000FF00FFFFFFFFFFFE00000000),
    .INIT_68(256'h00FFFF0000000000FF00FF00FFFFFFFF0000000100FFFFFFFF00000000000000),
    .INIT_69(256'h0000FF0000FF00FF000000000100FF00FF000000FF00000000000000FF00FFFF),
    .INIT_6A(256'hFF00000000FFFF00FFFFFFFFFF00010000FFFF00FF01FF00FF0000000000FF00),
    .INIT_6B(256'h0000FF000000FF00FFFFFF00FF00FF0100FFFF00FFFFFF00FFFFFFFFFF000000),
    .INIT_6C(256'h0000FFFFFFFF00FFFFFFFFFF00FFFFFF00FFFFFFFF000000FFFFFF00FF00FF00),
    .INIT_6D(256'hFF00FFFFFFFFFFFFFFFFFFFF0000FFFFFF0000FFFF00FFFFFFFFFF00FFFF0000),
    .INIT_6E(256'h000000FF00FFFFFFFFFFFF00FF00FF00FF00FF000000FF00FFFFFFFFFF00FFFF),
    .INIT_6F(256'hFFFFFFFFFF00FFFFFF00FF00FE0000FFFFFF00FFFFFF00FFFF000000FFFF0000),
    .INIT_70(256'hFF00FFFFFFFF0000FFFF00000000FFFFFF00FFFFFFFF0000FFFFFF0000000000),
    .INIT_71(256'hFFFF0000FFFFFF0000FFFFFF0000FFFFFF00FFFFFFFF000000FEFFFFFF0000FF),
    .INIT_72(256'hFFFF00FFFF00FF00FFFF00FFFFFF00FF00FFFF000000FF0000FF00FF0000FFFF),
    .INIT_73(256'h0000FFFF0000FFFF00000000FF000000FF000000FF0000000001000000FFFFFF),
    .INIT_74(256'h00FF00FFFFFFFFFFFFFF00FFFF00FF00FFFF00FFFF00FFFFFFFFFF00000000FF),
    .INIT_75(256'h00FFFFFF00FF00FFFF00000000FF00010000FF0000FF00FF000000FFFFFF00FF),
    .INIT_76(256'h00FFFF00FF0100FF00000000000000000001FF00000000000000FF00FFFFFFFF),
    .INIT_77(256'h00FFFFFFFF00000000FF0000000000FF00FF00FF0000000000FFFFFFFF000000),
    .INIT_78(256'hFF0000FF00FFFF00FF00FFFFFF00000000FF000000FFFF000000FFFFFFFF00FF),
    .INIT_79(256'h0000FF00FFFFFF0000FF000000FFFFFFFF0000FFFFFFFFFFFFFF000000FFFFFF),
    .INIT_7A(256'hFFFFFFFF00000000000000FF0000FF00FFFFFFFF0000FF00000000FFFFFFFFFF),
    .INIT_7B(256'hFFFFFF00FFFF00FFFFFFFF00000000FFFFFFFFFFFFFF00FF0000FFFFFFFFFFFF),
    .INIT_7C(256'hFF0000FFFFFEFFFFFFFFFFFFFF0000FF0100FF0000FF00FFFFFFFF00000000FF),
    .INIT_7D(256'h00FF0000000000FFFFFFFFFEFFFFFFFFFFFF00FFFFFF00000100FFFF00FFFFFF),
    .INIT_7E(256'h0000FFFF0000FF000000000100000000FFFFFFFF00FFFFFFFFFF000000000000),
    .INIT_7F(256'hFFFF0000FFFF0000FF00FF00000001FF000000FFFFFFFFFFFFFFFFFFFF0000FF),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina[7:0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,dina[8]}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],DOADO}),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],DOPADOP}),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ena_array),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module weight1_bram_4_blk_mem_gen_prim_wrapper_init__parameterized6
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ,
    clka,
    addra,
    dina,
    wea,
    ena);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  input clka;
  input [13:0]addra;
  input [8:0]dina;
  input [0:0]wea;
  input ena;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1_n_0 ;
  wire [13:0]addra;
  wire clka;
  wire [8:0]dina;
  wire ena;
  wire [0:0]wea;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'hF3660F89B5362F36C197901F91D080E6F8014573005DD5C62D250A0F7ED1C2FF),
    .INITP_01(256'h01621425CD681FFF10DB3F70E2DA73806484B6E4610D73661BD9B23FF9D5073A),
    .INITP_02(256'h0FE67088DF9B66D260C0F5F83B4692ADD059F24A3FF2EE66B4841FC012D16050),
    .INITP_03(256'h4520A2DE8D19D2EC324F1AC556EC1B4A845A25AE87B049F61109759BE5B56ED7),
    .INITP_04(256'h8685D50090AF08F24E6117F6EC0CA030E6B8C300B96C9B68328DEDBE58C26501),
    .INITP_05(256'h344FBBEE7F5E84D93FFDAAE7A86077DF96C76373E54C35990A37DE213C779027),
    .INITP_06(256'h315664C16D59945C35445A984B66474CE7B76424DB6277F3093786DFC7306948),
    .INITP_07(256'h7117FB5C34442D3DF892502B3821064275914258D81573CCD1FE58697C5637F5),
    .INITP_08(256'h09EDC3803A7920107B44423AD212139027D659EFFDE966FF5FE3A1FBFFCF5FFF),
    .INITP_09(256'hFF32D8E5A9286DFEFEBD3E0DD95EE42A95C057AE6C8137F2033171BA865BC1E4),
    .INITP_0A(256'h2FD2C62D979EFE232DFDB4CCCD99E181DF3E100E42C361FCED7D49B4DFC2C18F),
    .INITP_0B(256'hDE899E49BA39C10075F91BBC0504D017A280F06B7E1413E14C237C3B5198BFAC),
    .INITP_0C(256'hD04B36FB03A79569BF42FF7DFDC31D18B74C5A24990A0CF5394AA38B88FC7916),
    .INITP_0D(256'h00000000000000000000000000000000000000000000B42832A7A85590ECB0BB),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h00FFFFFFFFFFFF00FFFF00FF000000FEFFFF00000000FF00FFFFFFFEFFFFFFFF),
    .INIT_01(256'h0000FF00FFFF00FF0000FF0000FF00FF01000000FF00FF0000000000FEFFFFFF),
    .INIT_02(256'h000000000000000000FF00FFFFFF00FFFFFF00FF00FF00FFFFFF000000FFFF00),
    .INIT_03(256'hFFFFFFFFFF00000000000000000000FF00FF000000FF00FF00FFFFFF0000FFFF),
    .INIT_04(256'hFF0000FF000000FFFFFF00FF00000001FF00000000000000FFFFFF0000FFFF00),
    .INIT_05(256'hFFFF0000000000FFFF0000FF00FFFFFFFF0000FF00000000000000FFFFFFFFFF),
    .INIT_06(256'hFF00FFFF00FF00FF0000FFFF00FFFF000000FF00FFFFFFFF0000FFFF00FFFF00),
    .INIT_07(256'hFFFFFFFF0000FFFF00FFFF0000FFFF0000000000FFFFFFFFFF000000FF0000FF),
    .INIT_08(256'hFFFFFFFFFF0000FFFFFF00FF00FF00FF0100000000FFFFFF0000FFFFFF00FF00),
    .INIT_09(256'h000000FFFF00FFFFFFFF00FFFF0000FFFF00FFFF0100FF000000FFFFFFFFFFFF),
    .INIT_0A(256'h00FFFF00000000FF00000000FFFF00FF00FFFFFF0000FFFF00FFFF0000FFFF00),
    .INIT_0B(256'h00FFFF0000FF0000FF00000000FF0000FF00FFFF00FFFF00FFFFFF0000FF0000),
    .INIT_0C(256'hFFFFFF000000FF00FFFF00FFFF00FF0000FFFFFF0000FFFEFF00000000000000),
    .INIT_0D(256'h000000FF00000000FFFF00FFFF00FFFF0000FFFFFFFFFFFF00FFFFFF00000000),
    .INIT_0E(256'hFFFF0000FFFF00FF00FFFF00FF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_0F(256'h00000000000000FF00FFFF000000FF00000000FF01FF01000000FF0000FF00FF),
    .INIT_10(256'h000000FF0000FF01FFFF00FF000100FF00FFFF000000000000FF00FF00000000),
    .INIT_11(256'hFF00FFFF00FF0000FF00000000FF0000000000FFFFFFFFFFFFFF000000000000),
    .INIT_12(256'h0000FFFFFFFFFFFEFFFFFFFF0000FF00FFFFFF00FFFFFF0000FFFF0000FFFF00),
    .INIT_13(256'hFFFF00FF0000000000FF00FFFF0000FFFFFFFFFF0000FF0000FF0100FF00FF00),
    .INIT_14(256'h0000FFFFFF00FFFF00FF000000FFFF00FE0000FF0000FF00FF00FF00FFFF00FF),
    .INIT_15(256'h00FFFF0000000000FFFF000000000000FFFFFFFF00FF00FFFFFFFFFFFE000000),
    .INIT_16(256'hFFFF00FFFFFFFFFFFF0000FFFF00FFFF00FFFF0000FFFF00FFFF00FF0000FF00),
    .INIT_17(256'h00000001FFFFFFFFFFFFFF0000FFFF0000FFFFFF00000000FF000000FF000000),
    .INIT_18(256'hFFFFFE0000FF00FFFF00FFFF00FF00FF00FFFF00FFFFFF00FFFF00FF00FFFFFF),
    .INIT_19(256'h000000FF000000FF00000000FF0000FF00FFFFFF00FF00FFFF0000FFFF00FFFF),
    .INIT_1A(256'hFF00000000FFFFFFFF00FFFF0000000100FF0000FF0000FFFFFFFFFF00FFFF00),
    .INIT_1B(256'hFF00000000FF000000FF00FFFF00FF000000FF0000FF00FFFE00FF00FFFFFF00),
    .INIT_1C(256'h00FF00FF00FFFF00FFFFFF00FFFF0000000000FFFF00FFFF00FF0000FF00FF00),
    .INIT_1D(256'h0000FFFF0000FF0000FF0000FFFFFFFF000000FFFF00FF00FFFF000000FF00FF),
    .INIT_1E(256'hFF000001FFFF00FF000000FFFF0000FFFFFF00FF0000FF00FFFFFF00FFFF0000),
    .INIT_1F(256'h00FF000000FF00FF0000FF0000000000FF00FF000000FF00FFFF00FFFFFFFF00),
    .INIT_20(256'h00FF00FFFF000000FFFF00000000FF0000FFFF0000FF00FF00000000010000FF),
    .INIT_21(256'h0000FFFF0000FF00FF000000FFFF00FFFFFFFF00FFFF00FFFF00FFFFFEFFFF01),
    .INIT_22(256'hFF00FFFFFF0001FF00FFFF00FFFF0000FE0000FFFF00FFFF00FFFF00FF000000),
    .INIT_23(256'hFFFFFF0000FFFF00FF00FFFFFF000000FFFF00000000FFFF0000000000000000),
    .INIT_24(256'hFFFFFF00FFFF000000000000FFFF0000FF00FF00000000000000FFFF01000000),
    .INIT_25(256'h00FF0000FFFFFF0000FFFF00000000FF000000FF00FFFFFFFFFFFFFF00FFFF00),
    .INIT_26(256'hFF0000FF00000000FF00FF00FFFFFFFF00010000FF000000FFFFFFFF0000FF00),
    .INIT_27(256'hFF00000000FFFF00FF00000000FF00FFFFFF00FF00FF00FF0000000000000000),
    .INIT_28(256'h0000FFFFFFFF000000FFFFFF00FFFFFFFE0000FF000000000000FF0000FFFFFF),
    .INIT_29(256'h00000000FF00FF000000FFFF00FFFFFFFFFF00FFFFFFFF000000FF00000000FF),
    .INIT_2A(256'hFFFFFF0000FF00FF00FF0000FFFF01000000FFFF00FF00FFFF0000FFFF0000FF),
    .INIT_2B(256'hFF0000FF00FFFF00FFFF000000FFFFFF00FFFF000000FFFF00FFFFFF0000FFFF),
    .INIT_2C(256'hFF00FF00FF00000000FFFF000000000000FFFFFF00FFFFFFFFFF00FFFFFFFFFF),
    .INIT_2D(256'h0000FFFFFFFFFFFFFFFFFFFFFFFF00FFFF00FF00FF00FF00FFFFFF0000FFFFFF),
    .INIT_2E(256'h00FFFFFFFFFFFFFF00FF00FFFFFFFF00FF00000001FF0000FFFF00FFFF0000FF),
    .INIT_2F(256'h0000FFFF00FF000000FF0000FFFFFFFFFE00FFFFFF00FFFFFFFFFF00FFFFFF00),
    .INIT_30(256'hFFFF000000FFFFFF0000FFFF0000000000FFFF00FF0000FF00FF0000FF000000),
    .INIT_31(256'h00000000FF0000FF0000FFFF00FFFFFFFF00000000FFFF00FFFF00FFFFFFFFFF),
    .INIT_32(256'hFFFF00FFFF00FFFF00FFFF000000FF0000FFFFFF00FFFFFFFFFFFFFF0000FFFF),
    .INIT_33(256'hFFFFFF0000FFFFFFFF00FFFF00FFFFFF00FFFF0000FF00000000FF0000FF0000),
    .INIT_34(256'h00FF0000FF00FFFF00FFFF0000FFFF0000FF000000FFFFFF00FF0000FFFF0000),
    .INIT_35(256'h0000FFFF00FF00FF00FF000000FF000000FF00FFFF00FF00FF0100FFFF000000),
    .INIT_36(256'h00FFFF00FFFF00FF00FF00FFFF0000FFFF0000FF00FF000000FF00FFFFFF0000),
    .INIT_37(256'h0000FFFF000000FF00FF00FF00FFFF0000FFFF0000FF0000FEFF0000000000FF),
    .INIT_38(256'h00FFFFFFFFFF000000FF00FF00FFFF000000FFFF00FFFFFFFFFFFFFF00FF00FF),
    .INIT_39(256'hFFFF00FF000000FFFFFFFFFFFFFFFF0000FF00FFFF00000000FFFF00FF0000FF),
    .INIT_3A(256'hFFFF00FFFF000000000000FF00FF00FF00FFFFFF0000FFFFFFFF0000FFFF0000),
    .INIT_3B(256'h00FFFFFF00FF00FFFF0000FF000000FF00FF00000000FF0000FF00FFFF000000),
    .INIT_3C(256'h0000FFFFFE0001000000FF00000100FF0000000000FFFF0000FF00000000FF00),
    .INIT_3D(256'hFFFFFFFFFF000000FF0000FF0000FF0000FF00FF000000000000FF00FF00FFFF),
    .INIT_3E(256'h0000FFFF00FF000000FF000000FF00000000FF00FFFF00FF0000FFFFFFFF00FF),
    .INIT_3F(256'h00FFFFFF000000FF000000FF00FFFFFFFFFFFFFFFF00FFFF00FF00FFFFFF0000),
    .INIT_40(256'hFFFFFFFFFFFFFFFFFFFF0000FFFFFFFF00FF00FFFFFFFFFFFFFFFFFFFEFFFFFF),
    .INIT_41(256'h00FF00FFFFFFFFFFFFFFFF000000FFFFFF00FF00000000FFFFFFFFFFFF00FFFF),
    .INIT_42(256'hFFFFFFFFFFFF00FFFFFFFF00FF0000FF00FFFF0000FFFF00FFFFFFFFFFFFFFFF),
    .INIT_43(256'h0000FF0000FFFFFFFFFF00FF00FFFF0000FF00FFFE0000FFFFFFFF00FFFFFFFF),
    .INIT_44(256'hFFFF00FF0000FF00000000FF0000FF00000000FF0000FFFFFF0000FF01000000),
    .INIT_45(256'h00FFFFFFFF00FFFF00FF000000FF000000FF00000000FF000000FFFFFF00FF00),
    .INIT_46(256'h0000FFFFFF00FF0000FFFFFFFF0000FF0000FF0000000000000000FF00010000),
    .INIT_47(256'h00000000FF0000FFFFFFFF00FFFF00FFFFFF00000000FFFFFF00000000000000),
    .INIT_48(256'hFF00000000FFFF0000FF00FFFF00FFFFFFFF0000000000FFFFFFFF0000FF0000),
    .INIT_49(256'h000000000000FFFF0000FFFF000000FF00FFFFFF000000FFFF00FFFFFF00FF00),
    .INIT_4A(256'h00FFFF00FFFF0000FF000000000000FF0000FFFF00FFFFFFFFFFFFFE0000FF00),
    .INIT_4B(256'hFF0000FF00FF00FEFFFF00000100000000FF00FF00FFFEFFFF00FF00FFFFFF00),
    .INIT_4C(256'hFFFF00FFFF0000FF00FF00FFFFFFFF01FFFFFF0000FF00000000FF00FF00FF00),
    .INIT_4D(256'hFFFFFFFFFFFFFF00FF00FFFFFFFF00FF0000FEFFFFFFFF0000000000FFFF00FF),
    .INIT_4E(256'hFF00FF00FE0000FF0000FF00FF00000000FFFF00FFFF00FFFFFFFFFFFFFFFF00),
    .INIT_4F(256'hFFFFFFFFFFFFFFFF0000FFFF0000FF00FFFF00FFFF000000FFFFFF0000FF00FF),
    .INIT_50(256'hFFFF00FFFFFFFFFFFFFF00000000FF00FFFF0000000000FFFF000000FFFFFFFF),
    .INIT_51(256'hFFFFFF00FFFF00FF00FFFFFFFFFF01FF00FF0000FF0000FFFF00FFFF00FF0000),
    .INIT_52(256'h00FF00000000FF00FFFF00000000FFFF00FFFF00000000FFFFFFFFFFFFFF0000),
    .INIT_53(256'hFFFF00FFFFFFFFFF0000FFFFFFFFFE00000000FF0000000000000000FFFFFF00),
    .INIT_54(256'hFFFF0000FFFF00FFFF0000FFFF0000FFFFFFFF00000000FFFF000000000000FF),
    .INIT_55(256'h0000FF00FFFF00FEFFFFFFFFFFFF00FFFF00FFFF00FF0000FFFF0000FFFF0000),
    .INIT_56(256'hFF0000FF00FFFFFFFF0000FFFFFFFF00FFFFFFFFFFFFFF000000FF000000FFFF),
    .INIT_57(256'h0000FF00FFFFFFFFFFFE00FF0000FF00FFFF000000FFFF000000FF00FFFF00FF),
    .INIT_58(256'h00FF00FF000000FFFF0000FFFF000000FF00FFFFFFFFFFFFFF00FF00FFFF0000),
    .INIT_59(256'h00FF0000FFFF00000000FF000000FFFF00FFFFFFFFFF00000000FFFFFF01FFFF),
    .INIT_5A(256'h00FFFFFFFFFFFF00000000FF00FF0000000000FF0000FFFFFEFFFF00000000FF),
    .INIT_5B(256'hFF00FF000000FF00FF00000000000000FFFFFFFF0000000000FFFF00FF00FFFF),
    .INIT_5C(256'h0000010000FF00FF0001000000FF0000FFFF00FF00000000000000FF00FFFFFF),
    .INIT_5D(256'h00FFFFFF00FF00FFFFFFFFFFFF0000FF000000FFFF00FFFFFF00FFFFFFFF0000),
    .INIT_5E(256'hFF00FFFFFF00FF000000FFFFFF0000FFFFFF0000000000FF0000000000000000),
    .INIT_5F(256'hFFFF00FFFFFEFF00FF000000FF0000FFFF0000FFFFFFFF0000FF0000FF0000FF),
    .INIT_60(256'hFF000000FF000001FFFFFFFFFFFF000000FFFFFFFF0000FF000000FF00FFFE00),
    .INIT_61(256'h0000FFFFFF0000FF00FF0000FF00FF01FF00FF000000FFFFFF000000FF00FFFF),
    .INIT_62(256'hFF0000FFFF0000FF00000000FF01FF0000000000FFFF0000FFFFFFFF00FF00FF),
    .INIT_63(256'hFF00FFFF00FFFFFF00FF0000FFFF000000FF00FFFF00FF000000FF0000FF0000),
    .INIT_64(256'hFFFFFFFFFFFF00FFFFFF00000000FFFF000000FFFFFF00FF000000FFFF000000),
    .INIT_65(256'hFF00FFFFFFFFFFFF00FF00000001FF00FFFFFFFFFFFFFFFF00FFFFFFFEFF00FF),
    .INIT_66(256'h000000000000FFFFFF00FF0000FFFFFFFF0000FF00FF00FF00FFFF00FF0000FF),
    .INIT_67(256'hFFFF00FF0000000000FF0000FF00FFFF0000FFFF00FFFF00FFFFFFFFFF00FFFF),
    .INIT_68(256'hFF0100FF00000000FFFFFF00FFFF0000FF00FFFF00000000FF00FFFEFF00FFFF),
    .INIT_69(256'h0000FFFF0000FF00FF00FF0000FFFFFFFF00FF00FF00000000FF00FF00FF00FF),
    .INIT_6A(256'h00000000000000000000000000000000FF00FFFF00FF00000000FF00FF000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina[7:0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,dina[8]}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1_n_0 ),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT3 #(
    .INIT(8'h80)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1 
       (.I0(addra[13]),
        .I1(addra[12]),
        .I2(ena),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1_n_0 ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_top" *) 
module weight1_bram_4_blk_mem_gen_top
   (douta,
    addra,
    ena,
    clka,
    dina,
    wea);
  output [15:0]douta;
  input [13:0]addra;
  input ena;
  input clka;
  input [15:0]dina;
  input [0:0]wea;

  wire [13:0]addra;
  wire clka;
  wire [15:0]dina;
  wire [15:0]douta;
  wire ena;
  wire [0:0]wea;

  weight1_bram_4_blk_mem_gen_generic_cstr \valid.cstr 
       (.addra(addra),
        .clka(clka),
        .dina(dina),
        .douta(douta),
        .ena(ena),
        .wea(wea));
endmodule

(* C_ADDRA_WIDTH = "14" *) (* C_ADDRB_WIDTH = "14" *) (* C_ALGORITHM = "1" *) 
(* C_AXI_ID_WIDTH = "4" *) (* C_AXI_SLAVE_TYPE = "0" *) (* C_AXI_TYPE = "1" *) 
(* C_BYTE_SIZE = "9" *) (* C_COMMON_CLK = "0" *) (* C_COUNT_18K_BRAM = "1" *) 
(* C_COUNT_36K_BRAM = "7" *) (* C_CTRL_ECC_ALGO = "NONE" *) (* C_DEFAULT_DATA = "0" *) 
(* C_DISABLE_WARN_BHV_COLL = "0" *) (* C_DISABLE_WARN_BHV_RANGE = "0" *) (* C_ELABORATION_DIR = "./" *) 
(* C_ENABLE_32BIT_ADDRESS = "0" *) (* C_EN_DEEPSLEEP_PIN = "0" *) (* C_EN_ECC_PIPE = "0" *) 
(* C_EN_RDADDRA_CHG = "0" *) (* C_EN_RDADDRB_CHG = "0" *) (* C_EN_SAFETY_CKT = "0" *) 
(* C_EN_SHUTDOWN_PIN = "0" *) (* C_EN_SLEEP_PIN = "0" *) (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     11.074251 mW" *) 
(* C_FAMILY = "artix7" *) (* C_HAS_AXI_ID = "0" *) (* C_HAS_ENA = "1" *) 
(* C_HAS_ENB = "0" *) (* C_HAS_INJECTERR = "0" *) (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
(* C_HAS_MEM_OUTPUT_REGS_B = "0" *) (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
(* C_HAS_REGCEA = "0" *) (* C_HAS_REGCEB = "0" *) (* C_HAS_RSTA = "0" *) 
(* C_HAS_RSTB = "0" *) (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
(* C_INITA_VAL = "0" *) (* C_INITB_VAL = "0" *) (* C_INIT_FILE = "weight1_bram_4.mem" *) 
(* C_INIT_FILE_NAME = "weight1_bram_4.mif" *) (* C_INTERFACE_TYPE = "0" *) (* C_LOAD_INIT_FILE = "1" *) 
(* C_MEM_TYPE = "0" *) (* C_MUX_PIPELINE_STAGES = "0" *) (* C_PRIM_TYPE = "1" *) 
(* C_READ_DEPTH_A = "15700" *) (* C_READ_DEPTH_B = "15700" *) (* C_READ_LATENCY_A = "1" *) 
(* C_READ_LATENCY_B = "1" *) (* C_READ_WIDTH_A = "16" *) (* C_READ_WIDTH_B = "16" *) 
(* C_RSTRAM_A = "0" *) (* C_RSTRAM_B = "0" *) (* C_RST_PRIORITY_A = "CE" *) 
(* C_RST_PRIORITY_B = "CE" *) (* C_SIM_COLLISION_CHECK = "ALL" *) (* C_USE_BRAM_BLOCK = "0" *) 
(* C_USE_BYTE_WEA = "0" *) (* C_USE_BYTE_WEB = "0" *) (* C_USE_DEFAULT_DATA = "0" *) 
(* C_USE_ECC = "0" *) (* C_USE_SOFTECC = "0" *) (* C_USE_URAM = "0" *) 
(* C_WEA_WIDTH = "1" *) (* C_WEB_WIDTH = "1" *) (* C_WRITE_DEPTH_A = "15700" *) 
(* C_WRITE_DEPTH_B = "15700" *) (* C_WRITE_MODE_A = "WRITE_FIRST" *) (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
(* C_WRITE_WIDTH_A = "16" *) (* C_WRITE_WIDTH_B = "16" *) (* C_XDEVICEFAMILY = "artix7" *) 
(* ORIG_REF_NAME = "blk_mem_gen_v8_4_4" *) (* downgradeipidentifiedwarnings = "yes" *) 
module weight1_bram_4_blk_mem_gen_v8_4_4
   (clka,
    rsta,
    ena,
    regcea,
    wea,
    addra,
    dina,
    douta,
    clkb,
    rstb,
    enb,
    regceb,
    web,
    addrb,
    dinb,
    doutb,
    injectsbiterr,
    injectdbiterr,
    eccpipece,
    sbiterr,
    dbiterr,
    rdaddrecc,
    sleep,
    deepsleep,
    shutdown,
    rsta_busy,
    rstb_busy,
    s_aclk,
    s_aresetn,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready,
    s_axi_injectsbiterr,
    s_axi_injectdbiterr,
    s_axi_sbiterr,
    s_axi_dbiterr,
    s_axi_rdaddrecc);
  input clka;
  input rsta;
  input ena;
  input regcea;
  input [0:0]wea;
  input [13:0]addra;
  input [15:0]dina;
  output [15:0]douta;
  input clkb;
  input rstb;
  input enb;
  input regceb;
  input [0:0]web;
  input [13:0]addrb;
  input [15:0]dinb;
  output [15:0]doutb;
  input injectsbiterr;
  input injectdbiterr;
  input eccpipece;
  output sbiterr;
  output dbiterr;
  output [13:0]rdaddrecc;
  input sleep;
  input deepsleep;
  input shutdown;
  output rsta_busy;
  output rstb_busy;
  input s_aclk;
  input s_aresetn;
  input [3:0]s_axi_awid;
  input [31:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input s_axi_awvalid;
  output s_axi_awready;
  input [15:0]s_axi_wdata;
  input [0:0]s_axi_wstrb;
  input s_axi_wlast;
  input s_axi_wvalid;
  output s_axi_wready;
  output [3:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [3:0]s_axi_arid;
  input [31:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input s_axi_arvalid;
  output s_axi_arready;
  output [3:0]s_axi_rid;
  output [15:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output s_axi_rvalid;
  input s_axi_rready;
  input s_axi_injectsbiterr;
  input s_axi_injectdbiterr;
  output s_axi_sbiterr;
  output s_axi_dbiterr;
  output [13:0]s_axi_rdaddrecc;

  wire \<const0> ;
  wire [13:0]addra;
  wire clka;
  wire [15:0]dina;
  wire [15:0]douta;
  wire ena;
  wire [0:0]wea;

  assign dbiterr = \<const0> ;
  assign doutb[15] = \<const0> ;
  assign doutb[14] = \<const0> ;
  assign doutb[13] = \<const0> ;
  assign doutb[12] = \<const0> ;
  assign doutb[11] = \<const0> ;
  assign doutb[10] = \<const0> ;
  assign doutb[9] = \<const0> ;
  assign doutb[8] = \<const0> ;
  assign doutb[7] = \<const0> ;
  assign doutb[6] = \<const0> ;
  assign doutb[5] = \<const0> ;
  assign doutb[4] = \<const0> ;
  assign doutb[3] = \<const0> ;
  assign doutb[2] = \<const0> ;
  assign doutb[1] = \<const0> ;
  assign doutb[0] = \<const0> ;
  assign rdaddrecc[13] = \<const0> ;
  assign rdaddrecc[12] = \<const0> ;
  assign rdaddrecc[11] = \<const0> ;
  assign rdaddrecc[10] = \<const0> ;
  assign rdaddrecc[9] = \<const0> ;
  assign rdaddrecc[8] = \<const0> ;
  assign rdaddrecc[7] = \<const0> ;
  assign rdaddrecc[6] = \<const0> ;
  assign rdaddrecc[5] = \<const0> ;
  assign rdaddrecc[4] = \<const0> ;
  assign rdaddrecc[3] = \<const0> ;
  assign rdaddrecc[2] = \<const0> ;
  assign rdaddrecc[1] = \<const0> ;
  assign rdaddrecc[0] = \<const0> ;
  assign rsta_busy = \<const0> ;
  assign rstb_busy = \<const0> ;
  assign s_axi_arready = \<const0> ;
  assign s_axi_awready = \<const0> ;
  assign s_axi_bid[3] = \<const0> ;
  assign s_axi_bid[2] = \<const0> ;
  assign s_axi_bid[1] = \<const0> ;
  assign s_axi_bid[0] = \<const0> ;
  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_bvalid = \<const0> ;
  assign s_axi_dbiterr = \<const0> ;
  assign s_axi_rdaddrecc[13] = \<const0> ;
  assign s_axi_rdaddrecc[12] = \<const0> ;
  assign s_axi_rdaddrecc[11] = \<const0> ;
  assign s_axi_rdaddrecc[10] = \<const0> ;
  assign s_axi_rdaddrecc[9] = \<const0> ;
  assign s_axi_rdaddrecc[8] = \<const0> ;
  assign s_axi_rdaddrecc[7] = \<const0> ;
  assign s_axi_rdaddrecc[6] = \<const0> ;
  assign s_axi_rdaddrecc[5] = \<const0> ;
  assign s_axi_rdaddrecc[4] = \<const0> ;
  assign s_axi_rdaddrecc[3] = \<const0> ;
  assign s_axi_rdaddrecc[2] = \<const0> ;
  assign s_axi_rdaddrecc[1] = \<const0> ;
  assign s_axi_rdaddrecc[0] = \<const0> ;
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
  assign s_axi_rid[3] = \<const0> ;
  assign s_axi_rid[2] = \<const0> ;
  assign s_axi_rid[1] = \<const0> ;
  assign s_axi_rid[0] = \<const0> ;
  assign s_axi_rlast = \<const0> ;
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  assign s_axi_rvalid = \<const0> ;
  assign s_axi_sbiterr = \<const0> ;
  assign s_axi_wready = \<const0> ;
  assign sbiterr = \<const0> ;
  GND GND
       (.G(\<const0> ));
  weight1_bram_4_blk_mem_gen_v8_4_4_synth inst_blk_mem_gen
       (.addra(addra),
        .clka(clka),
        .dina(dina),
        .douta(douta),
        .ena(ena),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_v8_4_4_synth" *) 
module weight1_bram_4_blk_mem_gen_v8_4_4_synth
   (douta,
    addra,
    ena,
    clka,
    dina,
    wea);
  output [15:0]douta;
  input [13:0]addra;
  input ena;
  input clka;
  input [15:0]dina;
  input [0:0]wea;

  wire [13:0]addra;
  wire clka;
  wire [15:0]dina;
  wire [15:0]douta;
  wire ena;
  wire [0:0]wea;

  weight1_bram_4_blk_mem_gen_top \gnbram.gnativebmg.native_blk_mem_gen 
       (.addra(addra),
        .clka(clka),
        .dina(dina),
        .douta(douta),
        .ena(ena),
        .wea(wea));
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
