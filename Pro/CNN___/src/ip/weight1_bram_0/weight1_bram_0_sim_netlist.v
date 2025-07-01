// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Mon May  5 00:32:44 2025
// Host        : DESKTOP-I8GGJRG running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               D:/CNN/OV5640_DDR3_HDMI_UDP_gray___/src/ip/weight1_bram_0/weight1_bram_0_sim_netlist.v
// Design      : weight1_bram_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tfgg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "weight1_bram_0,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module weight1_bram_0
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
  (* C_DEFAULT_DATA = "FEFE" *) 
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
  (* C_INIT_FILE = "weight1_bram_0.mem" *) 
  (* C_INIT_FILE_NAME = "weight1_bram_0.mif" *) 
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
  (* C_USE_DEFAULT_DATA = "1" *) 
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
  weight1_bram_0_blk_mem_gen_v8_4_4 U0
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
module weight1_bram_0_bindec
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
module weight1_bram_0_blk_mem_gen_generic_cstr
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

  weight1_bram_0_bindec \bindec_a.bindec_inst_a 
       (.addra(addra[13:12]),
        .ena(ena),
        .ena_array(ena_array));
  weight1_bram_0_blk_mem_gen_mux \has_mux_a.A 
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
  weight1_bram_0_blk_mem_gen_prim_width \ramloop[0].ram.r 
       (.addra(addra),
        .clka(clka),
        .dina(dina[0]),
        .douta(douta[0]),
        .ena(ena),
        .wea(wea));
  weight1_bram_0_blk_mem_gen_prim_width__parameterized0 \ramloop[1].ram.r 
       (.addra(addra),
        .clka(clka),
        .dina(dina[2:1]),
        .douta(douta[2:1]),
        .ena(ena),
        .wea(wea));
  weight1_bram_0_blk_mem_gen_prim_width__parameterized1 \ramloop[2].ram.r 
       (.addra(addra),
        .clka(clka),
        .dina(dina[4:3]),
        .douta(douta[4:3]),
        .ena(ena),
        .wea(wea));
  weight1_bram_0_blk_mem_gen_prim_width__parameterized2 \ramloop[3].ram.r 
       (.addra(addra),
        .clka(clka),
        .dina(dina[6:5]),
        .douta(douta[6:5]),
        .ena(ena),
        .wea(wea));
  weight1_bram_0_blk_mem_gen_prim_width__parameterized3 \ramloop[4].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[4].ram.r_n_0 ,\ramloop[4].ram.r_n_1 ,\ramloop[4].ram.r_n_2 ,\ramloop[4].ram.r_n_3 ,\ramloop[4].ram.r_n_4 ,\ramloop[4].ram.r_n_5 ,\ramloop[4].ram.r_n_6 ,\ramloop[4].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\ramloop[4].ram.r_n_8 ),
        .addra(addra[11:0]),
        .clka(clka),
        .dina(dina[15:7]),
        .ena_array(ena_array[0]),
        .wea(wea));
  weight1_bram_0_blk_mem_gen_prim_width__parameterized4 \ramloop[5].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[5].ram.r_n_0 ,\ramloop[5].ram.r_n_1 ,\ramloop[5].ram.r_n_2 ,\ramloop[5].ram.r_n_3 ,\ramloop[5].ram.r_n_4 ,\ramloop[5].ram.r_n_5 ,\ramloop[5].ram.r_n_6 ,\ramloop[5].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\ramloop[5].ram.r_n_8 ),
        .addra(addra[11:0]),
        .clka(clka),
        .dina(dina[15:7]),
        .ena_array(ena_array[1]),
        .wea(wea));
  weight1_bram_0_blk_mem_gen_prim_width__parameterized5 \ramloop[6].ram.r 
       (.DOADO({\ramloop[6].ram.r_n_0 ,\ramloop[6].ram.r_n_1 ,\ramloop[6].ram.r_n_2 ,\ramloop[6].ram.r_n_3 ,\ramloop[6].ram.r_n_4 ,\ramloop[6].ram.r_n_5 ,\ramloop[6].ram.r_n_6 ,\ramloop[6].ram.r_n_7 }),
        .DOPADOP(\ramloop[6].ram.r_n_8 ),
        .addra(addra[11:0]),
        .clka(clka),
        .dina(dina[15:7]),
        .ena_array(ena_array[2]),
        .wea(wea));
  weight1_bram_0_blk_mem_gen_prim_width__parameterized6 \ramloop[7].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[7].ram.r_n_0 ,\ramloop[7].ram.r_n_1 ,\ramloop[7].ram.r_n_2 ,\ramloop[7].ram.r_n_3 ,\ramloop[7].ram.r_n_4 ,\ramloop[7].ram.r_n_5 ,\ramloop[7].ram.r_n_6 ,\ramloop[7].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\ramloop[7].ram.r_n_8 ),
        .addra(addra),
        .clka(clka),
        .dina(dina[15:7]),
        .ena(ena),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_mux" *) 
