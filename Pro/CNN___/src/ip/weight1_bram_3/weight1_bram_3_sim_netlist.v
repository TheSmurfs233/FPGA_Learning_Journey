// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Wed Jul  2 15:17:00 2025
// Host        : DESKTOP-I8GGJRG running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/FPGA_Learning_Journey/Pro/CNN___/src/ip/weight1_bram_3/weight1_bram_3_sim_netlist.v
// Design      : weight1_bram_3
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tfgg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "weight1_bram_3,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module weight1_bram_3
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
  (* C_INIT_FILE = "weight1_bram_3.mem" *) 
  (* C_INIT_FILE_NAME = "weight1_bram_3.mif" *) 
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
  weight1_bram_3_blk_mem_gen_v8_4_4 U0
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
module weight1_bram_3_bindec
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
module weight1_bram_3_blk_mem_gen_generic_cstr
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

  weight1_bram_3_bindec \bindec_a.bindec_inst_a 
       (.addra(addra[13:12]),
        .ena(ena),
        .ena_array(ena_array));
  weight1_bram_3_blk_mem_gen_mux \has_mux_a.A 
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
  weight1_bram_3_blk_mem_gen_prim_width \ramloop[0].ram.r 
       (.addra(addra),
        .clka(clka),
        .dina(dina[0]),
        .douta(douta[0]),
        .ena(ena),
        .wea(wea));
  weight1_bram_3_blk_mem_gen_prim_width__parameterized0 \ramloop[1].ram.r 
       (.addra(addra),
        .clka(clka),
        .dina(dina[2:1]),
        .douta(douta[2:1]),
        .ena(ena),
        .wea(wea));
  weight1_bram_3_blk_mem_gen_prim_width__parameterized1 \ramloop[2].ram.r 
       (.addra(addra),
        .clka(clka),
        .dina(dina[4:3]),
        .douta(douta[4:3]),
        .ena(ena),
        .wea(wea));
  weight1_bram_3_blk_mem_gen_prim_width__parameterized2 \ramloop[3].ram.r 
       (.addra(addra),
        .clka(clka),
        .dina(dina[6:5]),
        .douta(douta[6:5]),
        .ena(ena),
        .wea(wea));
  weight1_bram_3_blk_mem_gen_prim_width__parameterized3 \ramloop[4].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[4].ram.r_n_0 ,\ramloop[4].ram.r_n_1 ,\ramloop[4].ram.r_n_2 ,\ramloop[4].ram.r_n_3 ,\ramloop[4].ram.r_n_4 ,\ramloop[4].ram.r_n_5 ,\ramloop[4].ram.r_n_6 ,\ramloop[4].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\ramloop[4].ram.r_n_8 ),
        .addra(addra[11:0]),
        .clka(clka),
        .dina(dina[15:7]),
        .ena_array(ena_array[0]),
        .wea(wea));
  weight1_bram_3_blk_mem_gen_prim_width__parameterized4 \ramloop[5].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[5].ram.r_n_0 ,\ramloop[5].ram.r_n_1 ,\ramloop[5].ram.r_n_2 ,\ramloop[5].ram.r_n_3 ,\ramloop[5].ram.r_n_4 ,\ramloop[5].ram.r_n_5 ,\ramloop[5].ram.r_n_6 ,\ramloop[5].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\ramloop[5].ram.r_n_8 ),
        .addra(addra[11:0]),
        .clka(clka),
        .dina(dina[15:7]),
        .ena_array(ena_array[1]),
        .wea(wea));
  weight1_bram_3_blk_mem_gen_prim_width__parameterized5 \ramloop[6].ram.r 
       (.DOADO({\ramloop[6].ram.r_n_0 ,\ramloop[6].ram.r_n_1 ,\ramloop[6].ram.r_n_2 ,\ramloop[6].ram.r_n_3 ,\ramloop[6].ram.r_n_4 ,\ramloop[6].ram.r_n_5 ,\ramloop[6].ram.r_n_6 ,\ramloop[6].ram.r_n_7 }),
        .DOPADOP(\ramloop[6].ram.r_n_8 ),
        .addra(addra[11:0]),
        .clka(clka),
        .dina(dina[15:7]),
        .ena_array(ena_array[2]),
        .wea(wea));
  weight1_bram_3_blk_mem_gen_prim_width__parameterized6 \ramloop[7].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[7].ram.r_n_0 ,\ramloop[7].ram.r_n_1 ,\ramloop[7].ram.r_n_2 ,\ramloop[7].ram.r_n_3 ,\ramloop[7].ram.r_n_4 ,\ramloop[7].ram.r_n_5 ,\ramloop[7].ram.r_n_6 ,\ramloop[7].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\ramloop[7].ram.r_n_8 ),
        .addra(addra),
        .clka(clka),
        .dina(dina[15:7]),
        .ena(ena),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_mux" *) 