module weight1_bram_0_blk_mem_gen_mux
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
module weight1_bram_0_blk_mem_gen_prim_width
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

  weight1_bram_0_blk_mem_gen_prim_wrapper_init \prim_init.ram 
       (.addra(addra),
        .clka(clka),
        .dina(dina),
        .douta(douta),
        .ena(ena),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module weight1_bram_0_blk_mem_gen_prim_width__parameterized0
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

  weight1_bram_0_blk_mem_gen_prim_wrapper_init__parameterized0 \prim_init.ram 
       (.addra(addra),
        .clka(clka),
        .dina(dina),
        .douta(douta),
        .ena(ena),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module weight1_bram_0_blk_mem_gen_prim_width__parameterized1
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

  weight1_bram_0_blk_mem_gen_prim_wrapper_init__parameterized1 \prim_init.ram 
       (.addra(addra),
        .clka(clka),
        .dina(dina),
        .douta(douta),
        .ena(ena),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module weight1_bram_0_blk_mem_gen_prim_width__parameterized2
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

  weight1_bram_0_blk_mem_gen_prim_wrapper_init__parameterized2 \prim_init.ram 
       (.addra(addra),
        .clka(clka),
        .dina(dina),
        .douta(douta),
        .ena(ena),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module weight1_bram_0_blk_mem_gen_prim_width__parameterized3
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

  weight1_bram_0_blk_mem_gen_prim_wrapper_init__parameterized3 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .addra(addra),
        .clka(clka),
        .dina(dina),
        .ena_array(ena_array),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module weight1_bram_0_blk_mem_gen_prim_width__parameterized4
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

  weight1_bram_0_blk_mem_gen_prim_wrapper_init__parameterized4 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .addra(addra),
        .clka(clka),
        .dina(dina),
        .ena_array(ena_array),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module weight1_bram_0_blk_mem_gen_prim_width__parameterized5
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

  weight1_bram_0_blk_mem_gen_prim_wrapper_init__parameterized5 \prim_init.ram 
       (.DOADO(DOADO),
        .DOPADOP(DOPADOP),
        .addra(addra),
        .clka(clka),
        .dina(dina),
        .ena_array(ena_array),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module weight1_bram_0_blk_mem_gen_prim_width__parameterized6
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

  weight1_bram_0_blk_mem_gen_prim_wrapper_init__parameterized6 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .addra(addra),
        .clka(clka),
        .dina(dina),
        .ena(ena),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module weight1_bram_0_blk_mem_gen_prim_wrapper_init
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
    .INIT_00(256'hD002AA91B4EDBF2B402F4B63E718EC995A96A8AA38156B307CD11F54EA25AE11),
    .INIT_01(256'h54ECAD68A62D857617D18E75996CEF4827754AEB306A9F9847F505D45FB38892),
    .INIT_02(256'h23D0F50F61866EC128B3ADBC52C4F588695F51F1C36BC3C7926764A9F7CEA0C6),
    .INIT_03(256'hB0CA2A7A80639BBFC7B3416878749A562DC2027245DB06A7FFBD9E2716BFF7E9),
    .INIT_04(256'h8328CCAAAC972C7255976BF0F580E82D8A812C6F66732D3014A02461E24C0A53),
    .INIT_05(256'h5D8EB3436E491239AE7233236C7382A82EAF5319B44AF2F960F34D2F5B998250),
    .INIT_06(256'h184077BE8FB5AE4CA0827FCEADF5D8F44AD701688B29DBF611FF4255FB28F6C8),
    .INIT_07(256'h0FD4C51BFEDECE42832E46F9998ADE34C6DB6BA6287A9C2C537FDACEBE5818F1),
    .INIT_08(256'h2935455D463B164B4E96931579D744AF03AE391A97C1BBDD948CE9B9679EA49F),
    .INIT_09(256'h5952DDB9A166F2D8857C3116E9147AD7E5569939D95D30272AA6691BAE7AF00B),
    .INIT_0A(256'h5162220623C194EFE40D254CB769F8AC849FF2D82AE6EEFBEAB95BB96FA2903B),
    .INIT_0B(256'hA9EE0D9929663A28D0EB2EE21EB16612FE4CB58F455B01FC825E5DEECA973CAE),
    .INIT_0C(256'hBDDD5CF24BD03F156D23BF07DD1B14FA2F957D336B117BA1389894F72F46DA44),
    .INIT_0D(256'hB777FDCDC98EB3906765CC67C108971A2F0326EDA0CF21B2A0892FEC3B5D9085),
    .INIT_0E(256'h8B204318E032B9B052B858A89F16DD85D72E2F368BB4294FE501C24E72C11CAB),
    .INIT_0F(256'h7425C162F190331BA96840B0B22C083E342CEF1701199A2D0CEFB397C56DBA48),
    .INIT_10(256'h66415D3830281879FD9CB095B31CD6EECDB49AA04DD583992A45D7FB4843B4FA),
    .INIT_11(256'h6256171BA50A472225973489FD9BE2FF559BD8E390E038F0767D73B5E6539244),
    .INIT_12(256'hBF02BD9EB367C66F1D46A1CDC33F672D00FD2CBE6E464EE96A1C257CDEB87548),
    .INIT_13(256'hFCF7C6B60B6CE235D60B6C19B897EFEFF3ED635BA42285494A75ABA44116FAA2),
    .INIT_14(256'hE579D890C3299F25901BD2A59BF67D99228BE61D6BB21AAE0335BF1A286EBF0A),
    .INIT_15(256'h23CEB5C3D039D90503A8A5253C0AEE3ACFF518E5A32D1F00EB90886CBD0B256F),
    .INIT_16(256'h7D5BC1FC3A64C473B72023E1500280C7DD29B09229244AD1EA39B28D17D6B2E7),
    .INIT_17(256'h86F49179F643490CB73EBF5C1F88C494288C5F2BB7BAD6E17E5C165A1ED60CC9),
    .INIT_18(256'hBAC7FF0931F5A7723837FF518D1D4295FAD266F9185DDAEEDA18420A78EA6FCC),
    .INIT_19(256'h0ADA12B8E5309BCD8D230A7C786A4539FD2033B8684B62682325ABD3FF9C167F),
    .INIT_1A(256'hB51AB64D667631277D5CCA5131FBC7F765C883F780CE0A8CB8790BEADF1CC613),
    .INIT_1B(256'h275DEB699C65DFA9285F365C40028FBA663BE934F819F7BEE5302A2009E12D64),
    .INIT_1C(256'h184FEB3ECED7E103BAD4702C601EBA60610B50AA223F75C098F361E783E0BC5C),
    .INIT_1D(256'h1C335B09B38F16F2DFF96847C4EA365CAFD0AD78149A986A2E4D4A66B7B8FF1C),
    .INIT_1E(256'h59AD1A89239B53298FF47283042F54404399E920F016FC6CD02FDA96936AC494),
    .INIT_1F(256'hF25105C05E98258A83E75E6F5B0312D2485A47DDC31DAC2FEAC4ECE9775F1DC9),
    .INIT_20(256'hF46CBA7A32D54DDB009F74EB19271F40C642B4043CCBF973D4BCA397A823D7F0),
    .INIT_21(256'h951103AB2286A5F99F202D6370E8D231E2818B3178B3AA07E9AE1B908FC0FAE5),
    .INIT_22(256'hA2B04AF7717CFBFED29B4BCC69A96C72804DB0F257F915BC124A806B30437285),
    .INIT_23(256'h7E1F36C9E43F44A954F5CC33C46665A4A71DDE1362281AE869813DB5C232ADC4),
    .INIT_24(256'h8DF7A916CC57036522B79D27AC0114034881D7FA7B319482C9F9F8A91C2233C8),
    .INIT_25(256'h40CBAD522C9E93891574DF32647069CA6438254363D624929FCF6B17C07C1AA0),
    .INIT_26(256'hF75DE1F382CFDA01AF5182BF610C86B20B39337A8BB91565CA3576785553C034),
    .INIT_27(256'hA01643480A789645D3382D09E23D7A24816E5FB31D8DB8AC18F477182EF2379C),
    .INIT_28(256'h909992DB6B31E08E89EB3DC1F49B6BE72D8342C66A41D5E27BAD548409244DCF),
    .INIT_29(256'h613AC4BBC6AE744863210577CB651AF1EDF55A11C5F4BB8456AFF20FE5B33C28),
    .INIT_2A(256'hB16646BB4C5E885200DF95F7A68AE2B56DD05E587890EA730E3CB7D643727B0C),
    .INIT_2B(256'h68EAC2E5CDE73D057C86CCD600663AB153651A7D6E961A6C112E6C421A44116C),
    .INIT_2C(256'hD07138B9090060AAAF38C1F228960C8BAC7E997C3A1D669802872DCDD7EEFA3A),
    .INIT_2D(256'h94B93C28439B6A503A3949F843788D7A01332F34B0A350DCF3CD8F450F73CE93),
    .INIT_2E(256'h0AD6C09464F76C902E6AF31DB827CADC9B862F6BFD360F553CD316CD75B483B3),
    .INIT_2F(256'h5984E738B28153A4684C5C1F27BBD933EF720A150B055535A7B3873DEBB831FE),
    .INIT_30(256'hFA2D19726EEFA266F0823BF322F7F12FA09735C48BD34E8739425B7C1920BF85),
    .INIT_31(256'h5D58F52A737E46CD265E5D0C12C015FFA10029EB88665D33536D53EB6B5BD596),
    .INIT_32(256'h08889AC92FBECBFD4DE9C8797BB54D74D4A9F3D5F3C93A02EB4595DD6A03D221),
    .INIT_33(256'h7E60FA2BC749B158B91E5AB30F96F1A19E4E9EE250F0652894113662A5D88905),
    .INIT_34(256'h148904B693B43F7874920A688A3BB59DC27C8FDAAE5301A635140F6289D13B13),
    .INIT_35(256'h8B20BAF9379BADC35499E769A4F1D2078ABE384C347E046F9A6BF55DDE1063DA),
    .INIT_36(256'h9512A2A0FD9BD8B43AFC89273F4F1DBA4819DD6007C7A60E39C1F5929C64D4F1),
    .INIT_37(256'h6B07F82FA49CE829A459412B23370F0DD3A8B8F44D7F7FB610BE2E88F0C31875),
    .INIT_38(256'h5FD16D01F11BF401A24069363846675AD899F70DB7F743F2B42474DC46688BC8),
    .INIT_39(256'hE8A81DC0FC4D695284777C5D7D74EAE719EDF6581DB97200E2756BF344839534),
    .INIT_3A(256'h256B1BCFA90DB0FF00FAC2DE4DA4395608396FB7560CAA147CB97548203E338D),
    .INIT_3B(256'h3E69FA9A0AACFA30B664E79705BFAB707AE66FDFE62D6C4F0D11CF5EF6AA25C6),
    .INIT_3C(256'h27F42AD481113189A7D28112411AEFF082C28B5BBC9883782DA4FA30E8D504A7),
    .INIT_3D(256'h0000000000000000000000000000000000000000000ACE518B7061E6197ACB7D),
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
module weight1_bram_0_blk_mem_gen_prim_wrapper_init__parameterized0
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
    .INIT_00(256'hF063EED3DD03C44DBCABDDEC0A1E60736B3500DFBB39A425F00E2DBFC8D5FB83),
    .INIT_01(256'hA6E6D8FF929944209762CE72D3C83A92C73EC3CB373662C14E806C766E9B3A87),
    .INIT_02(256'hA38B87881DE415DF11E7951125D9890C75B94D5D85AA26B5D74749D5EE6DF74D),
    .INIT_03(256'h4AA651731DBECF2B92BB5A5381D7970AAC2A8DFB5A5908AB089B10B3A94A6C9E),
    .INIT_04(256'h8E0973EA137E3638C09A23659D053DA812FDA740AC04C3840D66F39DAB06D408),
    .INIT_05(256'h4282A48AD3448D44F418D407AC63179903ECF65DFA4477607A36175A60950818),
    .INIT_06(256'h153787970DA51BD452738CA97EC9EF5E088DCDCD1600E06E8A883AD1AD0E99FA),
    .INIT_07(256'hE5EC1DBF62AFA6C5D5F541A654675A37A7F7A591561055E30AAA2861B6FA05C7),
    .INIT_08(256'hB94C3B4F57E7BB2C5B8B29E8E3DC56C8F6F051A89C05D44AFCBC4E6FBEBCEF03),
    .INIT_09(256'h4301D69FDAB2229A3DA6DB0983569611A7846B3B5A8E489CEEE86F80010543CB),
    .INIT_0A(256'h1BD9566924E6451FDB384E11553CFED8DE1C76D74FCA6842E45C2F872174814D),
    .INIT_0B(256'hDAC76FC3A404449B3136E616EC7592E778D59B164F4FBF4D881F2E381516997A),
    .INIT_0C(256'hEFA047149947E0D01FBEF8DA71CC6644CD2C6DCC4402579C975874DEF7AA4502),
    .INIT_0D(256'hF05FBA8A8302F14DDADBC4DF13A0DC2DC588D0901D6A6E9B05343AF162AA4FF7),
    .INIT_0E(256'h54646A9FC32ED09EE22A054EDC826D8A75723AC28197295D9A95AD22095132B3),
    .INIT_0F(256'hB5F4B13110A322980149BC0D4FA6E9A3484A2AFEC26B4BFA05D47F8B78AE6DDF),
    .INIT_10(256'hAF930D6EBF53B2CEF6ABA45D0FBBB88B3241CEA8650E557B5687F9B5850B4A25),
    .INIT_11(256'h5A021FB6C23E15B17EF4AB30A86A7967A404C3971625A63A4FAE050C889FBDF1),
    .INIT_12(256'hB5A6B3BBB81B718875EE21AA1402656128F6232CDC0941C749502E9F318AD79F),
    .INIT_13(256'h7E085E167296DD7DD61B03E2ACC8526BC5C0F16F14889FDA53BB5404E37367CA),
    .INIT_14(256'h509275CF3EB01D909521D91B3839EC7F9B1B22750C47A0905F677C4D1A2D8859),
    .INIT_15(256'h5E13C6B0865DB3685BDE51BB1269D1B02DD6472BFD26C72864105B6835DBB9CB),
    .INIT_16(256'h712E687E831046FA4AE90907B2914AB14A544922CAB9A87D7F94F55A7098D818),
    .INIT_17(256'h593ADE4869BB49C939ADEF92EB4475E0571532D12B6FFEE79630845FEFBC439B),
    .INIT_18(256'hFA09A477899FC9B862905855BC5309AC78946C5B8DF3D3F2D536DAAB3127B670),
    .INIT_19(256'hC565F4516BADAD350F692B3FBEFDC28AA0A67423091002A9889507B4DCEB513B),
    .INIT_1A(256'h014453A2F7E1B26457D90684D41AC73B53B992637D123863451E2B90201169A1),
    .INIT_1B(256'h4353F40CF1FCA6260E8D18234420CB1DAB1F91189A9EA6F77B825E2049E6F9D0),
    .INIT_1C(256'hE3D3A1C9FBC2BB3567D6857ECFFC2FDC9786DF46D4669D12FFC7D94186FF0065),
    .INIT_1D(256'h66FDF5C4E0E532AA1240039C5BC494794AC4B24CFBDD5F561C356A8FE8AB4953),
    .INIT_1E(256'h7AC1B46468031DA67223BEAC6D9402A5CF87BCF45D9833A8D279F0D3ADA719CC),
    .INIT_1F(256'h37D0311C6DFCEF391E962713FE860EE90C284AA4F9D8A48997984D5EC1250392),
    .INIT_20(256'h166E072896F8CF5CA91F336D1A0F67698BB13141B44ABA3C1519412B91251315),
    .INIT_21(256'hB80C5086BAA1C17C9A11BF138BDD20490FAEA3DF7108C8AA2520B5A85C7D5E8D),
    .INIT_22(256'h493BF01459A3BA809C2DABCD92C4A3101B820EE20100BB4FF836F7D75FC56B76),
    .INIT_23(256'h30D780B103F6B802871E0539B50A5C38BA2DEB15118DD6FB9BA642A9AD3B82D2),
    .INIT_24(256'h84F2E5156C8599F843CB133C74DF018CB5162AD6BA35307118C961599A7AFE71),
    .INIT_25(256'hD203B467D889B058D30976000451BF2741D62D17EF6C98B83824D7DC67685532),
    .INIT_26(256'hD7A4C81655DDDD783EB753D74444809F4F332204FC3336ED444964D2C97BCFF4),
    .INIT_27(256'h82381EB6D7826EAC800ACA3161E381B47DA33FC09CFD081B6C108220E98B8299),
    .INIT_28(256'hFF92B87A82082611263483D9CE4B46F1C72E8421D37461A8D97A38AE83563880),
    .INIT_29(256'h02903E6DD061ABA792B2907C9D1FB421B8065C2184D79AB1C7FD725930574BED),
    .INIT_2A(256'hFBC103E6D1A422A03F6FC3DD75F8345B5C94CF8290F3596CCD9F55523FC7D9A1),
    .INIT_2B(256'h2222635B0E75A922DAACC2FB36F7583301D2BDEF305B35FAC23177BACE3B198E),
    .INIT_2C(256'h8BE8420EA0977725C550C5FF1BC42F29BB027DD89684F79FE9FDD8FB9584016B),
    .INIT_2D(256'h785E5D7F18A7427A5EF721996969811AAC271454C6E56BEC34861842CA82EBE1),
    .INIT_2E(256'hF7BEB2767B57CEBE76E3DA0E0CFF55AC8DA671A89DFE78C7ADAC01FA485F6B6D),
    .INIT_2F(256'hFE42AB69E8A4F829155C1E43AFA0E6B50E1584917F54744B82A53FC0B41433A7),
    .INIT_30(256'h633182847E228AC10673AE8F8DCC92AB4AF238D795A381F5448CA5B1BF1FCC17),
    .INIT_31(256'h71D3D857C5098617250F0BC71CAA085D1A1563ADC36F01270090F8E8E4816E3D),
    .INIT_32(256'h7301EC4FFDE78B9BCFBD0808EF01CE1F379330A25B99621A515508C51BAFF747),
    .INIT_33(256'hEE67E024AA7009D692E84F41CC8090A5DBA10AEF433823FE408532A82288096C),
    .INIT_34(256'h432E7B4559D5267609EADC9245B178DF260B1C7C283113215DAD99C44EEB45A3),
    .INIT_35(256'hF5A9D9A46BA4EED52FA4327E15FC6070F8FA494FAF375A310AB5723675AFC6AC),
    .INIT_36(256'h0DAFA491F669C44F74DBF06252D9560E71F587B2FE4FF212325F17E52971FC62),
    .INIT_37(256'h099A0AB8496159027F2F2EABA4A2C9EFFD1DBAD5F5EE62E29250AF8573BB1EA7),
    .INIT_38(256'hB94D2878DE5CC5718100B7191909BBE01AFD7584C2D1F224BD6654783324295D),
    .INIT_39(256'hFAFC502C4273E2BC17706C7FC3C0054C0C1A6D983F7A4A6DE44F2782E0B906D4),
    .INIT_3A(256'hBD53C9268B7FE6629671B20509F7DC307A91AB47595B2CB166CE986211F19E56),
    .INIT_3B(256'hC5060E657E944CCA5EF9CD50F7968A5850AA959ADDE9BCC7FA875E9894AD5ACD),
    .INIT_3C(256'h315DF60E6375F9D7F6F2BE559A4E093540CB39CEE94BBEE4421618503DD2A968),
    .INIT_3D(256'hA21CDE7636B6AA03B0A3A020477CA80B078812F5D1EE8BC2F83A21F88BE0CB6F),
    .INIT_3E(256'h658D5D3B778545E08F81D432BA62FC906D99D0A55411EF8A4560AC7FB822D0F2),
    .INIT_3F(256'h95E538B945F6BDAA2EC3FA908D44C5FA9E24E9EFDA7300A487680EC99F2A1281),
    .INIT_40(256'h42D6D5D10139E05A57344BD535A0E02C297A1BC608C0FFAC01B8DB071A5EF8E3),
    .INIT_41(256'hB38A23415F48FC81EC471AD5B44D17A72E8C58A9C70ABCC49CAE53912BCB7737),
    .INIT_42(256'h40F08BA8EFA4B78D1A22E03C12500CD40D30B69644F077663103B4454404B94C),
    .INIT_43(256'hCAF7CEF35750B7AEE86165CC5A919EFE9ACF16FBED9C83BF5DC7A4A3EAD98D64),
    .INIT_44(256'h6FDB7CEB5CC43D0477CB88D2A5CE583B4E5ECD647EEF0183B410FD179F2A2888),
    .INIT_45(256'hA8BDFF9A1EBB86C67AE0E478C18FF3784227C1A73A37E8777A06E8F55C3F2E24),
    .INIT_46(256'hB0089D09A5B3F0CD3A9223599F4690EDEC49B63764E5F0630A13D14D9FA85323),
    .INIT_47(256'h0AB72712A9DF38C1576447E3F584AEDCB854C1A234237D5A2419EF0F34F0B9D0),
    .INIT_48(256'h92B8FFDD224940241510AF6115D4267D881F20B17C66E7BE1E68EB21C0ABDDDA),
    .INIT_49(256'h8D9888656E79B43FBEED9C1BF30EBC81EBF81A5279D23E7B36D942E0EB2E9533),
    .INIT_4A(256'hBFE4C9C871E413A16636F7461B2A6A5ED64648EC9D41630C19BFCD79133CA7F4),
    .INIT_4B(256'h0EF63ECDEDBD843F7183785FC7C5453D4AE5EEAB368568739FFC1FECA69EE39D),
    .INIT_4C(256'h2278104B576DFD65C8D0FBDB42B87210311192E716D58D9AC5F6A90AC3E8D3DB),
    .INIT_4D(256'h0C9C2DF05EC8EC8F3A896DE888C72C1640006185F403E4CC00D308471B293EEF),
    .INIT_4E(256'hDD3EE799CADC2CD6005130F5E0066FA06B11A27B093236A284E2B50FDA9C9E8D),
    .INIT_4F(256'h73D0A06C44CD21B21CE77E4E0AEDF291CF211ED1D13434B9F63CBE91A805710A),
    .INIT_50(256'h3C8701083E036922F8B2CC012E388FD4E89D5F670CD3F0089FA0BD1AC767A648),
    .INIT_51(256'h0714D10E7720A2F42A4B31C5558EC4497E30EEA059E1D64A9684AD2E7C39893A),
    .INIT_52(256'h663B224D09F749CAE125CD9257342B593BECDCEFD31E7425918E9A66AC2D5B0A),
    .INIT_53(256'h185AFA09E2F6963CD3B84964BFEDC7D3E6B7C74367E17E1F58E12E0D8DF3472D),
    .INIT_54(256'h484DF6E6286531F6D1626E23A4DB1856BF8537087175427EDA06973EACCB515C),
    .INIT_55(256'hE35341A9C47C0946BB5663589D08F39FE0D50BAF47822C843FFCC04CE6B0BD2D),
    .INIT_56(256'hB105AF85E6B3D0F96327531D26C1D8B580D11D81C4A4B2D669979B3A04075D57),
    .INIT_57(256'h0A6525AD60B2656EB15523034F0F29DAE31FE07FEABC4D1866552E03A04F61EF),
    .INIT_58(256'h8F3EEECC610A56A5453BD4B3F0EBDF2FC2D9BDD1A247EF739A70C70AA8B8A095),
    .INIT_59(256'h13A6D80185A0A7CCF0E1A56BD1E793C76EE92036CA713C5861F572738A85E7B9),
    .INIT_5A(256'h696F13D6094B175C6255C657DE68211DFAB68AD32D142DF7E656F329D1A69E97),
    .INIT_5B(256'h8DDCC917727CB17B46EE038B67CD2A10A6F28EDE5E07ACE259BD2DE35D41537F),
    .INIT_5C(256'h8277D8FE33C3B787C79AF2645774944C43C7BFD2BADB7B241B630258D8D2E4B4),
    .INIT_5D(256'h40C37D4898F746322CA7881D6A9CCE12B2BA3A3B0E7BA4D731DF2DE6D1A25B79),
    .INIT_5E(256'h5257782115C1B948F8293CAF230C96643E11FF78A580EA79F920A4E375F1A4DD),
    .INIT_5F(256'h6A3F413B9C28712A7874C7DC7D13410951741528C3912DF97D6B1B48BC209496),
    .INIT_60(256'hD93DEB2B3D1411294163E30965C91F57839C972A04435BA44E8845C25841BD7C),
    .INIT_61(256'h3B7337464B507ABDB732D8005D823D421173260BBCF6889DC0C45EAF282C8D9A),
    .INIT_62(256'h752AB230902C5DEBF8163B15A1DE98F4C5015978F59EB480BC866F9B35D9D55C),
    .INIT_63(256'h4F7076A59A7540E1DBFA453FAD1DD1A1259C2A36FADF5008C88171E1782A05AE),
    .INIT_64(256'hC3B9906A007A3F2A91F6D967B2D67C824B85CF52BC9ED0521F5C5CF39C99F265),
    .INIT_65(256'h51B9A9749C38D11BAF6F1BE547E3AD6AAC6DAA43CB77B6C1E35E547C6E2CCC6D),
    .INIT_66(256'h0102C6E904C93C904FFDB31B3B6BD08B03F7CF91ADB342A3C15DAAE53FACC37E),
    .INIT_67(256'h7316C856CDDC9680DC2C86C389965AF5BEF72DDC1A0D776AA395B2C6070FB932),
    .INIT_68(256'hEB32AC4296CD55D3B92A15305A6DB80EB35BE3DCB6E1FCD649ACB3552290227B),
    .INIT_69(256'h260C7BA35E8FEFAEDAD0421AA7C431F7F49CD001FA166BEB1D5F914EBC80D8D0),
    .INIT_6A(256'hD73F737E724F0427ED449B32B13F3C6A4845ED1F28292E140BB3800679328CD7),
    .INIT_6B(256'h6664DE9381F685D1912FE0F4F411B2A05AB4FCD60257AD8BDB45EB894BECF719),
    .INIT_6C(256'hCC962BD9ED98F2BE3035D549AA2F71D1DFABBCD81ACD2EC35B7F98C4D312362B),
    .INIT_6D(256'h7F21626D10319A9F4393C26723E97978009CB1EC81BEDA3BBFEA2B5D13B6E188),
    .INIT_6E(256'h7ECA8029E9C6B2538100FB76298355852DDB954AFBF90EC8D6AAA82559E158DB),
    .INIT_6F(256'h05444DAD3CCE9228925A581A2FF4C164EE33B8982EB2471D98EB3F48D9859BDF),
    .INIT_70(256'h27C3B275C45C75514616422E858152E5CE7B75E7F27F1B72262DFE2ECE2DCA22),
    .INIT_71(256'hC27F2830470AFC7CE4D0582DB1517B0DCC9A5A6A0812ABC75DBB91999057542D),
    .INIT_72(256'h225BE925C60D2DB0B89D051E70AE3E6766A8A3DF8CF3B309A52919E9C239F03F),
    .INIT_73(256'hF4702E4655E6643C6CB59B890E698F6891ED826AB1BE24E5242A3CB19E4D296E),
    .INIT_74(256'h4D6463CC6C80CFF8E9E3DD36EB654C71B0E36BE46927774084FE7C73182720DB),
    .INIT_75(256'h16341AD56926BD67338107A3A53447EA5388D567E8A71C73CCD673CD01D5CF18),
    .INIT_76(256'hAFA48F95A4DA70CC47A35295A7C64378F699BD0713331C9BE849E3FE2D7F463B),
    .INIT_77(256'hA112E7166A86368C03BDD2AB902D36D01196F924CA74850B61973E686E3320DC),
    .INIT_78(256'h7126FB227EB0931D5ED91CC274EA295CC25204EE1B13F5AE857D03E30EFC5ACC),
    .INIT_79(256'hC8A56DB09AD47812FAF0C7B28E4C5DE192507BF76EC202EC0517A0FBB8D6EF56),
    .INIT_7A(256'h00000000000000000000001C8A417041A044A455562334FBA470A7E1992A6B7E),
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
module weight1_bram_0_blk_mem_gen_prim_wrapper_init__parameterized1
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
    .INIT_00(256'h350767B59AF81C745143E44A4F3189928D4BBCB76BBF847E1FDA9AB54BAAF962),
    .INIT_01(256'h2A2239C1E53D398EB250DDB0E089C96B8638B801AC5378794EB6E76BC6D19283),
    .INIT_02(256'hBE9E65DECB06877A04FF4E337DD012E9F25299FA86DF0001661E989396F81519),
    .INIT_03(256'hD5B16D57F272CC7638FF72B667225614B0C914D46DE034E630C542D2EC6B0B05),
    .INIT_04(256'hB4D19A0F421B2E36BEC200D45CE711F5784BA9DEF42BAD39DCF2C9A3F1D9678F),
    .INIT_05(256'h9DCAF0B1CAA704679C1A3520CDB8D9BA0D7A76DE176D1EAA6D853B73D36D6E60),
    .INIT_06(256'hFCC32205EDB17EC4962F52EB2A55DD66788B3126A07A19B6C7F6D86C54C22328),
    .INIT_07(256'h743C896572FC0F18B3985A709461A4285E1141262759D984F2079045CE8359B7),
    .INIT_08(256'hE2FFF83DD1B3E51CB70E7CEDD55ACD6ABA4EFD9EB29FF4DA6464C9BA6D9A2C5B),
    .INIT_09(256'hE7DD7F5B4E18EF692C21CA5CFEB735DB2CD76F3F6441A676B89E9DF8C108812C),
    .INIT_0A(256'hC2EA6CC2EA9A0BD5BFD1DE88AFCE22AB41FCBCBDB465D83B5EDF315ABECE16BC),
    .INIT_0B(256'h35F8F74094DEBC6C9A6F73F1EFC3FE8E76B94B3375B648BBFA69DE0CFF8223CD),
    .INIT_0C(256'hA8976A1E7BA3C651E737AFE402EFAB045CD5BE36D93648B36E88830AE56DB29C),
    .INIT_0D(256'h816F26F178540FB5B263DA7176F6C36DAE8717485451167B06817443A9723E88),
    .INIT_0E(256'hD57B90F6D2A50E5689DB757232DF76AC6EC5A02B2C566B4D328B1EDC9AB5448F),
    .INIT_0F(256'hAB13C3DF9DE67B6CFB254E9B7A102BD402DEBEC05477F237B3A1A61E67A91307),
    .INIT_10(256'h82FFBAA2C2C0B430CB25426C3FF5279501C47E42EB56DC2988A21E60067DE73A),
    .INIT_11(256'hBED95B89A241143F5F36453B3929DBFC3732463F4D616E040B1148D9065B7738),
    .INIT_12(256'h5E2BA9E10D560618F3B6FE88D9E31151D8B8BB906C00DC4FAA24FFF7F846BDE2),
    .INIT_13(256'hF12C26E4043A1B0E5812FE54ED2A79577BA9E51C0D44C55DF1EEB413F44EA828),
    .INIT_14(256'hBA1EF1BD6777CACE1D3B50094ADFBBE51413E3AA5550D65687E0055C24F9BC4C),
    .INIT_15(256'hF987F867C53B7756D184E5BE980F7CDDC288B0C7D1E4D6BA38F4A5EF1A941BC9),
    .INIT_16(256'hDEB0E81DA6EDF75C2E926B168A55137768AF2010FAE40015487E106AE4A4AC5C),
    .INIT_17(256'hA6240436C15F0B5880C8732876D5B759F136CE0B0943508F180CB8B298CEC7EE),
    .INIT_18(256'hC5C54BF498A51C642DBE6C24FE3BAEBC10B6F3D9D2B62FF2329321E72102CFDB),
    .INIT_19(256'h8868D088C8E24B513A6F94DF056C5428AC4AB837009058236646AAADB6C6E25D),
    .INIT_1A(256'h97348A61D59E34C36643D920D4E02F7550E374107751DCF5CBD995BE2CBD95C7),
    .INIT_1B(256'h3ACD7BD1259B1002FE6B5EF9B55F0C733177695B2612B2E09E894C7261849EF7),
    .INIT_1C(256'h0262525459A4A211D1BD1594A9FA1B4FA424AD1D5DD981985AD6D37C9142BE43),
    .INIT_1D(256'hF084EBC35F4AE3C7E055EAA9C6C3B8718F5DCEF6D78C1D90F7E5A29949841B20),
    .INIT_1E(256'h28FAE2CC97FA8441D74887A0CA50623DE9B03EDFF1B8F42F77F84F69342E5D51),
    .INIT_1F(256'hB5A6C23CADEDAD5A5A492AE46FAE9D0EDBE820D35FA9B3DB7279DD020B8ED105),
    .INIT_20(256'h7CDA81025F52545F2B7D84B35EF1E50867672E0B60C3BDE023DE5A7C68202B02),
    .INIT_21(256'hC0CCC777BC29540B8BBBD559DEE580BDEE82B2420CB624E2CD81D0E9313D53A1),
    .INIT_22(256'h906E7B16D9D97A0F2E509F75632BE1157C890ED09EF93F69E2A49D12A46990CA),
    .INIT_23(256'h0321C6C5CF8C783F6C52A4042119B0031DE94BCAC9D8D7A6F487B1B370150443),
    .INIT_24(256'hE46E6161379879E6F302DCCCD7E1F9472C09F4E5CE66E8A64C648839DB519D26),
    .INIT_25(256'h26568272C4683EEF05FB0F9E2B0E267497D7DF348003125F849EE9CE6AAE107B),
    .INIT_26(256'h23C243076BAA98AFFFBE22BC88FCD0F47142B0726489C078BF91E78BB796F4C0),
    .INIT_27(256'hFBC26900E4A78C60763C64B53C2C6302DE1511144831DDCCD9FB479792A82B5B),
    .INIT_28(256'hA2553D982757BD90D3294DA752B65D39FBB02B293BFAAF896EF292DC5B489560),
    .INIT_29(256'h0AA35138EF11E3CC8AD330DD6DDBA3662A8DF1EFF6E880AA9502158B3931A72C),
    .INIT_2A(256'h7859D2E4C4B8D130A27AB4C3C1F4A4A339B61595B4FE74343D0E7DD9C0E9EC6B),
    .INIT_2B(256'h70E7317676827720B59D3C1B6D505BA41081EBF6A5885DA34914E0CEF1F674C9),
    .INIT_2C(256'h757852AB0E930947505F04F4E023BA446E1CF6AF5D56806CD94D53FADFF3AA81),
    .INIT_2D(256'hC2AC1D4DF663BBB759B0BA97A5839FE247DDEBA6FEC1FC73705B16EB82A7A146),
    .INIT_2E(256'h165C0D04355D6D35664AE618B9DD986009AF2D9F264A3BD97F813C195C6CA4B8),
    .INIT_2F(256'h176627417047C57781CE6756BFE75AD5A4488A44D2EA77FA993F50C6E660734B),
    .INIT_30(256'hD89D3313AAA8CA72B1CA410B1892BE03E536AB79E6F28BC49841FC86D0211DEE),
    .INIT_31(256'h6D9079DEDEAC89254F0292E2F0277B18E458B5F621024D2C441F88764BE0805B),
    .INIT_32(256'hD54A853C77BA99AC5266B785DF3A299EB8B8C9F67C4DBD2E40371CB9466AFD22),
    .INIT_33(256'h4DAB8C9E27AED74E3030FE7A7EABD102DDB2E841914DCC3A7AF5CC44DEF34AC2),
    .INIT_34(256'hC279CD1931759BC2BB48BCB296958A3D986308E5D238D53B52C55BEFE3193C11),
    .INIT_35(256'h2D01E810A77299B5FD71E201B92C4332B51C73BCCF7E5A70A5287995BCA34934),
    .INIT_36(256'h5E1D00D14604D54EEED9BB240F8D51A23F983CF87C2A80B6084F3F4215DDE05B),
    .INIT_37(256'hB0D4AFF983464A2BD109E85FC68BF8F53DF12917CF4A7FA7EA140F415D948C5B),
    .INIT_38(256'hC0C6DAE493CD71F320C72BA5C6C371524432A0AE706A77FE8E3E3983208B830D),
    .INIT_39(256'hB56FF5046EC07BC4240C58E1C93B8FA2167DF95B4F085E2A525C455E47EE1EEF),
    .INIT_3A(256'hFC9801539FD054B2AEF220F92896BD909245DBE6BBA348B9C5035240F2AFEA14),
    .INIT_3B(256'hE534C23906D0EAD0A0FE268D2728A4520FADF288A64B2D6D7C176AD62532DADA),
    .INIT_3C(256'h0B5906FFA7361E5CC6FD3F986384F74F5E6CCAB114BA42D9E4C6D832973AED68),
    .INIT_3D(256'h1EFF2D621F9942B0A257939165A3A277FCE680EBF3A795AEA14EB2BBA2D7C508),
    .INIT_3E(256'h52DDB1A3212E48A5AD5657BFCE120034DC92635613C43B4E32701439A5C4F60B),
    .INIT_3F(256'hD725133ECF82C2474C48A0E76DEF59CEAF9C8D4CFD08AE7336414CE35B4D7BFF),
    .INIT_40(256'h721D3656EFB74CFF4F64AF48C771697713A4F2DF356B754E17839622ED6F82F6),
    .INIT_41(256'hA98703E9C9E58C0F65D88C9DE63F6488CA17E2653969BE55E8F7F17E970BF60F),
    .INIT_42(256'hE85587F4641CF4684BC03590ED5A5C81B1FC41155BAC2B4642E94811F9B6F56B),
    .INIT_43(256'h757E67D9B580E66C63090F928522812925A50A34691B5789F05BE84649454C25),
    .INIT_44(256'hA29DD0AF05CF9D8856004CFCA7164CAB8AC837C6ECD18C0369AA6003D1F24DF7),
    .INIT_45(256'h6BD717F64A07747D6AE337C2B2646EF92E6779BD67756B84190C5C57902D6939),
    .INIT_46(256'hCCAE6C77974EECF19F5B9B2B88F94CD9A368CEDC82F8033785BD147966866873),
    .INIT_47(256'hC35BC80025594EF2280530EC027FD21B3FE17675FA0E29093EA2B0F8CB3E5530),
    .INIT_48(256'hF25B95E4EA0618671E542548065294C3C74968F335E44BBD76586B06C9DBC3F7),
    .INIT_49(256'hA8CF034BC522BEA2D004D5C82D4484753A205605192F11B12A52107625F1EDEB),
    .INIT_4A(256'h205BD1548D4AFB327E61F0377059C1BD21A7FDD38C334572A5C84EBB7528C381),
    .INIT_4B(256'h592863AA21B0450826FD5C9C956AB7C2C8F831578186F1E036D255755180C00D),
    .INIT_4C(256'hAB62378E6AC173FA187103FB719695203D3AA48D8E63F9A70988E6AEE55E8279),
    .INIT_4D(256'h253B320005CD07EEE9910DD9C1FD8ACAFE6FEF32D56334343378985C1801988E),
    .INIT_4E(256'h75E9D9B809BAA4CB14A470E8AA45690B3A37BCCB68323368116917AAECA2ECED),
    .INIT_4F(256'hD6C2F63F85C1BB2ACEE37FE125D556E0B915A3C78B272AF9A93536B7522C744F),
    .INIT_50(256'h19F78F02CB291167D49201AC80624E5D1189EFE196369BA79A844DD179D91CE0),
    .INIT_51(256'h6645090E5379BBFE407CFA45848B32C80948C670A2A6AF9BDDC6C478DEEA97C6),
    .INIT_52(256'h6AE71F3FFC965CA81E87042166C8F04F6425CF54E142B72EA3966267F8A487EB),
    .INIT_53(256'hB092DD94E2723462AECD1C6DABF7055D242327235FE76A3500244851840C144A),
    .INIT_54(256'h3EEA42DF8EF1F7110E44A9CC2059F6D2CDB48AE7DA6CE070C8884465FCF10F72),
    .INIT_55(256'h90DF93202A2FE821794950168354F734C8EF6B4BA95D0150AF123A725779A559),
    .INIT_56(256'hF2C8C3ADFC045FC8E3A6DCADF55451D09AA0C397AF9DD238C262EAEE51E133DE),
    .INIT_57(256'h97F4F361D88E8B24457285A55262B76D0784B1AF6C931256B3B1ED01FAEFA62F),
    .INIT_58(256'h67800BC4E005F3EFDE70A1A2F4E04081AB7684C8625EAD5F50554FFB7F126CFA),
    .INIT_59(256'h9C9CA2866A20E93B8453A11052E7EFB45C013FEE2C39E83EB8A954E1CAB6AC8C),
    .INIT_5A(256'h78A28759069724AB122A44D9DA7845ACC8E0C28083E70A0DA0683A332BAC5192),
    .INIT_5B(256'h6486BF07611F1FEF00B73AA3DF287B03B3E94D8D5C1C6B3CA99E9267ADDCD434),
    .INIT_5C(256'h4BF4B7E03E758F1EFE185056DFF655D01EEEB84D7642F58CD85BB82A61E0F294),
    .INIT_5D(256'h0F0437A9B7701DA70E5B970CE0AD8A46B37F3ED4F69DD7F10A60AED637A73965),
    .INIT_5E(256'h8F9D02FF6FD348A5E85D2B024B9AD43379AEB62090CFEB8E8EE33B9623F73790),
    .INIT_5F(256'h14A8A87B90A7108F6953658526EACAE8BD5C61AB8EE9B88DAEAE80064620E7D0),
    .INIT_60(256'h9BBFDF86C8E6BA6DA4A0C72FF2BDC9A33E3EC9600A40F513D554AD0FAC5551BA),
    .INIT_61(256'h55288EE21A61696642B0EF20B0A0170EFDED77FF85E4387E845C32FEF6C02BF6),
    .INIT_62(256'hE30ED559535FB9055ABC2C21B69A3414391BA0C2A92E4A357FA531F11BC3F75A),
    .INIT_63(256'hCC1A20A86225FF814D35B06A4325D92473EE039E9EEFBC28B5B1D59BAAD8478A),
    .INIT_64(256'hB26DCC7CF71B247FC05E7D4C6F5FCF9FDF439A374084FE313430EB6AC02BDF7C),
    .INIT_65(256'h3B164C5651264D698035D7DE59D337CF5C470FA6AFD1EF569D6D57D12F3B2E24),
    .INIT_66(256'h4B5D6062F4DF803016D2DC354A13903D03591EF2C9F60F7CAC63301C57412576),
    .INIT_67(256'hB625146AF605A4709C79519F3FCCB6BF97AABFDE9E6B3F00E71913746C6EDD65),
    .INIT_68(256'hEE7BE628F28AB08404E404982ECCD44B607BA36750642254538A91AD6550D3DB),
    .INIT_69(256'hF2DE74B1C8A01F197DE8C3696D9BE99FFFD27B93C9680AF590D273162FA1D410),
    .INIT_6A(256'h89CA51125D0A45C51106590558C617C1DFEC5DE9E3DA5344CAE8AC16453D9A2C),
    .INIT_6B(256'h78C1927A40376301A3D4AFCC8A95CAB95F2F724DC0BE162E4EDE0EFE218B0573),
    .INIT_6C(256'h09E1CA301F258BBC4D67EF3E2E53EBC1FB8DA57876885D9635A23CFE7690C6EE),
    .INIT_6D(256'h237773B663640A8BF269411A07F70ACCCD2B5B4719A6756442FE16B0122A7419),
    .INIT_6E(256'h584567AC17C99C263069835F488B9079C2F29E83E30622047C694CA81AD52F5D),
    .INIT_6F(256'h1B0ED8FFBF589ED9B2AA2661EC37C14995E21ED4ACE5C854AA06454603DB2DA5),
    .INIT_70(256'h4C5DF62CAC74E94E73D5D447A2140B658CA6BBBAD2EF90B8B3EFC3A344D897AA),
    .INIT_71(256'hC3063B3EFFE804A551DA89780BDFC6DA221919BE132BEE3FFD3483D37C0447F8),
    .INIT_72(256'h5B94086198D779857301C00AD7960B42CFD7E2DA49BA7EEF5D5AEDFF9411CB76),
    .INIT_73(256'h6109B30CE5B5835C1ADFA98BB8678F44B2DCDAA375E27A3CD7F913EFB422050F),
    .INIT_74(256'h85B5A956A916D23689B58508D6DD39797EAFCE658280C61C0F299A387328D755),
    .INIT_75(256'h00927393F39C5D898764675FF458DF562ABF1421BE8F3634E42CAEE70CAC92E0),
    .INIT_76(256'hE0128EB268643D2456A16DD7EB4D2DBB56815D8AA4142BE17D8BA6EDEDF44AB2),
    .INIT_77(256'h83EA10471480D337F1850EB7176B865588BA9AE3BB7B7855081908854CBB1739),
    .INIT_78(256'hB15EE9C33DA2181F275D315421CD29934E25098B46CCB02688235A142D90779E),
    .INIT_79(256'h58765A83D48ECC3BF32BBF03B65C03EAE28BEA721F8A706D4BBB9ACE68C5999B),
    .INIT_7A(256'h00000000000000000000007E1429304DA765AF0AC73CB387D6E035030A8B813C),
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
module weight1_bram_0_blk_mem_gen_prim_wrapper_init__parameterized2
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
    .INIT_00(256'hAC7DA7155B6CCDFD844180F22F03B5F264EEEE2B23AC043943C533FFF846BD60),
    .INIT_01(256'hD6313D0013E102FD0CC8A2A21B9E2BA4E1590C934CCC6D52F0D7E01D8B81C3D6),
    .INIT_02(256'h3ACEDC64E893A9DA04179FF4E44DACD80762BADA6342A2FF4FA2B9BB5B9CB1A7),
    .INIT_03(256'h5D3BD0D51019CFD38A8955F88CBEA936ADFBF019EB97E3CEE7091726BCA2617F),
    .INIT_04(256'h4884C46F6AD2E2936D048E2933B74E9C7019371A57FF5E677D4EC188E1B1CB63),
    .INIT_05(256'h8C304FB6980C17963D4E584726713B424112102F0D9014C1283FF1D9AB4C554A),
    .INIT_06(256'h53C3998F3B14044FC09B95837240ED2CDFC3A94AF4F757FB78F5384AE3EA8405),
    .INIT_07(256'hB8B30EED0C07D454A8C463E34B112A22232CE7AE1A452D7D77BCEDB1B8190B88),
    .INIT_08(256'h6207BE1D7485399A7E4AAB0C510A980DC7BB15F7E0222FDC5A2FF05170416D9D),
    .INIT_09(256'hB75B04952F85A74B0B8F70CAAC5B8F257DB144190EC6DCAE1FFFC5CC530CF062),
    .INIT_0A(256'h457D84364738AD11A9242A33A80AE44DF37EC626F2DB161B6CCD55B9D51F746B),
    .INIT_0B(256'h661A83090F1DE49C0911B8A6782A3F07F13393E04BD01BAB3356053E9D25DBB0),
    .INIT_0C(256'h217EFEE91E227DFC87C34F56D567088E56DF37D3327317C2F0CFC3749D887DD2),
    .INIT_0D(256'h27D96545F1B60E3E2535F520762706C5652E932B6DF700416C41C8D914757659),
    .INIT_0E(256'h7F405BFCD20AA6BA33548D50A9ACFD0876B7EB8D04A7CDECF02BE4C432A6C836),
    .INIT_0F(256'h848F3E67D1F5B44B7031C0949361617CA6757628AC934FD8F35C0DAED00DDFE7),
    .INIT_10(256'hA517F8DC1ECEA12DD95F001AC1D2537CB2041438EC1E51A5F4BCB9D3DE3EE743),
    .INIT_11(256'h6247EE84CC70A54DE6261BD02A405F8093000F5B1D29F4D31AAF79FDACC26D11),
    .INIT_12(256'hCB173BD3666DD7DB2DE9C4CF789B6D80FAF4098301A692C11727EA66BDD01545),
    .INIT_13(256'hB778D29720E32FFC009FBC569A01F05DD17FF1384407126DD686A708E6BEDFA3),
    .INIT_14(256'hE482AEEFFA9A7ABE6F29BB6DE315D6315D301E3A35BF0B8FCC714417A9350C59),
    .INIT_15(256'h48E8B5909CED1CF834840DD17B369DC0366DB69A2271D24536A07EDF99DEFC15),
    .INIT_16(256'hC1BD019387BECA527AC7F137EE7532D8293AC2CE20F20A0BBD28F32D3A332DC0),
    .INIT_17(256'h3462E0A276C3965FE1ED253DE2D8F5AE01B5C20CBDC60607010BE7E5500F3FDF),
    .INIT_18(256'h1283A7DC1A383EF11FC3EEB7FBBECD6438B1E5530785EB321E011F9AA3D0B1CD),
    .INIT_19(256'hC929EBC9F9EFA602442EB9FFE8036B040F54628E4096C010D5204EF076559946),
    .INIT_1A(256'h6B81D51010ED94BF1CEED58768EAE6443201AFCCE5CC9C8CD2F3524EA8961E22),
    .INIT_1B(256'hA1D26982A8970048DB9C403A8CDFE475A5DD48580C91113C79D13E522048F8DB),
    .INIT_1C(256'h5746A12A3AA0D95430F1DBD8B700DE6B13894A74571DD49CD9AC93C2DF2AF2A2),
    .INIT_1D(256'h3C7473AC3AE91F2377DD205D9DA86DE9193FEED7E2011D1CDF7BBDCE79787217),
    .INIT_1E(256'hE8A5EC9B0179090BAC1493F36838ECCF8187F1F46B3B53C1DA03727A4B623D3E),
    .INIT_1F(256'hFC3FE2FC77C7645851B5FF96F1081DF1C70D770AAF54057F75D6BF08746DF0A4),
    .INIT_20(256'hB206A0773281CB74CF0AE1FADED27024D8132792362407DA55AF48B92FE8187F),
    .INIT_21(256'hA3D4EA8F70DA5E639D81B5DCA5EB5960C95C28CF3CBAF923A79E716EE1215C53),
    .INIT_22(256'h2550CDB29FE1A8E5AFC0BD9B964005134FAC52BA03D422312EFB84B0A19784DF),
    .INIT_23(256'h28DE93E5EDC134F324D821D26E993C0138E9764DE72F6B7C6977DB806817E8F0),
    .INIT_24(256'h8F4B02760C0104F66CC583BCFC958C477ED03677DE04EADE6B6230F560823A1B),
    .INIT_25(256'h4E742EF7AD6B204E78B83D457911BC9E72BE108EE142FEF20D2ECB3C01A6F2C5),
    .INIT_26(256'h669CFDD7FE6E33CE7EB9FC696331FBCAFB605B3555B25C7350DF08E7C856FF08),
    .INIT_27(256'h697A2FC2DDFB3EA0D72443626D277B1B798FC98B70E0BA00C6975C1173655909),
    .INIT_28(256'h532AE3C181E938A92333020F5558DDE933624086E2FD7D79DB32B2517DE8A15F),
    .INIT_29(256'hDA2A60CF89E5FDE878EEE8FA42D8F8992E33BC96C81D3407B43C3A2788545D9C),
    .INIT_2A(256'h9D37F5D65F9E060FCEC5C8DA42A5400A2A1DE7D5BE558B0E184E0F12F5ED212F),
    .INIT_2B(256'hCAA856F22015671C2427FDE38A4A6E1E50271E3BCE35A8734C95607017409CAB),
    .INIT_2C(256'h93C159A79181A5B5BDFA22C49F89E7F4C2C147CF5F49D9A5E4BC4F580C3B650C),
    .INIT_2D(256'hC3FB8A70E43F91E6C6C0BEDB9B9B200308C5783F76630AE67FECB8F7DC0E9B8C),
    .INIT_2E(256'h3B65A413C1A05F4DFF7F27A904B213EB345F3ED2CC7A8F87183DD2997C142CD1),
    .INIT_2F(256'hB478F9E92D6AF4979AC378084507314A135FCBAFEBC226EE8EFA301C383036BD),
    .INIT_30(256'hE0F0F45989B229901256B2BBA31CBD03EC1C8FF953765B724172D84D9D2468A8),
    .INIT_31(256'h71C1724AA90E9E631329EC90CC017689012D2CB5673FD3448337AB7DCEC46CBE),
    .INIT_32(256'h9AA0022D27B2015A461A00CCBA8D51CCF6C380969BC6A512D93B99A0573EE8A0),
    .INIT_33(256'h8259D0FAB800F9DBD61BD9C8F26D183B917DF0648827E27F0164833210952809),
    .INIT_34(256'h6A8FF7553E915ED52285E67B0F9056BBE56F14C9F749B6DB77D76EDF7BEC96DE),
    .INIT_35(256'h2F577153CCF5E1053CF06D42645F0607A91AB198C8E7E3B8DD1592B9DECACB74),
    .INIT_36(256'hF364CC476AB4FFFDA6A1AB975A4BE9DD2A85E77798EA11BD20D194C4FCEF8E21),
    .INIT_37(256'h78007ACCD7C70D1BC4C3588EF1B6904447AB4FFD8900FC8A3ACC2678364F480F),
    .INIT_38(256'h9CF5F9186F8F7F35F38FCA77EFA2F8FA705E4B7BB960588DC2336754FD1B8F8B),
    .INIT_39(256'h57CEC93A719B403770D9D35BA0338921331B858E8391C27855D2E5E6C132F9A8),
    .INIT_3A(256'h328A01D48DD71A8E4D7693F57D707B317FE6E9DA3F822975C801704706340E3E),
    .INIT_3B(256'hE8E7F8A7EE8188A04C42C828CCCD1F2DD2C7EA7872C49BF50EF8645CE05551C3),
    .INIT_3C(256'hDFE3AEFEB6DABE484F220AD6E2D6BE73E9D314830331DB933E04C6BFE2D572A0),
    .INIT_3D(256'h295E35F21463BF32C8B4733FF36304D5F4B368F035062D4EEB7AF79023CECEC2),
    .INIT_3E(256'h30412E09D46785AF827EC5B4AFFA625D18B31C99F29DEB732D2A5281236EF89C),
    .INIT_3F(256'hC8B01ECB12538CE6DFEBDF9985262E0285CD3829779C9DBB4618928B22BA25E8),
    .INIT_40(256'hE1BB8F0A375FB059E42625BEBD58D2F33344D4A2AA32F12258B41CEC1E2107B5),
    .INIT_41(256'h667B6855318AACC4B12FE47F2BEC295547A950F5BE8C61258DED39111CBB1788),
    .INIT_42(256'hF83B0C66AD89BF0A2FF37125331B42921117EA35C4C2A991AB685A716CC1663B),
    .INIT_43(256'h851290FA2D8991BFE11F756871F04669D174A037435C0B29B88AFC48604EF33E),
    .INIT_44(256'h5617CA4740A606611B8CA691309D5770D513A36E8360414A199D7BD235FD66D4),
    .INIT_45(256'h1EDCFBFAF967EE681E19743976D11AA3F465700F3EF6E4C18ED41018525AB347),
    .INIT_46(256'h00EFD34924170D41ECE37E4055A65B7976038CB9532D62A6DFAA2DD05513FB66),
    .INIT_47(256'h132FDEFEA84CAE8323C48673CECBEA056324F44577568E1C10B43DD70E18233F),
    .INIT_48(256'h8DB399265B147DC67F13D0BDF2FA888624A80FFF5BE04DA6F6B015AE4FE6F7F2),
    .INIT_49(256'hFC3411EB9E71D723A0F55E02AFB4DD3CAB9C82588B3FA03A89877845E8386FD4),
    .INIT_4A(256'hDAEA9B6E13870C8C374CB57F4121BA8A59EB5853D7E95D90255C0CD58977FC04),
    .INIT_4B(256'h198FC2960CDF01C9617F71E6186A56A7C45F1CD290EF451DAA9D12D3FC60BD22),
    .INIT_4C(256'h19F853DD2D816081210F4E60FCFE339BE8A0E4F1F961F85EC99E59A3F40ED06F),
    .INIT_4D(256'h1E813E16C402AF2F214D0DD431D086CB0673E871F176CE10B5E042B4D3DDF0D0),
    .INIT_4E(256'h1528BDFB2D734B36F4E24F7BC9FFA0704EE9CF701DCEABFB5C831DE2AA6269CC),
    .INIT_4F(256'h2CC68F2309D5590C93632402A2AC13030885D73E11C644E71BC20C01CD08BCB5),
    .INIT_50(256'hDB6DEFCA509E05F88F7FC13A2C1E512FDBB833C6884495F92180B6032C12454D),
    .INIT_51(256'h87DB71A89FF880551C39B7EE560603B44E1352E16FEF01FA8DAD92704BC752BD),
    .INIT_52(256'h0B77DB1E52AE49F9323D64B095110A1172D79E50729E8BE9B78EBEB7A2AA8D9F),
    .INIT_53(256'h6E3F443E3B8D78027D19206B9CBD0FEE515C70C57BAE7B7066A38D694F092ABB),
    .INIT_54(256'h68B6A48DFEE92234FC0B915A77D1159E4A305D3B7A96EC186F1D12DBCECC2380),
    .INIT_55(256'h721582AE3B70F13D60F252E5F3016F77EF61C04231496A6D47C39BAE6581A77C),
    .INIT_56(256'h1F9A3CB35EF405D56B03FE5A90DE234887CF9DC495CF5121A59F79AE042F4A83),
    .INIT_57(256'hA1C1D3325DAB4CB6745E5E611206DFF4897E35D767729867D1F74C066A4CE100),
    .INIT_58(256'h9026F61E0D493CC12F0886766CFECF5CB2633AB0D8F75B6A638EF5A59CE98D54),
    .INIT_59(256'hD975A516C98E8C882D7AF60C6E8F1557EDB2F00049CCD36210B5B66D8DB5D6D8),
    .INIT_5A(256'h758F6D99F884BD0D088A5274654C96E0FD90BD3F8EAB9EDDB2F67BAFC5D61CA6),
    .INIT_5B(256'h4B1C9112DDA1AFC37DEF274D707F8FDE6535CF27E0820994E50BBBD7A981A2F0),
    .INIT_5C(256'h84B26247439A94E22B776F9B78D8CA051FF0A0F939E78F7BA81FDDC41420DCAD),
    .INIT_5D(256'hD95E6A7BEDD2FF38DE1AA21F5946D5335623C3873E31DF266DE3F09BC087FD25),
    .INIT_5E(256'h5A0100DEBFF8B543512E1DF73C3F2293ABE7CED2F1B9724ADED1E3F1189EE26A),
    .INIT_5F(256'hD8567C27FCDC9B14C5602E2D5682FA1DB3FAFF4BE3AF2F7FF776100F47096A74),
    .INIT_60(256'hCA4DD095B3742D3AB28523259EA12AC8E62F48A3490A1DF27B27967414E860CC),
    .INIT_61(256'hDADA83397AF213B69A4718ABB60BD281F900F2BAFB84888638200A2BD8F1AABD),
    .INIT_62(256'h99E07900F61E0C473480EA28828A25638DD180B7626A5CB27BD90D9702073E24),
    .INIT_63(256'hC9A7001AC6E90D8E5649945CDFBAAEEFAD383FF925CE950BC99FB8BD12FC0BBE),
    .INIT_64(256'h345C04F53395682A9BFB0E46A560E112942255EFBA5F0676A8BCAC821DD03489),
    .INIT_65(256'hAA71A2F92B76BBE72BE29C010A613FA284DF8F39858F430E4E582E6064CDFF58),
    .INIT_66(256'h458168A5DBC74BF2A73C34AC879C126731B40EC7444B924B3E1CF3366235DB42),
    .INIT_67(256'hBF8290E905CFD824D5177A88D29544E0F68ABF17DD78E01DC229BB59BFF74A37),
    .INIT_68(256'hFC4923457B4384802F265BDBA251639A85366C0E4CF66FDCE25FD484F2FC48FD),
    .INIT_69(256'h2DA2248AC92C09B4471C3070E639EEC28D543A788986810EBF1A723471237870),
    .INIT_6A(256'h05B0B95A0137D0BDE932450A954C74FDC6CB084DF5387B59E148192218D7B058),
    .INIT_6B(256'hC162559470E93754FDFE20C528C27896307E96BF7212D39C7AD0CD664E20426F),
    .INIT_6C(256'h7F7CC03ABF5ECBC009A577C7C68F13785C4DC659883CF2787A60F91A749DAE42),
    .INIT_6D(256'h07D518B3B74930D918DC66048FFB82EF26A06F0F96265F32A5AD06D68246FBE4),
    .INIT_6E(256'hB8D9BDF3ACD981E2C2BBD2E5770DAE978A64E01DAB4C900BD014D5481244FFE2),
    .INIT_6F(256'h684F030C8ADC545B1E5D777D33D30D5806786E20BBE9B4F0F2903B441D1EC8E5),
    .INIT_70(256'hAD92C27AF4039F7858EFF2C1DC52F8E101CF31C287DCBD95AE7F4D6E54B76F4F),
    .INIT_71(256'h9DB13A3BED0105A00B3091C3FA130B0ADA88CD2220325E743A44C042FA703BE7),
    .INIT_72(256'hB28FB277A2A4B0C83EF1E16D42C72AF136B93C38B4D51E89017261BF370DFF9D),
    .INIT_73(256'h91E011D69533E6E8FAC660DE6CAC008992F473E270BF238D61508A9E95F581AD),
    .INIT_74(256'h888FF169C00726FFF2FF8CAEEF7BFD3FB10399092C19AD49E0BD5874B992C795),
    .INIT_75(256'hA65FD4120578BCEDB97A2E5B5C6C939676BB13E3A21E2A26FDD6454D6895B7A7),
    .INIT_76(256'h87EE15EEA5C4B0060201CB2BC0E07CA93C06ADCD1963A98627D88CF442DDD1F2),
    .INIT_77(256'h8FD849EF7C5FB6ED6DA5BEECFECDB5E08B92DC03B0E45D63CF60F1BB6E4368AA),
    .INIT_78(256'hD62795D70F83CFB529878D934C68F36FC730CBBAE4275B3FC8E67CFDC83CBFEF),
    .INIT_79(256'h60C180A9B92DE4DE910CB6F1C9950DE4CB440B107C1391E20EF94ADA64F8E8B1),
    .INIT_7A(256'h0000000000000000000000C46BD3CEDD3285F3B969940073F832EFFF75F67453),
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
module weight1_bram_0_blk_mem_gen_prim_wrapper_init__parameterized3
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
    .INITP_00(256'hC5601C0E28C81C13D2282067FFC0309BEFF2FEAE818C71FDEBE71E06195FE0E8),
    .INITP_01(256'hF7CA05BDAB8407E4AC4099DBD010614F0B01E96C0334CB823DEED05F31AD02DF),
    .INITP_02(256'h2C8C8A19634930111147080067DE0211E82F11FB77F655BE7FC11FBFFFA9CDBF),
    .INITP_03(256'h452FAB80C80FB02154DF502657BC433A790360238B3F56E6B9CBC7B77D629EC2),
    .INITP_04(256'hD3293AF80FC3EB90EC03282BF38E03ED53C27FEF7047F3A2F97FC27E07D4E3E0),
    .INITP_05(256'h52F232EE20C1E373C494383F5127E6BC0E11F6E0F465F3CAC631D9352A0FD347),
    .INITP_06(256'h5F41CB3644C4451BCB956D00E09B4D7CC7F231AED9B597221B795538CB902278),
    .INITP_07(256'hAB6188FF740A109FC470653ADA07C699F03E92EC92E0FFE27DFF6DBEC7EA5DA7),
    .INITP_08(256'h59B42803951550B8903F75E1737EA97413EEF8D7B7029936C205E18DEE6DB695),
    .INITP_09(256'h769008370FE4019385D6A11689D08FB9B359DF8B6CCBF969EC30498B11FDFC48),
    .INITP_0A(256'hAEC1BFFE4888FFFA3BC4DC94D17FFEC040FFE987677390B424065711AE0DE400),
    .INITP_0B(256'h67CC49A34E56CEC20D920101039C0B3B8F099FD249E58409678B4C01F6D77F7A),
    .INITP_0C(256'hA2BA7FC8076F41F6E0CB8D8290384AC103B80E6C3965FEA42CF5B8F4313948CA),
    .INITP_0D(256'h01FC4F000781A385F802600ED87100F970A00E4B23C1ACC0501AD8EF8113EA75),
    .INITP_0E(256'hE65E2A197FC0B04EB79BD076E7CE4F7D1184F8EE4EBED0E111B0B00AA81B81C1),
    .INITP_0F(256'hE3DE78422E94422CB0533E17E9FA6BCCAAED4C21E4DD9C2B00DE575841D73126),
    .INIT_00(256'h000000FFFF0000FF00FF00FFFFFFFFFFFFFFFF0000000000FFFFFF00FF000000),
    .INIT_01(256'hFFFFFF01FF00FFFFFFFFFF0000FFFFFF000000FFFFFFFF000000000000FFFF00),
    .INIT_02(256'hFF000000000000FFFF000000FFFF000000FFFFFF000000FFFFFEFFFFFFFF00FF),
    .INIT_03(256'hFFFFFE00FFFFFFFFFFFFFFFF0000FF00FFFFFFFEFFFFFF00FF00FF00FFFFFF00),
    .INIT_04(256'hFFFFFFFFFFFFFFFFFFFF0000000000000000FFFF00000000FF0000FFFF00FFFF),
    .INIT_05(256'hFFFF00FF0000FF000000FF00FF0001000001FF000000000000FFFF0000FFFFFE),
    .INIT_06(256'h0000FF00FF000000FFFF0000FF000000000000FFFFFF0000000000FF0000FFFF),
    .INIT_07(256'hFFFF000000FF00FF00FFFF0000000100000000FFFFFF000000000000FFFFFF00),
    .INIT_08(256'h0000FFFF000000FFFF00FF00FFFF00FF000000000000FF00FFFF00FFFFFFFFFF),
    .INIT_09(256'h0000FFFFFFFF00FFFFFFFF00FFFFFF00FFFF00FF0000000000FF00FFFFFFFFFE),
    .INIT_0A(256'h010000000000FFFF0000FFFF00FF0000FFFF0000FF00FFFFFF0000000000FE00),
    .INIT_0B(256'h00000000FF00FFFF00000000000000FFFFFFFF01FF0000FF00FFFE00FFFF0000),
    .INIT_0C(256'hFFFF00FF00010000000000FF0000000000FFFF00000000FF00FF0000FFFFFFFF),
    .INIT_0D(256'hFF00FF00FFFF000000FF010100000001FF0000FFFF0000FFFFFF00FFFF00FFFF),
    .INIT_0E(256'hFF00FF00FF00FFFFFF00000000FF00010001000000FFFFFFFFFFFF0000FF0000),
    .INIT_0F(256'hFFFFFFFF00FFFFFFFFFF0000FF00FF000000000000FF00FFFF00FFFFFFFF00FE),
    .INIT_10(256'hFEFEFEFFFFFFFFFFFF00FF00FF0000FFFFFF0100FFFF00FFFF00FFFEFFFEFFFE),
    .INIT_11(256'h00FFFFFFFFFFFEFFFFFF0000000000FF000000FFFFFFFFFFFF00FFFFFFFFFFFE),
    .INIT_12(256'h00FFFFFF00FFFFFFFFFFFFFF00FFFF0000FF00FF00FF01FEFF00FFFFFFFFFF00),
    .INIT_13(256'hFFFFFF00FF0000000000FF00FFFFFEFF000000FF000000FFFFFFFFFFFF00FFFF),
    .INIT_14(256'h00FFFF0100FFFFFFFFFF00FFFFFFFF00000000000001FF00000000FF000000FF),
    .INIT_15(256'h000000FF000000FF00FF000000FFFFFF00000000FF0100000100000000000000),
    .INIT_16(256'h00FFFF000000FFFF00FF0000FF0000FF0000FFFF00000000000000FF000000FF),
    .INIT_17(256'h0000FF00FFFF0000FF000000FFFF0000FF000000FF00FF00000000FFFF0000FF),
    .INIT_18(256'h00FFFFFFFFFF00FF00FFFF000000FF00FF0000FFFFFFFF00FFFF00000000FF00),
    .INIT_19(256'hFF00FFFFFF0000FFFFFF0000FF00FFFFFFFF000000FEFFFFFF00FFFF00FFFFFF),
    .INIT_1A(256'hFF000000FF00FFFF0000FFFFFFFFFFFF00FF00FF00FFFF00FFFFFF0000FFFF00),
    .INIT_1B(256'h00FFFFFFFF0000FF000000000000FFFF00FFFF00000000000000FF000000FFFF),
    .INIT_1C(256'h00FF00FF00FFFFFFFF00FFFFFFFF000000FF00000000FFFF0000FFFFFF00FF00),
    .INIT_1D(256'h01FF00FF00FF0000FFFF00FFFFFFFFFF00FF00FF000000000000FF0000FFFF00),
    .INIT_1E(256'hFFFF0000FF00000000000000FFFFFFFFFF00FFFF000001000000FF00000001FF),
    .INIT_1F(256'h00FF000000FF00FF0000FF00FFFFFFFFFF00FF00FF00FFFFFF00000000000000),
    .INIT_20(256'h0000000001FFFFFFFFFF00FF00FF0000FFFFFF000000FFFFFFFFFF0000000000),
    .INIT_21(256'hFFFFFFFFFF0000FF00FFFFFFFFFFFFFFFFFF00000000FF0000FFFFFFFFFFFF00),
    .INIT_22(256'h00FFFFFE0000000000FF000000FFFEFFFFFFFFFF0000FFFFFF00FF000000FE00),
    .INIT_23(256'h00FF00FF0000FFFFFFFF00000100FF0000FFFFFFFFFFFFFEFFFFFF00FFFFFFFF),
    .INIT_24(256'hFFFFFFFF0000FFFFFF000000FFFFFF00000001000000FFFFFFFFFF00FFFF00FF),
    .INIT_25(256'hFFFFFF00FFFF0000000000000000FFFF0000FF00FF0101000000FF00FF00FFFF),
    .INIT_26(256'h01000000FFFFFFFFFFFF00000000FFFFFFFFFF00FF00FFFEFF0000FF00000000),
    .INIT_27(256'hFFFF00FF0001FFFF0000FF00FE0000FF0000FFFFFF00FF00FFFFFFFFFF000000),
    .INIT_28(256'h0000FF00FF00FF0000000000FFFFFFFFFFFF00FF0000FFFF00FF000000FFFFFF),
    .INIT_29(256'hFFFF000000FFFF000000FFFF000000FFFFFF00FFFF0000FF0000FFFF00FF00FF),
    .INIT_2A(256'hFFFFFFFF00FF000000FFFF0000FF00FFFFFFFFFF0000FFFFFFFF0000FF00FF00),
    .INIT_2B(256'h00000000FFFFFF00000000FF000000FFFFFFFFFE00FFFF00FFFFFF0000000000),
    .INIT_2C(256'h00FF00FF000000FF0000FF0000FFFFFFFFFFFF0000FFFF00FF00FFFFFFFF0000),
    .INIT_2D(256'hFFFF000000FF0000FF0000FF00FF00000000FFFFFF0000000000FFFFFFFFFFFF),
    .INIT_2E(256'h0000FF0000000100FFFF0000000000FFFFFFFF000000FFFF00FFFFFF0000FFFF),
    .INIT_2F(256'h00FF00FF0000FF00FFFFFFFF0000FF000000FFFE0000FF00FFFFFF00FFFFFE00),
    .INIT_30(256'hFFFF0000FF00FFFFFF0000FF000000000000FF000000FF0000FFFFFFFF000000),
    .INIT_31(256'h000000FFFF00FFFF00FFFFFFFF0000FF00FF00FF00FF00FF0000FFFFFF000000),
    .INIT_32(256'hFFFF00FFFF0000FFFF00FFFF00FF00FFFF0000FF00FFFFFF0000FF000001FF00),
    .INIT_33(256'hFFFF000000FFFFFFFFFFFFFF0000FF000000FFFF000000FFFF00FF00FFFFFF00),
    .INIT_34(256'hFFFFFF0000000000FF0000FFFF00FFFF00FF0000FFFF00FF00FFFFFFFFFF0000),
    .INIT_35(256'hFFFF0000FF00FFFFFF0000FF00FF00FF00FFFF00FFFF00FF0000000000000000),
    .INIT_36(256'h00FF000000FF0000FFFF000000FF000000FF000000FF00FF000000FFFF00FFFF),
    .INIT_37(256'h00FF00FFFFFFFFFF00FF0000000100FFFEFF0000FF00FFFF0000FFFF00FFFF00),
    .INIT_38(256'hFFFF000000FFFFFFFFFFFF00FF00FF0000FF00FFFFFF00FFFF00FF0000FEFFFF),
    .INIT_39(256'h00FFFFFFFFFF00FFFFFFFFFFFFFFFFFF00FFFF00FFFF00FFFF00FFFFFFFFFF00),
    .INIT_3A(256'hFF0000FF0000FF00FFFFFF0000000000FFFFFFFFFFFFFEFFFFFFFF000100FF00),
    .INIT_3B(256'hFFFFFFFF000001000000FFFFFFFEFF00FF0000FF0000FF00FFFFFF00FFFF0000),
    .INIT_3C(256'hFFFF00FFFF00FF000000000000FFFFFFFFFF000000FFFF00FF0000FFFF0000FF),
    .INIT_3D(256'hFFFF000000FF000000FFFFFF0000000000FFFF0000FF00FF0000FFFFFF00FF00),
    .INIT_3E(256'h00FFFFFF00FF000000000000FF00FF00000000FF00000000FF0000FFFFFFFFFF),
    .INIT_3F(256'hFF00FF00FF00FFFF00FFFF00000000FFFF000000FF000000FFFFFFFFFFFFFFFF),
    .INIT_40(256'hFFFFFF00FFFFFF0000FFFF00FFFF00FFFF00FFFF00FFFF00FF0000FF00FF00FF),
    .INIT_41(256'hFFFF00000000FF000000000000FF00FFFFFFFF00000000FFFF000000FFFF00FF),
    .INIT_42(256'hFF00FFFF00FFFFFF000000000000FF00FF0000FFFF0000FF0001FFFF00FFFF00),
    .INIT_43(256'h000000FF0000FFFFFFFFFF00FFFFFF00FFFFFFFFFF000000FFFF00FF00FFFFFF),
    .INIT_44(256'h00FFFFFF0000FFFF00FFFFFFFFFFFF00FF00FF00FF0000FF00FFFFFF00FF0000),
    .INIT_45(256'hFF0000FF000000000000FFFFFFFFFFFF00FFFFFF00FF00FFFEFFFF00000000FF),
    .INIT_46(256'hFF0000FF00FF00FF000000FF00FF00FF00FF00FF00000000FF00FEFFFF000000),
    .INIT_47(256'h00FF00FFFF0000FFFF00FFFF00FF00000000FF00FF000000000000000000FFFF),
    .INIT_48(256'h000000FF000000FFFFFFFFFFFFFF00FFFFFFFFFFFFFF000000FF0000FF000000),
    .INIT_49(256'hFFFFFF00FFFF00000000FFFF0000000000FF0000FF0000FFFF000000FF00FFFF),
    .INIT_4A(256'h00FFFF00FFFF0000FFFF0000FF00FFFFFFFFFFFFFF0000FF00FFFF00FF0000FF),
    .INIT_4B(256'hFE00FFFF0000FFFF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF000000FF00FFFF),
    .INIT_4C(256'hFF000000FF0000FFFFFF00FF00000000FF000000FFFFFFFFFF00FEFFFF0000FF),
    .INIT_4D(256'hFF00000000FF00FFFFFF00FF00FFFF00FF00FF00000000FF000000FF00FFFF00),
    .INIT_4E(256'h00000000FFFFFFFFFFFFFF0000FF000000000000000000FFFF0000FF0000FFFF),
    .INIT_4F(256'h00FFFFFF00FFFF00FF0000FF0000000000000000FF0000000000FFFF00FFFFFF),
    .INIT_50(256'hFF01FF00FFFFFF0000000000FFFF00FFFFFFFF0000FF00000000000000000000),
    .INIT_51(256'h0000FF0000FF01000000000000FFFF0000FF00FF00FFFFFF000000FF000000FF),
    .INIT_52(256'h00FFFF0000FFFFFF00FFFFFF0000FFFFFF0000FF00000000FF00FFFF00FF0000),
    .INIT_53(256'h00FF000000000000FFFFFFFFFFFFFFFFFFFFFF00FF0000FFFF00000000FFFFFF),
    .INIT_54(256'hFFFF00FF000000FF00FFFFFFFFFFFFFEFFFFFFFFFFFFFF00FFFF000000000000),
    .INIT_55(256'h0000FFFFFF00FFFFFFFF000000FF0000FFFF00FFFFFF0000FF0000FF00FF0000),
    .INIT_56(256'h00FF0100FF000000FF000000FF000000FFFFFFFFFFFFFFFFFFFFFFFFFF00FF00),
    .INIT_57(256'hFF00FF00FFFFFF00FFFF0000000000FFFF00FFFFFFFFFFFFFFFEFFFFFFFFFF00),
    .INIT_58(256'hFFFFFFFF00FFFF00FFFF00FF00FFFFFF00FFFFFFFFFFFFFF00FFFFFFFF00FF00),
    .INIT_59(256'h00FFFF0000FEFFFFFF000000FF00FFFF00FF0000FEFE000000000000000000FF),
    .INIT_5A(256'h00FF0000FF0000FFFFFFFF0000FF00FFFF00000000FF000000000000FF0000FF),
    .INIT_5B(256'hFF000000FFFFFFFF00000000FF0000FFFF0000FFFFFFFFFFFFFF00FF0000FF00),
    .INIT_5C(256'h000100000000FFFFFF0000FFFFFF000000000000FF01FFFF0000FFFFFF00FFFF),
    .INIT_5D(256'h00000000FFFF00FFFF0000FF0000FF0100000000000000FF00000000000100FF),
    .INIT_5E(256'h00FF0000FEFFFF0000FF00FF00FFFF00FFFF0000FFFFFF00FFFF00000000FF00),
    .INIT_5F(256'h00FFFF0000FFFFFFFFFF0000FFFF000000FF0000FF0000FFFF00FF000000FFFF),
    .INIT_60(256'h0000FFFF000000FF0000FFFFFF0000FF00FF0000FF000000FFFF0000FF00FF00),
    .INIT_61(256'h0000FF00FFFF0000FFFFFFFF00FF00FFFF00FFFFFF000000FFFFFFFF00FF0000),
    .INIT_62(256'h0000FFFFFF0000FF00FFFF0000FF00FFFFFFFFFFFFFFFF00FF01FF0000FF0000),
    .INIT_63(256'h000000000000FFFFFF00FFFFFF00000000000000FFFFFF0000FFFF00FFFF0000),
    .INIT_64(256'hFF0000FF000000000000FFFFFF00000000FF0000FF00FF00FFFF0000000000FF),
    .INIT_65(256'hFFFFFF0000000000FFFF0000FF00FFFFFF010000FFFF00FFFF0000000000FF00),
    .INIT_66(256'h0000000000FFFFFF00FFFF00FEFEFFFF00FF0000000000FFFFFFFFFF00FFFF00),
    .INIT_67(256'hFF01FF000000FF00FF00FFFFFF00FF0000FFFFFFFFFFFFFFFFFF0000FF000000),
    .INIT_68(256'hFF000000000000FF000000FF0000FFFFFFFFFF00FF00FF0000FFFFFF00FF00FF),
    .INIT_69(256'h00FF00FF00000000000000FFFF00FF00FFFF00FFFF000000FFFFFF00FFFFFFFF),
    .INIT_6A(256'h0000FF000000FFFFFFFF0001000000FFFF00FF00FFFF0000FFFF000000000000),
    .INIT_6B(256'h00FFFFFF00000000FF00FF000000010001000000FFFFFF0000FF0000FF00FFFF),
    .INIT_6C(256'hFFFF00FFFF00000000FFFFFF010000FF0001010100000000FFFEFFFFFF0000FF),
    .INIT_6D(256'hFFFFFFFFFF000000000000000000FF0000FFFF000001010001000000FFFEFE00),
    .INIT_6E(256'h0000000000FEFEFFFF000000010000FFFF00FF000000FFFFFF01000000FF00FF),
    .INIT_6F(256'h00000100000100FFFFFFFEFEFFFF010000FF0001FFFFFFFE0000000000000000),
    .INIT_70(256'hFF00FF00FF000000000000FFFF00FFFFFE000000010000FFFFFF0000000000FF),
    .INIT_71(256'h000000FF000000FFFF00FFFF00000000FF00FFFF0000000000000000FF00FF00),
    .INIT_72(256'h00FF0000FFFFFF00FF00FEFFFFFFFF00FFFF00FF00000000FFFFFF00000000FF),
    .INIT_73(256'h000000FF000000FFFF00000000FF0000FFFFFFFFFF000000FEFFFF00FFFFFF00),
    .INIT_74(256'hFFFFFF0000FFFFFFFFFF0000FFFFFF0000FF0000FFFFFFFF00FFFFFFFFFF00FF),
    .INIT_75(256'hFF00FFFF00FFFFFFFF0000FFFF00FFFFFFFF00FF0000000000FFFFFF00FFFF00),
    .INIT_76(256'h00FFFFFFFFFFFFFFFFFF000000000000FF00FFFF0000000000FF0000FFFFFF00),
    .INIT_77(256'hFFFFFF0000FFFF0000FF00FFFFFFFE000000FF00FF00FF00000000FFFF0000FF),
    .INIT_78(256'h00FF0000010000FFFFFF00FE00FFFFFF0000FFFF000000FF0000FF0000FFFF00),
    .INIT_79(256'h0000000000000000FFFF00FFFFFFFF0000FF00FF00FFFFFF00FF00FFFF000000),
    .INIT_7A(256'hFFFFFF0000FF0000FFFF00FFFFFF00FFFF0000FFFFFF00000000FF00FF00FFFF),
    .INIT_7B(256'hFF00FF00FF00FF00FFFFFF00FFFF00FF00FF0000FFFF00000000FF00000000FF),
    .INIT_7C(256'hFFFFFF00FF0000FFFFFFFFFFFF00FF0000FFFF00FF00FFFFFFFF0000FFFF0000),
    .INIT_7D(256'hFF00FFFF0000000000FF00FF0000FFFF0000FEFFFFFFFF00000000FF00FFFFFF),
    .INIT_7E(256'h0000FF00FFFFFF00FF0000FF00FF000000FF00000000FF000000FF00FFFF0000),
    .INIT_7F(256'hFFFFFF000000FFFFFFFF00FFFFFFFF0000FFFFFFFF00000000FF00000000FF00),
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
module weight1_bram_0_blk_mem_gen_prim_wrapper_init__parameterized4
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
    .INITP_00(256'hC8BF4FBDADC6FF4CBA297DE5826FC50001C55820304FA840A179400017353806),
    .INITP_01(256'h0E98F8448A4DE4406AD29617E53841CC0085AB686BC9D301FE8D0857FD8FC1AF),
    .INITP_02(256'h3C3FE64B6E61E46BCF0BC0ED26B604C9B317202D489EE8607045B2FA00097921),
    .INITP_03(256'hD778BD78F41467C7F3AAFCFC8BEF47717AF8FF5AFF0754FBF0746D250B2FA1F0),
    .INITP_04(256'hA54BACFC6FEE1EE177E882C1F6B3283ED2DB83E957B97EEE5D81DEE6B459E8C7),
    .INITP_05(256'h041C405645E193260D37A52524CC786BE7B82797B8691C03771AE9922331CA27),
    .INITP_06(256'h9F8607DDBC61D267EC0651FFFEFDA3FEDC0915FC4F48BA9C98113C9EC01627D2),
    .INITP_07(256'hC4CA22C19940011847B7194A3D7E64527FC59433FF740DDFE375223962CA606C),
    .INITP_08(256'h595BC7A101ACA6EA166D57B297F5A86F4CC62C305CCF56F3E6748F7424AAF402),
    .INITP_09(256'hBECDF9FF97EBFF268E8481C70000000000003D010002FA00410FFBE1056CF5C0),
    .INITP_0A(256'h2060ECC044E00B0102C02DD02014FBB05BDF7C085BCFFCA7FF6ED0DBFFFF5FFF),
    .INITP_0B(256'h61F891278921D508D5BFA0A17A3C7713D4890C7BE0B037FA7004DF460008EFB2),
    .INITP_0C(256'h99A665EC4ADBC5E5D33B3C14A9CB95FEA9FC7BF79B84FDCDE9FFC42A95D8E23B),
    .INITP_0D(256'hCCC9B880A186AA3EDAFEDBFC2B4E8E085F4BA9A3BD9C6C145F883124A00816B2),
    .INITP_0E(256'h6F496F742452D9894D2C410BF7D81BAB39A7FFFEB7395DF459211698723FDE4C),
    .INITP_0F(256'hAC3BB00CF9BF81310A705A213B93570FF820C59F86FC9D02651BD2FD270157AB),
    .INIT_00(256'h000000FF00FFFFFF0000FFFF00FF00FF0000FFFFFF0000000000000000FFFF00),
    .INIT_01(256'hFF00FF00000000FF00FFFFFFFF0000FF00FF0000000000000000000000000000),
    .INIT_02(256'h0000FFFF0000000000FF0100FFFFFFFFFF00FF00FF00000000FF010101000000),
    .INIT_03(256'h00000000010000FFFFFF000000FF00FF01FF00FFFF0000000001FF0000000000),
    .INIT_04(256'hFF0000000000FF0000FFFF00FFFFFFFFFFFF000000FF00FF0000000000000000),
    .INIT_05(256'hFF00FFFFFF00FF000000FF00FF0000FF00FFFFFFFFFE00FFFFFFFF0000FF01FF),
    .INIT_06(256'hFF00FF00FFFF00FFFFFF000000FFFF00FFFFFFFFFFFFFFFF00FF0000FFFF0000),
    .INIT_07(256'hFFFF0000FF000000FF01FFFFFFFFFFFF00FF0000FFFFFFFFFF00FFFFFFFF00FF),
    .INIT_08(256'hFFFFFEFFFFFF00FFFF000000FFFFFFFFFFFF0000000000FFFF00FF00FEFFFEFF),
    .INIT_09(256'hFFFFFFFEFFFFFE00FF000000FFFF00FF00000000FF00000100FF00FF00FFFFFF),
    .INIT_0A(256'h00FFFF00FF00FFFFFFFE0000FF0000FFFFFF00FF0000FFFF00000000000000FF),
    .INIT_0B(256'h0000000000000000FF00000000FF00FFFF00FF00FF00FFFF00FFFF00FF000000),
    .INIT_0C(256'hFFFFFF0000FF00FF0000FFFFFF00000000FF0000000000FFFFFF0000FFFF0000),
    .INIT_0D(256'h00FFFF00FF00FF00FFFF00FF0000FF00FF0000FF00FFFF00000000FF00FFFFFF),
    .INIT_0E(256'hFF000000FF00FF0000FF0000FFFF00FFFFFFFF0000FF000000FF000001000000),
    .INIT_0F(256'h01000000FFFFFF00FF0000FFFF000000FFFFFFFFFF00000000FE000000FF0000),
    .INIT_10(256'h000000000000000000000000FF0000FF00FFFFFFFF0000FF0000FF00010000FF),
    .INIT_11(256'h00FFFFFF0000000000FF000000FF00FFFF00FFFF0000FF00FFFFFFFFFF00FF00),
    .INIT_12(256'h00FF0000FF000000FF0000FFFFFFFF00FFFFFF00FF00000000FFFF0000000000),
    .INIT_13(256'hFF00FFFF0000FFFF000000FF00FFFFFF0000FF00000000000000FF00FFFF00FF),
    .INIT_14(256'h0000FF0000FFFF00FF00FFFF00FFFF000000000000FF0000FFFF0000FF0000FF),
    .INIT_15(256'hFFFF0000FFFFFFFF00000000FF00FFFFFEFF000000000000FFFFFF00FFFF00FF),
    .INIT_16(256'h00FFFF00FFFFFF0000FFFF00000000FFFFFFFF0001FF000000FFFF00FF00FFFF),
    .INIT_17(256'h0000FFFFFFFF00000000FFFFFFFFFFFFFFFFFF0000FFFF0000FF0000FF00FFFF),
    .INIT_18(256'h00000000FF00FFFF0000FF00FFFFFFFFFF00FF00000000FFFFFFFFFF00000000),
    .INIT_19(256'hFFFFFFFF0000000000FFFFFF00FF000000FFFF00FFFF00FF0000FF0000FF00FF),
    .INIT_1A(256'hFFFFFFFFFFFEFFFF0000000000FFFFFF00FF00FF01FF0000FFFFFFFFFE00FFFF),
    .INIT_1B(256'h00FFFFFFFF00FF00FFFFFFFFFF000000FFFFFFFFFFFFFFFF00FF00FFFF00FF00),
    .INIT_1C(256'hFF000000FF00FFFFFFFFFF00FFFFFFFF00FF010000FFFFFF00FFFFFF000000FF),
    .INIT_1D(256'hFFFFFFFF0000FFFFFF00FF00FF00FF00FFFFFFFFFFFF0101FFFFFFFFFFFF0000),
    .INIT_1E(256'hFFFFFFFF01FF0000000000FF00FF010000FFFF0000FFFFFFFFFF000000FFFFFF),
    .INIT_1F(256'hFFFF00FF00FFFFFF00FFFFFFFF000000FF00FFFFFFFF00FE00FFFFFFFF000000),
    .INIT_20(256'hFF00FFFF00FF000000FF00FFFF0000FFFFFFFF00FF000000FFFF000000FFFFFF),
    .INIT_21(256'h00FF00FFFFFF00FFFF000000000000FFFFFF00FFFFFFFF00FFFFFF0000FFFF00),
    .INIT_22(256'h00FF00FF00FFFFFFFF00FFFFFF0000FF00FFFFFFFFFFFF00FFFFFF00FFFFFF00),
    .INIT_23(256'hFFFF00FF0000FF00FFFF00FFFF00FFFFFF0000000000FFFFFFFEFF00FF0000FF),
    .INIT_24(256'hFFFFFFFF00FEFF00FF00FFFF0000FFFF0000FF00FF0000010000FFFFFFFFFF00),
    .INIT_25(256'h00FFFFFF00FFFFFFFFFFFF00FF000000FF0000000000FF00FFFF0000010000FF),
    .INIT_26(256'h00FFFF00FFFFFFFFFFFFFF00FFFFFF00000000FFFFFFFF00FFFFFF00000000FF),
    .INIT_27(256'hFF00FF0000FF00FF00FF0000FF00FFFFFF00FF00FFFF0000FFFFFFFFFFFF0000),
    .INIT_28(256'h0000FF000001FFFF0000FEFF000001FFFFFF0000FF00FF000000FF0000FFFFFF),
    .INIT_29(256'h00FFFFFF00FFFFFF000000FFFF00FF00FFFEFF00FF0000FFFF0000FF0000FF00),
    .INIT_2A(256'hFF00FFFFFF00000000FFFF00FF0000FF000000FFFFFF0000000000000000FFFF),
    .INIT_2B(256'hFFFFFF0000FFFFFFFF00FFFFFF0000000000FF0000FFFFFFFF0000FF00FFFFFF),
    .INIT_2C(256'h0000FF0000FF0000FFFF0000FFFF000000FFFFFFFF00000000FFFF00FF00FFFF),
    .INIT_2D(256'h00000000FFFF00FF0000FFFF00FFFFFFFF00FF0000FF00FF0000FF0000FF00FF),
    .INIT_2E(256'h00FF000100FF00FFFFFFFF00000000FFFF0000FF0000FFFF0000FF0000FFFF00),
    .INIT_2F(256'h0000000000FF0000000000FFFFFF000000FF00000000000000FF00FF00FFFF00),
    .INIT_30(256'hFFFF000000000000000000FF00FFFF000000FF0000FFFFFFFFFF00FF0000FF00),
    .INIT_31(256'hFF0000FFFF000000000000FF000000FF0000FFFFFFFF0000FF0000FFFFFFFF00),
    .INIT_32(256'h00FF0000FFFFFFFF00FF0000FF000000FF00FFFFFF00FF00FF0000FFFFFF0000),
    .INIT_33(256'hFFFF00FFFFFF000000000000FF0000FF000000FF00FF00FFFFFFFFFFFFFF0000),
    .INIT_34(256'hFFFFFFFFFFFFFF00FFFFFFFFFFFF00FFFF00FF000000FFFFFFFFFFFFFFFFFF00),
    .INIT_35(256'hFFFFFE00FFFF00000000000000FFFF0000FF00FF000000FFFFFFFEFFFEFFFFFF),
    .INIT_36(256'hFF00FFFFFFFF000000FFFF00000000FFFFFF00FF0000FF0000FFFF0000FFFFFE),
    .INIT_37(256'hFE0000FFFFFFFEFFFF00000000FFFF000000010000FFFFFFFFFF00FFFFFF00FF),
    .INIT_38(256'h00FFFF000000FF00FFFF0000FF00FF0000FFFF000000000100FFFE00FFFF0000),
    .INIT_39(256'hFFFFFF000000FFFF00FFFFFF00FF00FF0000FF000000FF000000FFFFFF0000FF),
    .INIT_3A(256'hFFFFFFFEFFFFFEFF00FFFFFF00FF000000000000FFFF00FFFFFF00FFFFFFFFFF),
    .INIT_3B(256'h00FFFFFFFFFFFEFFFFFF000001FF00FFFF0000FF00FF00000000FFFF0000FFFF),
    .INIT_3C(256'h0000FFFFFFFF00FF00FFFFFFFFFFFF0000FFFF0000FF000000FF00FE0000FF00),
    .INIT_3D(256'h00FF000000FFFFFFFF00FFFF00FFFFFF000000FFFF0000FF00FF0000FF00FF00),
    .INIT_3E(256'hFF0000FFFF0000FF00FF00000000000000010000000000FF000000FFFF000000),
    .INIT_3F(256'hFFFF000000FF0000FFFF0000FF00FF000000FF000000FF00FFFF0000000000FF),
    .INIT_40(256'h0000FF0000FF0000FE00FF01FF00FF00FFFFFFFF00FF0000000000000000FF00),
    .INIT_41(256'hFFFFFF0000FFFF0000FFFFFF00FF0000FF000000FFFEFFFF00FFFFFF00FF0000),
    .INIT_42(256'h00FF00FFFFFF0000FFFF0000FFFFFFFF00FF00FF00FFFF00FFFFFFFF0000FFFF),
    .INIT_43(256'h00FF0000FFFF0000FFFF000000FFFF000000FF00FFFE00000000FFFF00000000),
    .INIT_44(256'hFF0000FF01FFFFFFFFFFFFFF00FF00FFFF00FF00FF00000000FFFF00FFFFFFFF),
    .INIT_45(256'h000000FF00FFFF0000FEFF00FFFF00FF00FF00FF00FFFFFFFF00FFFF0001FF00),
    .INIT_46(256'h00000000000000FFFF00FF00FFFF0000FF00FF0000FFFF00FFFFFF00FF00FF00),
    .INIT_47(256'h00FF00FFFF0000FF00FF00FFFF00FFFFFFFF000000FFFFFFFF00FF00000000FF),
    .INIT_48(256'h0000000000FF00FF00FFFF00FFFF0000FFFFFFFF00FF00FFFFFF000000000000),
    .INIT_49(256'h00FF0100000100FF00000000FFFFFFFFFFFFFFFFFF00FFFFFFFFFF00000000FF),
    .INIT_4A(256'h0001000001000000000101000000FF00FFFFFFFFFF00FF000000010000000000),
    .INIT_4B(256'h000000000000010000010100010000010100FFFFFFFF00FF00000000000000FF),
    .INIT_4C(256'h0000000100000000000000000100000001010100000000000000000000000000),
    .INIT_4D(256'hFF000000FFFFFF00FF00000000FF0100FF000001000000FFFFFF000000FFFFFF),
    .INIT_4E(256'hFF0000FF00FFFFFFFFFFFF00FF00FFFFFFFFFFFFFFFFFFFF0000FF0000FFFF00),
    .INIT_4F(256'hFF00FFFFFEFFFF00FFFF0000FFFF00FFFFFFFFFFFF0000FFFEFFFFFFFFFFFFFF),
    .INIT_50(256'hFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFF00FF00FFFFFFFEFFFFFFFFFFFEFFFFFF),
    .INIT_51(256'hFFFFFFFFFFFFFFFF00FFFF00FEFFFE00FFFF00FF00000000FFFE00FFFF00FFFE),
    .INIT_52(256'h00FF00FFFF00FFFFFFFE0000FFFFFFFFFFFFFFFEFFFF0000FF00FF0000FFFFFF),
    .INIT_53(256'h00FF00FFFF00FFFFFFFF00FFFFFFFFFF00FFFEFEFFFF000000000000FF000000),
    .INIT_54(256'h0000FF0000000000000000FF00FF0000FFFFFFFFFF00FFFFFF00FFFF00000001),
    .INIT_55(256'h000000000000FF00FFFE0000000000000000FF00FFFF00FFFFFF00FF00000000),
    .INIT_56(256'h00FF000000FF0000FFFFFF000000000000000000FF00FFFF00000000000000FF),
    .INIT_57(256'h0000FF000000000000FFFF0000000000FFFFFF00FFFF0000FFFF000000000000),
    .INIT_58(256'h000000000000000000000000FF000000FFFFFF00FFFFFFFFFF00FFFF0000FF00),
    .INIT_59(256'h00FFFFFF000100000000000000FF0000FFFF00FFFFFFFFFF00FF000000FFFF00),
    .INIT_5A(256'hFFFFFF0000000000FF00FFFF000000000000FFFF00FFFFFFFFFFFFFFFE00FF00),
    .INIT_5B(256'hFFFF00FF00FF0000FF000000FF0000FF00000000FFFF000000FFFFFFFF00FFFF),
    .INIT_5C(256'h00FFFFFFFF00FF010000FFFFFFFF000000FFFFFF00FFFFFF000000FF0000FFFF),
    .INIT_5D(256'hFFFF00FF00FF00FFFF00FFFFFFFFFFFFFF00FF0000000000FF00FF00000000FF),
    .INIT_5E(256'hFF000000FF0000FF0000FF00000000FFFFFF00FF00FF00FF00000000FF000000),
    .INIT_5F(256'h00FFFF00000000FFFFFFFFFFFF000000FF0000FF000000FF0000FF0001FFFFFF),
    .INIT_60(256'hFF0000FF01FF00FFFFFF00FFFF000000FFFFFF000000FF000001FFFFFF00FFFF),
    .INIT_61(256'hFFFFFF00FF0000FFFFFFFFFFFFFFFFFFFFFF000000FF00000000FF00FF00FF00),
    .INIT_62(256'hFF0000FFFF01FFFFFF00000000FF0000FEFFFFFFFFFF00FFFFFF0000FFFF00FF),
    .INIT_63(256'hFF00FF00FF0000FFFFFFFFFFFFFF000000FFFFFFFF00FFFFFFFFFEFF00FFFFFF),
    .INIT_64(256'hFF00FF00FE0000FFFFFF0000FF00FFFFFF0000FF00FF00FFFFFFFFFFFFFFFF00),
    .INIT_65(256'hFFFF00FF0000FFFF0000FFFFFF00FFFF0000FFFEFFFF0000000000FF00FF0000),
    .INIT_66(256'h00FF0100FF00FF00FFFF00FFFF00FFFFFFFF000000FF00FEFFFFFF0000FF00FF),
    .INIT_67(256'hFF0000FFFF0000FFFF00FF0000FFFF0000FFFF0000FF00FFFFFFFF00FFFF0000),
    .INIT_68(256'hFF00FF000000000000000000FF000000000000FF00FFFF00FF00FFFF0000FE00),
    .INIT_69(256'h00FF00FFFFFFFFFFFF000000FF0000000000FFFF010000FF0000FF0000FF0000),
    .INIT_6A(256'hFF01FFFFFFFF00FFFF0000FFFFFF000000FFFF00FFFF0001000000FF00FF0000),
    .INIT_6B(256'h01FF00FFFFFFFFFF00FF0000FF00FFFFFF00FF00FF0000FFFF00FF000000FFFF),
    .INIT_6C(256'h0000FF00FF00FFFF00FF0000FFFFFF00FF000000FFFFFF0000000000FF000000),
    .INIT_6D(256'hFFFF00FFFF00FF00FFFFFFFFFFFFFF01FFFF00FFFF00FFFFFFFFFFFFFFFF0000),
    .INIT_6E(256'hFF00FF00000000FFFF00000000FFFF00FF00FF00FF00FF000000FFFFFFFFFF00),
    .INIT_6F(256'hFFFF0000FFFF0000FFFE0000FF0000FFFF00FFFFFF000000FF00000000000000),
    .INIT_70(256'h00FFFFFF0000FF000000FFFFFFFFFFFFFFFF00FEFFFFFF0000FF0000FFFF0000),
    .INIT_71(256'h00FF00FFFF0000FF0000FF00000000FF000000FF00FFFF00FF0000FFFF000000),
    .INIT_72(256'hFF00FFFF00FFFFFF0000FFFFFF0000FF00FF00FFFFFF00FFFFFFFFFF00FF0000),
    .INIT_73(256'h0000FFFFFF0000FFFF00FF0000FFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00),
    .INIT_74(256'hFEFFFFFF00FFFFFFFFFF00FFFF000000010000FFFF00FFFFFF00FF00FF00FFFF),
    .INIT_75(256'h00FF0000FFFF00FF0000FF00FFFF000000FF0000000000FF00000000FF00FFFF),
    .INIT_76(256'h0000FF0000FF000000FF00FF0000FF00FFFF00FFFF0000FFFF000000FF0000FF),
    .INIT_77(256'h00FFFF00FFFFFFFF00FF0000FF0000FF00FFFF00FFFFFFFF00FFFFFF00FF0000),
    .INIT_78(256'h0000FF0000FFFFFF00000100000000FF00FF00FF00FFFFFFFF00FF00FF00FFFF),
    .INIT_79(256'h00FFFF0000FF00FF000000FFFF00FFFFFFFF00FF0000FF00FFFFFFFFFFFF00FF),
    .INIT_7A(256'hFF00000000FFFF00FFFFFFFFFFFF0000FF0000FFFFFF00FF000101000000FE00),
    .INIT_7B(256'hFFFFFFFFFF0000000000FF0000000000FFFF000000FF00FFFF0000FFFFFFFFFF),
    .INIT_7C(256'h0100FFFFFF00FEFFFF0000FF0000FFFF00FF00FF00FFFFFF00000000FFFFFFFF),
    .INIT_7D(256'h00000000FF00FF0000FFFEFF0000000000FF00FFFF00FF000000FF00000000FF),
    .INIT_7E(256'hFFFFFFFFFF0000FFFF00FFFFFFFFFFFFFF000000000000FF0000FFFF000000FF),
    .INIT_7F(256'hFF00FF00FFFF00000000FFFFFF00FEFFFF00FFFF0000000000000000FFFF0000),
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
module weight1_bram_0_blk_mem_gen_prim_wrapper_init__parameterized5
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
    .INITP_00(256'hDFE05FE8C7C7F2063C9C8224BB810F1BC03243CF8009E29D1189F6D02E2F7C0C),
    .INITP_01(256'hA18E748EC360CE8212C50217EBE483F3E725EAFA2D55C19800F428505A246057),
    .INITP_02(256'h7E5C27FE30C61E00C4C57888B8000153D3A308205FFA42D5E5518C1332C94E1A),
    .INITP_03(256'h17FF82B17B85BBC3FCC356E20C6D16074FF04020BDF0023459AE1E4FBFEC75F5),
    .INITP_04(256'hE25DB4F54EA0B0E67A10A7C58A0DE4480FA4300A3182810A2A2D7EADF41FFFAC),
    .INITP_05(256'h03DF0B1B5EDD0715ABEBC900F819C0C7F996192372BF05F33B699C2C562887E0),
    .INITP_06(256'h3069A13B412AC09905E4DDA000889ACA905A28CC01B8EF71ACCDEDE38B3CE067),
    .INITP_07(256'h49B52A201D40D619A2970D4D7974A26464E8B510CC37AB4CBEB42FFE2979B5EA),
    .INITP_08(256'h1942BE8206DA009621886A9F2A063B16F7FBA315BF9F639FB6592CDA4861612A),
    .INITP_09(256'h3FEF7EE17B47E017DE683F74DDA3B26F3537CF2E477C00504BA05B1800A7CD13),
    .INITP_0A(256'hD1931CD24C08D0173190427099EE40666C0AE945E3D35B1AB4FFEFC6F7FDBC5C),
    .INITP_0B(256'h89DD23257FA010FFF20F05DD8F2062C0796CF42CB1B3CA50BBB1EB95ED4E0783),
    .INITP_0C(256'hA60FB22200F27B300D820A800016303801D22B083095E8BAF3E80D9AD357FE76),
    .INITP_0D(256'h3281E4E96FFE463F7EF5E128D7F9F9EC497AC8232B5C82BEE0FFBFFBED7BFD29),
    .INITP_0E(256'hABFCADF6B1014EB1001AF5B06DFFADE09C51988175F3EEB23C4E5DB727E240C2),
    .INITP_0F(256'h2BE5FE92827211F2CEF19F7FFC03D25E200A78D94629675D9FBDDFF1B95DFF55),
    .INIT_00(256'h0000FF00FFFFFF000000FF00FFFFFFFF00FFFFFFFFFF000000000000FFFF0000),
    .INIT_01(256'h010001FF000000FFFF000000FF0000FFFFFFFFFF00FFFF00FFFF00FF00000000),
    .INIT_02(256'hFF0000000000000000000100FF0000FFFFFFFF000000FF00FF0000FFFFFF00FF),
    .INIT_03(256'hFFFF0000000000000001FFFF0000FF0000FF00000000FFFFFFFF0000FFFEFFFF),
    .INIT_04(256'hFF00FFFFFF00FFFFFF000100000000FF00000001FFFFFFFF000000FFFF00FFFF),
    .INIT_05(256'h0000FFFFFFFF0000FF0000FFFFFF0000FF0000000000FF000000FF0001FF0000),
    .INIT_06(256'hFFFF000000FFFFFFFFFF000000FFFFFFFFFFFFFF0000FF000000000100FFFF00),
    .INIT_07(256'hFFFF00FFFFFFFFFFFFFFFF000000000000FF00FFFFFFFFFFFFFFFF00FF000000),
    .INIT_08(256'h00FF00FFFF00FF000000FF0000FF000000FFFF000000000000FF00FF00FFFFFF),
    .INIT_09(256'h0100000000000000FFFFFFFF00FF00000000FF00FF00000000FF00FF00000000),
    .INIT_0A(256'h0000FF00FFFF00FF00FE00FF00FF00FFFFFF0000000000FFFF0000FFFF000000),
    .INIT_0B(256'hFFFFFF0000FFFFFF0000FF0000FE00FFFFFFFE00FF00FF00FFFFFFFFFF00FF00),
    .INIT_0C(256'hFFFFFF00FF00FFFFFFFFFF0000FF0000FF0000000000FFFFFFFFFFFF0000FFFF),
    .INIT_0D(256'h000000FF0000FF00FFFF000001FF00FF000000000000FF00000000FF00FFFFFF),
    .INIT_0E(256'hFFFF00000000FFFF00FFFF0000000000FFFF0000FEFFFF00FF0000000000FF00),
    .INIT_0F(256'hFF00FF00000000FFFF000000FFFFFF0000FFFFFF00FF0000FF000000FFFFFF00),
    .INIT_10(256'h0000FFFF0000FF00FFFF0000FF0000FF00FF0000FFFFFF00000000FFFF00FF00),
    .INIT_11(256'hFFFFFF0000FF00FF00FF00FF000000FFFF000000FFFF0000000000FF0000FFFF),
    .INIT_12(256'h00FF00FFFFFFFFFFFFFFFFFFFF00FF0000FF00000000FF00FFFF00FF00FF00FF),
    .INIT_13(256'hFFFF00FF0000FFFFFF00FF000000FFFF00000000FF0000000000FF0000000000),
    .INIT_14(256'hFF00FFFFFF000000000000000000000000000000000000FF00FF00FF0000FFFF),
    .INIT_15(256'hFFFF000000FF0000FFFF000000FF00FF00FFFFFFFF000000FF000000FF000000),
    .INIT_16(256'h0000FFFF00000000FFFF000000FFFF00000000FFFFFFFF000000000000000000),
    .INIT_17(256'h00FFFEFFFFFFFF0000FF00FEFFFF00000000FF0000FFFFFFFFFFFFFFFFFFFF00),
    .INIT_18(256'hFF00FEFFFFFFFFFFFFFFFF00FFFF000000FFFFFF00FF00FFFFFFFFFF00FF00FF),
    .INIT_19(256'h00FF00FFFF0000FFFF00FF00FFFFFF00000000FFFFFFFF0000FF0000FFFFFFFF),
    .INIT_1A(256'hFF00FFFFFFFF00FFFFFFFFFF00000000000000000000FF000000FFFF00FF0000),
    .INIT_1B(256'h01FF0000FFFFFFFFFFFFFFFF0000000000FF0000000000000000FF0000000000),
    .INIT_1C(256'h00000000FFFF000000FFFF00FFFF00FF000000FF00FFFF010100000000FFFFFF),
    .INIT_1D(256'hFFFFFFFFFFFE0000FFFF00000000FFFF00FF00FF00FFFF00FFFFFF000000FF00),
    .INIT_1E(256'h00FFFFFEFE00FFFFFF00000000FF00FFFF00FFFFFF00FFFFFFFF00000000FFFF),
    .INIT_1F(256'h000000FF00FFFFFEFEFFFEFFFEFFFFFFFF0000000000FF00FF00FFFF000000FF),
    .INIT_20(256'hFFFFFFFF00FF0000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF00FF00FFFF0000),
    .INIT_21(256'h0000FF00FF00FF000000FF00FFFF00FF00FFFFFFFFFFFF00FF00FF00FFFF00FF),
    .INIT_22(256'h0000FFFF000000FFFF0000000000FF00FF000000000000FF00000000FF00FF00),
    .INIT_23(256'h00000000FFFFFFFFFF00FF0000FF00000000FFFF0100000100000000FF00FF00),
    .INIT_24(256'hFF000000FF00FF0000000001FFFF00FFFFFFFF0000FF000000FF0000FF000000),
    .INIT_25(256'h00FFFFFFFF00FF00000000FF00000000FF01FF0000FFFFFFFFFF000000FF00FF),
    .INIT_26(256'h00FF0000FFFFFF00FF00FF0000000000FF00FFFE00000000FFFFFF0000FFFF00),
    .INIT_27(256'hFFFFFF000000FF0100FF00FFFFFF00FFFF00FFFF00FF0000FFFFFFFF00FF00FF),
    .INIT_28(256'h00FF00FF00FFFF000000FF00FF000000FF01000000FFFFFEFFFFFF0000000000),
    .INIT_29(256'h0000FFFFFF00FFFF00FFFF00FF0000FFFF0000FFFFFF00000000FF00FFFF0000),
    .INIT_2A(256'h00FFFFFF0000FF00FF00FFFFFFFFFFFF0000000000FF00FFFFFFFFFF0000FFFF),
    .INIT_2B(256'hFFFFFFFFFF0000FFFF0000FF00FFFF00000000FFFF0000FF0000FF000000FFFF),
    .INIT_2C(256'hFFFFFFFFFF000000010000FFFF0000FFFFFF000000000100FFFF000000FFFFFF),
    .INIT_2D(256'hFF00FF00FF00FFFFFFFFFF00FF00FFFFFFFF0000FF0000FF0000000000000000),
    .INIT_2E(256'h00FF00FFFFFFFF00FFFF00FFFFFF00FF0000000000FFFFFF000000FF01FF00FF),
    .INIT_2F(256'h000000000000FFFFFFFF00FFFFFFFFFF00000001FF00FFFF000000FFFF00FFFF),
    .INIT_30(256'hFF000000FF00FFFF0000FFFFFFFF0000FFFFFF000000000000FFFF0000FFFFFF),
    .INIT_31(256'hFF00FF00FFFF0000FFFF0001FEFF00FFFFFFFF00FFFF00FFFFFFFF000000FFFF),
    .INIT_32(256'h00000100010000FFFF00FFFFFF000000FFFFFF00FFFFFFFF00FFFFFF000101FF),
    .INIT_33(256'hFF0000FF0000000000FF00FFFF00FF000000FF00FF000000FFFF0000FFFF0000),
    .INIT_34(256'h0000000000000000FF000000FF000000FF0000FFFF00FF00FFFF0000FF00FF00),
    .INIT_35(256'h0100000000FF00FFFFFFFF0000FF0000FFFF00FFFFFF00FFFF00FF0000000000),
    .INIT_36(256'h00FF0000000000FF0000FF00FF00FF00FFFF000000000000FF0000FFFF0000FF),
    .INIT_37(256'h0000FFFF0000000000FFFF00FF0000FFFF00FF01000000FF0000FFFFFF00FFFF),
    .INIT_38(256'h0000FF00FF0000FF00FFFFFFFF0000FFFF00FFFF00FF00FFFFFFFF00FE01FF00),
    .INIT_39(256'hFF00FFFFFFFFFF00FF00FFFF00FF00000000FF00FFFFFFFFFFFFFFFFFFFFFF00),
    .INIT_3A(256'hFFFF0000FFFF00000000FFFF00FFFFFFFF00FF00FF00FFFF00FF0000FFFF0000),
    .INIT_3B(256'h00FFFF0000FF0000FFFFFF00FF000000FF00FFFF00FF00FF000000FF00000000),
    .INIT_3C(256'h00FFFFFFFF0000FF00FFFFFF00FF0000FF00FF010000FF0000FFFF0000FF0000),
    .INIT_3D(256'hFF00FF000000FF00FF0000FF00FFFEFF00000000FFFF00FF00FF0000FFFF00FF),
    .INIT_3E(256'h000000FFFFFF00FF00FF000000000000FFFF00FF00FFFF00000000FEFF0000FF),
    .INIT_3F(256'h00FF0000FF0000FFFF00FFFF00FF00FF0001FF00FF00FF000000FF0000000000),
    .INIT_40(256'h00FF0000FF00000000FFFF00000000FF00FFFF00000000FF0000FF00FF00FF00),
    .INIT_41(256'hFF00FFFF00FFFF0000FF00FFFF0000FF0000FF00FFFF0000FFFF00FFFF00FF00),
    .INIT_42(256'hFF00FFFFFFFFFFFFFF0000FFFFFFFFFF00FFFF000000FFFFFF0000FFFFFFFFFF),
    .INIT_43(256'hFFFFFFFF00FFFFFFFFFFFFFFFF00FFFFFF00FF000000FFFF000000FF00FF00FF),
    .INIT_44(256'h0000FF00FF00FF000000000000FFFF000000FFFFFF00FFFF000000FF00FFFF00),
    .INIT_45(256'h0000FF00000000FFFF000000FF00010000FFFF00FF00FF00FF0000FFFFFFFFFF),
    .INIT_46(256'h0000000000FFFF00FFFF00FFFF00FF000000010001010000FF0000FF00FFFF00),
    .INIT_47(256'h000000FFFF0000FF00FF00000000FF00FF00FFFFFFFFFF00FF0000000000FF00),
    .INIT_48(256'h0000000000010000FF00FF0000FFFFFFFFFF0000FFFF00FF000000FF0000FFFF),
    .INIT_49(256'h00FF0000FF00FFFFFF00FF000000000000FF00FFFF00FFFF000000FFFF000000),
    .INIT_4A(256'h00FF000000FFFFFF00FEFFFFFFFF0001000000000000000000FF00FF00000000),
    .INIT_4B(256'h0000FFFF00FF00FF0000FFFF00FFFEFEFFFF0000FFFFFFFF0000FF00FFFFFF00),
    .INIT_4C(256'hFFFF00FFFFFF00FFFF00FF000000FFFFFF00FFFF0000FF0000FFFF00FFFFFFFF),
    .INIT_4D(256'hFFFF01FFFFFFFF0001FFFF00FF0000000000FFFFFFFFFFFF00FFFFFF00FF0000),
    .INIT_4E(256'h00FFFFFFFF00FFFF00FF000000FFFFFFFFFFFF0000000000000000FF00FFFFFF),
    .INIT_4F(256'h0000FFFFFFFFFFFFFFFFFF00FFFFFFFF00FFFFFFFFFFFF00FFFFFF00000000FF),
    .INIT_50(256'hFFFFFEFF00FFFFFFFFFFFFFFFFFF00FFFF00FFFFFFFF000000FF00FFFFFF0000),
    .INIT_51(256'hFF00FFFF00FF0000FFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF000000FFFF00),
    .INIT_52(256'hFFFFFE000000FFFFFFFF00FF0000FFFF00FF00FFFF00FFFF000000FFFF00FF00),
    .INIT_53(256'h00FFFF00FFFF000000000000FF00FF00FFFFFF00FF0000FF00FF000000FF00FF),
    .INIT_54(256'hFF0000FFFE0000FEFFFFFF00FFFFFF0000FF00000000000000FFFF0000FFFF00),
    .INIT_55(256'h0000FFFF000000FFFF0000FF0000000000FF00000000FF0000FFFFFF00000000),
    .INIT_56(256'h00FF0000FFFF000000000000FF000000FFFF00FF00000000000000FF00FFFFFF),
    .INIT_57(256'hFFFF00FF000000FFFF0000FF0000FFFF000000FFFFFF0000FFFF00FF0000FF00),
    .INIT_58(256'hFFFFFF00FFFF00FE00FF0000FFFFFF000000000000FFFFFFFF0000000000FFFF),
    .INIT_59(256'hFF00FFFFFF00FFFFFF00FFFF000000FFFFFFFF00FF00FFFFFF0001FF00FF00FF),
    .INIT_5A(256'hFF00FFFF000000FFFF00FEFF0000FFFFFFFF0000FF00FF0000FF00FF00000000),
    .INIT_5B(256'h00FFFFFFFF0000FF00FFFF00FFFF0000FFFFFEFF00FF00000000FF00FFFF0000),
    .INIT_5C(256'hFF000000FFFFFFFF0000FF000000000000FFFF000000FF00FFFF000000000000),
    .INIT_5D(256'hFFFFFFFF0000FF0000000000FFFFFFFF0000000000FF01FFFFFF00FFFFFF00FF),
    .INIT_5E(256'h00FFFFFFFFFFFEFFFF00FF0000000000000001FF00000000FFFFFFFEFFFEFEFF),
    .INIT_5F(256'hFF000000FF0000FFFFFF00FEFFFE00FF0000FF000000FFFF0000FF0000FF00FF),
    .INIT_60(256'hFFFF00FF0000FFFF00FF00FF00FFFFFFFFFFFEFFFFFFFF0000FFFFFF00FFFF00),
    .INIT_61(256'hFFFFFFFF0000FFFFFFFFFF00FF00000000000000FFFF00FEFF0000FFFF00FF00),
    .INIT_62(256'h0000FFFF00000000FF0000FF00FF00FFFFFFFF00FF000000FF00FFFFFF00FF00),
    .INIT_63(256'h00000000000000FFFFFF00FF0000FF000000FF00FF00FFFF00000001FF010000),
    .INIT_64(256'h0000000000000000000000FF00FFFF000000FFFF000000000000FFFFFF000001),
    .INIT_65(256'h00010000FFFF00FFFF0001000000FF0000000000FF00FF00FF00010000000000),
    .INIT_66(256'h0000000000000000FFFFFFFF0000FF0000FFFFFFFF00FFFF0000FFFF00000000),
    .INIT_67(256'hFF00FF0000FFFF0000000000FFFFFEFFFF00FFFF0000FF000000FF000000FF00),
    .INIT_68(256'hFFFFFF00FFFF00FF00FFFFFFFF00FFFFFFFFFFFFFFFF00FF0000FF00FF0000FF),
    .INIT_69(256'hFFFFFF0000000000FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFEFFFFFFFFFF00FFFF),
    .INIT_6A(256'h0000FF00FF00FFFF00FF00FFFFFF0000FF0000000000FF00FF00FFFFFFFFFF00),
    .INIT_6B(256'h00FF0000FF0000FF00FFFFFFFF00FF00FFFF0000FF0000000000FF000000FFFF),
    .INIT_6C(256'hFFFF00FF00FFFFFEFFFFFFFFFF0000FFFFFFFFFFFF0000FFFFFFFF00FFFF0000),
    .INIT_6D(256'h00FFFFFFFFFFFF00FFFFFFFF00FF00FFFFFFFF00000000FF0000FF00FF000000),
    .INIT_6E(256'h01FFFF00FFFFFFFFFFFFFFFFFFFFFF0000FF000100FFFF000000FFFFFFFFFFFF),
    .INIT_6F(256'h0001FFFF0000FF00FF000000000000FFFFFFFF0000FF0000FFFFFF00FF0000FF),
    .INIT_70(256'h0000FF0000FFFFFFFFFFFF000000FF0000FF000000000000FFFF00000000FF00),
    .INIT_71(256'h0000FFFFFEFF000000FF0000FFFFFF0000FF00FFFFFF00FFFF00FFFF00FFFFFF),
    .INIT_72(256'h00FFFFFF00FF00FFFFFFFFFF0000FFFFFFFFFF00FFFFFF00FF00FFFF0000FF00),
    .INIT_73(256'hFF0000FFFFFF000000FF00FF000000FFFF0000FFFE000000FF000000000000FF),
    .INIT_74(256'h01FFFF00FFFF00FFFFFFFFFFFFFFFFFFFF00FF00FFFF00FFFFFFFF0001000000),
    .INIT_75(256'h0000000001000100000000FFFF00FF00FFFFFFFF00FF00FFFF00FFFF00000000),
    .INIT_76(256'hFF00FFFF000000FF00000000010000FF00FF0000FFFFFF00FF00FFFF000000FF),
    .INIT_77(256'hFF00FF00FF00FFFFFFFFFFFFFFFF0000FF00FF00FFFF00FFFFFFFFFF00FFFF00),
    .INIT_78(256'hFF00FFFFFF0000FF00FF00FFFFFF00FFFFFFFEFFFEFFFFFE00FF00FF00FF00FF),
    .INIT_79(256'hFF0000FFFFFFFFFFFF00FFFFFFFF00FFFFFF00FFFEFEFEFEFEFEFFFF000100FF),
    .INIT_7A(256'h00FF000001FFFF000000FF00FF0000FF00FFFF0000FFFFFF00FF00FFFFFF00FF),
    .INIT_7B(256'h0000FF000000000000000000FF00FF0000FFFFFEFF000000FFFF00FFFF0000FF),
    .INIT_7C(256'hFFFFFFFFFFFF0000000000000000FFFFFFFF00FF0000FF0000FF00FFFFFFFF00),
    .INIT_7D(256'hFFFF0000FFFFFF00FFFFFFFF000000FFFF0000FFFFFFFFFF00FFFFFFFFFFFFFF),
    .INIT_7E(256'hFF0000000000FF0000FFFFFF0000FF00000000FF000000FFFEFFFFFF0000FF00),
    .INIT_7F(256'h0000FF00FF00FFFFFFFFFF0001FF00FFFFFFFFFFFFFFFF00FF0000FF0000FF00),
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
module weight1_bram_0_blk_mem_gen_prim_wrapper_init__parameterized6
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
    .INITP_00(256'h8695691513A49190F0DFD8A36417B47F928AD467D805D63A6725012DF5BC6A4A),
    .INITP_01(256'hE106997A00CEBFF9267ACA438BC6003FDC60F3214AA63B41A99DC76D752D31F2),
    .INITP_02(256'hE45D76FF1FF13C71BE3E9AB3F27C4FFE4A2C7F65FF23CCD5603F6205023108C3),
    .INITP_03(256'hF88A4F86E55A988CD9EBF75684767DB509C89900F24E805F473881137F0601F9),
    .INITP_04(256'h0B413A2E168485A9B844E00FF344C184F355798825BDD44B85A3AD7203AADF6C),
    .INITP_05(256'h8D9A0C68DE4808E8663FD29A79E738175CC0108DC533E36EBB23C45CB6050FC4),
    .INITP_06(256'h1A7DF0488A527D875037A53C8A7819F86F84F298AEDBA31E20A7E6C504F546A1),
    .INITP_07(256'h6B12BE2B7EE65D221630EF4CF84223296BEDE88D1F8873F9B489B207249018FF),
    .INITP_08(256'hBF75EA29349DF113FAB145B6E489CE7829D4EDF22FD9A0CD7B5D9AFCF7032DFB),
    .INITP_09(256'h1C5A05BEC95B2E09C85D4FDBD415CECF9A77C2EA6CC21B2D7E6EEF2D54FF52FB),
    .INITP_0A(256'h07FFAE6ECF7366BFFF4C5335E90B60C9A9E6811FCFA6F7A7912462E38724DCB0),
    .INITP_0B(256'hBEAF6FDFBF7ADA8FF821C83CB0DE21C319140003300000ED60082DE93028389C),
    .INITP_0C(256'h458862EFDA80B23EBA10604F3D0B4DEC81ED39B40BA9E3D794FFF3C725EFC6FB),
    .INITP_0D(256'h00000000000000000000000000000000000000000000DDA640D60285E5B94E45),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'hFFFFFFFF00FF00FFFF00FFFFFFFF000000FFFF00FF00FF0000FF0000FF00FF00),
    .INIT_01(256'h00FFFF0000FFFFFF0000FF0000FF00FF00000000000000FF0000FF00FFFF00FE),
    .INIT_02(256'hFFFF00FFFF0000000000000000FF00FFFFFF00FF00FFFF000000FFFFFF00FF00),
    .INIT_03(256'hFF0000FF0000FE00FF000000FF00FF00FFFF00FF00FF000000FFFF0000FFFFFF),
    .INIT_04(256'h00FFFF0100FF0000000000FF00FFFFFFFF00FFFF00FF000000FFFFFFFFFFFFFF),
    .INIT_05(256'hFFFFFFFF00000000FFFF00FFFFFFFFFFFFFF00FFFF000000FF00FF000000FFFF),
    .INIT_06(256'h000000FF0000FFFFFF00FF0000FF0000FF0000FF010100FFFF0000FF00000000),
    .INIT_07(256'hFF00000000FFFF00FF0000FF00FF00FF00FFFF00FF0000FF000000FF00FF00FF),
    .INIT_08(256'h00FFFFFF00FF00FF0000FF00FFFF00FF0001FFFF010000FFFFFFFFFF0000FF00),
    .INIT_09(256'hFF00FF00FF0000FFFF0000FFFFFF00FFFFFF000000FFFFFF00FFFF00FFFF00FF),
    .INIT_0A(256'h00FF0000FF00FF00FF00FF0001FFFF000000FFFFFF00FFFF00FF0000000000FF),
    .INIT_0B(256'hFFFF00FFFFFF000000FFFF0001000001FFFFFFFF0000FFFF0000FF00000000FF),
    .INIT_0C(256'hFF000000FF00FFFFFFFF000000FFFF0000000000000000000000FFFFFFFFFFFF),
    .INIT_0D(256'h0000FF0000FFFF0000FFFFFFFF00FF00FFFF0000FF00FF0000FF00000001FFFF),
    .INIT_0E(256'h0000000000000000FFFF0000FFFFFF00FF00FFFFFFFFFFFFFFFFFFFFFF0000FF),
    .INIT_0F(256'hFFFFFF00000000FF0000000000FFFF00FF0000FEFF0000FF00FFFFFFFF00FF00),
    .INIT_10(256'h000001010000FF000000FFFF000000FF00000000FF000000FFFF00000000FFFF),
    .INIT_11(256'h00FFFE00000001000000FFFFFFFFFFFF00FFFF000000FF000000000000FF00FF),
    .INIT_12(256'hFFFFFFFFFFFFFFFF0000FF000000FFFEFFFF0000FFFF0000FFFF00FF00FF00FF),
    .INIT_13(256'h00FF0000FF00FF000000FF00FFFF000000FFFFFEFEFEFFFF00FFFF0000FF00FF),
    .INIT_14(256'hFFFFFFFF0000FF0000FFFFFFFFFF000000FF0000FFFFFEFFFEFEFEFFFFFFFF00),
    .INIT_15(256'hFF00FFFFFEFFFE000000FFFFFFFFFF00FF0000FFFF00FF00FF00FFFE0000FEFE),
    .INIT_16(256'h000000FFFFFFFFFFFFFFFFFF000000FF0000FFFFFFFF010000FFFFFF000000FF),
    .INIT_17(256'hFFFFFF0000FF000000FF00FFFFFF00FF00FFFFFF00FFFF00FFFFFFFFFFFFFFFF),
    .INIT_18(256'h00FFFFFFFFFFFFFF0000010000FFFF0000000000000000FFFFFFFFFFFF0000FF),
    .INIT_19(256'h00FF000000FFFFFF0000FFFFFF000100FF010000000000FF000000FF0000FFFF),
    .INIT_1A(256'hFFFFFFFF0000FF0000FF0000FFFFFF00FF0100000000000000FF00FFFFFFFFFF),
    .INIT_1B(256'h00000000FF0000FFFFFF0000FF000000FF0000FFFF0000FF0001000000000000),
    .INIT_1C(256'hFF00000000FF000000FFFFFF00FFFF0000FFFFFFFFFF00FFFF00FFFF00FF00FF),
    .INIT_1D(256'hFFFF00FFFF0000FFFFFFFF00FF00FFFFFFFFFEFF00FFFFFF00FF00FF00FFFF00),
    .INIT_1E(256'hFFFFFF0000FF00FF00FF00FFFF00FF00FF0000FFFF000000FF000000FFFF0000),
    .INIT_1F(256'hFFFFFFFFFF000000FF000000FF00FF0000FF0000FFFFFFFFFF00000000FFFF00),
    .INIT_20(256'h000000000000FFFFFF00FF00FF00FF00FFFF00FFFFFFFFFF00FFFF00FFFF0000),
    .INIT_21(256'hFF00000000FF00FFFF00FF000000FFFFFF00FF00FFFF00FF00FFFFFF0000FF01),
    .INIT_22(256'h0000FF0000FF00FFFF00FFFFFFFF00FFFFFF00FF00FF000000FF0000FF00FFFF),
    .INIT_23(256'hFFFEFFFF0000FFFF00FF00FF00FF00FF00FFFFFEFF0000FFFF000000FF010000),
    .INIT_24(256'hFFFFFFFF0000FFFF00FF000000FF0000FFFF0000000000FFFF00000000FF0001),
    .INIT_25(256'hFF00FFFFFF00000000FF000000FF0000FFFFFF000000000000000000FFFFFFFE),
    .INIT_26(256'h000000FF00FFFF00FF00010000FF0000FF00000000FF00FFFF00FF00FF0000FF),
    .INIT_27(256'h00000000FF00FFFF00FF0000000000FF0000FFFFFF00FF000000FF00FFFFFF00),
    .INIT_28(256'hFF00FFFF00FFFF000000000000FF00FF00000000FFFFFFFFFFFF000000FF0000),
    .INIT_29(256'hFF00FFFFFF00FFFF0000FF000000FFFFFFFF000000FF000000FF00FFFFFF0000),
    .INIT_2A(256'hFFFF000000FF00FF0000FFFF0000FFFFFFFFFF000000FFFF00FFFF00FFFFFF00),
    .INIT_2B(256'h00FF00FFFFFF0000FFFF000000000000010000FF00000000FF000000FFFF00FF),
    .INIT_2C(256'h00FFFFFFFF0000FFFFFFFF0000FFFFFF0000FFFFFF000000000000FF00FFFFFF),
    .INIT_2D(256'h00FEFF0000FFFF000000FFFFFFFFFFFEFFFF00FF0000FF00FF0000FFFF00FF00),
    .INIT_2E(256'hFFFF00FFFFFFFF0000FF0000FF00000000000000FF000000FFFFFF00FF000000),
    .INIT_2F(256'hFE000000FFFF00FFFF0000FFFF00FF0000000001FFFF000000FFFF00FF000000),
    .INIT_30(256'h0000000000FF0000FFFFFFFF00FF00FF00FF000000FFFF00FF00FF00000000FF),
    .INIT_31(256'h0000FF0000000000FE00FF0000FFFFFFFFFFFF0000FFFF00FFFF000000FF00FF),
    .INIT_32(256'hFF00FE00FFFFFF00FFFF00FFFF00FFFFFF00FF000000FFFF000000FFFFFFFF00),
    .INIT_33(256'h00FFFF00FFFEFEFFFF00000000FF0000FFFFFFFF0000FF00FF0000FFFF000000),
    .INIT_34(256'hFF000000FF00FF0001FFFFFFFE000000000000FFFF0000FFFFFFFFFFFF000000),
    .INIT_35(256'h00FF00FF000000000000FFFF00FFFFFFFF00FF0000FF00FF0000FFFEFFFF0000),
    .INIT_36(256'hFF000000FF00FF0000FF00FF0000FF0000FFFFFEFFFF00FFFF00000000FFFFFF),
    .INIT_37(256'h000000FFFF00FF0000FFFFFFFFFF00FFFFFFFFFF0000000000FF0000FF000000),
    .INIT_38(256'h0000FF0000FF0000FF0000FF00000001000000FFFF000000FFFFFFFFFFFFFFFF),
    .INIT_39(256'hFF00FFFF00FF0000FF000000FF0000FFFF00FFFF0000FF000000000000FFFFFF),
    .INIT_3A(256'h000000FFFFFFFFFFFF000100FF00000000FFFFFF0000FFFFFFFFFFFFFF0000FF),
    .INIT_3B(256'h00FFFF00FF00FFFFFFFFFF00FFFF00FFFFFFFF00FF000000FF000000FFFF00FF),
    .INIT_3C(256'hFFFFFFFFFF00000000FF00000000FF000000FF000000FFFF0000FF00FF0000FF),
    .INIT_3D(256'h000000FF00FFFF000000FFFF00000000FFFFFF00FFFFFFFF00FE0000FFFF0000),
    .INIT_3E(256'h00FFFFFFFFFFFF00FFFFFF0000FFFF0000FF00FFFFFF00FF0000FF000000FF00),
    .INIT_3F(256'h00FFFF00FF00FFFF000000FF0000FF01FF00FFFFFFFFFF000000FF00FF00FFFF),
    .INIT_40(256'hFFFFFFFF00FFFFFF000000000000FFFF0000FF00FFFF00FFFFFFFFFFFF00FFFF),
    .INIT_41(256'h00FFFFFFFF00FFFF00FF00FFFEFF00FFFF0000FFFF00FF00FFFEFFFFFFFF0000),
    .INIT_42(256'h0000FF00FFFFFFFFFFFF00FFFF0000FFFF00FF0000000000FFFF0000FFFF00FF),
    .INIT_43(256'h0000FF00FF0000FFFFFF00FF00FF0000FFFFFF00FFFF00FFFFFFFFFF0000FF00),
    .INIT_44(256'hFFFFFF0000FF0000FF000000FF0000FFFFFF0000FFFFFF0000FFFFFFFE000000),
    .INIT_45(256'hFFFFFFFFFF00FF00FF00FFFF000000FF00FF000000FF00FFFF00FFFF00FFFF00),
    .INIT_46(256'h0000FFFF00FF0000FF0000FFFFFF00FFFFFFFFFF000000FF000000FF0000FFFF),
    .INIT_47(256'hFF00FFFFFFFFFFFF00FFFFFF00FF00FFFFFFFF00FF00FF000001FF00FF0000FF),
    .INIT_48(256'h00FF01FF00FF0000FFFFFFFFFFFFFFFF00FF00FF0000FF00FFFFFFFFFF00FFFF),
    .INIT_49(256'h00FFFFFFFFFFFF0000FFFF00FFFFFF00FFFFFF00FFFFFFFF0000FF00FFFF00FF),
    .INIT_4A(256'h00FFFF00FFFF0000FFFF00000000FF00000000FFFF00FFFF0000FF00FFFF00FF),
    .INIT_4B(256'hFF0000FFFF00FF0000FFFFFF00FFFFFFFFFF00000000FF00FFFFFF00FF00FF00),
    .INIT_4C(256'hFFFF00FF00FF0000000000FF00FF00FFFFFF0000FFFFFF00FFFF0000FFFFFFFF),
    .INIT_4D(256'hFFFF0000FF00000000FF00FFFFFF00FF00FF0000FFFFFFFFFFFF00FFFF00FFFF),
    .INIT_4E(256'hFFFF0000FF0000FF00FF00FFFF00FFFF0000FF00FFFFFF0000000000FF0000FF),
    .INIT_4F(256'h000000FFFFFF000000FF00FFFF00FF000000000000FE00FFFF00FFFFFFFFFF00),
    .INIT_50(256'hFF00000000FFFFFF0000FF0000FF0000FFFF00FFFFFF0000FF00FFFF00000000),
    .INIT_51(256'hFF0000FF000000FE0000FF0000FF000000FFFF000000FF00FFFFFF000000FFFF),
    .INIT_52(256'hFFFE0000FFFFFFFFFF00FF0000FFFF00FFFFFFFF00FFFFFFFF00FF0000FFFFFF),
    .INIT_53(256'hFF00FF00FF0000FFFFFFFF0000FFFF00FF000000000000FF000000FFFFFFFFFF),
    .INIT_54(256'hFFFEFF00FF0000FF00000000FF00FFFF00FFFF0000000000FFFF0000FF0000FF),
    .INIT_55(256'hFFFFFFFFFFFFFFFF00FF0000FFFF010000FF00FF0000FFFF0000FFFF00FF00FF),
    .INIT_56(256'hFFFF0000FFFEFFFF00FFFFFF0000FFFE00FFFF0000FFFF00FF00FFFFFFFFFFFF),
    .INIT_57(256'h0000000000FFFFFEFFFFFFFFFFFFFFFFFF00FF00FFFFFF0000FFFF00FFFFFF00),
    .INIT_58(256'h0100FFFF000000000000FF00FF0000000000FFFFFF000000FF0000FFFFFF0000),
    .INIT_59(256'h00FFFF000001000000000000FF0000000000FF00FFFF00FFFFFFFF00FF0000FF),
    .INIT_5A(256'h0000FFFF0000000000010000000000000000000100000000FFFEFF00FFFF00FF),
    .INIT_5B(256'h000100FFFF0000FF000000FF00FF00000000000000000001000000000000FFFF),
    .INIT_5C(256'hFF00FFFF00000000FFFF00FFFFFFFF000000FF00000000FFFFFF00010000FFFF),
    .INIT_5D(256'hFEFFFFFFFF0000000000FF00000000FFFFFF0000FF0000000000FFFFFFFF0000),
    .INIT_5E(256'hFF00FFFFFFFFFFFF00FFFFFFFF00FF00FFFF00FFFF00FF00FF000000FFFFFFFF),
    .INIT_5F(256'hFF00FFFEFFFFFF00FF00FE00FEFFFFFF00FFFF00FFFFFFFFFFFF00FFFFFFFFFF),
    .INIT_60(256'h0000FF0000FF00FFFFFFFF00FFFFFEFFFFFF000000FFFF00FFFFFFFFFF00FFFF),
    .INIT_61(256'hFF0000FF00FF0000FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFF000000FFFFFF),
    .INIT_62(256'h01000000FF00FFFFFF00FF00FF0000FFFFFFFF000000FFFFFFFF00FF00FFFFFF),
    .INIT_63(256'hFF000000010000FFFFFFFF00FFFF00FF0000FFFFFF0000FFFF00FFFF00FF0000),
    .INIT_64(256'h0000FFFFFFFF00FF00000000FF00FFFF00FF0000FFFF00FFFFFFFF00FFFF0000),
    .INIT_65(256'hFF00FFFFFF00FF00000000FF0000000000FFFF000000000000FF0000FFFFFFFF),
    .INIT_66(256'hFFFF00FFFF00FF00FF00000000000000FF00FFFF0000FF000000FFFFFEFFFF00),
    .INIT_67(256'h00FF000000FF00FFFF000000FF00000000FFFF000000FF00FFFFFF00FEFFFFFF),
    .INIT_68(256'hFFFFFF0000FF00FFFF00FFFFFF0000FF00FF0000FFFFFF0000FF000000FF00FF),
    .INIT_69(256'h00FF000000000000FFFF00FF00FFFF00000000000000FF00FF01000000FF00FF),
    .INIT_6A(256'h00000000000000000000000000000000FFFF00FFFFFF00FFFF00FF0000FFFF00),
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
module weight1_bram_0_blk_mem_gen_top
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

  weight1_bram_0_blk_mem_gen_generic_cstr \valid.cstr 
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
(* C_COUNT_36K_BRAM = "7" *) (* C_CTRL_ECC_ALGO = "NONE" *) (* C_DEFAULT_DATA = "FEFE" *) 
(* C_DISABLE_WARN_BHV_COLL = "0" *) (* C_DISABLE_WARN_BHV_RANGE = "0" *) (* C_ELABORATION_DIR = "./" *) 
(* C_ENABLE_32BIT_ADDRESS = "0" *) (* C_EN_DEEPSLEEP_PIN = "0" *) (* C_EN_ECC_PIPE = "0" *) 
(* C_EN_RDADDRA_CHG = "0" *) (* C_EN_RDADDRB_CHG = "0" *) (* C_EN_SAFETY_CKT = "0" *) 
(* C_EN_SHUTDOWN_PIN = "0" *) (* C_EN_SLEEP_PIN = "0" *) (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     11.074251 mW" *) 
(* C_FAMILY = "artix7" *) (* C_HAS_AXI_ID = "0" *) (* C_HAS_ENA = "1" *) 
(* C_HAS_ENB = "0" *) (* C_HAS_INJECTERR = "0" *) (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
(* C_HAS_MEM_OUTPUT_REGS_B = "0" *) (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
(* C_HAS_REGCEA = "0" *) (* C_HAS_REGCEB = "0" *) (* C_HAS_RSTA = "0" *) 
(* C_HAS_RSTB = "0" *) (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
(* C_INITA_VAL = "0" *) (* C_INITB_VAL = "0" *) (* C_INIT_FILE = "weight1_bram_0.mem" *) 
(* C_INIT_FILE_NAME = "weight1_bram_0.mif" *) (* C_INTERFACE_TYPE = "0" *) (* C_LOAD_INIT_FILE = "1" *) 
(* C_MEM_TYPE = "0" *) (* C_MUX_PIPELINE_STAGES = "0" *) (* C_PRIM_TYPE = "1" *) 
(* C_READ_DEPTH_A = "15700" *) (* C_READ_DEPTH_B = "15700" *) (* C_READ_LATENCY_A = "1" *) 
(* C_READ_LATENCY_B = "1" *) (* C_READ_WIDTH_A = "16" *) (* C_READ_WIDTH_B = "16" *) 
(* C_RSTRAM_A = "0" *) (* C_RSTRAM_B = "0" *) (* C_RST_PRIORITY_A = "CE" *) 
(* C_RST_PRIORITY_B = "CE" *) (* C_SIM_COLLISION_CHECK = "ALL" *) (* C_USE_BRAM_BLOCK = "0" *) 
(* C_USE_BYTE_WEA = "0" *) (* C_USE_BYTE_WEB = "0" *) (* C_USE_DEFAULT_DATA = "1" *) 
(* C_USE_ECC = "0" *) (* C_USE_SOFTECC = "0" *) (* C_USE_URAM = "0" *) 
(* C_WEA_WIDTH = "1" *) (* C_WEB_WIDTH = "1" *) (* C_WRITE_DEPTH_A = "15700" *) 
(* C_WRITE_DEPTH_B = "15700" *) (* C_WRITE_MODE_A = "WRITE_FIRST" *) (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
(* C_WRITE_WIDTH_A = "16" *) (* C_WRITE_WIDTH_B = "16" *) (* C_XDEVICEFAMILY = "artix7" *) 
(* ORIG_REF_NAME = "blk_mem_gen_v8_4_4" *) (* downgradeipidentifiedwarnings = "yes" *) 
module weight1_bram_0_blk_mem_gen_v8_4_4
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
  weight1_bram_0_blk_mem_gen_v8_4_4_synth inst_blk_mem_gen
       (.addra(addra),
        .clka(clka),
        .dina(dina),
        .douta(douta),
        .ena(ena),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_v8_4_4_synth" *) 
module weight1_bram_0_blk_mem_gen_v8_4_4_synth
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

  weight1_bram_0_blk_mem_gen_top \gnbram.gnativebmg.native_blk_mem_gen 
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