module weight1_bram_3_blk_mem_gen_mux
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
module weight1_bram_3_blk_mem_gen_prim_width
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

  weight1_bram_3_blk_mem_gen_prim_wrapper_init \prim_init.ram 
       (.addra(addra),
        .clka(clka),
        .dina(dina),
        .douta(douta),
        .ena(ena),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module weight1_bram_3_blk_mem_gen_prim_width__parameterized0
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

  weight1_bram_3_blk_mem_gen_prim_wrapper_init__parameterized0 \prim_init.ram 
       (.addra(addra),
        .clka(clka),
        .dina(dina),
        .douta(douta),
        .ena(ena),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module weight1_bram_3_blk_mem_gen_prim_width__parameterized1
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

  weight1_bram_3_blk_mem_gen_prim_wrapper_init__parameterized1 \prim_init.ram 
       (.addra(addra),
        .clka(clka),
        .dina(dina),
        .douta(douta),
        .ena(ena),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module weight1_bram_3_blk_mem_gen_prim_width__parameterized2
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

  weight1_bram_3_blk_mem_gen_prim_wrapper_init__parameterized2 \prim_init.ram 
       (.addra(addra),
        .clka(clka),
        .dina(dina),
        .douta(douta),
        .ena(ena),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module weight1_bram_3_blk_mem_gen_prim_width__parameterized3
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

  weight1_bram_3_blk_mem_gen_prim_wrapper_init__parameterized3 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .addra(addra),
        .clka(clka),
        .dina(dina),
        .ena_array(ena_array),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module weight1_bram_3_blk_mem_gen_prim_width__parameterized4
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

  weight1_bram_3_blk_mem_gen_prim_wrapper_init__parameterized4 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .addra(addra),
        .clka(clka),
        .dina(dina),
        .ena_array(ena_array),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module weight1_bram_3_blk_mem_gen_prim_width__parameterized5
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

  weight1_bram_3_blk_mem_gen_prim_wrapper_init__parameterized5 \prim_init.ram 
       (.DOADO(DOADO),
        .DOPADOP(DOPADOP),
        .addra(addra),
        .clka(clka),
        .dina(dina),
        .ena_array(ena_array),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module weight1_bram_3_blk_mem_gen_prim_width__parameterized6
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

  weight1_bram_3_blk_mem_gen_prim_wrapper_init__parameterized6 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .addra(addra),
        .clka(clka),
        .dina(dina),
        .ena(ena),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module weight1_bram_3_blk_mem_gen_prim_wrapper_init
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
    .INIT_00(256'h61A4F19B234707395F2F878EF4AF4C4DE399F24170E221861FA489DC58D0C61B),
    .INIT_01(256'h166CD6E1E536E27DC0F2EEF506266A8BFB187F8295915D7B66EF82B059DF70F9),
    .INIT_02(256'hB3510446DB2DB0126D2AA351282689F23FD29BE0B4A193485D11C6805C1BD914),
    .INIT_03(256'h5EBD40DEDD83AF61EA4806DE600466D595508C281298323E381716BB6B5C7AF6),
    .INIT_04(256'h23E05023BBA2D36B3118ABA9316C9F76C98F3F291EC3F7774D742A1713CC9CFF),
    .INIT_05(256'hDC6D4BBCD41674B2689C943727CA3E8748591D13A2669DA390C79591420A31C7),
    .INIT_06(256'h9D20F71CC5271C116AFCAB33AA06C99CB7554D55C1D6C4D04D0719CA1AA351E6),
    .INIT_07(256'hEBDB8178005BB95CE9635D622B804DFAC1E6836A1C6535314245423D237A3925),
    .INIT_08(256'h62F7F8FF58AE3F9D3490C69EF105C4E286FFBF9FDED186B4033D5C6DBA5CBDCF),
    .INIT_09(256'h952A251089955BA775C1BA402E60EE16EAAA0B27A0AB1B6E830601B695857FC7),
    .INIT_0A(256'h3E51EC894A80DE3B29C7F0D62C01FD7E58AD7D8608428A042A1BD8D9C68ACEAA),
    .INIT_0B(256'hC9DD9606173BDE345574D5EDF2121AB71AC8B7533139635E93475BCA1CEC98AA),
    .INIT_0C(256'h5D5C1FF878C9EEA437B1FE6CBFEE5D4B3BAA273FF0E467E3D121535A83E1CD26),
    .INIT_0D(256'hA2016E73A60357949A74D3B1261364A9FF21657B68D408E33D815BA09975F973),
    .INIT_0E(256'h46D1AAE2758F4AA8BDB20700C2A3BCFA6A39A93FBC2744448A3D14E937687499),
    .INIT_0F(256'hD5BF0D793074DA244FAE2396001D33A5DEE57D101DAA879AFCB47D4C20221FAB),
    .INIT_10(256'hEA11FC7CA52A8A264913DC75E6CD75AEB52A92B101B80822FDA721F6EB13CA0A),
    .INIT_11(256'h825042947320D472DDFEE2919860B13E4CBF3AE1551ED99E6D4CA477D95E1F89),
    .INIT_12(256'hF5C5B4896F7674587190B6F0979A5B632F4238263F3FF8DD2597383C1B0D09D7),
    .INIT_13(256'h7A29F086BF1091E5567CE5660EC16F04FAD3AC590772405C46A77B40CA934303),
    .INIT_14(256'h0703BA3FC1A3FA606C1EBBE2B8B8101B091D8A32C8C4198B9E4067C46E874CA8),
    .INIT_15(256'h5F088C3676C01916DE33BF49AB5018A810032C64E7C25E144BDA731BFE9A9600),
    .INIT_16(256'hD4C5953CC731C9FB658BDD9A83641B95E0C85B8A76ED3DFA664DB14AA99F8997),
    .INIT_17(256'h3AEE9851E3C03551D51257E0A3C256A48E855F03A3F8D50870F426861D81E9F4),
    .INIT_18(256'hCB8ADC30AC738FF30B6FFC6C7E51F87C93D7649B79F55AEAE7CDAC721707BCBD),
    .INIT_19(256'h04F5143CFC118B580CB231C466230D1582EB9A7EECB8960A6C4D261A24C38B4B),
    .INIT_1A(256'hEFC28694729FB3501FBCE429F05BB17342B472DAFBA37EFD930E41187EC3380E),
    .INIT_1B(256'h1E16803C57C766EB907045A938996B2AB8C72731547A30F239D0A92765244BAA),
    .INIT_1C(256'h871AFF718C8CD2654AF0FBE4B8D084087F73CCCF84941EF805BFF33696E5627C),
    .INIT_1D(256'h50FF28847DE0A495B628EACEBBB90EC383AA50A42784BCCE89A86814BCEDFB45),
    .INIT_1E(256'hA8422D5AEC2797A3ACAB5CB07397BEFF2CDBC5C4D0BCA04C0751071F10E514C0),
    .INIT_1F(256'hFCE8F1831D0AC9D78C5865F8B1C3D89C290E6CA1812045BDA01AFDAD14DEC91B),
    .INIT_20(256'h16C4CD940CC722038C47CBE06A66F00D7775E7C5CBC6183BC16A1580FE7911CA),
    .INIT_21(256'h2BCCFE23A8FA6FDF796C8C8C5DD492AB0CC1A968F29E943295C50502DAD8C012),
    .INIT_22(256'h0FACB81253D7AFEC889D8CD09C6A98FADB7D802DDF336C4CEB9FAFFF4416774F),
    .INIT_23(256'h7FAA35E7C4D56BBCCDF1460872CCF57129EEE8173A53D3A352C5C979CF5D248C),
    .INIT_24(256'h552B137ABDB0C10C2FE4D7DFCA427B78128869A1F6954E57AA2D7FBB68B3CE9A),
    .INIT_25(256'h49A7CA75C84AF77DD3349F1D7DFA8D4E00DBAAA632ED9002EC051378C2A30365),
    .INIT_26(256'hC80D231FE3FB99BB04E4BECFDCE76549C5EA70269A90B2E9363ABB0F23CC16FA),
    .INIT_27(256'hEE54DDFC366B78180D23F1CE49AF5328716771BDBCBB3F236627DB071FEFA644),
    .INIT_28(256'h3D8DA4E9E7787773C142CAF1DFF256763E42297EA397E9C61FBC4A411975C204),
    .INIT_29(256'h7C253F5D9A1D90D48F6EB01AB2E3CA1A247E90D3D8E6B5DC4629CEC8B728600B),
    .INIT_2A(256'h209B84AE679514D02C89A80E18B8C71CC288D6593ACFC0EB92B7B2F542BD22BB),
    .INIT_2B(256'hCAAD903CA1E178545892BB9D08984DED187D0BF228140B5AC73B56A353EF0FD4),
    .INIT_2C(256'hC721393E0989C31A6E89FB2A6685A8754831DA400A5F5338B56A1F4CF707186E),
    .INIT_2D(256'h3F7969052FB4E68C660561FF171A3B5C413F776431166CFE0A1B5F7F69C5F93D),
    .INIT_2E(256'h1E32CB218F7E66FB7A97FB590C520829C550AB53DD4BB1611C9BD211E2DCD855),
    .INIT_2F(256'h06B9AB9AF9A10ABDE69DA6D45B5F46C77A4C6DBFC0E35E306497F8593B83F8E3),
    .INIT_30(256'h0381328928BC896D2D03C0E2B613230A0D5C93CB56AD40410821E848C442AD7F),
    .INIT_31(256'hBBAE4DECAF8E2C5BA548A4562B34AFB6450F5A7DD82706BD9E10C600A10FD215),
    .INIT_32(256'h8BBD3DC9228F2FB61DB3A8DEDE90CBE587F4050AF78BE307FAF4CF2264981804),
    .INIT_33(256'h2620B79084AFEAFEA4C5EEB7546020251DAE90237574D0A4082D21B97775CA93),
    .INIT_34(256'h9E1CEE1DCD95CD4081B7A6736C31C96164C051E60D414739E9BDDA4194F6DDC8),
    .INIT_35(256'h23C300AC49D74C3C5AF6AA529055CB1EC5A794E8E4DD04EE098EFE43DB6E2197),
    .INIT_36(256'h9A6CF2F15F17116C9CD2FD2DF81674EF5C037FA8B6208BAAB32D65BBF3BBB8ED),
    .INIT_37(256'h8CF5E9195CE25FA36D8774CEC4AB335374D22C7E6E168264D3763C773CD6298E),
    .INIT_38(256'h33B452B49F49040530743C90DC2B75072113178672D52E1C6E961AB2838D47C1),
    .INIT_39(256'h86105A02ECEEB33EEBCCC9747E0C1B84972417D4440BBFD2390281CBAE216B62),
    .INIT_3A(256'h6B3B2D651D073BEAC1E421EE4C6E38D5C2A94CF6402FD3CDC108FDBE8399DDB1),
    .INIT_3B(256'h2E510BFA88AA0C41843743FDBBC551BE26FD2802D89F57FA364563CC2976638E),
    .INIT_3C(256'hEB31C3710D9840652C7AC32F71B38329DA2F6421F9681AC22A40C4E3736324C9),
    .INIT_3D(256'h000000000000000000000000000000000000000000024FB8E73FD556EBEF83C1),
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
module weight1_bram_3_blk_mem_gen_prim_wrapper_init__parameterized0
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
    .INIT_00(256'h2CB1EEE8A4CA2B1DE84183F19EFE23DDF1C9C7D56D1769C6B9A11A8490C99FAF),
    .INIT_01(256'h709B61228BD84C73739DACA085379D7BA7718E8F40B1013D687E1E22CBD9FFB7),
    .INIT_02(256'h6C2A38D88D2D35A70B5F0810DB65AEDC2FC95120E3B10DDF871E5480FB2FC863),
    .INIT_03(256'h8D4BACA7DD2949D0619E26485252FE630AF8B31858A34B59D25DCBD35075D02D),
    .INIT_04(256'h56EAD4311A09AED3E34CC5ECCE947D2B8E261D0BEB6F61067B62FF74AC05207B),
    .INIT_05(256'hC5A9C1913C8B019CB9F41C9A19D27DE89B228A285D47C380B9DF5A55937CF18A),
    .INIT_06(256'h8CD56C55AC4793A778BB5E98C4A158E944E7C0B01E0D5DB9D0936E839C923A6E),
    .INIT_07(256'h395206695CF7B6E985B72E386A93CA306D2FE06C33400DB37F4B5C3BF5B77714),
    .INIT_08(256'h1656C19D13A9D2E7379806EF26F145A7BD133778D3D18D63AB8E784C92069A89),
    .INIT_09(256'h99A4D77817449D76C2BAC5EC8383D962FCE1E4BBA5F74F83EFC7F4F03145D10D),
    .INIT_0A(256'h8803F26EB54DEA39C24DD1B9E32994DB6AA8E4BB13976EB88E3A4E2B00A90650),
    .INIT_0B(256'h3ABD70AC7FE765E5FD729C553FF7867BAC330925988683F76769952E043D3208),
    .INIT_0C(256'h81ED7543EC0FD8DBBEA4CF533E1BC987235AEAF573A5B96592D5D5EA1E383C3A),
    .INIT_0D(256'hA07D44C73096210EBDA2A9AAABCFFA40275479B0217ABA2CD88EC8E6E5D03694),
    .INIT_0E(256'h0B2A47CD42A1BF53F4F602FDD2DF2E4FEF2D37BE467A185DDBA03D0433635CA9),
    .INIT_0F(256'hF7B8B866A47E25EFEB828BDB74A3A96010F063C69226B91A0ED04F73248ADE8E),
    .INIT_10(256'hC7DC4B8CDF0575598101AAC26BF665C8E4C1F5D42379D43EB9AAA7A4FB148612),
    .INIT_11(256'hDF400DA9B5F8D69F014BDF653DF21F1B7944AB02800ACDF3CE0A6B8A5E0A65C0),
    .INIT_12(256'hE555492A3630AF8342B65780C452F79103DC1F4E6463F8520F53901DA64AE09E),
    .INIT_13(256'h3535F7D866628AA2B9C10A855DB02E75FA19FE11354FBD57725353F3994F53D5),
    .INIT_14(256'h430F5EEB9F3A61F8DEC1A6D419F9C85C6375FB74F7A0B9DE64C392D7294F277B),
    .INIT_15(256'h9FECEDA217D40519CBFB0733CD431B620C42851726364D70FF4FBE56BA1CFEC2),
    .INIT_16(256'hE70F3C9D702E1EA832532DC2D1912C419C039995D804EFD63715FBC090A3ABFF),
    .INIT_17(256'h3E9306868C41E2B55E7C7D1AD43FDF5FF585FA397DED6BF40E6F67D249032C09),
    .INIT_18(256'h2EFA0097FED24C9FBAA416B63B3202C523E08FB80B35AEC40FD7D63F003016D0),
    .INIT_19(256'h2B94D6D0791FD0B8B17BA1E42A627880ED781D64AAD39BB00614D39B4221AD8F),
    .INIT_1A(256'h9CFEDA5504A07DDC5B96718B8FD7698D2E2E6BB2A522A9C765441F05D7A5BC31),
    .INIT_1B(256'hB6A4DB814E23B439BBB7811A572A6BE395956375FE4AFF5B28020D1C3543A3B3),
    .INIT_1C(256'hABE00A6A6F95704D3F6291A3B27BC63D8C4030450E13AC6A2AE5E5B7CDA3DC8E),
    .INIT_1D(256'h4ED6216E39E8C2DA895DDDF063DA29077B2625467C027FA8B4A9E9816CAF3855),
    .INIT_1E(256'hD37090F07CAD8EC49344D2FF7EF5747C046E96154D2174D360F08B37275E5E47),
    .INIT_1F(256'hAEA358D28B57FB8C71268A114FE4F1DD4E9F6F8DD8625E53F671042FA6E3EBCC),
    .INIT_20(256'hB133E564157829CA11F04263AEC302FA90B2AD2DCB3888998C83D505C1B9FC61),
    .INIT_21(256'h88181EEA713AB69F955BC10589F5B28300ADD40C74C7FD5DB8C12FE943C5D79C),
    .INIT_22(256'h251E4FE4244D78A6814EFB39F2C73FD8C87F0C2A7305959BC615BB796EEFB8CA),
    .INIT_23(256'h724BDA4A24866BE9A803FDF1018A7E8B8C4F5507A5C72C29C0E2808F7C1CDDE5),
    .INIT_24(256'hCFDFA5C55546DEF7FD25D7B1530C34B433C911D4589D84E2F8F90D6E7BF4CEA0),
    .INIT_25(256'hDC37617FECF80B8F4C01BB3CC7C3F8497204C6BCF289A68AC350BA99F3FBE98F),
    .INIT_26(256'h10D27A57C63170346A7D36EF51AABF52C2B1D79FB963E0B975E1C2DA1A2F07B5),
    .INIT_27(256'hE369757F9B2A82423E4A015140C4E8CE90B036E1796F6D470ED670CF03322CD2),
    .INIT_28(256'hC3B192F8BA7DBB659EA31AD4C17DFDB32A268D37568E72F23AB895E6A6664FF7),
    .INIT_29(256'h3CCC8B57B032F2DF4256727BB7951F5CA465940ACCE98A49515DB2D3AA0A99D1),
    .INIT_2A(256'h10366D9646990AA9B6DCD2885A79A104F216F5F0922B94041235EF5F60F13A8C),
    .INIT_2B(256'h991BA22E856D3AA5486C1AAD11EC6D46AF4A6E4B219F2913E1EA21D58E790817),
    .INIT_2C(256'h75010D3FA90DA92864C10B7D732A23DA508A36E56E5B072F963D3446F77D804E),
    .INIT_2D(256'hCA765A0898F7027E0F1D4A7B3AE9E9A8DF879C012B3CF9133F5923E1975AA0F1),
    .INIT_2E(256'h5B91EC1D00A8D3939B7B105BC0185F37D9947621944C963AB28BAA22F8911535),
    .INIT_2F(256'h7E9F405FE654E01565F0AE70F1697D84E6D294F2B8EB17015B2CF0CF6C7BE3BD),
    .INIT_30(256'h35915B94DEAA936783067FE6B72348F8330A2EFB9D01EC8438F5971C4AABC2C7),
    .INIT_31(256'hD497CB85AC900BE0E127C304C722471F55261B603E6460BB55A7C8C622B80BDA),
    .INIT_32(256'h9BA7C2FDE2299D242A4A4678ABC90147C0DA9EE84C259BC40D577D5A2F446231),
    .INIT_33(256'h84569B7DE6587C1EEA78C055E22F8D69BF3292414346F7D3ACE26C6E03B32EC3),
    .INIT_34(256'h34C0DC89207E4E16044FF6870FE3CA308DF8165C6A2675A8E6C6659B9009F8E3),
    .INIT_35(256'h738994CFB9ACC2C0BCADF58BB888CFF814B58F3E0BE3038876BA41AF2186F4B0),
    .INIT_36(256'hE7E233370B554A0BA7C95AF1EB0E6890B15946FAE7D318AD9773EE8B469E3D6A),
    .INIT_37(256'h79C21BC1ADDFDADEF9A1AAD500BC17B8B96D78E298BBD859CED6E53C8CAF1064),
    .INIT_38(256'h35B476A1925D952F4E42F9C873117B89D75E8D5963D52912F594D24AEC7C8DBB),
    .INIT_39(256'hEC44B0080ADD45DD8F6F3945BE45D5FD52FFB1E08B90A91B981EB2A58FC24D30),
    .INIT_3A(256'h59CE1B2854B3380AA04C937BF5E430ABB001430AF56D553F6D5564EC8F622FF5),
    .INIT_3B(256'h12602126DABB4076CC2A4ECAB0A8F745F8B865688FE247DEAD145B8689A45611),
    .INIT_3C(256'h2D746369868E3E749EFC075FCDE7E232476F1D22DF912EFF28FED0E76081ABC2),
    .INIT_3D(256'hE5FFDE47ED6D6B47F94F0F1C8DC2EEDED480FCC0309BCE931D370FCF6A83F801),
    .INIT_3E(256'h3D357EA52FCEB376C83BD177CF82E1E77937EA042924E35A1F8472729BF1BDFB),
    .INIT_3F(256'hEDD6329A1414B35DF9C1C548C117727072B81ADBEC1535A312C193F4C734EEC6),
    .INIT_40(256'hBB6BB04DBD5172D91D062E6B7139482A366DAD5BC6F4AF8090EA561615037B97),
    .INIT_41(256'h3996DA8C96557BDF83AB332A0582DA5245B99C3437CA91F47C16EA37425B115F),
    .INIT_42(256'h93EC3CB01BF64D266A403613C9FA5EA83721630D107654967F793E1B8E9F5082),
    .INIT_43(256'h75A94A01993E1F5A0ABA6F8C36DC1CBE73FE978827BD9E2EC63E4EF00DEE8F65),
    .INIT_44(256'hA9453069D6C829FF2ED3876C23BD561DCA47C2FA4ECBF4CA264324DBD239F8D9),
    .INIT_45(256'h1303AF9004F9B1CC8065ADC46B1641D0D35A391AA611F1AAF4CF4F8E6E7E846A),
    .INIT_46(256'h8B237FA568C7419065C111705CEC0813BDB926688677E2109A8542175B49063E),
    .INIT_47(256'h7F1982F51A7E0F1E947789B1977299E0DD9ACFC3457F80119A8BAD2370AA5E01),
    .INIT_48(256'h3969BD6C82094731F3B641159F6E328E5E3F4C60C3F3C95D76B9140FB2856768),
    .INIT_49(256'hCEDEC1987498DF2C5E190702ABCE716A620DECF838E9047765A7B1F684AF66C8),
    .INIT_4A(256'h002242F31EDD258B2D39DAF4C3EBB2179A8649B0A1DD707C0AB30D14315DEFCB),
    .INIT_4B(256'h3060CEC27BCA45C441DE6A9A6223A0B1161CA0D26DAFD7900C877C949E229FB4),
    .INIT_4C(256'hFCC7F2838309949EA09954B4C619313A753B1DE8583688C3F3238B18A97411A1),
    .INIT_4D(256'hD4F75FEF918D55C75A65E3126463E0D486CFF32D5EB2464610C263A009C49EFC),
    .INIT_4E(256'h6FE1A4DE52088A811B4BF6946382D1C9F9964DD0BBB463B4B7A99BA96E342B57),
    .INIT_4F(256'h773479E87C59942866A816BEF480A33E881250BC5B712C34A36A1DD434A45AC9),
    .INIT_50(256'hEED250D380064FD63151377CF8CA8633FACA6D9ABF99D32B056553C5AFD9F917),
    .INIT_51(256'hCF747408070FF7C6A5A2C8224408F2918F4B9DACDDB1D32DB68FEC207A54004F),
    .INIT_52(256'h7D0D29296009FBCA128D92AD4D1F6A05DFA1C82465893421A8291B77BC089C6E),
    .INIT_53(256'h31840EACEB9408D2CAD09A0453A6546F4CD7845120B8E178A95F156139085EE8),
    .INIT_54(256'h0CB0942DD2112AF27B5AEDF9D6D538CD1322DFF9544A878F66B95EB06F800767),
    .INIT_55(256'h21B51512FFB7EF2457FC59A322D3D69752E38418276267BC54A8500EE60E3BF9),
    .INIT_56(256'h4A0132126C07B3EC7E3B07EECDFB68809D0B20405791753B04AF177E35C6E2FD),
    .INIT_57(256'hE8C82ED6D093E2B0545F6E637548982D038912EA685B4AA53BBF6C600087FF5C),
    .INIT_58(256'hF8CA3AF8C2C90DC12AD249B73DE1CA7705D94529768B3527563B362356EECC26),
    .INIT_59(256'h9EA609E1625329E6982B81F6B3B4320C9DD688024F597E6F2C8D211FC34D9736),
    .INIT_5A(256'h47D5893459470455ECA9191212C80B3C46E84C4DE419AD0CEC1727AD5A0F1D32),
    .INIT_5B(256'h8519C01DB7394A2CA774DF99DE9F69076632492AFD5C15F2CCB2E8B7AE7E408B),
    .INIT_5C(256'hFE1B1706DA4E29CA0AFDF56D0A5FAE4656DDC5127F04C60268905DE0C3A83FF9),
    .INIT_5D(256'h599CCF1895CA488B809F1E53D90F54D9A7DC6002FBD6FF8644218C4266965875),
    .INIT_5E(256'h66CB10DA6E7502E48D5FF282D9608051B3D044415B1EEAC0FBE04E19022416BB),
    .INIT_5F(256'hC401964392C660DFE5A8EADC89C2146250923B4AD438FA13824107FA04E3D369),
    .INIT_60(256'hD0BD571132DDAC78FBCBB58EDA01AC0E89375B0CD6092F543C77D468C8E1F4C1),
    .INIT_61(256'hBCEC61D47903A37E582558E2AC0ACD147ABCC975C860ED14FD21F257D4E6EF24),
    .INIT_62(256'h2D75D82953012105667B9E18F497C0EEF730FB49089885C92B4CB9184929FD2F),
    .INIT_63(256'hCD39ED2D714DCBF375C11BEF3B2A32F2975693B27A02472C01370B4D413BB315),
    .INIT_64(256'h2AE97E33BDC70CCDDCD4B52856884E9A18B7418DF454018773BF8E3357544769),
    .INIT_65(256'h52C77D42647828F3C7579F99A980A0962F505F917BA6B052462A794E46AE7F4C),
    .INIT_66(256'h8BBB9430C5ED388AC09401C6DC640217F2282984584D4DECB41B7FD9AADA0F8B),
    .INIT_67(256'hA029E8BB9B4A1E0C00FE6D4C1DEE13B463469C080B7174284466994DF3F98961),
    .INIT_68(256'hF732B8FC1B22A04096ADDEF3ABB5523D0DEC864A08E1BC2C5A1E9FCF99A52045),
    .INIT_69(256'hF16667A32120612EFADB7562D5B6DF185FE873CCAF41A46B2D876B2512A9121D),
    .INIT_6A(256'h66A5641EF13DFC5756E1BA02D0481BD0C57156E2D958B4F5EF714DCA4E714816),
    .INIT_6B(256'h747F9C38F0A9D21005F443525136561175DE88B2A0E95D85895AE8DF131B8424),
    .INIT_6C(256'h95A586F60B8344F863779D32C602798F41B798691F1B2793F3B16444A2447384),
    .INIT_6D(256'h7C451EE6F010C230C493F226273586812222E994C627CD5B96E236701BBD561B),
    .INIT_6E(256'hA93249162C8FDC587E89B71802573317ECFA166888E3902F2E716EF2A32A733A),
    .INIT_6F(256'h7B4FC4F8DA56CF754BC3907921C14E9B5B75D8DC7E3383CE6C49AB2F1FDE14DF),
    .INIT_70(256'hB3FEB95360C7FDDA1FF448BC611CD8233A8E1CD82C86F1B7C7B1A35700FF2670),
    .INIT_71(256'h952459064E1CFA6023EF32EA10BF694A995E8B73204E1118D8F419D818934B0F),
    .INIT_72(256'hD59703E92D6CF46800D8BBE65D6ADA4BAABDA688BDE291993A4FC995D28AF04D),
    .INIT_73(256'h777BB8B162D3C8F59195A29FB56BC46C31D8F1E8FD4B35B478186A69200BD731),
    .INIT_74(256'h979C4616E42F1042A07457E89D4402529555091610B42E1E226FF64286B9B26E),
    .INIT_75(256'h7464295DAD816D83F86F8FA501227A9BB5A65A56AC5C32195D83FABA69DC7482),
    .INIT_76(256'h87A091267BBB14CB65DEBD78397874FA31A63F7C9E6857AD6C8AC5C7D52CE55D),
    .INIT_77(256'hD48613655761415D46967E0B9726CF5252C1006A62DBD5278F4A7FF39831B811),
    .INIT_78(256'h386EDF70D57C3E6BCC8CCA8D0E2D8C9B26E6EEF8E8D9ED69159E4B94A5D4F072),
    .INIT_79(256'h39B4D23C714273F61BFDD9818875F925557EC1832A09A2AEC5854E0DA060B760),
    .INIT_7A(256'h0000000000000000000000B6ABD1A8549DE613C37BE51AC72F738D29AE53EC39),
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
module weight1_bram_3_blk_mem_gen_prim_wrapper_init__parameterized1
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
    .INIT_00(256'h47BD9CA4714C68E7D5EC4904CC14DE2CE6C80DF9B20DA5B58694683CA8C8631C),
    .INIT_01(256'hE3B2472EADF06531E02638A3EEFAA5AE87BE812DD8985FC00672B492C5EF1FB3),
    .INIT_02(256'h06868F45F138E727ED70F847808415C2CF3F3E4C568EFDE82D4C0B0B90A703E6),
    .INIT_03(256'h2C5917B34E9720762531B5C211D58B24CE1C283B5281F7A2A9F1445AAC3780D1),
    .INIT_04(256'h0625231AD3B6E959E41D32E6B7A723A4250FDA42F5598F37A9A6B3283B1D4A0E),
    .INIT_05(256'hA007EA251B946F5E7FDE914521D54158F4CDD844EE869877A80A9AEE1E85F5D7),
    .INIT_06(256'h411E341778C4687F30D9F6F08CD6454D4E0684E3D3424DC955B4857AE30F3394),
    .INIT_07(256'h00D641BF4D14CA53C80CF7AEF4E4C73AF82ADC2F5286BBD9689B52D32C77308E),
    .INIT_08(256'h15C3EE87CF5AD57079179DA246EBA3B75C3C6235D37836969956A4E34863E0CA),
    .INIT_09(256'hD98F628D4C04D4DD01F67CF9258EB8A70482941ED6DAA5E3AC690857B06B7D19),
    .INIT_0A(256'hC2E9BEB5E513402BFB3788A70190FD0CC0D4DC54563464637C96831375013055),
    .INIT_0B(256'h45B2D81F86EDDAD5F4EB306D6AE2DEB1E49D2689811A77CF20F47F1C7E21CA27),
    .INIT_0C(256'hB6F5018E1A9335ABC78765018DB65993630DBB55C739D73BBB21545ABB983B22),
    .INIT_0D(256'h0B82825F5CF356C39335D43F65E32DE699D24C13F9F50E09085CCF30DD5C9002),
    .INIT_0E(256'hCD566BF5D7025573B12A1EC9F7D2C5B2F8029F25CFA27912926393CFE6725CD8),
    .INIT_0F(256'hFD9E7E441404E8070632D40075CFB1D971B85ECD24FDD18F93E627C6E07A3A41),
    .INIT_10(256'h793806ABE697C641FD02C125D02FCA65A0092BC795F6D1D918D62531E8F2DD2F),
    .INIT_11(256'h162C8217C50A18F42EA381116339C1229651B516D48951127CBF05923A924955),
    .INIT_12(256'h808E265C1B4778D1FC1AC69FBABAEF4D4382837CBC05560041EF2461145F77F1),
    .INIT_13(256'hB5F0947995D51B0DB4BE99681B9AFB0256263EBB08072EE8DB5A324ECD461619),
    .INIT_14(256'h726C658BAA81002E87EA677AD3F05BF8BFE7D284F24D02EF20010C5241F9E374),
    .INIT_15(256'h988F81029C1455F98B5CDC1EB601350CD55005B7F28C3C879B96B7C1CF2BBE5A),
    .INIT_16(256'h99E6D5191241A97E6AC8D12D7DC2EA642D8FAF999334F6854510564A5300B35D),
    .INIT_17(256'h015161A7CBFD6CF68A2A60F92C69339C9D0539CF7ADD2D802DD56EE972DABFC6),
    .INIT_18(256'hDB2A8240D4E13B0104C9AB482EEDB031BF48B90210985BFB6B2DC1582A2DC364),
    .INIT_19(256'hE8A87FD9238F972C111CBA4C29D7BFEEE35D25782F49A2D45FDF2AE41A26458E),
    .INIT_1A(256'h2D5563EF6CA73D67B1E1B66933F9F87D6E69BADED0F3A8BF78BC747A68662A8B),
    .INIT_1B(256'hDF3B50837DBD190CFBCD2D4E2DDF06C0458213CFCBBB62E4B5AA97ACE20FFC5D),
    .INIT_1C(256'hC2321FD663E7950205A2946490D4A1164F5AC7C586BFC19553C03E6C328DD508),
    .INIT_1D(256'hBE73AD65E8764230E803EB67111E689A975F3217A7026BA1B0B9A8CCD93CFEFE),
    .INIT_1E(256'h0C4713C60771E58B0449A67A34AB4B6F5D7440742B867D6ECDBAA49013E30285),
    .INIT_1F(256'h37D8FF2A8BF2C760F23004F4108A984A78A08BDCA15AA5AA71A857EF8A269A84),
    .INIT_20(256'h03E0759C3EB61B3E60BBB19E63E2C9A3906C7580B8E7B9A82699BC4B21937114),
    .INIT_21(256'h8264200C83FA736EB3AF966B90A8544D6B68DE1A303F8E4F74B4E19324A402D0),
    .INIT_22(256'hFFD6C5DA43D9F886531FC9348F1E43F7DA45E2CF7608BDCAA95DEDAAD2F95BAB),
    .INIT_23(256'hF7DD1E0A008BB19079AED71BB06FFA91B32A1E1E84FF99ABBAF9ABD322280FA4),
    .INIT_24(256'h7B26920E4B1145F3C9B1F2017D3364C7D9616A89A302FE490B7BE01FB3946A80),
    .INIT_25(256'h0C7ADE7D7C3A726D9A37B3812D6D2F920F7D8A03A783A60AF0A26D6AE960230A),
    .INIT_26(256'hE94625C990AD903DA0E5B8B191A3D34C4A9EC2FECFD49D65DE313841675E2BD6),
    .INIT_27(256'hCE6816BD9DA3617866605AAF875AA34FA389838D9FDB5D535436C8E9B304DF47),
    .INIT_28(256'hA7510050956E78FBC01DF67C9888112961CB6A6CB496952EA58602004295DEBD),
    .INIT_29(256'hE668C8208C34DCD922F3D3330652C8775CBECD00704CC4EA7A09398DA4DE2E90),
    .INIT_2A(256'h387BCDD049A061AD8C5A2BFC448F3875A31C068A4327013E9D58B48B6CE709CF),
    .INIT_2B(256'h52F6953C05AC0B35D06B1B15DA6EC971E13BF40511AD979C4CD5A85EF3C8F233),
    .INIT_2C(256'h6850B6E5C8B735A27436C37531C4833C0438EC6404023DD8F47C4C470D80AF94),
    .INIT_2D(256'h16BE49480CA1446DD92D63B3A7DDFDCC00A602825E7F7A749F64DBC2CEBE4956),
    .INIT_2E(256'hE88D6D8F77399428115A4BE1B634CCC20D0F683E28CBA11A8FAADB97EB2673B2),
    .INIT_2F(256'h33F3884C632A6B5DFF8A2F228F1AA0230EE64B4E19E56F673EDE3C6DE65B5FC8),
    .INIT_30(256'h89B9B8AA80B7BA7C01E2ACC920A80B1F1043724A4D3F1CE27CD697780EB6B7EF),
    .INIT_31(256'hA5C1B40B02D172389E2A907B950811892D8AFB1D1581A32B66D9E1FDB3DD48BF),
    .INIT_32(256'hF78ACA284424A95D424051B4CFAD1C8C8D7B6B408F7E0D02F35CD19E25A7D518),
    .INIT_33(256'hC648DAAC88C895F749FCA75DAC70F19A235D302300D814C2653970B04A069B36),
    .INIT_34(256'h6D5249D220A4DA415A44EE7CD34217875A7D1447F7B411608F57C77D9CFE3F4E),
    .INIT_35(256'hC4860001E002B08684064AB1135945A160CDD8B6949E9FDD957A2DEF6409827B),
    .INIT_36(256'hFE16D88B205DA6E12DCE0976E3D8CFCBB253E04200890CF28D616EDF800F9B49),
    .INIT_37(256'h45E749E90AC11CB1145E581B839A16A49B0B3E48C27C7298DA426DC3BB938D53),
    .INIT_38(256'hD7CFE10BBDC72A77E68E875FD7C18B75E029AF14EDF6AB24E99E9C6222A813EC),
    .INIT_39(256'h9F20EE1B6150BCDF0207DCBD48B383EDEB656ACED1655C6ECC63145B1F8BE978),
    .INIT_3A(256'h8AF240051BE0C021A0844D091186CD02D113F76838F294E4504CAC05AEE46DE5),
    .INIT_3B(256'h88352E3F9C15310C23779148507156B4FC0C5AC021B79B0BCC2076A9024D5A68),
    .INIT_3C(256'h0D38D6576F950C595B5C870FD35CE7DB99657585CD65118403943E8B58347C41),
    .INIT_3D(256'hAA2BF0C06EF9793C97DD9A47D622AD0E68E06A21F9627505FB34E6E1AF34814C),
    .INIT_3E(256'hA29F39E76B2B3BD216364C35C65C8296C67DC2CE2CE9948E9BDD50B7C7B23F9D),
    .INIT_3F(256'hF47D273641F1CE57374A152C3F1DF7CB9A3AB36FBE811D6AE1CA0DCA3FC09C26),
    .INIT_40(256'hF3B376A1C8EC74647735018A09ED684ACD0B58A056D1F28EAD02FACD50266C84),
    .INIT_41(256'hB49561B32D8874F4BA2C4363985E93AF50D393366A65FB3484E6D8AEBCE65FFA),
    .INIT_42(256'h511D3F7494323ED0BD417710D7E6D2BE5E3791F4D2777589C6E274CDE4DF79BB),
    .INIT_43(256'hAB06357CC38C8D04CF21F50DDDD2329456D94F1F28614B8D291FB58BD248EDC3),
    .INIT_44(256'h11B990C9566B8ABC8A09B941080B755B3E020A6BA97FE79688BE12B023EC0405),
    .INIT_45(256'h8432B789FC5C991B2B5AC2D24C72E7F86C2B72694A0866FFFB36B9F2CD035C0A),
    .INIT_46(256'hBED3EB58BDA8F1A53A9CD93C74BF961C411BB81FE437CD0517D91946AAC4400C),
    .INIT_47(256'h8434BB179E6FDB96502A14E76619E81F51C4C415674F5FEAB5E881C92C220B50),
    .INIT_48(256'hCEC5BD416D41802E0AE3104952886A183DD49A0DA99D23ABEDA41091623F51E8),
    .INIT_49(256'h6FD62A622B1FE9E9A7AA086A15B3F4B8D4FE7A0DD9264EAE488EA463B14EF029),
    .INIT_4A(256'h8B3C2099140E90FDB1D0AB933E7ADF0133B282E0BE46DA9AB727C510222CA50C),
    .INIT_4B(256'h888DBD3FEED5C27DE861494C4F31778023AD2B141C244CF9838BC8375392478F),
    .INIT_4C(256'hC0C87D46E2FA6086AC183B7D7CF932BD6FEB8F2506D6643D820095F52A2F119E),
    .INIT_4D(256'hF7253C8F5667175976315C1BE8BB10996AA2696BC12405D68FAE83CE8795DD8C),
    .INIT_4E(256'h21A0F482F8FA3D2FF4040C49178FC54DAB4520C13A629F7F151CB773367BBA12),
    .INIT_4F(256'h885CF3EA5468D28766A581B7FFE67E061B1D05F3D85B915D54ADAAC80923BE2F),
    .INIT_50(256'h814B46EE34050FD99347BD795BFE94E305F3846BA98A7464E4ACB36B898641EA),
    .INIT_51(256'h60E2EC94B0636AF82B27C6751FD8E7D7C878BCCBADA569921B9E0BCE5B8D3BCD),
    .INIT_52(256'h7EB42C60416C1F9F779D20C3748435D2C27148226937D12DDE817C59F226B23F),
    .INIT_53(256'hE58A73971AA2B46264DFA28125D02E8FC11623DCBC64E8F04E17E3F918A5A036),
    .INIT_54(256'h32D5215EA932DFFC95307691D219F3B2FEDECE4D685A7B80F4765969A273006E),
    .INIT_55(256'h21D0F3C1F0AB453A2FADEDE252F60AC999B55F8A2615A29FBCD8DAFF7818D5CA),
    .INIT_56(256'h2A9C8C08CB9EE43624C98A1AB8014CD7F782D9E3D1D9F978DE840E6012C479F3),
    .INIT_57(256'h04971846482BA573AD2FFB3F2AD3FED6BFE1FC096D7D2C8CFAD3E565DE4DAB80),
    .INIT_58(256'h021D8DB66607DEA49F662419738130039725864572EADFDE8E6EA69DCDA3E150),
    .INIT_59(256'hE2C77DC469887819597AC218897AAD63EE656C407A96FC0845EEF82052BEACD2),
    .INIT_5A(256'hBD018ACB903D0E46310B05AF6EDDFCD8F1A58D9D32B3177A70EA2CFFFD62FEA1),
    .INIT_5B(256'h4ED7AA9913DE8F7D562E2A71A335C9F23164386E34B8D3FB68489B575BF47C4D),
    .INIT_5C(256'hA747EDB9EAF7F7D7D0A25593E1E7903F2D121F419D0AE23F96F87B15FF29EACF),
    .INIT_5D(256'hB4A620187BB30CCC1C4FBBFB49E95C6CFE44D2F7EBD6E0978F8F5CC859332809),
    .INIT_5E(256'h210591FFECED7C482B701BA9E5945817695D24C60B8315923702350DCF1EA434),
    .INIT_5F(256'h0B7CC290DD3D3784D3F70E0066DA312629B61B250D17D1200F3F4B97A4891274),
    .INIT_60(256'hAF61729C005FC938A08688F260D2DD966283B2038FA98618D94F8F16130F9F83),
    .INIT_61(256'h966A8827DB3FAD22088BC7662A19974391DCB92022876ADCFE6B6574E621D20F),
    .INIT_62(256'h1A67E90EA46E220789311C3B554EC886F87BA7AAD257457A93BF48A51F255CD8),
    .INIT_63(256'hDE3A4DD6406FD2C7346E5B1A622080C496166AED97E25112431AC1F323F40D2D),
    .INIT_64(256'hE5B19800F17A193FEB94C38ADAD49D0E81E7076E6668C5B1E1383B42FFECF757),
    .INIT_65(256'h9D9CB183FCEAB456FAC5C78B4C2F83D27C5F6F9B1C377F19B8B644AB4C5F3F6F),
    .INIT_66(256'hEA2CBD8CA4516AFFD7FA7BF0B63AAD988C21F975F3934F7FAC44FB08E76B7FD1),
    .INIT_67(256'h20C853274091D15CFC1F39FAFE6B210155034C858CE35DABA0EBAFC7F67431FA),
    .INIT_68(256'h49B86594EE46AF8C582EAE707D77F4E58F02935791B83C59702C6C91AD98E3BD),
    .INIT_69(256'h4120FA543841FC8AB031A47482DB880A76BE60921AFB46621C0DC3ABD7C929DB),
    .INIT_6A(256'hF0FC824750700C025C2C5EE9A7C76C3D8AB3C3E1E434957B5D651FC0AF06FD91),
    .INIT_6B(256'hA8EDE9B6CF9F5D6F19C8C464F3440772E0EC34518CFF5BC04FEEFFC97FBDEFC3),
    .INIT_6C(256'hA688750728280B2C361849D1B46EB16DC1ABA644B80063908C70E3FD6A2B111D),
    .INIT_6D(256'h8227E96A38B3F8CB60E788FDE7C910E3ECE39A16E671C87F1CB46840E0ED06B5),
    .INIT_6E(256'h4623295C040CE0BDCB6E0E351056F9988A9639ACBC486952E951D2F251C18E75),
    .INIT_6F(256'h81FEA741B10899317C3B4D9D806C8E59A06AED597C24D772D1C2A7D4504E88A6),
    .INIT_70(256'hCA96DEB1D99F3D97888DB980AD48C104179AB197450141E944229E3C84943DD2),
    .INIT_71(256'h02EB82033E5B658AE61C93AC1FE82EF6480A6B88108C98485B83E5C96C4F7FAE),
    .INIT_72(256'hD2FC8E2DECC2A1466EDE0D81F50B7C8C7EC9EAD4AD817D35B78ECFA4B72FAAE0),
    .INIT_73(256'h1FB772E90D4276B6B5188C2110D2C0760945809641B4C31CA937E73C70E9CBD8),
    .INIT_74(256'hF51EE18D6F3C2BABEA2C949E751BB6D48ACB3948A76727C07F299B115E766FB9),
    .INIT_75(256'h48329F3F05FCA036DC243DCFEFA7DB43BCA694B9BB77C29E653537CFA3A5282B),
    .INIT_76(256'h66D9060F4184E325A5DD004CB0796B85000FAC5166ADC29FD84F27E8447DEE82),
    .INIT_77(256'h438649D799737E2733E98762804B1E0189F250D7E27988AAC23806E0ACD766F9),
    .INIT_78(256'hCB2B9C7E2FEC8A9BE2E257670F8AC06514383960A17A228097FDB28057EA817C),
    .INIT_79(256'h662A22823E699E3DA4C5E29E43C843A632D73A208246DD786500A05D1CDFB772),
    .INIT_7A(256'h00000000000000000000001A191E5FC957488BA64732197B092A8411129C0028),
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
module weight1_bram_3_blk_mem_gen_prim_wrapper_init__parameterized2
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
    .INIT_00(256'h5963A870A8D2A39A1FB2FBBCE2BC18C29637FABBA559C3A4EDD8927BC6B8971E),
    .INIT_01(256'hA1DECF67CE8C9D85328C7E209E54C7B5B48F060A7D1126145F580183B2D85B64),
    .INIT_02(256'hD0BABFB34EF47A619D92C11AE1336267750900245D6CA11E6849AE4C6B57B17C),
    .INIT_03(256'h1351BDF1DE427A99986C8C9FE79076E2DF9D66CF5B2FA59D925FDE095784895A),
    .INIT_04(256'h3C247781B1770D25B167A13FCBB6B88587FDFFD7037CF894DB2D2C1C0E161782),
    .INIT_05(256'hB7437284CF32437228951562CE1249863399DA8B24E70A8D23BF52537ACD1355),
    .INIT_06(256'h68D2E2416E2614DC3B42EA18870DEFBE408BD28EDEB3CD0BC85B4AE818668A2E),
    .INIT_07(256'h30B99A3C34A6B043500610A9A8957AB94458E009DFF32FFE4519AF5FBDC2451B),
    .INIT_08(256'hF7D901DC516CA1B5EFC8F76A056EC4F913AFF3B618FFC568201A333002D9FE9F),
    .INIT_09(256'h52D773CF89E81D3F0058BA68A40C7B48733772E845EF555E72879A5B85C7DE5F),
    .INIT_0A(256'hBF991A669105A4BF8C1C0B0A548BB392B71FE782E4D97A2C8728C0A52FC04F9E),
    .INIT_0B(256'h115B4FF81A001E7FCFECE6D2DCDFB0A87FDF10A4A5391CE032C10177E66CC0BA),
    .INIT_0C(256'h8B1D80CACF5421F8EADE424063E0820074165395DD18BFE6753B8CCA212995AC),
    .INIT_0D(256'h8062F37EC28BC51C568C8DA1D974F08085EC5B707C916472619E57D3A6191E2B),
    .INIT_0E(256'h4A8AC8A8512126E1A877A37BBF7620A39301B2032F3A1AC8835AD747FD609EBA),
    .INIT_0F(256'hB34F12BDD8C2AEBDD75B6C5092219988C36D160E59385C8AF3A48C12A5ABA3EE),
    .INIT_10(256'h3F78642B74024BEBA34F084C5A54AE8103F0BFFBBBCC57678F6142A0A78F3FCC),
    .INIT_11(256'h6B08EF6C850A0171F3E0C37201F0674AC9A4E83B33B04D4A665FFAFE611BB921),
    .INIT_12(256'hFD5C9C0D2BA3701EE754BF030E0207DFCFA23F4FFAA8BCFE00EF66EF2B9222DD),
    .INIT_13(256'h7C7F210E51E27E033F94CEB77E69098EE3ED9DAD8B67BC293130293424F9B7CA),
    .INIT_14(256'hC475A84430FA3AFDBFB50DF2B4E3CD464882B6B0477511F89EC4FF2E1934CCE1),
    .INIT_15(256'h54F5E2493A17EFAF7F850F7C6BA3B90C54EDBCF07316EB47E9DF8AC9196FF4FD),
    .INIT_16(256'hA5FA04CE4CEA5EFE3E8EF1B4FDFECBABA9A96B2A920CF8DF5C4CC5B95586DFC4),
    .INIT_17(256'h0C8405C3BFF361A9959FE6A32332699D55ABF889422D632BC6186155F35B6E6E),
    .INIT_18(256'hCA1D21C7AEF4224232C76A88184A15E09A447A0DA8AD5ED30D81E54310F9893E),
    .INIT_19(256'hEF7BB5615EC0E4CEB4AFE970881FB45D60C12BEAD648F9D2FA5837D9D7F0DA28),
    .INIT_1A(256'h4D4AF932A2C17CEB7EA0DB28C6238E7888BA640EF6540CFA0514B6B7F1F8898A),
    .INIT_1B(256'hA74848C700EE0A1098C244B4B9AECDCA8205FEB9AE4FB1E5ACEEBE769C6809A2),
    .INIT_1C(256'h07C5DB618EAB6786098B73AE575B751A80BB9C02EADF0B026E5640F74AA380B3),
    .INIT_1D(256'hF041EB635F68758104783221C58F7C997528E53AAC81B1B430C011E13946BF70),
    .INIT_1E(256'hD54E75CB08DE73717F6414D64298395C09A532A271C3FBD342B4495898018FBA),
    .INIT_1F(256'h5AE1B7F0BEB2EFA6930BFBBA46C17635831542D526AFBC369D542EEA37685989),
    .INIT_20(256'hE642CB68594987882B5048BE6059201ECD7330804ACD219F3B3717C67B30AAD4),
    .INIT_21(256'h4D80F43D8C82986CB8927D83A23C99991174DD0840A9DCF0A39E6B5C275BB16A),
    .INIT_22(256'hFCE766E582C6B376DD1D88E8C1338127AA9087A8910B7EF48DABE0B61FEBF5A1),
    .INIT_23(256'h0B4606C130646DB92385CA6554B562C2F90500223A925AD3266816A59952C3C3),
    .INIT_24(256'h81B8060EE3DC37F91C3ABDBBF6CD87E0494E2E397C6EE67290EA94A176D1C7B5),
    .INIT_25(256'hD8948E977BFF025C240675303AD0D7CE2E2DC5ED861D3E0EB8818C11E851F9CC),
    .INIT_26(256'h9AB11A4475F8A000F86E34E1C31471BB67097056DBD04D3DDB23D08F7C86B3FD),
    .INIT_27(256'hF8F22C72EF3E6FBF042F60852ECAF6F84934D601CD829A9E1546FC78D6009655),
    .INIT_28(256'h20A6DBB7710D9D8640D928D73F26B76C0D17663BD381550B0411ABAB851DE6D7),
    .INIT_29(256'hB429F921D07170D66833DD7A24CB64DDF739EC4D359D0ACED768B141A884ADE7),
    .INIT_2A(256'h05F5ECE3A6562B970A61FBAEE9B09C499679D4DD4E61ABF3425438C8F0539FE3),
    .INIT_2B(256'hCC72428248EE016114CD050C43BA216449DE5E5104DE49FA996C9C1D970A5577),
    .INIT_2C(256'h7F93F4B7EFE572E6451A6E0E151DEEDDC6581756B5B5614B719673BD2D344FB9),
    .INIT_2D(256'h87382E15EFA280BE80742FC1AA4DD91A7F39DA52AEEE4CA64A5BC261F1985C0C),
    .INIT_2E(256'h053D621CC679C684C5D79102069C1763D4CFE4674D569B4B56414F7D279DFD54),
    .INIT_2F(256'h8947E4D4E1D6E0FD67D30A6A813DF537107927AA4783573AC68B2FCC3D5A1667),
    .INIT_30(256'hC1E7962C2EB075DD4FC72BBED114B0CDAFFBB068B7828F0A900A287516220194),
    .INIT_31(256'h2CF942449280F3C818A3B2F6D6AD2D0A112FAC1979A9300EC34BDA229D71148D),
    .INIT_32(256'hEBC3EBF8FAA5A50B4867AE41E2AE9AB6761EF7D72DB27733FB1D5D57530B6823),
    .INIT_33(256'hCBAAB63C783B48235685FBB4AF0FB7D28971C52F6A78949B2E984EB98F17646A),
    .INIT_34(256'h312F2B93D396C742181DFEA15BBA5F13BC68A8ADA16052FA3169E1D35DA3E887),
    .INIT_35(256'h81053BB76212EF2CB5C5D6C85A10D082C83B23232850D0A844078FC9916DE7C8),
    .INIT_36(256'h7F33C33FAEEB83B9456FF0F4E248CF2F19BDF6308FB066C3CA305CF00FD01F30),
    .INIT_37(256'h77C0E0664672A01D27B42FE0C0D6AB9FB138324F1C532581D63FF8800EB57735),
    .INIT_38(256'hC189E529F4294E2F8A7B0BCC5D34AE4421FAB409800EAFC1E8E71B6DAC563152),
    .INIT_39(256'h2457CC295DB4195FEE4B98725DEE1BBF37C47B4AD68638EC84ED5C00A662E55C),
    .INIT_3A(256'h1FC93B2DBD166F97321CFE65C39E17603BE0E4E2F0C813EC807F04943CA0B3F9),
    .INIT_3B(256'hAFCDBC9B4B226429A11520BB49CEBD10705EDCCCE4DA8803F52629D4EB5BD2DE),
    .INIT_3C(256'h9ECBB90883122986036CA9E6CDEBAD1069A2FC3F93F209D10D1AA215CE4EA5B5),
    .INIT_3D(256'h744731B59F9CB430F27A0541D1938BE9A44CC84634139BCE7B3480EEE7BC90A4),
    .INIT_3E(256'hCABCDBD5D36F7FE585B867CD6BC66DE53B0488E94D880A6B7BE409A2FCA8A396),
    .INIT_3F(256'h1333274A4AE90714C306E319FFCFD4184DDA1A220CB724509CDD96CAD114E394),
    .INIT_40(256'h01CDAA3AE12B626A180151F150A17326895846D72A38FE43E6D48D279FD7C14A),
    .INIT_41(256'h337468491F314102125BD554BD40FA8084DD38E4754502B6C1FB26AA7FF02E4C),
    .INIT_42(256'h08D689F0BE5A8917400E203E6F7941321C21645B0699A004C7E3BC5F93B9660C),
    .INIT_43(256'hD05699EE1852EDE076C6BD140D1F6FD2EBD8CBFD8DC0E05C10BD37C6544E3093),
    .INIT_44(256'hF53DA462264A84639363723A6930EBAEABD1BF6DB5B52CF30485C499D39FB907),
    .INIT_45(256'h960E372CCDE433EC8EDAF07A08B7BF21513894A2C7E1E6F0B9274184BB2F1983),
    .INIT_46(256'h8F8F4216EBF012C3DD00CEE31EBD6FD5A016715DABB3141728B410B17658F545),
    .INIT_47(256'h605F43CDC54B4F74178DCCE560750B68FBE0D1B785D8D59EA25C43B44AC0266D),
    .INIT_48(256'hD8DFCF777BFEA8FCEC1265F18394AAF8DCEBC8C8D1D33096865AD1132C51B391),
    .INIT_49(256'h50FF22769647606C5CE6B9057D30E1A301F75505293D86523D3DE626AC13B0AC),
    .INIT_4A(256'h0F1443703C679B061E77853CD280D921CBDA9465D9FB536D92DEE1FE5218B3BA),
    .INIT_4B(256'hAF2CA01C6EF90514B19B8AB25E728A558E7B87E00D2D0930BA210B545F71452D),
    .INIT_4C(256'h36A11F5D24AB797F92D67067CFF57D0AAAD0FFC41B9550214DE3F51E6526C9EC),
    .INIT_4D(256'h04163AF78CFD1E0A9701826AD5312BD14DCA11754D09ED110EDD8E2E0C6D91FD),
    .INIT_4E(256'hEC25FB84BBA93FE0D30D3F3578D95DE45B3BA9EE31D597056188764EBC1FC172),
    .INIT_4F(256'h7826B43A1A315CA3AC99FE5D3FA13DBE310B6DBCFB4F68343AF31D1B9DA05635),
    .INIT_50(256'h0BCA35EB07A1276DEF9AD5CBBEEA712BFE94BD3DBC881357DCEE70C030BDF1F7),
    .INIT_51(256'h071F0B0C2B57307F08FB20F578A616D6C19E5B971BDEADA5308000548858B4F0),
    .INIT_52(256'h00EEFD1233FF0BB0D38DCDE3663D6CEFB1FEF420AE9C55EB92EEB1B174CD08C5),
    .INIT_53(256'h476FC3734B90CB5AA7C2BC0F31D29E9C4BFB72267E8DADE99AE09E2BFA62A8D4),
    .INIT_54(256'hB5CE4C6B4DC81693BAD74DB2468147E7E897EA878A98477A2FBA5B1DBB5DD532),
    .INIT_55(256'hCA8C243B79CEF0F1254E6B9A2410CA5A245FFD597248424E3E69EAF4E310840A),
    .INIT_56(256'h8631BEC013FAAAAB5EDF8EFBC15862FC176A8F5FC18722A840054E38D9D334D1),
    .INIT_57(256'h2B4037F412333E4237E12B54BE860FBB488873E1A1D2287CD32EA9829141B6E4),
    .INIT_58(256'hEF5393C19D66791F2E845C9AF2236C19058635AAE69818DE2311F3EC46DF3E0C),
    .INIT_59(256'h1864DC087AE6490A3963E1285749B49C1A313E8D335577489D42DF42EFDAD403),
    .INIT_5A(256'hBE0061937DECF90ABFF2F9D224C5A893D939940D27C88B7AF39DF43A8DDE6F18),
    .INIT_5B(256'hFD0E85A90EC43330296A48E755A1EC3BAF4FD607475CE522777A4BACF1DD003B),
    .INIT_5C(256'h9508BB09DBFF71A9E960014DF7B1E6F2899FC2DC2B8724AA1390A743C6B7EEF1),
    .INIT_5D(256'hD48A336688E1A7C95A0F86F04000ACC0A45D4D67D392B5EDBA6795D3F037987E),
    .INIT_5E(256'h928F61A9AFA620D167DC369B7AC54BE74ED211FAC3CE4E19BBB13BA623828BF2),
    .INIT_5F(256'hB94023442CFF6C353CE2579B20830B0F3EC8284DCED0555F0AA905E3D4C152C7),
    .INIT_60(256'h8E33AD4E222AD84D8CE4B4592F927D419002C0DBEC07B4220E61AC80FD323CCC),
    .INIT_61(256'h3F79BF6FD7B4D5A55AB8B3D7FFFBC1EB4A820AF73B96844A90BD244C113D572B),
    .INIT_62(256'hD3D7A33104F9AE4499F186BE1565F06E86F8E62B111DA70BB639EF8C50CAE86C),
    .INIT_63(256'hFEDA3CECFC0C938CC8EFD4FE799B54E94EFF009E880F47261C15E9185DFFE117),
    .INIT_64(256'hFFC5AB4B77A54E798050B3FD7009295E7078433720AFDA832A8511E12D316D49),
    .INIT_65(256'h80B158CC9148014191DE8620F590402CEDE3420829E13DD46407414D452D1991),
    .INIT_66(256'h0912E6AF000205193774EC774B653F597E29E60F95B300E55F999A8788F73D3A),
    .INIT_67(256'h7524AA3D746733C1DDCAC8E8B860523D3DCE52610DE8B25831A7256F730B87B3),
    .INIT_68(256'h3134AEF9B6C649274F5356040FC980A57239DC3078BC8649FFFA148C3D314EED),
    .INIT_69(256'h23D667E0695F98600F57B3F21DA66DBFCAACFA1217578575F1495C531FD332A4),
    .INIT_6A(256'h55F1C6683F9778B1A72081237351C0213B70439594D723194E5C2F9C700E793C),
    .INIT_6B(256'hB5AECB3CAB550E1E8161F7C0F45F821E92A1141D842B09E8CB1EF90202F00657),
    .INIT_6C(256'h07F0D22FA769560175FCA9F2212BF1BA1C292C040C71A4F0EBBB4B092F5E174A),
    .INIT_6D(256'hC48484C97D77A45D233B086AC6B25C3E50C657EF7B51F2933317F01D7C15DF97),
    .INIT_6E(256'hD03E483578FE506CE16ECAA892CF629CB27DB4ED0ACB9C6D2853460844780358),
    .INIT_6F(256'hCDB0CCFC4CB2959A62B8F37F81BCE3EA134F8F5F6B88E48C70175282C270BBDC),
    .INIT_70(256'hF60593585D277D83F534EC62F24736D8EB16F8B47322C764456C044C08AB1B32),
    .INIT_71(256'h9E978777B73A758E55FE0DEC1B34DD4871C41FAB5248B0E58005B200ACEC8D07),
    .INIT_72(256'h6D4ED4E3E35D478B79C293847734BEA63415C7A3057014E599120A985584516C),
    .INIT_73(256'hE3F153B08D42C7AAE5D244295823BD5E7EFF88F20AFCA3AC0F7F22926F91A2E8),
    .INIT_74(256'hAE8B5F221A7FCB6FB123BA3A604A49D714D922521C8EEFEBE8901E108C94B07C),
    .INIT_75(256'hFA75CDD912239C88680DABC98B1D46040B5558447C4F0B10C2AA221430C26399),
    .INIT_76(256'h6AB382F31FD3170F8A689DD1FFA38CF5E75B23E792D8E62490B577C74D382186),
    .INIT_77(256'h9045C10CE476F4C6E1924956912AE34D6EF9D8727CD46534AF65D9B5CCF74828),
    .INIT_78(256'h6C6AFF54ABDB968BD06806425E32820FD0BA3A26C0FEA2D05A41D61FA84AC9A2),
    .INIT_79(256'h124E095EF941BF56607658900958D460BB9B0CA577B80F62F0117308FF703CB8),
    .INIT_7A(256'h0000000000000000000000023AB78108DCB6769E2FF271335389D875942E950C),
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
module weight1_bram_3_blk_mem_gen_prim_wrapper_init__parameterized3
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
    .INITP_00(256'hDFBFAAF84EE0749AFF332056FE01DE36350C6D503C9EF62995E980DCFCB78E33),
    .INITP_01(256'hC4FCB16CA6ABD0DCBA0317EA04225C3983BD3CE02993D5192316B6C7E26FF1FE),
    .INITP_02(256'h4150B5956D0530085AE3612BDF9D7AD17579F566C07E9FE81FDBB6E2F362301B),
    .INITP_03(256'h4426C9C8820E8BF6878AFD7E237369738988E11359B492FFEB8325A3A71C21F5),
    .INITP_04(256'hCB5B2C4300F2467A51520B0F4B1739F3DA1AA6CCF8DF1F9DDFFC0F96415C0BF3),
    .INITP_05(256'h23BE3037BE1CEBCEFB08C66C58132687F42184AF323B2B45DBD5A8E6D294F8B3),
    .INITP_06(256'h0ADFFB96DAADA4448E3466C5429DC217C60BB14EDF90D43053D8A27ED78946C7),
    .INITP_07(256'hD108A03E912014A88F10762ADC4167DBABBE047CE7977F1DC0D1777296F2FCB5),
    .INITP_08(256'hF2F6B304CC951E92ACE756217BFDC5647C4361BFD20240BC90FA181124142262),
    .INITP_09(256'h6742197B71A57F7BDCAFB5F674740E59E7A29453D4FCA01B3C73CAEE0FDF495A),
    .INITP_0A(256'h5F9235B7F83F75720EED51F3FBA93F4E8602CC4EF83DDDAA09D4961CF8B574AD),
    .INITP_0B(256'h280DFD6E3B6D56704CEB1E1502CBD17A8F08A8AF7BC4AFB7EE34D2EB2AAC11BA),
    .INITP_0C(256'hF3F5388ACFEC83C3EB5ED2F982589CB39B00EA595B40430CB276E33D26A10E87),
    .INITP_0D(256'hF68B2EB0F1EE6BAA1AEFA3D8EBF7660F31BDC26B7CFE95A62F43DE2F44FFCE3B),
    .INITP_0E(256'hE9F57EE12409836FE666E8DC489E63E43EFD5F8129DF5856836B8B2995E95D89),
    .INITP_0F(256'h1DF0A1BD93A5086E800213EF407B568AA34D0E557A491C660D5749FD0E56ECBD),
    .INIT_00(256'hFFFFFFFFFFFF0000FF00FFFF00FFFFFFFF000000FFFFFF000000FFFF0000FFFF),
    .INIT_01(256'hFF0000FF00FF00FFFFFFFF00FF0000FFFF00000000000000FFFF00FFFFFF0000),
    .INIT_02(256'h0000FFFFFFFF0000FF0000FFFFFFFF00FFFFFFFF00FFFF000000FF00FF0000FF),
    .INIT_03(256'h0000FFFF00FF00FF00000000FFFF000000FFFF00FFFF00FF00FF00FF00000000),
    .INIT_04(256'hFFFFFEFFFFFFFF0000000000000000FFFFFF00FFFFFFFF000000FFFF00FFFF00),
    .INIT_05(256'hFFFFFFFFFFFFFFFE0000FFFF0000FFFF0000FE000000000000FF00FF00FFFF00),
    .INIT_06(256'h00FF0000FFFFFE00FFFEFF000000000000FFFFFF00FF0000FF0000FFFF00FF00),
    .INIT_07(256'hFFFF00FFFFFFFFFFFF00FFFEFFFFFFFFFF00FF00FF00FF00FFFFFFFFFF000000),
    .INIT_08(256'hFFFFFF000000FF0000FFFE00FFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFF00),
    .INIT_09(256'h0000FF000000FFFF000000FF00FFFF00FF00FFFF00FFFF00FFFF000000FFFFFF),
    .INIT_0A(256'h0000FF00FF0100FFFF0000FF0000FFFFFFFF00FF01FF00FF000000FFFF0000FF),
    .INIT_0B(256'hFF0000010000FFFFFF00FFFFFFFF00FF0000FFFFFFFF0000FFFFFF0000000000),
    .INIT_0C(256'h0000010000FF00000000FF000000FF0000FF00FFFFFF00000000FFFFFF0000FF),
    .INIT_0D(256'hFF00FEFFFF00FF00000000000000FFFF010000FF00FFFFFFFFFFFF00FF00FF00),
    .INIT_0E(256'hFF00FF0000FFFE00FF00FF00FF00FFFFFFFF00FF00000000FFFF00FFFEFF0000),
    .INIT_0F(256'hFFFF000000FF0000FFFFFFFFFFFF0000FF00FFFF000000FF00FFFF00FFFF0000),
    .INIT_10(256'hFFFFFFFF0000FFFF00FFFF000000FF000000FFFF00000000000000FFFF00FFFF),
    .INIT_11(256'h000000FFFFFFFEFFFFFF00FFFF00FFFFFF00FFFF00FFFF00FFFFFF000000FF00),
    .INIT_12(256'hFFFF00000000000000FFFFFFFFFFFF00FF0000FFFFFFFFFFFFFFFF00FF000000),
    .INIT_13(256'h00FFFFFF00FF00FF00FEFFFFFF0000FFFFFFFFFF00FF00FF00FFFF0000FFFF00),
    .INIT_14(256'hFFFF00FFFFFFFFFFFF0000FFFFFF00FF00FFFFFFFF00FF00FFFF00FF000000FF),
    .INIT_15(256'h00FF00FFFF00FF00FFFFFF000001FFFF00FFFF00000000FF0000FF00FF00FFFF),
    .INIT_16(256'h00FFFF00FFFF00FF0000000000FF00FF0000FFFF0000000000000000FF000100),
    .INIT_17(256'h00FF0000000000FF00FF00FF00000000FF00FFFF00FF00FFFF0000FF00FF00FF),
    .INIT_18(256'hFF00FF0000FFFFFF000100FFFFFF00000000FF00000000FFFFFFFFFF00FF00FF),
    .INIT_19(256'hFFFFFF00FF00FFFFFF0000000000FFFF0000FF0000FF00FFFF00FF000000FFFF),
    .INIT_1A(256'h00FF00FFFF0000FFFF00FFFF00FF0000FF0000FF0000FF00FFFFFFFFFFFFFFFF),
    .INIT_1B(256'hFF000000FF0000FFFF000000FF000000FFFFFF00000000FF000000FF0000FFFF),
    .INIT_1C(256'h0000FF000000FFFF00FFFFFF0000FFFF00FFFF00FF0000FF00FFFFFF0000FFFF),
    .INIT_1D(256'hFF00000000FFFFFFFF000000FF00FF00FFFFFFFFFEFF00FF01FFFFFFFFFFFF00),
    .INIT_1E(256'hFF0000000000FF0000000000FFFFFF00FF000000FF00FFFFFFFFFFFF00FFFF00),
    .INIT_1F(256'h00FF000000FF00000000FF0000FFFF00FFFF0000FF0000FFFFFF0000FF000000),
    .INIT_20(256'h00FF0000000000FF00FF00FFFFFF000000000000FF00FFFFFFFFFFFF0000FFFF),
    .INIT_21(256'hFFFF00FFFFFFFEFFFFFFFFFFFFFF000000000000FFFFFFFFFF0000FF00FFFF00),
    .INIT_22(256'hFFFFFFFFFF000001FFFF00FFFFFFFFFF000000FFFFFFFFFFFF0000FFFFFF00FF),
    .INIT_23(256'hFFFF00FFFF00FF00000000FFFF00FF00FF00FF0000FFFF00FFFF0000FFFF0000),
    .INIT_24(256'h00FF0000FF00FFFF000000FF00FFFFFF0000FFFFFF0000FEFFFFFFFF0000FFFF),
    .INIT_25(256'h00FF00FF000000FF00FF00FF0100FF0000000000FF00FFFE00000000FFFFFFFF),
    .INIT_26(256'h0000000000000000FFFFFFFF0000FF0000FF000000FFFF0000FFFFFFFF00FF00),
    .INIT_27(256'hFFFF0000FF00FFFF00FF00FFFF01FFFF0000FF00FFFF000000FF00000000FFFF),
    .INIT_28(256'hFFFF00FF0000FF00FF0000FF00FF0000FFFFFFFFFF000000FF00FFFF0000FFFF),
    .INIT_29(256'hFFFF00FFFF00FFFFFFFF00FF00FF00FFFF00FF00FF000000FFFFFF0000FFFF00),
    .INIT_2A(256'h0000FFFF0000FF000000FFFFFF00FFFF0000FF00FF00FFFF00FF000000FF00FF),
    .INIT_2B(256'hFFFFFFFF00FF00000000FF00000000FFFF00000000FF0000FF00FF00FFFFFFFF),
    .INIT_2C(256'h00FF00FFFF000000000000FF0000FFFF0000FF0000FFFF00FF00000000FFFFFF),
    .INIT_2D(256'hFFFFFFFFFF00FFFF00000000FF000100FFFF000000FFFF0000FFFF00FFFF0000),
    .INIT_2E(256'hFF00FFFFFFFFFF00000001FFFFFF0000FFFFFF00FF00FFFFFFFF0000FFFFFF00),
    .INIT_2F(256'h0000FF000000FFFFFF00FFFFFFFFFF000000FFFF000000000000FFFF00FFFFFF),
    .INIT_30(256'hFFFF00FF00FFFFFFFF000000FF0000FF00FF000000FFFF00FFFF000000FFFFFF),
    .INIT_31(256'h00FF00FF0000FFFFFFFF00FFFF000000FF00FF000000FF0000FFFFFFFFFFFF00),
    .INIT_32(256'hFFFF00FFFFFFFFFFFF0000FF00000000FFFF00FF00FF00000000FFFF01000000),
    .INIT_33(256'hFFFF000000FFFF0000000000FF00FFFFFF00FFFF000000FF00FF0000FFFFFF00),
    .INIT_34(256'h00FF00000000FF00FF0000FFFFFF00FFFFFF00000000FF00000000FF00FFFFFF),
    .INIT_35(256'hFF000000FFFFFF000000FFFF00FF000000FFFE0100FFFF00FFFF000000FF00FF),
    .INIT_36(256'hFFFF00FFFF00FF00FF00FF00FFFF00FFFF00FF0000FF000000FF000000FF0000),
    .INIT_37(256'h00000000FF00FF00FFFF00FFFFFFFEFFFFFFFFFFFF00FFFFFF0000FF00FFFF00),
    .INIT_38(256'hFF0000FF00FFFF00FFFFFFFF0000FF00FFFFFFFFFFFF0000FF00FFFF00FF00FF),
    .INIT_39(256'hFFFF000000000000FFFF00FF000000FF00FFFFFF00FFFFFF00FFFFFF0000FF00),
    .INIT_3A(256'hFFFFFF0000FFFFFFFF0000FF00FFFFFE00FFFFFFFFFFFFFF000000FFFFFF00FF),
    .INIT_3B(256'hFF00FF00FF00FFFFFE00FFFFFFFFFF000000000000FF000000FFFFFFFFFF0000),
    .INIT_3C(256'hFFFF00FFFFFF000000FF0000000000FF00FFFF0000FFFFFFFFFF00FFFF00FFFF),
    .INIT_3D(256'hFF000000FFFFFFFF000000FF0000000000FFFFFF00FFFF000000FF00FF00FF00),
    .INIT_3E(256'hFF0000FF000000FF0000FF0000000000000001FF00FF0000FF00FF00FF000000),
    .INIT_3F(256'hFFFF00FF000000FF00000000FF000000FF00FF00000000000000FFFFFFFFFF00),
    .INIT_40(256'h0000FF0000FF0000010000FF00FF00010000FF000000FF0001FFFF000000FF00),
    .INIT_41(256'hFF0000FF00000000FFFFFFFFFF00FF00000000FFFF000000000000FF000000FF),
    .INIT_42(256'hFFFF00FF0000FF00000000000000FF0000FF000000000000FF00FFFFFFFF0000),
    .INIT_43(256'h00FFFFFFFFFF000000FF00000000FFFF00FFFF00000000FFFF00FFFFFFFFFFFF),
    .INIT_44(256'h00FFFFFFFF00FFFFFFFFFFFFFFFF00FFFFFF000000FF00FF00FFFF0000FF0000),
    .INIT_45(256'hFF00FF00FFFF0000FFFFFF0000FFFFFF00FF00FF00FFFF000000FF00000000FF),
    .INIT_46(256'hFFFF0000FFFF0000FF0000FF00FF00FF000000FFFFFEFF00FF0000FF0000FF00),
    .INIT_47(256'hFFFFFFFF0000FF00FFFFFFFF00FFFF00FF00FFFF0000FFFF0000000000FF0000),
    .INIT_48(256'h00010000FFFFFFFFFFFF00FFFFFFFFFF00FF0000FF0000FF00FF00FFFF00FF00),
    .INIT_49(256'h0000FFFFFFFF000000FFFFFF0000FFFFFFFF0000FF00FF00FFFFFF00FFFFFF00),
    .INIT_4A(256'hFFFF00FF00FF0000FFFFFFFFFFFF0000FF00FF0000000000000000FFFF00FFFF),
    .INIT_4B(256'hFFFFFF0000FFFFFFFF00FF000000FF00FF0000FF00FF000000FF00FF0000FFFF),
    .INIT_4C(256'h00FFFFFF00FF000000FFFFFF00FF000000000000FFFFFF0000FF00FFFF0000FF),
    .INIT_4D(256'hFFFF00FFFFFF0000FF00FF00FFFFFFFFFF00FFFF00FF00FFFFFFFFFF00FFFF00),
    .INIT_4E(256'h00FFFFFF000000FFFF00FF0000FF00FF00FFFFFFFFFFFFFF00FFFFFFFF00FFFF),
    .INIT_4F(256'h00FFFF0000FFFFFF00FF00000000FF00000000FFFF0000FF00FEFFFFFF00FFFF),
    .INIT_50(256'hFFFFFFFFFE000000FF00FFFF00FF00FF00FFFFFF01FF0000FF00FF00FFFF00FF),
    .INIT_51(256'h00000000FF0000FFFFFF00FF00FF0000FF0100FF00FFFF00000000FFFFFF0000),
    .INIT_52(256'hFFFFFFFFFF0000000000FFFFFFFF00FFFFFF00FFFFFF01FFFF00FF00FF00FF00),
    .INIT_53(256'hFF00000000FFFF00000000000000FF00FFFF0000FFFF010000FF0000FFFFFF00),
    .INIT_54(256'hFFFFFFFFFF00FFFFFF00FF00FF0100FF0000FFFFFFFFFFFF00FF0000FFFFFF00),
    .INIT_55(256'h00000000FFFFFF00FFFFFF00FFFF00FF00FF00FF000000FFFFFFFFFF0000FFFF),
    .INIT_56(256'hFFFFFFFFFF0000000000FFFFFFFFFFFF00FFFFFF00FF00FF00FFFFFF0000FF00),
    .INIT_57(256'h00FF00FFFFFFFFFFFF0000FF0000FF000000FFFF00FF00FFFF00FFFF00FFFFFF),
    .INIT_58(256'h0000FF00FF00FF00FF00FF00FFFF0000000000FF000000FFFF00FFFFFF00FF00),
    .INIT_59(256'hFFFFFF00FFFFFF000000FFFF00FF0000FFFF00FF0000FF00FFFFFF00FF00FFFF),
    .INIT_5A(256'h00FFFFFFFF00FFFFFFFF000000FF0000FF00FF00FFFFFEFFFF00FFFF00FFFFFF),
    .INIT_5B(256'hFF000000FFFFFFFF00000000FF000000FF00FF00FF000000FF00FF00FFFFFFFF),
    .INIT_5C(256'h000000000000FF00FFFF0000FF00FFFFFFFF00FF000000FF00FFFFFFFF00FF00),
    .INIT_5D(256'h00FF0000FFFF0000FFFFFF00FF00FFFF000000FFFFFFFF00000000FF00FF00FF),
    .INIT_5E(256'h0000FFFFFF00FFFF00FFFF00FFFF00FF00FF00FF00FFFF0000FFFFFF00000000),
    .INIT_5F(256'h0001FF00FF00000000000000FFFF00FFFFFFFFFFFFFF00FF00FFFF00FFFFFF00),
    .INIT_60(256'h0000FF0000FFFF00FF00FF00000000FF00000000FFFFFF00FF00000000FFFFFF),
    .INIT_61(256'hFF00FFFF0000FF0000FFFFFF00FFFF00FFFFFF000000FFFF0000FFFFFFFF00FF),
    .INIT_62(256'h00FF00FFFF00FFFF00FF00000000000100FF00000000FFFF00000000FFFF0000),
    .INIT_63(256'hFF0000FFFF00FFFF0000000000000000FFFFFF00FF00FF0000FF00FFFF0000FF),
    .INIT_64(256'hFF0000000000FF0000FF00FFFF000000FF0000FFFFFF0000FF00FFFF0000FFFF),
    .INIT_65(256'hFFFFFF00FF00FFFF00FF00FEFFFFFF00FFFF00FF0000FF00FFFFFFFFFF0000FF),
    .INIT_66(256'hFFFF0000FFFFFFFFFFFFFF00FFFF0000FF0000000000FFFFFFFF00000000FFFF),
    .INIT_67(256'hFFFFFFFF0000FFFFFFFFFFFF00FF00FF0000FFFFFF000000FF000000FF00FF00),
    .INIT_68(256'h00FF000000FF0000FFFFFFFFFFFFFFFFFFFF0000FFFFFF000000FFFFFF00FFFF),
    .INIT_69(256'h0000FF00FFFFFFFF00FF00000000FFFFFFFE00FFFFFFFF000000FF00FFFFFFFE),
    .INIT_6A(256'h00FEFFFFFFFF0000FFFFFFFFFFFFFF00FF0000FF00FF00FFFE00FF0000FFFF00),
    .INIT_6B(256'h0000FFFF000000FFFF00FFFFFFFF00FFFFFF00000000FF0000FFFF00FF00FFFF),
    .INIT_6C(256'hFFFFFE00FF00FFFFFFFFFFFF00FFFFFF00FFFF0000FFFE0000000000FFFFFFFF),
    .INIT_6D(256'h000100FFFF00FF00FFFFFF00FFFFFFFFFF00FF000000FFFFFFFF00FFFF000000),
    .INIT_6E(256'hFFFFFFFF000000FFFFFFFF00FFFFFF0000FFFF00FF00FFFFFF00FF00FF00FF00),
    .INIT_6F(256'hFFFFFFFF00FFFE00FF000000FF00FFFE0000FF00FFFFFF00FF00FFFF00000000),
    .INIT_70(256'hFF0000FF00FF00FFFFFFFF00FF0000FF00FF00FFFFFF00FFFF000000FF0000FF),
    .INIT_71(256'hFF0000000000FFFF00FFFF00FF00FFFFFF000000FF00FFFF0000FF00FF0000FF),
    .INIT_72(256'h0000FF00FF0000FFFFFF00FFFFFFFFFF00FF00FFFF00000000FF00FF00FFFF00),
    .INIT_73(256'h0000FFFFFFFFFF00FFFFFFFFFFFF00FF00FF00FFFFFFFFFFFF000000000000FF),
    .INIT_74(256'h00FF0000FF000000FF0000FFFFFFFF0000FFFF000000FFFFFFFFFF0000FF0001),
    .INIT_75(256'hFFFFFF0000FFFF0100FFFF0000FFFF00FFFFFF00FF000000FFFF00FFFFFF0001),
    .INIT_76(256'h0000FF0000FF000000000000FF0000FFFF0000000000FFFF00FFFF00FFFFFFFF),
    .INIT_77(256'hFFFFFF00FF0000FFFFFFFFFF00FF00FF00FFFFFFFFFFFF00FFFFFF00000000FF),
    .INIT_78(256'h00000000FFFFFF0000FF00FF00FFFF00FFFFFF00FFFF0000FF00FFFFFFFF00FF),
    .INIT_79(256'h00010000FFFF00FF00FF00FF00FFFFFF00FF0000FF0000FFFFFFFFFFFFFF00FF),
    .INIT_7A(256'h00FFFFFFFF00FF0000FF0000FF0000FF000000FFFFFF000000FFFF0000FFFF00),
    .INIT_7B(256'hFF00FF000000FFFE00FF0000FFFF00FF00000000FFFFFF0000FF00FF00FF00FF),
    .INIT_7C(256'h00FF00000000000000FFFFFFFF00FFFF00FF00FF00FFFF00FF000000FF00FF00),
    .INIT_7D(256'hFF00000000000000000000000000FF00000000FF0000FFFFFFFFFF00FFFFFFFF),
    .INIT_7E(256'hFF0000FF0000FFFFFF00FF0000FF00FF00000000FF00000000FFFF00FFFFFF00),
    .INIT_7F(256'h000000FFFFFF00FFFFFFFFFF00000000FF00FF00000000FFFF00FFFFFFFF00FF),
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
module weight1_bram_3_blk_mem_gen_prim_wrapper_init__parameterized4
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
    .INITP_00(256'h0807F01E6975C6EA55F78DACFBFF17C9B496A23A60074681B748BB4B71396482),
    .INITP_01(256'h7B18447E58B00419D000091DC0000599090019C5800C901F400A837803C47BC0),
    .INITP_02(256'h26B7DC1245DC449BBABD9672C820E0CA9F23DA5425DDCBA83336E69DCDAD583E),
    .INITP_03(256'hE76C37FC2FCA3BDEB49591FF28E690C6280AEE52C36891FFF24E90B675C169C8),
    .INITP_04(256'h67E5A54DF5970BCA76F378020048A8E80DA402C18A01ED92203799C300FF93BD),
    .INITP_05(256'hA4010F0408821E612B280B8DAE62D02528ECD8553DF7AD60D48AB9BD10F9C92F),
    .INITP_06(256'h14EE3D8F0561FAA07D355E019B98C00251CD8848836242F2821042434D4004BE),
    .INITP_07(256'h89880007DC1000C704580114834241133602B4AE81113261CB85BB19983642FC),
    .INITP_08(256'h6D5138D8EDCFD61257E278439BB564878DC22C4A3955C0EA3FC1F100414D200C),
    .INITP_09(256'h945427A500D0F35F34077609763637A6B9BE9DF027829F7E62D57C71E2231161),
    .INITP_0A(256'h887CD5B6409850892315C08281BFC69C4039D19823FC1531EEB34C1F748F65EB),
    .INITP_0B(256'h59E515C2767DC57FC35B2540E3683774F1976DDD0AECD0B107C4B4C9A62C3C34),
    .INITP_0C(256'h00282E3303842B165876916AAB60F407C8A68033977A24F24FC28BB8CF34E050),
    .INITP_0D(256'hBBE33542406B2AF047EA2FA1FC48B39E7A5673FD46D89F3458E8CC1B8201C0DE),
    .INITP_0E(256'h4158BAD4DC0188BFCA2861A974CBF29E29EB102016298DA03FE7DD2837D59B10),
    .INITP_0F(256'h0510BB13D2967BE7BB442D6DB87390FC86F9DFEC267A782C508E22075828A2DF),
    .INIT_00(256'h00FFFFFF000000FF0000FFFFFF0000FF00FFFF0000FF0000FF0000000000FF00),
    .INIT_01(256'hFF00FFFF00FFFFFF00FE0100FF000000FF00FFFFFF00FFFF00FF0000FF00FFFF),
    .INIT_02(256'h00FFFF00000001000000000000FFFFFF00FF000000FFFF00FF000000000000FF),
    .INIT_03(256'hFF00FFFF00FF0000FF0000FF00FFFF00FF00FF000000FF000000FFFFFF00FF00),
    .INIT_04(256'hFFFFFFFFFF00FFFEFFFFFFFFFFFFFFFF000000FF00FFFFFFFFFF0000FF0000FF),
    .INIT_05(256'h00FF00FF00FF00FFFFFFFEFF00FFFEFFFF000000FFFF00FFFF00FF00FFFF0000),
    .INIT_06(256'h00FFFF00FF0000FF00FFFFFF00FF00FEFFFF000000FFFF00FFFFFF00FF00FF00),
    .INIT_07(256'h00000000FF0000000000000000FFFFFFFEFFFFFF00000000000000FFFFFFFF00),
    .INIT_08(256'h000100010000FFFFFFFF000000FF000000FFFFFFFF00FFFFFFFF000000000000),
    .INIT_09(256'h00FF00000000000000000000FF00FF00FF0000000000FFFF00FFFFFFFF000000),
    .INIT_0A(256'hFF0000000000000000010001FFFF0000FF0000FF00000000000000FFFFFFFFFF),
    .INIT_0B(256'h00000000FF0000FF0000010000000000000000FFFF0000FFFFFF000001FF00FF),
    .INIT_0C(256'hFFFF00000000000000000000000000000000000000FF00FFFF0000FFFF0000FF),
    .INIT_0D(256'hFFFF00FF00000000000100000000000000000000FF0000FF000000FFFFFF00FF),
    .INIT_0E(256'h00FF00FFFF000000FF00FFFF000000000000000000FF0000000000FFFF0000FF),
    .INIT_0F(256'h00FFFFFFFF00FFFF000000FFFF00000000FF000000FF000000FFFFFFFFFFFF00),
    .INIT_10(256'hFFFF0000FFFF00FFFF00FF00FFFF00FF00FF00FFFF0000000000FFFFFFFFFF00),
    .INIT_11(256'h0001FFFF0000FFFF0100FFFF00FFFF00FFFFFE0000FFFE00FF0000FFFFFF00FF),
    .INIT_12(256'h0000FF0000FF00FFFFFF00FFFFFF00FFFFFF0000FF00FFFFFF00FF00FF000100),
    .INIT_13(256'hFF0000FFFFFFFFFF0000FF000000FFFFFFFF00FFFF00FF0000FF00FF00FF0000),
    .INIT_14(256'hFFFF0000FF0000000000FF0000000000FFFFFF0000000000FFFF0000FF00FF00),
    .INIT_15(256'hFF00FFFFFF00FF00FF00FFFFFFFF00FFFF0000FF00FFFF0000FFFFFF0000FE00),
    .INIT_16(256'h00FF000000FF00FFFFFF00FFFFFF000000FF000000FF0000FF0000FFFF00FFFF),
    .INIT_17(256'h0000FF0000FFFF00FF00FFFF00FFFFFFFFFF00FFFFFF0000000000FF0000FF00),
    .INIT_18(256'h00FFFFFF00FF00FFFFFF0000000000FF00FFFF00FF0000FFFFFF0000FF000000),
    .INIT_19(256'hFFFFFFFF0000FF0000FF0000FFFFFF00FF0000FF00000000FF00FFFF00FFFF00),
    .INIT_1A(256'hFFFF00000000FFFF00FFFF00FF000000FF0000FF010000FFFFFFFFFFFFFFFFFF),
    .INIT_1B(256'h0000FF00FF00000000000000FF00FF00FFFFFF00FFFFFF0000FF00FF0000FF00),
    .INIT_1C(256'h0000FF00FF000000FFFFFF0000FFFF00FF0000FF00000000FFFF000000FFFF00),
    .INIT_1D(256'hFF00FFFF00FF0000FF0000FF00FF00FFFF0000FF000000FFFFFFFFFFFFFFFFFF),
    .INIT_1E(256'h0100FF00FFFFFFFFFFFF0000FF00FF000000FFFFFF00FFFFFFFF00FFFFFFFF00),
    .INIT_1F(256'hFFFFFF0000FFFFFF00FFFF00FFFF00000000FFFE00FFFFFFFFFFFFFFFFFF0000),
    .INIT_20(256'h0000000000000000FFFFFFFEFFFFFFFFFF0000FF0000FFFFFF00FFFFFEFF00FF),
    .INIT_21(256'h0000FF00000000000000FFFF00FFFFFEFF0000FFFF0000FFFFFF00000100FFFF),
    .INIT_22(256'hFF010000FF00FF0000000000000000FFFFFFFF00FFFF00FFFF0000FF0000FF00),
    .INIT_23(256'h00000000FFFF00FFFF00FF0000FF0000000000000000FF00FFFF0000000000FF),
    .INIT_24(256'h000000000000000000FF0000FF000000FF00FF00FF000000FFFFFF00FF000000),
    .INIT_25(256'h00FFFFFF00FFFF00FFFFFFFF0000FFFF00FFFFFFFF000000000000000000FF00),
    .INIT_26(256'hFFFFFFFF00FF00FFFF0000FF00FFFFFF00000000FF00FFFFFFFF0000FF00FF00),
    .INIT_27(256'h00FFFF0000FFFFFFFEFFFF0000FF00FFFF00FF0000FF00FF00FF0000FFFF00FF),
    .INIT_28(256'h000000FF00000000FFFFFFFFFF0000FFFFFF0000FF0000FF0000FF00FFFFFFFF),
    .INIT_29(256'hFFFF00FF00FF0000FF000000FF00FF00FF00FFFFFF0000FFFF00FFFFFFFF00FF),
    .INIT_2A(256'h0000FFFFFFFF00FFFFFFFFFF00FFFFFFFF00FF00FFFF00FF00FFFF0000000000),
    .INIT_2B(256'h0000FF00FF000000FFFFFF00FFFF0000FFFF00FFFF00000000FF00FF00FF00FF),
    .INIT_2C(256'hFF00FF00FFFFFF0000FFFF000000FF00FFFF00FF000000000000FF0000FF00FF),
    .INIT_2D(256'h0000FF00FF00FFFF0000FF00FF00000000000001FF00FFFFFF000000FFFF00FF),
    .INIT_2E(256'h00000000FF000000FF0000000000FF00000000FFFFFFFF0000FFFF00000000FF),
    .INIT_2F(256'hFF00FF0000FF000000010000000000FF00000001FFFFFFFF0000000000FF0000),
    .INIT_30(256'h00FF0000FFFF00FF00FF0000000000000100000000FF0000FF00FFFFFFFFFF00),
    .INIT_31(256'hFF0000000000FF00000000FF0000000000FF00000000FF0000FF00000000FFFF),
    .INIT_32(256'hFF0000000000FFFF00FFFF000000FF0000FF00000000FF00FFFFFFFF0000FF00),
    .INIT_33(256'h00FF00FF000000FFFFFF0000FFFF00FFFF000000FF00000000FF0000FF000000),
    .INIT_34(256'hFF0000FFFF00FFFFFF0000FFFF000000FFFF000000000000000000000000FF00),
    .INIT_35(256'h00FFFFFFFFFF00FF0000FFFF00FF00FF00FF00FFFFFFFF0000010000000000FF),
    .INIT_36(256'h0001000000FF00FF00FFFF00000000FFFFFFFFFFFF00FF00FF00FF0000000000),
    .INIT_37(256'h000000FF00FF0000FFFFFF00FFFFFF000100FFFFFFFF00FFFF000001FFFFFFFF),
    .INIT_38(256'hFF0000FFFF0000000000FFFF00FFFF0000FF00000000FF00FFFFFFFFFFFF0000),
    .INIT_39(256'hFFFF0000FF01FFFFFF00000000FF00FFFF00FFFFFF00FFFF000000FFFF0000FF),
    .INIT_3A(256'hFF000000000000FF000000FF000000FF0000FFFF0000FF0000FFFF00000000FF),
    .INIT_3B(256'h0000FFFF00FFFF01000100000000FF00FF00FFFF00FF0000FF00FF00FFFFFF00),
    .INIT_3C(256'hFF0000000000FFFF00FF00000000FF0000FF0000000000FF000000FF0000FFFF),
    .INIT_3D(256'h0000000000FF000000FF00FFFF00000000000000000000FF000000FF00FF0000),
    .INIT_3E(256'hFFFF00FFFFFF0000000000FF000000000001000001000000FFFF000000FFFFFF),
    .INIT_3F(256'hFF000000FF0000FFFF000000FF00000000000100000000000000000000FFFFFF),
    .INIT_40(256'h00FF0000000000FF00FF0000FFFF00FF0000FF000000010101010100FFFF0000),
    .INIT_41(256'h0000FFFFFFFFFFFFFFFF0000000000FFFFFFFFFF000000FF0000000001000000),
    .INIT_42(256'h0000FFFFFF0000FF00FF00FF00FF00FFFFFF000000000000FFFFFF00FF00FF00),
    .INIT_43(256'hFF000000FFFF00FFFFFF00000000FF000000FF00FFFF000000FF0000FF00FF00),
    .INIT_44(256'hFF0000FFFF00FFFFFF00FFFF00FF00FF00FFFF0000FF0000FF00000000FFFFFF),
    .INIT_45(256'h00FF00FF00FFFFFFFFFFFF000000FF0000FFFFFFFF00000000FF00000000FFFF),
    .INIT_46(256'hFFFFFF00FFFF00FFFFFF0000FFFFFFFFFFFF00FF00FFFF00000000FF0000FF00),
    .INIT_47(256'h00FFFF00FEFF00FF00FF00FF000000FF0000FFFFFF000000FFFF00FFFF000000),
    .INIT_48(256'hFFFFFF000000FF000000FF000000FFFF000000FF000000FF00FFFF00000000FF),
    .INIT_49(256'h00FFFF000000FF00FFFF00FF00FF00FF00FFFFFFFFFF000000FFFFFF000000FF),
    .INIT_4A(256'h0000FF0000FFFFFFFF0000000000FF00FF0000FFFFFFFFFF00FFFFFFFFFFFF00),
    .INIT_4B(256'hFF00FFFFFF0000FFFF00FFFFFFFFFF00FF0000FFFFFF00FFFFFFFFFF00000000),
    .INIT_4C(256'h00FFFFFF00FFFF000000FFFF00FFFF000000FFFF00FFFFFFFF00FF0000FFFF00),
    .INIT_4D(256'h0000FFFF00FF00000000010000FFFFFF00FFFFFF00FFFF0000000000FF0000FF),
    .INIT_4E(256'h0000000000000100FFFF00FF00000000FFFFFFFF0000FFFF00FF00FFFFFFFFFF),
    .INIT_4F(256'hFF0000FF00FF000000FF00FF00FF00000000FF0000FFFFFFFF00FF0000FF00FF),
    .INIT_50(256'h00FFFFFF00FF0000FF000000FFFFFFFF00FFFF0000FF00FFFFFFFF00FF00FFFF),
    .INIT_51(256'hFFFFFF00FFFFFF00FF00FFFF0000FFFF00FF0001FFFF0000010000FFFFFFFFFF),
    .INIT_52(256'h0000FF000000FFFFFFFFFFFFFFFF0000000000FF00FF00FF0000FFFF000000FF),
    .INIT_53(256'h00FF0000000000000000FFFFFF0000FFFFFF00FF000000FFFF0000FFFF000000),
    .INIT_54(256'hFF000000000000FFFF00FFFFFFFFFFFFFFFF000000FFFE00FF0000FFFFFF0000),
    .INIT_55(256'h0000FF000000FFFF000000FF00FF00FFFFFF000000000000FF0000000000FF00),
    .INIT_56(256'h00FF000000000000FF0000FFFF00000000FF00FF00000000FF000000FF0000FF),
    .INIT_57(256'hFF000000FF00000000FFFFFFFFFF0000FFFF00FF00FF00FFFF00FFFF00FFFF00),
    .INIT_58(256'hFF00FF0000FFFF000000FF00FFFF00000000FFFFFFFF00000000FFFF00FF0000),
    .INIT_59(256'h0000000000FFFFFFFFFF000000FF0000FF00FFFF00FF0000FFFF0000FF0000FF),
    .INIT_5A(256'h00000000FF00FF00FFFFFF00FFFF0000FFFF00FF00000000FF00FFFF000000FF),
    .INIT_5B(256'hFFFFFFFF000000FFFF0000FF00FFFFFF00FFFF00FFFF00FFFFFF00FFFFFF00FF),
    .INIT_5C(256'hFFFFFF000000FFFF00FFFF00FF0000000000FFFF00FFFFFF00FFFFFF00FF0000),
    .INIT_5D(256'hFFFF00000000FFFF01FF00FFFF00FFFF0000FF0000FF00FF00FF000100000000),
    .INIT_5E(256'h00FFFFFF00FFFF0000FFFFFFFFFF00FFFFFF000000FF00FF00FFFFFFFFFFFFFF),
    .INIT_5F(256'h00FF00FFFF0000FFFFFFFF0000FF00FF000000FF00FF00FFFFFF00000000FF00),
    .INIT_60(256'hFFFF0000FFFFFFFF0000FFFF00FF0000FFFFFF000000000000FF00FF00000000),
    .INIT_61(256'h00FF0000FFFFFFFFFFFF00000000FF00FF000000FF00FFFFFF00FFFFFF000000),
    .INIT_62(256'hFF0000FF00FFFFFF00FFFFFFFF00FF000000FF0000FF0000FFFFFFFF0000FF00),
    .INIT_63(256'hFFFF0000FF000000FF00FF0000FFFF00FF000001000000000000FFFF0000FFFF),
    .INIT_64(256'hFF00FF00FF00FFFF00FFFF0000000000FFFFFFFF00FF00000000000000FFFFFF),
    .INIT_65(256'h00FF00FFFF00000000FFFFFF00FFFF00FF0001FF000000FF00FFFF00FF00FF00),
    .INIT_66(256'h000000000000FFFEFF00000000FF00000000FF00FF00FFFF000000FE00FFFF00),
    .INIT_67(256'h00000000000100000000FF00FF0000000000FF00FFFFFF000000FFFF0000FFFF),
    .INIT_68(256'hFF0000000000FF0000000001000000FFFFFF000000000000FFFF00FFFFFFFF00),
    .INIT_69(256'h00FF00FFFF000000FFFFFF00FF000000FFFF0000FFFF0000000101FFFF00FFFF),
    .INIT_6A(256'h00FF000001FFFF00FFFF00FFFF000000FF0000FFFFFFFFFF0000FFFF00FF0000),
    .INIT_6B(256'h00FFFFFFFF00FF0000FF00FF00FFFF0000FFFFFF0000FFFFFFFFFFFFFFFF00FF),
    .INIT_6C(256'hFFFEFFFFFFFF000000FF0000FF000000FF00FFFF0000FFFFFF0001FFFEFFFF00),
    .INIT_6D(256'h00FF000000FFFFFFFFFFFF00FF01FF000000FF00FFFFFFFFFF01FF00000000FF),
    .INIT_6E(256'h00FF00000000000000FFFF00FF00FFFF0001FF00FF00FF00FFFFFFFF00000000),
    .INIT_6F(256'hFF00FFFFFF00FFFFFFFFFF000000FFFF0000FFFF00FF00FF00FF00000000FF00),
    .INIT_70(256'h0100FFFF00FFFFFFFFFF00FF00FF00FFFF0000FFFF00FFFF000000FF00000000),
    .INIT_71(256'h0000FFFFFEFFFFFFFFFFFF0000FFFFFFFFFF00FFFFFF00FF0000FF00FF000000),
    .INIT_72(256'h000100FF00FFFF000000FF00FF0000FFFF000000FFFF00FFFF00FF0000000000),
    .INIT_73(256'h0000FF00FF0000FFFFFFFF00FF00FFFF000000FF000000000000FF0000010000),
    .INIT_74(256'h00FFFFFF00FF0000FFFF0000FF00FFFFFFFFFFFF0000FF00FF0000FFFFFFFF01),
    .INIT_75(256'hFFFF0000FF00FF000000FF00FF00000000FFFF00000000FFFF00FF00FF0000FF),
    .INIT_76(256'hFFFF00FFFFFF000000000000000000FFFF000000FF000000FF00FFFFFFFFFFFF),
    .INIT_77(256'h00FF0000000000FF00FF01FFFF000000FF00FFFFFF00FF00FFFF00FF00FF0000),
    .INIT_78(256'h00FF00FFFE0000000000FF00FF000000FF00FF000000FF00FFFF00FFFFFFFFFF),
    .INIT_79(256'h00FE00FF00000000FF000000FFFFFF000000FF000000FF000000000000FFFFFF),
    .INIT_7A(256'h0000FF0000FFFF0000FFFFFFFF00FF0000FFFFFFFF0000000000FF00FFFF0000),
    .INIT_7B(256'hFF01000000FFFF00FFFFFFFFFF0000FFFFFE00FFFFFFFEFFFFFFFF00FFFF0000),
    .INIT_7C(256'hFF00FFFFFF00000000FFFFFF0000FFFFFF0000FF00000000FFFFFFFFFFFF0000),
    .INIT_7D(256'hFF00FFFFFF00FFFF00FF000000FF00000000FF00FFFF00FF00FFFF00FFFF00FF),
    .INIT_7E(256'hFFFF00FF0000FF00FF0000FF00FFFF0000FFFFFFFF00FFFFFFFFFF0000FFFFFF),
    .INIT_7F(256'h0000000000FE00FF000000FF00010000FF00FFFFFF00FFFF000000FF0000FFFF),
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
module weight1_bram_3_blk_mem_gen_prim_wrapper_init__parameterized5
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
    .INITP_00(256'h5ECF340041C0B01498408A148D7018301F07C35B000C044100DB04F1BAE0179B),
    .INITP_01(256'h822E81ECF36235D8DEB6B886075B22D1093475BB8247BC8421453FD03D67B742),
    .INITP_02(256'h3276BC07B8CFE07C06BD1C8DF7107721C6417385B04544FF78F5CD6F2A8E9B41),
    .INITP_03(256'hC79BA3BF7FBF27F68F8D5F82CE1EE06FB3902C99A0813FFAE016FD05034D52C0),
    .INITP_04(256'h8F5D51CE2DE1EC850D30331067A5E5C8ABB2DFA6A54D905EAFAA9B57BFC064D9),
    .INITP_05(256'h92C62D24DFB9357BBF182234F43094B63014271377969890D98C87BFC3DA565F),
    .INITP_06(256'h827F0621A4A09559AA03A0A0A0B72E8A0D3A40438C53BC77FDE2BD0704DBF58D),
    .INITP_07(256'hE04C24AD76FA786F433EF3641C772C65E0FA5E7CD6704A2C972A44115A63E785),
    .INITP_08(256'hF3B0795F0F1D5FA986F93A7D4A00224C384B113F78A9FB47F8EFE859EE4A4EC9),
    .INITP_09(256'hFF9538B7D8E349FEBFD17FFE0EF7DFEC0FE05F3DDA0DC54BC0E4AADE1FD46303),
    .INITP_0A(256'h384DEBCD7B7D41634BE252927EFCD002CD2B081DFDA2B81FCBF2BE5577F6FE87),
    .INITP_0B(256'h345C0D617B78693F20580C6ED36901DA152C5CD533BFC21E11BB9BCE88360D5E),
    .INITP_0C(256'h70E2D92345C695EE003A5EF200B5BA40999CB5E67026DD670543CE07145ABB66),
    .INITP_0D(256'hE1953A55279D95E5FBB040C55494CE07F85A6CE2FDFD6AED96827EB5CBE6BA74),
    .INITP_0E(256'h295024FA33BD00E8D6AD98DA2569810380E2BBDDBC0B498D2B9A617710F51FAD),
    .INITP_0F(256'h50106F6461DB49312A78AE67BF8D8C9B99CFFF6E0E4D78093A9D1BA25461109D),
    .INIT_00(256'hFF00FFFFFF00FF00FFFFFF0000000000000000FF00FFFFFFFF0000FFFF00FFFF),
    .INIT_01(256'h0000000000000000FFFF00FFFF00FFFF0000000000FF0000FFFFFFFF000000FF),
    .INIT_02(256'h000000000001010000000000FFFF00000000000000FF010000FF0000000000FF),
    .INIT_03(256'h000000FFFFFFFFFF0000000100FFFFFFFFFF00000000FFFF00FF00FFFF00FFFF),
    .INIT_04(256'hFF000000FFFF00FF00FFFFFF00000000000000FFFF0000000000FFFF00000000),
    .INIT_05(256'hFF0000FFFF00000000FF000000000000FF000100FF01FF00000000FF00FF0000),
    .INIT_06(256'h00FF0000000000FFFFFF000000000000FF00FFFF00010001000000FF00FF0000),
    .INIT_07(256'h00FF00FFFFFFFF00FFFF0000FFFFFFFF0000FFFF00FF00000000010000000000),
    .INIT_08(256'h0001FFFFFFFF00FF00FFFF0000FFFFFFFF00FFFF00FFFFFF00FF00000101FF00),
    .INIT_09(256'h0000FE00000001FF00FF000000FF00FF0001FFFFFFFFFFFFFFFF00FF00000000),
    .INIT_0A(256'hFF0000000000FF0000FF000000FFFFFFFF00FFFFFFFF0000FF00000000FF0000),
    .INIT_0B(256'h00000000FF0000FF0000FFFF00FF000000FFFFFF00FF00FFFF00FFFFFF00FFFF),
    .INIT_0C(256'h0000000000FFFFFF00FF00FFFF00FFFF0000FF000000FF00FFFF00FF000000FF),
    .INIT_0D(256'hFFFF00FFFFFFFF00FF00FFFF00FFFF00FF00FFFFFF000000FF00000000FFFF00),
    .INIT_0E(256'hFFFFFFFF0000FFFF00FFFF000000FF000000FFFF00FF00FFFFFF00FFFF000000),
    .INIT_0F(256'hFF0000000000FF000000FF00FFFFFF00FF000000000000FFFFFFFF00FFFF0000),
    .INIT_10(256'h0000FF00FF00FF00FF000000FFFFFF00FF0000FFFF00FFFF00FF0000000000FF),
    .INIT_11(256'h00FFFFFFFF000000FFFFFFFF00FF00FFFFFF0000FFFF00FF00FFFF00FFFFFFFF),
    .INIT_12(256'hFF01FFFF0000000000FF000000FF00FF00FF000000FF0000FFFFFFFFFFFFFFFF),
    .INIT_13(256'hFFFF000000FFFF0000FF0000000000FF00FFFFFF0000FFFFFF00000000FF00FF),
    .INIT_14(256'hFFFFFFFF00FFFFFF000000FF0000000100FFFFFF00FFFFFF0000FF00000000FF),
    .INIT_15(256'h0000000000FFFF00FF00FFFFFEFF00FF000000FFFFFF0000FF000000FFFF01FF),
    .INIT_16(256'hFF00FFFFFF000000FFFF0000FFFFFFFFFFFFFF000000010000FFFFFFFFFF0000),
    .INIT_17(256'h0000FFFF0000FF0000FFFFFF00FFFF00FF00FFFFFEFF00000000010000FFFEFF),
    .INIT_18(256'h000000010000FFFF00FF0000FFFE00FF00FF00FF0000FF00FEFF000000010001),
    .INIT_19(256'hFFFFFF0001000001010000FF00FFFF00FFFFFFFFFFFF00FF0000000000FF00FF),
    .INIT_1A(256'hFF00FF0000000000FF000000000000FF0000FFFFFFFFFFFFFFFFFFFFFF00FF00),
    .INIT_1B(256'hFF00FFFF0000FFFFFF0000FF000000000000FF00FFFF0000FF0000FFFF0000FF),
    .INIT_1C(256'hFFFF0000FFFFFF00000000FFFFFFFF00FFFFFF000001000001FFFF00FFFFFFFF),
    .INIT_1D(256'hFF000000FFFFFFFFFF000000FFFF00FF00FF00FFFFFFFFFFFF0000000000FF00),
    .INIT_1E(256'h00FFFFFFFFFFFFFFFF00FFFFFFFFFFFF0000FF0000FEFFFFFFFFFEFF00FFFF00),
    .INIT_1F(256'hFFFF000000FFFFFFFF0000FFFF00FFFFFF00FF000000FFFFFF00FFFFFFFFFFFF),
    .INIT_20(256'hFF00FFFFFFFFFFFFFFFF00000000000000FFFF0000FF0000FFFF00FFFF0000FF),
    .INIT_21(256'hFF00FF00FFFFFFFFFF00FF00FF00FF00FF0000FFFF00FFFF00FF00FF00FFFFFF),
    .INIT_22(256'hFF00FF0000FF00FF00FF0000FFFF00FFFF0000FF0000000000FF00FFFFFFFF00),
    .INIT_23(256'hFF00FF00FF00FFFFFF00FFFF0000FF00FFFF00FFFFFFFFFFFF00FF0100FFFF00),
    .INIT_24(256'h00FFFF0000FFFFFFFF00FF0000FF00FFFFFFFF0000FF00FFFFFF0000FF000000),
    .INIT_25(256'h00000000FFFF00FF0000FFFF000000000000FFFF0000FFFF000000FF00000000),
    .INIT_26(256'h0000FF00FEFF00FFFFFFFF00000000FFFFFFFF00FFFF0000FF00000000FF00FF),
    .INIT_27(256'hFF000000FFFFFFFF00FF00FFFFFF00FF00FF00FF000000FFFFFF0000FFFFFF00),
    .INIT_28(256'hFFFF00000000FFFFFFFF00FFFF00FF0000FF00FF00FFFF0000FF00FFFFFFFFFF),
    .INIT_29(256'hFFFF00FFFF0000FFFF000000FFFF0000FF00000000FFFFFEFF00FFFFFFFFFFFF),
    .INIT_2A(256'h00FFFFFF00FFFFFFFF0000FF00FFFF00FF0000FFFF000000FF0000FF00000000),
    .INIT_2B(256'h0000FFFF00000000000000FF00FF00000000FF0000FFFFFF000000FF0000FFFF),
    .INIT_2C(256'hFFFFFFFF00FF00000000FFFF00000000FF0000FF00FF0000FF00FFFF00FFFF00),
    .INIT_2D(256'hFF00FFFFFFFFFFFF000000FFFF0000000000FF000000FE000000FFFF00FE0000),
    .INIT_2E(256'hFEFF00FFFFFFFFFEFF00FFFFFF0000FF0000FFFF00FF00FF00FFFFFFFF00FFFF),
    .INIT_2F(256'hFF0000FF0000FF00FFFF000000FFFF000000FF00FFFF00FF0000FF0000FF0000),
    .INIT_30(256'h0000000000FF0000FFFF00FFFF00FFFFFFFFFFFF00FF00FFFF000000FFFF00FF),
    .INIT_31(256'hFFFFFFFFFFFF00FFFFFFFF000000FF00FF00FFFFFFFF00FF0000000000FFFFFF),
    .INIT_32(256'hFF000000FFFF000000FF00FF0000FFFFFF00FFFFFFFE000001FFFFFF00FFFFFF),
    .INIT_33(256'h01000000FFFF00FF0000FFFFFF01FF0000FF00000000000000FF00000000FFFF),
    .INIT_34(256'hFF00FF0000000000FF00FFFF00FFFFFF0000FF00FFFFFF00FF000000FF00FF00),
    .INIT_35(256'hFF00FF00FF00FF00000001010000FFFFFF00FF0000000000FF00FF0000000000),
    .INIT_36(256'hFF00FF0000FF0000FF00FF0000000000FF0000FF01FF00FF00FF00FFFF0000FF),
    .INIT_37(256'hFF0001000000FF0000FFFFFFFFFFFFFF0001000000FFFF000000FF00000000FF),
    .INIT_38(256'h00FF01FFFF00FF0000FFFF000000FFFFFFFFFF0000FFFFFFFF00000000FF00FF),
    .INIT_39(256'hFF0000FF00FFFFFF0000FF00FF00FF0000FF000000FF0000000000FF000000FF),
    .INIT_3A(256'hFFFF00FF00FFFF0000FFFFFF0000000000FF0000FF00FF000000FF00FFFF0000),
    .INIT_3B(256'hFFFFFF0000000000FFFFFFFFFF00FF0000FF00FFFFFFFF0000FFFFFFFFFF0000),
    .INIT_3C(256'h000000FFFFFF000000FFFFFF00FFFFFF0000FF00FFFF000000FFFF0000FF00FF),
    .INIT_3D(256'h00FF00000001FFFF0000FFFFFFFEFF00FFFFFFFF0000FFFF00FFFF0000FF0000),
    .INIT_3E(256'h00FFFFFF00FFFF00FFFFFFFFFF00FF0000FEFFFFFF00000000FFFF00FFFFFFFF),
    .INIT_3F(256'hFFFFFF000000000000FF0000FFFF00000000FF0000FF0000FF00FF00FFFF00FF),
    .INIT_40(256'hFFFFFF00FFFFFF0000FE0000FF00FF0000FF0000FFFFFF00FFFF0000FF0000FF),
    .INIT_41(256'hFFFFFFFFFF000000FFFFFF00FFFFFFFFFFFFFF00FF00000001FF00FFFF0000FF),
    .INIT_42(256'h00FFFFFFFF010000FF00FF00FF0000FFFFFFFFFFFF00FFFF00FF000000FFFFFF),
    .INIT_43(256'h0000FFFFFF00000000FF0000FF00FFFF010000FF000000FF0000FFFFFFFFFFFF),
    .INIT_44(256'h00FF0000FF00FF0000000000000000010000FF000000FF0000FF0000FFFF0000),
    .INIT_45(256'hFF00000000FFFF00FFFFFFFFFF0000FF0000FFFFFF00FF0000FFFFFFFFFF00FF),
    .INIT_46(256'h00000000FFFEFFFF000000FFFFFE00FF01FF00FFFFFFFFFFFF00FF00FF0000FF),
    .INIT_47(256'hFFFFFFFF0000FFFFFF00FFFF0001000000FFFFFFFF0000FF00FF00FFFFFFFFFE),
    .INIT_48(256'h000000FFFFFFFFFFFFFF00FF00FF000000FFFF000000FFFF000000000000FFFF),
    .INIT_49(256'hFFFF000000000000FFFFFF0000FF0000FF00FF00FF00FF00FFFF00FFFFFFFF00),
    .INIT_4A(256'hFFFF00FFFF00FF0000000000FFFF00FFFFFF000000FF00FF00FF0000FF00FFFF),
    .INIT_4B(256'h00000000FFFFFFFFFFFFFF000100000000FF00FFFFFFFFFF0000FFFFFFFF00FF),
    .INIT_4C(256'h00000000FFFFFF00FFFFFFFF00FFFFFFFFFF00FFFFFFFFFFFFFFFF00FFFF0000),
    .INIT_4D(256'hFF00FFFFFFFFFFFFFFFF00FF000000FF00FFFFFFFFFFFEFFFFFFFEFFFFFFFF00),
    .INIT_4E(256'hFFFF00FFFE000000FFFFFF000000FFFF00FF0001FF0000FFFFFFFEFFFFFFFE00),
    .INIT_4F(256'hFFFFFFFFFFFFFFFFFF0000FF00FF00FF0000FFFFFF000000FF00FFFF00FFFFFF),
    .INIT_50(256'h00FFFFFF00FEFFFFFFFFFFFF00FFFF00FFFFFFFFFFFFFF00FF00000000FFFFFF),
    .INIT_51(256'hFFFF0000FF00FFFFFFFFFFFF0000FF00FF00FFFFFFFFFF0000FF00FF00FF00FF),
    .INIT_52(256'hFFFFFFFFFFFF00FFFF00FF000000FF00FF00FFFFFF000000000000FFFFFFFFFF),
    .INIT_53(256'hFFFF0000FFFF00FF0000FF00FF00FFFF00000000FF000000000000FFFFFF00FF),
    .INIT_54(256'h00FFFFFFFFFFFF00FFFFFFFFFFFF0000FFFF00FF00000000000100000000FF00),
    .INIT_55(256'h00FF0000FF00FFFFFFFFFF000000FF0000FF00FF0000FF00FF0000FF0000FF00),
    .INIT_56(256'h00FFFFFFFF00FEFF00FFFFFFFFFF00FF00FF0000000000FF00FFFF000000FFFF),
    .INIT_57(256'h0000FFFFFF00000000FF0000FFFF00FFFFFFFF00FF00FFFFFFFF0001FFFF00FF),
    .INIT_58(256'hFF000000FF0000000000FFFF00FFFF0000000000FFFF01FF00FF00FFFFFFFF00),
    .INIT_59(256'h000000FF000000FFFF00FFFFFF00FFFFFF0000FFFF00FFFFFFFF0000FFFFFF00),
    .INIT_5A(256'h0000FFFF0000FFFFFF00FFFFFFFFFFFFFEFF00000000FF00000000FFFFFFFF00),
    .INIT_5B(256'h000000FF00FF00FF0000FF00FFFF000000FF00FFFFFF0000FFFF00FF00FF00FF),
    .INIT_5C(256'hFFFF00FF0000FFFF00FFFF00FF0000FF00000000000000FFFFFF00FFFF00FF00),
    .INIT_5D(256'h0000FF000000000000FF00FFFF00000000000000FFFF000000FFFF00FFFFFF00),
    .INIT_5E(256'h00FFFFFFFF00FFFF00FFFFFFFF00000000FFFF00FF0000FF0000FFFFFFFFFFFF),
    .INIT_5F(256'h0000FFFF00FF000000FF00FFFFFF000000000000FFFF00FF00FFFF00000000FF),
    .INIT_60(256'h000000FE00FF000000FF00FFFF00FF00FF00FFFFFF00FFFF00FFFF0001FFFF00),
    .INIT_61(256'h0000000000FF00FF00FF00000000FFFFFFFF0000FFFFFF000000000000FFFFFF),
    .INIT_62(256'h00FFFFFF000000000000FF0000FFFF00FFFF00FFFFFF00FF00FFFF0000FFFFFF),
    .INIT_63(256'hFF0100FFFF0000FFFF0000FFFFFF0000FF00FFFF00FF00FFFFFFFF0000FFFF00),
    .INIT_64(256'h0000000001000000FF00FFFF00FF00FFFF00FFFFFF00FF0000FF000000000000),
    .INIT_65(256'h00000000000000000100FFFFFF00FF0000FF00FFFFFFFF00FFFEFFFF0000FF00),
    .INIT_66(256'h00FF000000FF00FFFFFF010000FFFF00FF0000FF00FF00FFFFFFFF00FFFFFE00),
    .INIT_67(256'h00FFFFFF00000000FFFFFF000000FF00FFFF00FFFF0000FF0000FF000000FFFF),
    .INIT_68(256'hFFFF0000FF00FFFFFFFFFF0000FFFF00FF00FFFFFE00FF0000FFFFFF00FF0001),
    .INIT_69(256'hFF0000FF00FFFF00FF0000010000FF0000FFFFFFFFFFFF00FF00FFFF00FF00FF),
    .INIT_6A(256'hFFFEFFFFFFFF00FFFFFFFFFFFFFF00FF00FFFF00FF00FF00FFFFFF00FFFF00FF),
    .INIT_6B(256'hFFFFFFFFFF00000000FF00FFFF00FF0000FFFF00FFFF0000FFFFFF000000FF00),
    .INIT_6C(256'h00FF00FF00FF0000FF0000FF00FF0000FFFF0000FFFFFF000000000000FFFFFF),
    .INIT_6D(256'hFFFFFFFFFF00FFFFFF00FFFF0100000000FF000000000000FFFF000000FF00FF),
    .INIT_6E(256'h0000FF0000FFFFFFFF0100FFFFFF00FFFF0000FF00FF00FFFFFFFF0000FF00FF),
    .INIT_6F(256'hFFFFFF00000000FFFF0000FF00FF00FF0000FFFFFF00FF0000FF00FF00FF00FF),
    .INIT_70(256'h000000FF00000001FFFFFFFF00FF00FF000000FFFFFFFFFFFF00FF00FFFF00FF),
    .INIT_71(256'h0000FF00FF00FFFFFF0000FFFF00FF0000FFFF00000000FF00FFFFFF00FFFFFF),
    .INIT_72(256'hFF00FFFFFFFF000000000000FF00FFFF00FF0000FF0000FFFF000000FFFF00FE),
    .INIT_73(256'hFF00000000000000FFFFFF000000FF00FF00FFFFFF00FFFEFFFF00FFFFFF00FF),
    .INIT_74(256'h0000FF0000FF00FF00FFFF00FF0000FFFF000000000000FF000000000000FFFF),
    .INIT_75(256'hFFFF00FF00FFFF00FF00FF00FFFF00FFFF0000FFFF000000FFFE00FFFF00FF00),
    .INIT_76(256'h0000FFFF0001FFFFFF00FFFEFFFF00FF0000000000000000FFFFFF00FE000000),
    .INIT_77(256'h0000FF00FF0000FF00FF00FF000000000000FF0000FF0000FFFFFFFFFF00FF00),
    .INIT_78(256'h00FF00FF00FF000000FFFF00000000FF000000FF00000000FF0000FFFFFF00FF),
    .INIT_79(256'h0000FFFFFF00FF00FF0000FFFFFF00FF000000FFFF01FFFFFF00FF000000FF00),
    .INIT_7A(256'h00000000FFFFFF0000FF0000FFFF00FF00FFFFFFFF00000000000000FF0000FF),
    .INIT_7B(256'hFF0000FFFF0000FFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFF00FFFF00FFFFFF00),
    .INIT_7C(256'hFF00FFFFFFFFFFFFFF000000FFFF00FFFE000000FFFF0000FF0000FFFF00FFFF),
    .INIT_7D(256'h0000FF00FF00FF0000FFFFFFFF000000FF00FF00FFFFFF0000FFFF0000FFFFFF),
    .INIT_7E(256'h00FFFF00000000FFFFFF00FFFF00FFFF00FF0000FF0000FF0000FFFF000000FF),
    .INIT_7F(256'h00FF00FF00000000000000FF0000000000FFFF00FFFFFFFF00FFFF0000FF0000),
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
module weight1_bram_3_blk_mem_gen_prim_wrapper_init__parameterized6
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
    .INITP_00(256'h76F3F5C5BEDBFF8BA81E792A8A425693B16313A388C0796001CBE18020A8C06A),
    .INITP_01(256'hFF6EE3FFEFAE07EC3F0303B740C07D83D996EFF00507D6F90CD7C76159F223AE),
    .INITP_02(256'h0022CA000A14E0168112046001030600FBF9403E06DE43236D5743B17F5C747F),
    .INITP_03(256'h46F7CDDAFFAE6D166F552ED66F4F521D218B001E10E5137AE6C08F09E082EB75),
    .INITP_04(256'h1FF8EBCA315D3D64AED11905CEB5395C44ACF82335203B8964B4EEA2FE6B74AF),
    .INITP_05(256'hEFA6843793ACD7170EC385B6BFF11C998F86656DF485DF844418AB52267AC3E6),
    .INITP_06(256'h8829E7C345079D2FC98FF1E1474766B73C95541557CD55DE2260E5C8F66EF313),
    .INITP_07(256'hACCE6DFA0C562EC95BB7BB8A453D9C7A8726EBA6DA8B9B1AC6E639A361180410),
    .INITP_08(256'h3D95FFFA8F3E342AE83B42C881D02A3BD283F5A5C4ED494817CC5090BF820F3F),
    .INITP_09(256'hFD1C259FF9044DFF7FACFED7365B78DE2BDC0213F80055FEE015244FE198CC46),
    .INITP_0A(256'hF81E41B202FB90803A206A308510C11671B17797D17783BB0A0132D92C40A4C6),
    .INITP_0B(256'h80BA05885FC01582FC85E846808DADA0151D3C03BB3EE52F5B7C0A90AF5B6649),
    .INITP_0C(256'h57A170F54E0C3C84E03EDEB505D2A560E3F2F81BC21121838560BF083413E2A1),
    .INITP_0D(256'h000000000000000000000000000000000000000000016F92475FD55591AC0382),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000FF0000000000FE00FF00FF000000FFFF00000000000000FFFF00FF00FF00),
    .INIT_01(256'h00010001000000FFFFFF0000FF00FFFFFFFFFF00000000FFFF00000000000000),
    .INIT_02(256'hFF000000FF000000FFFF00000000000000FFFFFFFF0000FF00FFFF0000000000),
    .INIT_03(256'hFF00FFFF000000FF00FFFF000000FFFF000000FF0000FFFFFF00FF000000FFFF),
    .INIT_04(256'hFF000000FF00FF0000FF00000000FF0000FF00FF00FFFF00FF0000FF0000FFFF),
    .INIT_05(256'hFF00FF00FF000000000000FFFFFEFF0000FFFFFFFF0000FF0000FF00FF00FF00),
    .INIT_06(256'hFF00FFFFFFFFFF00FFFF01FFFF00FFFFFFFFFFFFFFFFFFFFFE000000FF00FFFF),
    .INIT_07(256'h00FFFFFF00FFFF00FFFFFFFF0000FFFFFFFFFFFF00FF00FFFFFF000000FF00FF),
    .INIT_08(256'h00FF00FFFF0000FFFFFFFFFF0000FF000000FF000000FFFFFF00FF00FFFFFF00),
    .INIT_09(256'h00000000FFFF0000FFFF00FF00FFFFFFFFFF000000FFFFFF00FFFF00000000FF),
    .INIT_0A(256'h0000000000FF00FF0000000000FFFFFFFFFF00FF00FFFF00FFFFFFFFFF0000FF),
    .INIT_0B(256'hFFFF00FFFF0000FFFF0000FF01FFFF00FFFFFF00FFFFFFFFFFFFFFFF00000000),
    .INIT_0C(256'h00FF000000000000FFFF00000000000000FFFFFFFFFF00FFFF0000000000FFFF),
    .INIT_0D(256'h0000FFFFFFFFFFFF000000000000FFFF000100000000FFFFFF01FFFF00FFFFFF),
    .INIT_0E(256'hFFFFFF00FFFFFFFFFF00FF00FFFFFF000000000000FFFFFFFFFFFF00FFFF0000),
    .INIT_0F(256'hFEFEFEFFFFFFFFFF00FFFF00FFFFFF00FFFFFF000000FFFFFFFFFFFEFEFFFEFF),
    .INIT_10(256'h00FEFFFFFEFFFFFF00FF00FFFFFF000000FFFFFF00FF000000FFFFFFFFFFFFFE),
    .INIT_11(256'h00FFFF00FFFF00FF00FF00FF00FFFFFE00FF00000000FFFFFF00FFFF000000FF),
    .INIT_12(256'h0000000000FFFF00FFFF01FFFFFFFF0100FF00000000FFFF0000FF000000FFFF),
    .INIT_13(256'hFFFFFFFFFF00FFFFFFFFFFFEFF0000FF00FF0000010000000000FFFFFFFFFF00),
    .INIT_14(256'h01000000000000FF000000000000FFFF0000000000FFFF000100000000000000),
    .INIT_15(256'hFF000000000000FF000000FF0000FF000000000000FF000000FFFF0000010000),
    .INIT_16(256'h00000000FF00FF00000000FF00FF0000FFFFFF0000000000000001FF01FFFF00),
    .INIT_17(256'h00000100000000000000FF000000FF00FFFF0000FF00FF000000000100010000),
    .INIT_18(256'hFFFFFF0000000000FF0000000000FF00FFFFFF00FF00FFFF00FFFFFF00FF00FF),
    .INIT_19(256'hFFFFFF0000FFFF00FFFF000000000000FF000000FFFFFFFF00000000FF0000FF),
    .INIT_1A(256'h000000FF00000000FFFFFF0000FF00FF000000FF0000FFFF00FFFFFFFF00FF00),
    .INIT_1B(256'h0000FF00000000FFFF000000FF00FFFF0000000001000100010000FFFFFFFF00),
    .INIT_1C(256'h00FFFF00FFFFFFFF00FF0000FFFFFFFF00FF00FF0000FF00000100FFFFFF00FE),
    .INIT_1D(256'h00FFFF00FFFFFFFF00FF00FF00FF00FF0000FF00FFFFFF00FFFF00FF00FFFF00),
    .INIT_1E(256'hFFFFFFFFFFFFFFFFFF00FF00FEFFFF0000FFFF00FFFF00FF000000FF00FFFF00),
    .INIT_1F(256'h00FF000000FFFF00FFFFFFFF00FFFFFFFFFF0000FFFF00FFFFFF00FFFF00FF00),
    .INIT_20(256'hFFFFFFFFFFFFFF0000FFFF00FF00FFFF00FFFFFF00FF0000FF00FF00FFFFFFFF),
    .INIT_21(256'h00FFFF0000FF0000FF00FFFF00FF0000FFFFFF00FFFEFF00FF00FF000000FF00),
    .INIT_22(256'h0000FFFF00FF00FF0000FF00000000000000FFFFFF00FFFFFF000000FF0000FF),
    .INIT_23(256'h00FF000000FF0001FF00FF00FFFE0000FFFFFFFFFF0000000000FF000000FFFF),
    .INIT_24(256'hFFFF0000FFFFFF00FF00FFFF00FF00FF0000FFFFFF0000FF00FF00FFFFFF0000),
    .INIT_25(256'hFF00FF00FFFFFF00FFFF00FF000000FF000000FFFF0000FF0000000000FF00FF),
    .INIT_26(256'h0000FFFF000000FF00FF00FFFFFF00FF0000FFFFFFFF00FF00FFFF0000FF0000),
    .INIT_27(256'h000001FFFFFFFFFFFFFFFFFFFF000000FFFFFF00FF00FFFFFFFF0000FF00FF00),
    .INIT_28(256'h0000FF0000FFFF0000FFFFFFFF00FF00FFFF00000000FFFFFFFFFF0000FFFF00),
    .INIT_29(256'h00FF000000FF0000000000FFFF000000FF00FF00FF00FFFF00FF00FF0000FF00),
    .INIT_2A(256'hFFFFFFFF00FF0000FF01000000FF00FFFFFF00FFFFFFFFFFFF00000000FF0000),
    .INIT_2B(256'hFF000000FFFFFFFFFF01000000FFFF0000FFFF0000FF00FF00FFFF00FFFF00FF),
    .INIT_2C(256'hFF00FFFFFFFFFFFFFFFFFFFF000000FF000000FFFFFF0000FF0000FFFF0000FF),
    .INIT_2D(256'h00000000FFFFFF00FFFF00000000FFFFFF00000000FF00FFFF00FFFF00FFFF00),
    .INIT_2E(256'hFF0000FF0000FFFFFF00FF00FFFF0000FFFF00FF00FFFEFF000000FF00FFFFFF),
    .INIT_2F(256'hFFFFFF00FFFFFFFFFF00FF0000FFFF00FF00000000FF00000000FFFF00FFFFFF),
    .INIT_30(256'hFFFFFFFF00FFFF0000FFFF00FFFFFF00FFFFFFFF0000FFFF000000FF0000FFFF),
    .INIT_31(256'h0000FF000000FF0000FFFF0000000000FFFFFF0000FF00FFFFFF0000FF000000),
    .INIT_32(256'h00FF00FF00FFFFFFFFFF0000FFFF00FF00FF00FF01FF00FFFFFF00FFFFFFFF00),
    .INIT_33(256'h0000FFFFFFFF0000FF0000FF00FF00FF00FF00FF00FF0000000000FF00FF00FF),
    .INIT_34(256'h00FF000000FFFFFF00FF000000FFFFFF00FFFF0000FFFF00FF00FFFF00FFFFFF),
    .INIT_35(256'hFFFF0000FF0000FFFF000000FFFFFEFFFFFFFFFF000000FFFEFFFF00000000FF),
    .INIT_36(256'h00FF000000FF00FF0000000000FFFFFFFF0000FFFFFF00FF0000FF00FFFFFFFF),
    .INIT_37(256'hFF000000FF0000000000FF00FF0000FFFFFFFF0000FFFFFFFFFF00000000FFFF),
    .INIT_38(256'h00FFFF00000100FF000000FFFF0000000000000000FF0000000000FF00000000),
    .INIT_39(256'hFFFF000000FFFF00FFFFFF0000FFFF000001FFFFFF0000FFFF00FF000000FFFF),
    .INIT_3A(256'hFFFF00FFFF00FF00FF000000FF00FFFFFF0000FFFF00FFFF000000FFFF00FF00),
    .INIT_3B(256'hFF00000000FFFFFF0000FF0000FFFF00FFFFFF00FF00FFFFFF00FF0000FFFF00),
    .INIT_3C(256'h00FF000000FF00FF0000FFFFFFFF00FFFF0100FFFFFF000000FFFFFFFF00FF00),
    .INIT_3D(256'h00FF00FFFF00FFFFFF00FFFF00FFFFFFFF00FFFEFF00FFFFFE000000FF00FF00),
    .INIT_3E(256'h00000000FFFF000000FF00FF00FEFF000000FF00FFFFFF00FFFF0000FF0000FF),
    .INIT_3F(256'hFF00FF00FFFF0000FFFF0000FFFFFF0000FFFF00FFFE00FFFFFFFFFFFF00FF00),
    .INIT_40(256'hFF00FFFFFFFFFFFFFF0000000000FF0000000000FFFFFFFF0100FFFFFFFEFFFF),
    .INIT_41(256'h000000FF00FFFFFFFFFF0000FFFF010000FF00FF00000000FF0000FF00000000),
    .INIT_42(256'hFFFF000000FF0101FFFFFE00FFFF00FF00FF0000FF0000FF00FF0000FF000000),
    .INIT_43(256'hFFFF00FF0000FF00FF0001000100FFFFFFFFFFFF00FF00FFFF00FF0000FF00FF),
    .INIT_44(256'hFF000000000000FFFFFF00FF000000010000FF00FF00FF000000FFFFFF00FFFF),
    .INIT_45(256'hFFFFFF00FF0000000000FFFFFF00FFFF00FF00000001FF00FFFF0000FF000000),
    .INIT_46(256'hFF000000FFFFFFFF0000FFFFFFFFFF000000FFFF00FF00000000FF00FF00FF00),
    .INIT_47(256'h0000FEFFFFFF00FFFF0000FF00FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF00FF00),
    .INIT_48(256'hFFFFFF00000000FFFF0000FFFF000000FFFF0000FFFF000000FF000000FFFF00),
    .INIT_49(256'hFFFFFF0000000000000000FF00FF00FF0100FF0000FF000000FF0000FFFFFFFF),
    .INIT_4A(256'hFFFFFFFFFF000000000000000001000000FF00FF00FF00FFFFFFFFFFFFFFFF00),
    .INIT_4B(256'h0000FF00FF00FFFFFEFF00FFFFFF0000000000000000FF00000000FF0000FFFF),
    .INIT_4C(256'h0000FFFF00FFFF0000FF00FFFF00FFFF00FEFFFFFF000000FFFF00FFFFFFFF00),
    .INIT_4D(256'h00FFFFFFFFFFFFFFFF00FF00FFFF0000FFFFFFFFFEFFFF00FFFF00FF00FFFFFF),
    .INIT_4E(256'hFFFFFFFFFF0000FF0000000000FF000000FF0000FFFF00FFFFFFFFFFFFFFFFFF),
    .INIT_4F(256'hFFFFFFFFFFFF00FF000001FFFFFF01000000FF0000FF00FFFF0000FFFFFFFFFF),
    .INIT_50(256'h0000FF00FFFF000000FF000000000000FF00FF0000FF0000FFFF000000FFFF00),
    .INIT_51(256'h00000000FF00FF0001000000000000FF0000FFFF0000FF00FFFF00FFFF0000FF),
    .INIT_52(256'hFFFF00FF000000FF00FFFFFF00FFFFFFFF0000000000FFFFFF00FFFFFF00FFFF),
    .INIT_53(256'h00FFFFFF000100FFFF00FFFF000000FF00FFFFFF00FFFFFFFF0000FF00FFFFFF),
    .INIT_54(256'hFF00000000FF00FF000000FF00000001FFFF0000000000FF000000FF00FFFF00),
    .INIT_55(256'h0000FFFFFF00FF000000FF000000000000FFFF00FF00FF000000FFFF00000000),
    .INIT_56(256'h000000000000FF00FFFFFFFFFE00FFFFFF0000FE00000000FF00000000000000),
    .INIT_57(256'hFFFFFFFFFF000000000000FFFFFFFF0000FF0000000000FFFF00FFFF0000FF00),
    .INIT_58(256'hFF00FF00FFFFFFFF00FF00FFFF00FFFF00FFFF0000FFFF0000FF0000FF0000FF),
    .INIT_59(256'h00FF00FFFF00FFFF00FFFFFFFFFF000000000000FF00FF00FF0000FF00000000),
    .INIT_5A(256'hFF00FFFFFF00FFFF0000FFFFFEFFFF00FFFFFF0000FF00FF0000FF00FFFFFFFF),
    .INIT_5B(256'h000000FF00FF00FF000000FFFFFE00FF0000FFFFFFFF0000010000000000FFFF),
    .INIT_5C(256'hFF00000000000000FF000000FFFF00FFFF01FF00FFFF00FFFF00FE0000000000),
    .INIT_5D(256'hFFFFFFFFFEFF0000FF00000000FF00FFFFFFFF00FF00000000FF000000FFFF00),
    .INIT_5E(256'h00FF00FFFFFFFFFFFFFF000000000100000000FF00FF00FFFF0000000000FF00),
    .INIT_5F(256'hFF00010000000000FF00FFFFFF00FF000000000000FF00FFFF000000FF000000),
    .INIT_60(256'h0000FFFF00FF0000000000FF0000FEFEFFFFFF000101FF00FF00FF00000000FF),
    .INIT_61(256'hFF00000000FF00FF00FFFF0000000000FF00FFFFFEFEFFFF00000000FF000000),
    .INIT_62(256'hFFFF00000000FF00000000FF000000FF0000FF00000000FEFE0001000000FFFF),
    .INIT_63(256'hFFFFFF000000FFFFFFFFFFFF0000FF00FFFEFFFFFF000000000100FFFF00FFFE),
    .INIT_64(256'h0000010000FF00FFFFFF00FF0000FF00FF00FF0000FF00FF00FFFF0100000000),
    .INIT_65(256'hFFFFFF00000000000000FFFFFFFFFF00FFFF00FFFFFFFF00FF00FFFF00FF00FF),
    .INIT_66(256'h00FF0000FFFFFF0000000000FFFF00000000FFFFFFFF0000FF00000000FF0000),
    .INIT_67(256'h00FF00FF00FFFFFFFF00FF00000000FF00FFFFFF00000000FFFFFFFF00FF00FF),
    .INIT_68(256'hFF0000FF000000FFFF00FF00FFFF0100000000000000FFFFFF0000000000FF00),
    .INIT_69(256'h00FF000000FFFFFF00FF00FFFFFFFFFFFFFF00FF00FF00FF00FF00FF00FF00FF),
    .INIT_6A(256'h000000000000000000000000010000FF00FFFF00FFFFFFFFFF0100FF0000FF00),
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
module weight1_bram_3_blk_mem_gen_top
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

  weight1_bram_3_blk_mem_gen_generic_cstr \valid.cstr 
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
(* C_INITA_VAL = "0" *) (* C_INITB_VAL = "0" *) (* C_INIT_FILE = "weight1_bram_3.mem" *) 
(* C_INIT_FILE_NAME = "weight1_bram_3.mif" *) (* C_INTERFACE_TYPE = "0" *) (* C_LOAD_INIT_FILE = "1" *) 
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
module weight1_bram_3_blk_mem_gen_v8_4_4
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
  weight1_bram_3_blk_mem_gen_v8_4_4_synth inst_blk_mem_gen
       (.addra(addra),
        .clka(clka),
        .dina(dina),
        .douta(douta),
        .ena(ena),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_v8_4_4_synth" *) 
module weight1_bram_3_blk_mem_gen_v8_4_4_synth
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

  weight1_bram_3_blk_mem_gen_top \gnbram.gnativebmg.native_blk_mem_gen 
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
