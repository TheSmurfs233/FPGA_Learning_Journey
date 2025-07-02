// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Wed Jul  2 15:17:00 2025
// Host        : DESKTOP-I8GGJRG running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/FPGA_Learning_Journey/Pro/CNN___/src/ip/weight1_bram_1/weight1_bram_1_sim_netlist.v
// Design      : weight1_bram_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tfgg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "weight1_bram_1,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module weight1_bram_1
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
  (* C_INIT_FILE = "weight1_bram_1.mem" *) 
  (* C_INIT_FILE_NAME = "weight1_bram_1.mif" *) 
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
  weight1_bram_1_blk_mem_gen_v8_4_4 U0
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
module weight1_bram_1_bindec
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
module weight1_bram_1_blk_mem_gen_generic_cstr
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

  weight1_bram_1_bindec \bindec_a.bindec_inst_a 
       (.addra(addra[13:12]),
        .ena(ena),
        .ena_array(ena_array));
  weight1_bram_1_blk_mem_gen_mux \has_mux_a.A 
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
  weight1_bram_1_blk_mem_gen_prim_width \ramloop[0].ram.r 
       (.addra(addra),
        .clka(clka),
        .dina(dina[0]),
        .douta(douta[0]),
        .ena(ena),
        .wea(wea));
  weight1_bram_1_blk_mem_gen_prim_width__parameterized0 \ramloop[1].ram.r 
       (.addra(addra),
        .clka(clka),
        .dina(dina[2:1]),
        .douta(douta[2:1]),
        .ena(ena),
        .wea(wea));
  weight1_bram_1_blk_mem_gen_prim_width__parameterized1 \ramloop[2].ram.r 
       (.addra(addra),
        .clka(clka),
        .dina(dina[4:3]),
        .douta(douta[4:3]),
        .ena(ena),
        .wea(wea));
  weight1_bram_1_blk_mem_gen_prim_width__parameterized2 \ramloop[3].ram.r 
       (.addra(addra),
        .clka(clka),
        .dina(dina[6:5]),
        .douta(douta[6:5]),
        .ena(ena),
        .wea(wea));
  weight1_bram_1_blk_mem_gen_prim_width__parameterized3 \ramloop[4].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[4].ram.r_n_0 ,\ramloop[4].ram.r_n_1 ,\ramloop[4].ram.r_n_2 ,\ramloop[4].ram.r_n_3 ,\ramloop[4].ram.r_n_4 ,\ramloop[4].ram.r_n_5 ,\ramloop[4].ram.r_n_6 ,\ramloop[4].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\ramloop[4].ram.r_n_8 ),
        .addra(addra[11:0]),
        .clka(clka),
        .dina(dina[15:7]),
        .ena_array(ena_array[0]),
        .wea(wea));
  weight1_bram_1_blk_mem_gen_prim_width__parameterized4 \ramloop[5].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[5].ram.r_n_0 ,\ramloop[5].ram.r_n_1 ,\ramloop[5].ram.r_n_2 ,\ramloop[5].ram.r_n_3 ,\ramloop[5].ram.r_n_4 ,\ramloop[5].ram.r_n_5 ,\ramloop[5].ram.r_n_6 ,\ramloop[5].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\ramloop[5].ram.r_n_8 ),
        .addra(addra[11:0]),
        .clka(clka),
        .dina(dina[15:7]),
        .ena_array(ena_array[1]),
        .wea(wea));
  weight1_bram_1_blk_mem_gen_prim_width__parameterized5 \ramloop[6].ram.r 
       (.DOADO({\ramloop[6].ram.r_n_0 ,\ramloop[6].ram.r_n_1 ,\ramloop[6].ram.r_n_2 ,\ramloop[6].ram.r_n_3 ,\ramloop[6].ram.r_n_4 ,\ramloop[6].ram.r_n_5 ,\ramloop[6].ram.r_n_6 ,\ramloop[6].ram.r_n_7 }),
        .DOPADOP(\ramloop[6].ram.r_n_8 ),
        .addra(addra[11:0]),
        .clka(clka),
        .dina(dina[15:7]),
        .ena_array(ena_array[2]),
        .wea(wea));
  weight1_bram_1_blk_mem_gen_prim_width__parameterized6 \ramloop[7].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[7].ram.r_n_0 ,\ramloop[7].ram.r_n_1 ,\ramloop[7].ram.r_n_2 ,\ramloop[7].ram.r_n_3 ,\ramloop[7].ram.r_n_4 ,\ramloop[7].ram.r_n_5 ,\ramloop[7].ram.r_n_6 ,\ramloop[7].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\ramloop[7].ram.r_n_8 ),
        .addra(addra),
        .clka(clka),
        .dina(dina[15:7]),
        .ena(ena),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_mux" *) 
module weight1_bram_1_blk_mem_gen_mux
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
module weight1_bram_1_blk_mem_gen_prim_width
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

  weight1_bram_1_blk_mem_gen_prim_wrapper_init \prim_init.ram 
       (.addra(addra),
        .clka(clka),
        .dina(dina),
        .douta(douta),
        .ena(ena),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module weight1_bram_1_blk_mem_gen_prim_width__parameterized0
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

  weight1_bram_1_blk_mem_gen_prim_wrapper_init__parameterized0 \prim_init.ram 
       (.addra(addra),
        .clka(clka),
        .dina(dina),
        .douta(douta),
        .ena(ena),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module weight1_bram_1_blk_mem_gen_prim_width__parameterized1
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

  weight1_bram_1_blk_mem_gen_prim_wrapper_init__parameterized1 \prim_init.ram 
       (.addra(addra),
        .clka(clka),
        .dina(dina),
        .douta(douta),
        .ena(ena),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module weight1_bram_1_blk_mem_gen_prim_width__parameterized2
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

  weight1_bram_1_blk_mem_gen_prim_wrapper_init__parameterized2 \prim_init.ram 
       (.addra(addra),
        .clka(clka),
        .dina(dina),
        .douta(douta),
        .ena(ena),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module weight1_bram_1_blk_mem_gen_prim_width__parameterized3
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

  weight1_bram_1_blk_mem_gen_prim_wrapper_init__parameterized3 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .addra(addra),
        .clka(clka),
        .dina(dina),
        .ena_array(ena_array),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module weight1_bram_1_blk_mem_gen_prim_width__parameterized4
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

  weight1_bram_1_blk_mem_gen_prim_wrapper_init__parameterized4 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .addra(addra),
        .clka(clka),
        .dina(dina),
        .ena_array(ena_array),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module weight1_bram_1_blk_mem_gen_prim_width__parameterized5
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

  weight1_bram_1_blk_mem_gen_prim_wrapper_init__parameterized5 \prim_init.ram 
       (.DOADO(DOADO),
        .DOPADOP(DOPADOP),
        .addra(addra),
        .clka(clka),
        .dina(dina),
        .ena_array(ena_array),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module weight1_bram_1_blk_mem_gen_prim_width__parameterized6
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

  weight1_bram_1_blk_mem_gen_prim_wrapper_init__parameterized6 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .addra(addra),
        .clka(clka),
        .dina(dina),
        .ena(ena),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module weight1_bram_1_blk_mem_gen_prim_wrapper_init
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
    .INIT_00(256'h794B6164C816BCB737459DB4D7B064666637F7648E12E47A447B60AE7313C69D),
    .INIT_01(256'h773C489E5078404092FD2E898E6CA739CD01550248F1801956352ACC0F70A65A),
    .INIT_02(256'hB571C807EE3C24FDB18D524BBCA116BBC13F672E62624B5111B48B84BC71B8F0),
    .INIT_03(256'h89101739CAB4288C17BF2E0244856A078035B68C25F2736C4CD8B781F8EB173A),
    .INIT_04(256'h5BE53B43AA28512080706993B7B5DC556D067A011FC00256BBA7112827733E16),
    .INIT_05(256'hA43CF85DDE05C6FEB8FF70883F656762A405F63F57D06FF08A6C3D0686995A2A),
    .INIT_06(256'h72CA137999076378CD9F0024C8381AEAAAC9D69DB9370A224E85D5E20883CFEE),
    .INIT_07(256'hCD2F09E01753307D49AB86DA5AD8B2E64C5B51622D9F7B3F86D257CD921D350A),
    .INIT_08(256'h464A0B988D643D4C9DCA93303F746990F1B44FC521DC6F69B2B9597152BF0EC8),
    .INIT_09(256'hD7315CFC3A4B2F7BF4F8D5E01A543D7185EA42AC6C274E89AFC2DD806A991B59),
    .INIT_0A(256'h7EBDA5AF89BEF032F65E6B20107F3E13D1D69F5288774071F5F4036D5D9C0779),
    .INIT_0B(256'h7692B410432725EF72B7185E053FFAFEB6F5C22800F2438FD3130B3D8D192908),
    .INIT_0C(256'hD7A4B346FE3072D10B1808734BB02204A6B9C4A29513F75359A16B1622B48FC3),
    .INIT_0D(256'hE358AC9CE9E423BC16627944908F28A9D8AF36E7089BF39E9E9457945747BFE7),
    .INIT_0E(256'hBB519DF957A80AFDFC90470D004FCBE6F9BD7D0CC41C6F8C6B752D27416B2039),
    .INIT_0F(256'hE1472BDA745CDECF3C363F357EEAC750F86F45CA61A342FAE34CFB457AE29F24),
    .INIT_10(256'h0927402741E92AB109A8AFCB19F281F2E534009CE917E597645A7DC5314A1AF5),
    .INIT_11(256'h935AAE564013A83D5AA67FA89B0B3C09BA98EFBBC2BC3F93D272A3FEF1C2EC36),
    .INIT_12(256'h86588739AD8252D13F701B4C84DA79908D0445928C0AB9E971847FEE7FDDA63E),
    .INIT_13(256'hF6BEBB2014AEF42712E1CB0DB7BF2CB481AF49CDE6EB9C408E267E987E0E23DB),
    .INIT_14(256'hA195E3047525CDDA13501F12648EDEBCF9E80BAAD2905ED9B1B6DB56273BDA1E),
    .INIT_15(256'hE7F8AC7CFF880B2CA293BECEF32293345DB56EFB6EDD349D4980927F6EE1FE09),
    .INIT_16(256'h18FF7E96423D1C91EF76568A3933FF8FE3D715BDD0185D9CF551D79E5EEF1A3E),
    .INIT_17(256'h9DB4A05D826F9EB6ACE626BDB1CFF90F8EA4B6748278E8C4A24EF87B49FC2877),
    .INIT_18(256'hF5A69E81110BD3D7C103FACE9E89B24199FD701639B178CE5749458B269C35F3),
    .INIT_19(256'hB8A438CAB2C53F51FB08F128CA5DF3774633ECCF6CCE0F12719542397D6612CA),
    .INIT_1A(256'h84A2444BAA6D2DFF0732EE8F155478A147E16DD78C96C3EFC489D9FFB42F19F1),
    .INIT_1B(256'hF03C4C67E5B1C46605D4C6BA2A0D6F11615878F3024238C2587B26B47348FD0D),
    .INIT_1C(256'hCA0CFDC6100EB0A975A4A8974180E87328E43DCC1750143AE52BEC11A910D133),
    .INIT_1D(256'hD900076BDBB8D6ED2758C81ABC2923905A06EEF34C6D649CF79EAB1FEBD18F74),
    .INIT_1E(256'h2C9A5BFA2B5C19F061C9230B73C203E6D10C78737DD70AD56BDA8801A234E0A4),
    .INIT_1F(256'h1DD0FDBC68401DE8C4CD14CF92EBBB2F99EA56FD34B78C38D90530B28251C9D3),
    .INIT_20(256'h32796B1A16029D21C834405A08042EFCD1FC077A9445B4BD6F0B41D86B63C323),
    .INIT_21(256'h5859D90E382DCDE503C36A350D26A6A70767B0A894AC9303CC7CFEF1BC2D7A8A),
    .INIT_22(256'h9CDA97C87142007188B99C15B05D4B8EDC2CCA5A345E7DA6893AEF04986F01E0),
    .INIT_23(256'h30467DD888965DEAB55A0548D3F20645A2E66694905ECAD94DFBE72567D721FD),
    .INIT_24(256'h09D85581D8EDE912D540B3DCC03A1DC3CA534D335F333BD25174385806878DA4),
    .INIT_25(256'hDAA869954A1C7E6B6F737128CB22886D3C423647340E45D15F56AF04032B8850),
    .INIT_26(256'h08B3DBF63150BC52B68C867B1C6ADB948AA73F98864809371F2DD9E96019495A),
    .INIT_27(256'h66CEA845C41CC85D0D7E4497704A5962A9AC27951A6491682A338DDEDBA19E97),
    .INIT_28(256'h5917D7ECC2B1C0818B0FCC2F7A2D199638A3A91D734D895D9FFCA20D81529A9E),
    .INIT_29(256'hC95156ED6308DE4785D0FC097FFBFF98607AC308FA65C05C109338BB2A86C9B3),
    .INIT_2A(256'h2078A6D67573E2F7398CB04F7221FC96B855FF42F9E3738528014BCA41E5E06F),
    .INIT_2B(256'h240D2AE0946F14528E4F246E0927032C86F6F54D21CFDF938DD3FD7D3C74AC6F),
    .INIT_2C(256'h83878CECDFDBC33B14D2F16C20EA79FFDC48EC6796689488E220099A5A145E7F),
    .INIT_2D(256'hBBC5E8FB9176C5642FA850C08ED7F1F49C243435FBF6BD264B3D18D7312FD72C),
    .INIT_2E(256'h6D69FB52ED5CD323DB084339B7FE88B635D2DA01B604878E5D4252C994B836BC),
    .INIT_2F(256'hABCE8623158563269C77B75BEDD5E763F7B41D3F0C918D3FDF2B3DC33422F9D4),
    .INIT_30(256'h7630679C1AB57AA9FA990BECB8C728DA39DF13662E3CBB1539A1C94F46C5FD00),
    .INIT_31(256'h18CB1B3458A6EC05D8B58C30A9AB9DB9B2666C9D38C4F713A40E775643720B38),
    .INIT_32(256'h5A507FE5DA00507761412DD20ACFA57711BF81DBEC5E2D504881BCC24E4C2DF5),
    .INIT_33(256'hEF6FD86BF41A8C88B07068D41D167155A68D79C066886A9F5B3CF5D2E5A7E4DF),
    .INIT_34(256'hF7DBB0295281BFEBEBBC97D7D6D2077808B2E83409D0A2068D74E5E9A3BD4C35),
    .INIT_35(256'h7E68F2E22AC23CE7775AC24E60244A19A316DA92F052152A6421650B4DFDF8E2),
    .INIT_36(256'hC149653B0A3FFCD15429792554D92A3401B5087AED860442603E62C9256C4499),
    .INIT_37(256'hDAEC1DF4455996E33F3E801E35C6051A608A12F8E5CB08FB8858DAF7F9F00F8F),
    .INIT_38(256'h262B718713553DC6582ADF0EFDB6188B6EC77614E09637F55134B79B55DD67FF),
    .INIT_39(256'h8373237522C7C3342D28E7E3079C305783ABEEB1B61287D14524F9ABE395FDB0),
    .INIT_3A(256'h8B68FD7A65A45D3F5F63940924523BDEDB014FC60B9C0910FB0A49A6E66EE2EE),
    .INIT_3B(256'hB8E01C46A56E6BBD41D5E1A3BE343685E2F7A0DB4F964684D8B103709D238FAE),
    .INIT_3C(256'hDF04CE2881E48235EC8A497F91E7B39620F02AFA13E8F0C59DF662C67E94BC11),
    .INIT_3D(256'h0000000000000000000000000000000000000000000E4AA4121CAB3041948765),
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
module weight1_bram_1_blk_mem_gen_prim_wrapper_init__parameterized0
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
    .INIT_00(256'h881410EBCAB7DB668ED72A4E7C00A349D76B6A2725770BD1D5FC77B54A4688BD),
    .INIT_01(256'hE6017DD75ED3E80F3A8DEAE12DCDE5593F5B69F81DB2333327A35E680E882606),
    .INIT_02(256'hA779E4D2412CB66035479B8A7B1C44A0B412E786D79F22935D5F6FBB188B0912),
    .INIT_03(256'h3C664F814E48FB3F5468EB35BBC8BC61EB56412B274757D7753BD7997099291E),
    .INIT_04(256'hA28466734AC1E1B4A459A92FF7B82A49BEA8C018DD7A73A299F1C2E2DC5B1C1F),
    .INIT_05(256'h7D497A500ED508E433CD5C78132DFAD8BF5D2D3486E64B175CAF48CBE569380C),
    .INIT_06(256'hC9246F4D392B591FAB31DF6643812FD3E711F4D030BDC3D6FF1633AEFCD1B727),
    .INIT_07(256'h4CFF4D2867E1639CE08C72758BD406780476D8F0EBF2E516716CBBF303AC7A62),
    .INIT_08(256'h44741677CA4486680A260820EF6AF7A0C8C9B570228D0B5EFA28789BE6476AA4),
    .INIT_09(256'h2EFA20B15EA851DB5883BA62E196C0A13E01C6DA93280CED12C56AD36039763A),
    .INIT_0A(256'hB38B40BF65654AEB22C12BE8168996006E1C6D86D13C3AD3873831CCE5ED512B),
    .INIT_0B(256'hDA95DA706F58671037E38CFFED397AB63011B12738A55BDFEFF1EA90868627EC),
    .INIT_0C(256'hB1D5D27424C971335E94F924EC9F26FD1BB1A700D55496E4D8488620A2D1B18B),
    .INIT_0D(256'h34F22C20544FD521C08DFDBD3BCFA5FC2E4AC9A780F9BC8B1C3C01C37CECA522),
    .INIT_0E(256'h79494A785D982915525BD0E111190D1F955581FA121F87DD23C8110E70E34037),
    .INIT_0F(256'h48262460D3E2A9D95397F71E6D38921A306CCD5F893F5135E869FD76758EDAD5),
    .INIT_10(256'h0A3F7DB8B895ED19FEA95585FED834E6D5209F040764666848E7CB2EC5D74093),
    .INIT_11(256'h60050A2C5CD759E558394520CC34E4DB6CB31EE8D9F3B0D016E3F5593A253525),
    .INIT_12(256'h6956DF263636C18D5491AA9BF9B4E2A2F1472B9CA9CE0813DEC3E60D38208654),
    .INIT_13(256'h8B1A88742835698A9C1DE85ED8F3BF50FEAFF12C2E27F338031C4A3C85E38A36),
    .INIT_14(256'h89EDE52EFFEB2066F3EAC3AD2C97E1D8A8B9B501AF6864C2BEAF8AF3649100D8),
    .INIT_15(256'hFC025C316950FE3EE64D63B4ED59F56682BFE878DBAE17A001213BCF031C8B89),
    .INIT_16(256'h3C4FFC5A451169F377A949B66CE938A0DECB34926CCDC5AC61BE46B931B86FBB),
    .INIT_17(256'hC5D2E1B929C0DF9D03D7199C5770CDDFDAA8596B91A5DFC9F0AB9678E8D63068),
    .INIT_18(256'h33C8A1C7768315978A60B59A27E99A2295993F97F804E5A06E0C347DCB082AF4),
    .INIT_19(256'h1C1CCDCFD297EFF3D4EB542BD1E19E0B52631789E2DE6AB414727F2409EC53D1),
    .INIT_1A(256'hF88A22732473110D49838150D50ACD1F53FFADCBCBAA9657DB1C85460C2B11C6),
    .INIT_1B(256'hF8293FE8074AD9AA67FF04A47D74D7A76DA636C19B5E10CE5C7C3E6EAD85E397),
    .INIT_1C(256'h5DCD7FFB556CCD3A93CAF28609EB210FE3FDBFCBFA0E0B797E3BD6B2B577C1CE),
    .INIT_1D(256'hD7C47CB474A717D9DAE81067863CFCFB8282AFD34C8EC1DF82AAEB4349761FCC),
    .INIT_1E(256'hB91E28A0B0A8EEBF9EDC59F790E97FEC3C0D887A62009E1A5BF3FC80716BC922),
    .INIT_1F(256'h0CF75E4B20DE0CE079AAA2E73A50BDE85D426B63E40461ADA2A99CBBF7BC549B),
    .INIT_20(256'h5E56E07CCAC795433189AF5E885FAC87255BB81E02BEA14E24EA2DDEF777CE20),
    .INIT_21(256'hB7C6EBF2AF8BAD902AD98BB40A066AC28DE7B33EE7BE47349E31DC17F4D20FAC),
    .INIT_22(256'h5133B8856875C9FFDF046C1BA1731D0C6BDA7026D21E7815DEF00C6A92F94DDA),
    .INIT_23(256'hBE2C573D4FECD254AFD90A1A5381CD2024481F84E3F543C7EBE3608BCEDF73FB),
    .INIT_24(256'hA93746A0D018F590469174E505B34B0B403CA38D5B0A58C4ECD89D78A85543DD),
    .INIT_25(256'hDF4010DCED31D332DF8C6C83E1CF8B02AECA6079B352036288B7F7A7CC9FC607),
    .INIT_26(256'h870FC6DADFD4C8CA4EA2C06C9BD642205790C8EF21011EFFDC3E16797F1342C0),
    .INIT_27(256'h09D7DC56AFD371CCA0BA4ADAAD5D1B16954851E1EBF603054FE7A037C70EB51E),
    .INIT_28(256'h5B48147C8315F92C41D6D874E85341A2CBF1740E1AED794A4F9577D1C17FA46E),
    .INIT_29(256'hA1B95E600368981BC982822546E293606601B3997F18C00A532CE4AC7A6D993B),
    .INIT_2A(256'h7B0ABD731B99FF603B521C465BC84262B9BFF30BCCF946FD01C14415DE5DBC52),
    .INIT_2B(256'h22BAA6E58705305F8A1423B89115C0534768416A96C0C972B6FD3ECF18C2B43A),
    .INIT_2C(256'h43A2AD52CFDE7C242CE04F2B174FE15723D17196BBE651F534BC5B65381F8751),
    .INIT_2D(256'h24407CF1AD13445D606F5AB91DB1B7C6C55F03EC0214DC5B79CDB426F0F8EAEF),
    .INIT_2E(256'hEFACD3EABA1A34AAB584360CD80861330790312C8B912B7AB768C30BA350A397),
    .INIT_2F(256'h7B0A7D095F9BEBF6C3FEF7B310DD69C827784AE4D1F1D794828F4BA326EA6B5B),
    .INIT_30(256'h97B52048444DDE323933AC34AD13681CA38EA7B2FDE4D9D7CBA4C9DCE9B430A3),
    .INIT_31(256'hEB88F06B13926DF43D8ACAB076CFB8892EF62749AF971D9468473921CC5EE667),
    .INIT_32(256'h283F5863C51B462D231F66A7F39A6DA29312805A42549C635C3411887444D165),
    .INIT_33(256'h634E7240B6D69DED6FCB68C4541142949FD0AECC5607C796CE6CF11105FA9A04),
    .INIT_34(256'h86A6A5DE8BCCDD74181DA5D1865EB21DF2F3DCE97A369D01A0AAE168CA681600),
    .INIT_35(256'hF3778B613C95BCB79427F147AA3AAAA87A3A7C5AB4750BB8AD693719A1E193B1),
    .INIT_36(256'h472E4C3A1AF95E1293F190390B29DB715FF466E51FDC5E4626B84B0F3F813C9E),
    .INIT_37(256'h6A7D27ACD12C191DF7B1C418E279847C9E6B2CAB36E8EF404F84ED0E74F9F909),
    .INIT_38(256'hEBBAA61BD7D38B232B0F87A9FEC77175EFD2B540A1C436B7C532683D5F68F712),
    .INIT_39(256'h8CE673DAF85BBD119E03B1459F532AC1ACA68A40BAC9D0EF6F5C4AA02D177BBF),
    .INIT_3A(256'hCCA60F950FBC4E42CBBF80D29FED116451BAAD604D6027E4CEBD5F9D67E65555),
    .INIT_3B(256'hE8256C1A0FA684A0C78ED9688E2E96C79480BFC638F7E784CD22F77D32175825),
    .INIT_3C(256'hEFB3653796E3962737F2E5DC69B173964B737411BF0C2F13A88F05EC7141AD3B),
    .INIT_3D(256'h7E91D319F9FB17DA21281A212FE09E4520067B6AC2F119571903DD7467AE2C3F),
    .INIT_3E(256'hC1047E9847A34167AD2AA7767B4DDF0BF9141A2855874CDFE78C71A5855E3014),
    .INIT_3F(256'h06F5C981AB4867EFD25AAFD71C062C602D1A9A4DFF1807A8A202C1F6FC9824FF),
    .INIT_40(256'h1B56EFA68DECF8F52BF3270BA278994CC5ED325F3A37A0C6EBC8E25747E911D9),
    .INIT_41(256'h1F7F70A1D139E26BC1081F7AFF3AF665C7DAC042A30798E6DB6FB85A090168AA),
    .INIT_42(256'h066E7C3807F5B67B788980F74195C24EE03788959C7B1C9C994C58447BFCD040),
    .INIT_43(256'h46972E1B33D22A3801E26E3E0057B75B041A8458987D142E4B8A82960DA3F0F0),
    .INIT_44(256'h7BDBF48B9C5E2C7081C38737D51A56DD6E930645D987135E2D680184A32A4F45),
    .INIT_45(256'h696ECCFEE6AE4B18697F6161F2737DC7E7E7C4DFB4161D44383ADD8ED471FC0D),
    .INIT_46(256'hB2D818623A748C997534EB27567B1CC1AD8E9D4A291EEAB0A8291BE794E4D915),
    .INIT_47(256'hB7752688F49896272175B3B0C415ADC52ABA690561B3B09C95C03D6E2B1FD059),
    .INIT_48(256'h0644658BBC5A16F5A79C8299189222912FBFB569E31BB5EB26853EDEF2A9DE7C),
    .INIT_49(256'h42F3E1B79D00D05B87B00359BD11B33D85BBF02E4625AF1D6B4E0950ED5D5CA8),
    .INIT_4A(256'hF11E2A55EED4E96795F0B17A6A36DBFA210FA42575310358B61E86C8E8467990),
    .INIT_4B(256'h7BB3046DA40C6BE8AC71435C4C9E81B05EB25530A9CCB116F383D8C4C699C0C9),
    .INIT_4C(256'hA31C7EED270634D3600BCCFB1C0723E22D6ECEC6222DA72389D7217AEB47B58F),
    .INIT_4D(256'h36B99BF00C7D13BFC3C353D7787C8E88BBA3EF8021CE5FEEFBE5364AB3392DFE),
    .INIT_4E(256'hEC520A15B15964763C5AE01A33D4B98F6206E30E6F816E547B45BD46841D71A9),
    .INIT_4F(256'h8E8A6221575BD7032041BD628443E2F2DC601BF3F872B4B58DDCA3A8D546A5F6),
    .INIT_50(256'hB687DFD372ECF6611E293FCC5CC6046CD81641F4C8856FCAC8E55795EF8183A1),
    .INIT_51(256'hAF4CC3835B979C2742DDD70DE5759AC5FF2709108E4B984C040DC665112A5C79),
    .INIT_52(256'h596F83A38B7FAA91ABFFA6F152B3AB63A787797E1FB42E1AD587BFB1EA5D254B),
    .INIT_53(256'hD7E35EFF0205CA80B698D19FB7E80A1399CA5D269663F74D6D49826C60F10D45),
    .INIT_54(256'h9609E8C416E9D56C606F1CC5B833E2FDC8EC04AA8D8C98DE565D7F8F00519826),
    .INIT_55(256'h4BC630C50F860661B4B0109782341608CB452F671B83E21C8415A5AD2A049E17),
    .INIT_56(256'hB1546F834DC7CA2D0A13EC51647B4520ACA7041773977F9E366C0D7ADA37B80F),
    .INIT_57(256'h07D8D6EC32C30453B7B0BA1CFB4076C96A18046F65D8F770F086C61E2CFF1C14),
    .INIT_58(256'hA342901C88A3AF7393095B7D687FECE74FA9CABDC35663CFD0EFD3BB36451BCA),
    .INIT_59(256'hA5ED7F80B67C3AD11A535A9978D5D141A10CE4E503FD8816543BF6A7881D9A14),
    .INIT_5A(256'h6D2FCF48212AB57CD6DF8DABD0FE7AB943B2F22A0409184D8FA27A26AA1F3BD0),
    .INIT_5B(256'hA23A4D4E76304C7A89BDC78C39B9B7063817513A16D10A21A7435F7A5D145963),
    .INIT_5C(256'h0A032277B23786B325C87FE015A24D649F6A0479E7647031969CDD6121F69FF2),
    .INIT_5D(256'h24419310879E9E814125408A043BD21C50003E8F3ABA4EE6770157C177DF2752),
    .INIT_5E(256'hC39288A70FABAA5B6F33154B8D23F5F3FD98AF338AC1E57B6C22A87D2E84E1F0),
    .INIT_5F(256'h6601450003634B10C7F56CD8F315E00B9F7CF60651E920D86A27C4B989F8168E),
    .INIT_60(256'h6A421B31695AF040B0D75D3B100C67F354B115E0FFDCF496D0CB355998491EC4),
    .INIT_61(256'h7DBB5140DD39A5067A52D596AB84BB2E2D43E8615F3ABED24E56CB6782A67F2C),
    .INIT_62(256'hBD525C4A04181E6748A4D06B2D44EE387C1020E68699B29F9D5CCD1DC66DA563),
    .INIT_63(256'h27AED8888B7FFCD62BAF01304F4451F4141A3656C677007F66088F243FBCA1A9),
    .INIT_64(256'hE5D99C4E4C455E8E60A4E45533539572A5CE3633B50BF76D6287EE6DE61EC55C),
    .INIT_65(256'hFB7AE9C379387297E12183CC3D5DE2320D56F2A28CE5C138EAF1D21693CA9387),
    .INIT_66(256'h9711B2ABEDCB968F2B498AA01597B32DE4827314399650E39DCDB0B3B9D413EB),
    .INIT_67(256'h2A1132B827F19F639E5A93734E7D6D1F4E3215562AC948133D66EA1EDC5DF818),
    .INIT_68(256'hD24F08185759C8BE25A7DCBCE466D98B59370F360311DC428E5C1F1E1B8FCE1E),
    .INIT_69(256'h7B03D69A87C1D626C278FD5B7425253429120E58A97600D2BB2F715CE4F76ACD),
    .INIT_6A(256'hEDEEB2CF37EC31AEDDEE461184F221E5BA7DB2FB55E78567364AC70DE04EC78B),
    .INIT_6B(256'h882DA0562DD33C30A1864607289B27B021716124BF950B2B438A6B5B9539E6C2),
    .INIT_6C(256'hEF6B480B273BF0503FE65F07C47B961C135D557B0D283CEEBE42302433F4EEE0),
    .INIT_6D(256'h7F119DE0AD07BEDDAB1D2A8AFC9B9E8ECE523408A2AE7E0C028C292343091D24),
    .INIT_6E(256'hC65C7188FC833810818107C27CB5BF2EDFE884C9C0EF4515F2E0273CC5E88214),
    .INIT_6F(256'hB029BC3E78FD4310D9BCAD54F799299E5F783D5D20E54AEC30FF8FBEE23051D0),
    .INIT_70(256'h1EB3411B64E23CA65F79A50381A196A671921F4E94CB372A7CE625BE39B3A605),
    .INIT_71(256'h2B4A084B42843852D2E377B0678B6D1A4200FCEF8AC3F8134E044D853A55C702),
    .INIT_72(256'hBCA218F756596D3538A5F160C5FE960F346305C108F56B2243FBBDF44EBF388F),
    .INIT_73(256'h21B048081A223DBBD2ECBE0FDAECE642BF3293D6B25A8DB12878B16E33447D17),
    .INIT_74(256'hF3301DC66F6DD0317D183BE48F959397479200765E4A5BCD2551A065CFBA80E2),
    .INIT_75(256'h654675211B6EE66F84E26CB5F5382EF13520D4D522181D35E51638DA6A1E87C6),
    .INIT_76(256'h01D747E76581EB49111B88FBAFAECE237D45A44624147E1107E47B7C70D5ED37),
    .INIT_77(256'h5E534775A34A22C3E6DF99D9EC8D3D5B7F6DE9A002F175E424362C5C5ED89D0A),
    .INIT_78(256'h7BC08D4D32EDF565D6D82F2469DD3D27ADE2378245A421CA04807C4D9419AB8E),
    .INIT_79(256'h69D33473788EDF03B374DCE31AC5C5FBBA552F105F228971591AC99DE8BBE4B5),
    .INIT_7A(256'h00000000000000000000008F11279E8ED2D9D55F895E013FD3824FD83638F434),
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
module weight1_bram_1_blk_mem_gen_prim_wrapper_init__parameterized1
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
    .INIT_00(256'hB3B1D204497A8E3482D82DBD913DCB587FC41C7B3409FBB231BF9522ECBB13A7),
    .INIT_01(256'h71C65E25C04DD144E3BED8A98667052321403D79EB95626BB7F12854766FD829),
    .INIT_02(256'hEDFF3F055D5A96AADCF536B86C06A1B25EB8EF34D287DD4D6B1959FBB4BC6B57),
    .INIT_03(256'h9E90925510D6C09D711D9339A58E884813CA013FE20BE4F222C76628F92831A5),
    .INIT_04(256'h9E94457505636ACE0FB7CC8B3A78E673B8CFE159735D3CCD10D2FAA772A094CD),
    .INIT_05(256'h5D9634797CFF166A1B86C54E6C78C95D95E0D089A0DB074E736CD09B472E1A8F),
    .INIT_06(256'h590E885CFED0462021718694D5183E9BD29D5A9A5F5CA530D98683B9D4B101DB),
    .INIT_07(256'hEAF6680D549B50DB10DEEC99D459B7A98E7A9DAD7D5575627F5D1C6D634BFBEA),
    .INIT_08(256'h4DA273E5552F1ACCF89C570467B5D9698FFD2F62EE67461E8F7C2B94BF2AB015),
    .INIT_09(256'h3470C2B15C85F772EA2982B0FCB5F3EBC1DBC5876B6871EEE7029E96F4D388BA),
    .INIT_0A(256'h7399AC04BE2B080D8F17CAB4B144CF1CBDB4CF64EEC46851A8F62A44891E9E9A),
    .INIT_0B(256'h7CC7398322BBA707C8EE450626A3F75FC153F700AB51D7A9739CD4E978B9A935),
    .INIT_0C(256'h3C64DEDC4C1B812B5804FFF463F8174ED43F97C2B0D5AAB04934E953CAAA7A1C),
    .INIT_0D(256'h09F10189949E7271C752A661908D3B0CEAA9066E6286017C6507C375B858770F),
    .INIT_0E(256'hDE8570B65D30DF5451D4371E36FB2A972B5094450D609D27D0167CD652D65605),
    .INIT_0F(256'h5C0B9CE35D66FB75E9A864692509C7089FD71434644BF074367B116514C543DD),
    .INIT_10(256'h6B77CCE1F3178F1D33881B07353CD54D790B5E96357BEF76AA7AAA9C247185E4),
    .INIT_11(256'h3FD35124CD0889D2BC10E140B66805C8995073A5ADF20BD892B77EF6EF73CFB1),
    .INIT_12(256'h73C3BA9D7FC1CBD06BD54923D93C358BDEC16E8469FF2037580F3E05F0FB4BE8),
    .INIT_13(256'h330598B0B34D1AB54F3816DF7A08BA97C1CA2C1A5C16481602DBB192117A741E),
    .INIT_14(256'hF69AB993AC8E0B04A2703F445C9DDB07954F63967EBBF6AD5A1D95C494B310A1),
    .INIT_15(256'hB4DD14FD3F6B73DDC9DC902DA97F51DA7867279426E079699783883BBB9ECC61),
    .INIT_16(256'hB0C8A3F3667B10507B93710FF52033AE1D8D62EFAEA5D207FCD3078503F55D4B),
    .INIT_17(256'h5022D5E8B571D08B4A7128C339FFF5001B52DE01BD33826CEB00F50A322A5D4D),
    .INIT_18(256'h64A5145167DA2B248CF7C0F6F8099E69A7A4C9553F32918C8C9190959F808648),
    .INIT_19(256'hACFFC3EFD594E97D3365965A104DD09C5D8D3520AF7F9BA971BC1C7B3795043A),
    .INIT_1A(256'h25BF41BBD31EF6730E2DFD1656662D7EC8EA3923028EFC02FC799D82108823C4),
    .INIT_1B(256'h2386C9D4FC7B31F9FD7FE096848474765FD354DB98CC13847448F3E1251A0944),
    .INIT_1C(256'h7C1E75D0811E12D05E39480A0AAC5017A14484F0FA63CA95EC65693C1EFFB68C),
    .INIT_1D(256'hB310E0A6513883958DF7E4EFD0086658AEFCD2D3CB29B6AC8C21192CE157D4E4),
    .INIT_1E(256'h64A526E9A2B51E6155249436CAB0A76C20D3D892BEB3AD69697A5F1B53AE0030),
    .INIT_1F(256'h52A7B8DDEE6F887E65CD1642A15EC298318A600356AB552D2F17875B7A6E109F),
    .INIT_20(256'h70EBF3A5B3D6E2486995375A05C03AF9D7425955E574A1AD32EBCF01471689DE),
    .INIT_21(256'h844EB105B8EE53EE8B766935004C3814B20F6DE41C1FB573B39E6714D7D9B073),
    .INIT_22(256'h907BAE169EAC2DD8E07056DD423C6FB0639B11CD9AC83566AFA2264655C814B1),
    .INIT_23(256'h63A6B7AB0871C684F95DD7D4B921991520225B12BE85224DFF71F9C3110C0D3A),
    .INIT_24(256'h8AB6216052C0B7F517DC981A8423FD3045177100481042A163F919FCC920E077),
    .INIT_25(256'hA577A29D05195576D7FECEAA98CAFDDC0C4917A667AA9D0426305CDB68A00107),
    .INIT_26(256'h8B5E92F282D93E9BF8880B82770D74CBD0B8C52D11A957F79E3DDEB3BF7B35B6),
    .INIT_27(256'h282E9DCE61A51FDEE23D77EF36A23DC4D19D7630A488FF061DCD3239C6C6708C),
    .INIT_28(256'h73DC1D348457FA142F9F1A1A7AA86160DC1C641F8CF61F4ECE1AD2524F14D862),
    .INIT_29(256'h20636B5FE484844663FBDF4AEB8B9259DFF56F77428ADA12D1965A0204E825BF),
    .INIT_2A(256'hC52BCECCBCE7E71291678DB88583E537C555EF545370C22BA2FD9AD342826235),
    .INIT_2B(256'h80CAC0F467847BE272657403BD6F4C2E96191B7B77FEF89AA81526831FB12468),
    .INIT_2C(256'h8485EE1F7E4F79C6D64F9FC4A24C72822DED6311361D6544AD9EB888CCEAB291),
    .INIT_2D(256'h877864AC88316D41A86403DC0A9BB6AA432A8DFE034E7D55B88E09EEE538C93E),
    .INIT_2E(256'hF12A53052E4F5A536F718CB719F9F6B76F2AABF3627AC7791A84C58AC843C1E9),
    .INIT_2F(256'hA3898CE956C13279AA6C86FAAAD74B9A8BAE1EC5CD86BD77047242795BFAB293),
    .INIT_30(256'hFD326FEF949957E7274B8C59B4CD4D2D45A5D3D7C7C6D01E356898A024E3CD66),
    .INIT_31(256'h0C5D7F1E042D1E0843313E425F05FB5BDEBBB1B05F8846C27969DF9F78A32843),
    .INIT_32(256'h6DDCE9A4B100E614432393CFDF4A8151A7D9FF8607A6C9BC17D7E9C8FE102C15),
    .INIT_33(256'h447B3680729DAFD08DEC2A915BA96346C36C4465C8683991AA109C608A89367E),
    .INIT_34(256'h985A6D06567110DCA873661A9C4EE2883BC4887E2A6A3135CD4DEADF35F75933),
    .INIT_35(256'hC0A30F7C3C383501ECE013D63702BA2C2AEBA84DDDEFA42098F43DC656FE278A),
    .INIT_36(256'h75E1B7F9642D97F1D1F7F3736D13983C493F567A88973884705F624AABE6888B),
    .INIT_37(256'hACA78AC03AD776C235E1AF7D91498A85F479539613800ADA5CE6BB3B2AB49AFF),
    .INIT_38(256'hF9079CEB0C0C49845EF6C3CBDA987F2976CCCD70CA33E3CA3704FDF7F780BF1F),
    .INIT_39(256'h8256D876DA0C901B4C822722E2A102C93DACDB96EB6B2DB24200E540670600C4),
    .INIT_3A(256'h5CAD9A4AE166A27025CBC2B8B68E934580A539ABF06032F20E4BF3D70147C905),
    .INIT_3B(256'h759D5B16475D37429E29873219CA5FE6CF7E5C0DB51500F99F86547E94D5E2A7),
    .INIT_3C(256'h67F2EA61E138FB407C9AE3E8B8B2D9FEAE6AD3036D2C6FAD552E520943C455F1),
    .INIT_3D(256'h91B937869AA0613480B2FF7F1362656BB50219AE845991F41BC07839C787C9C1),
    .INIT_3E(256'h65127F7CD106B855A1B68BBA216551AF6523A3298DC85A2ECF2069C330791028),
    .INIT_3F(256'h271DF778E721BAEEE9DA80B63C34DB5CD41DCDBB2B3892D11BE323C83B3B2893),
    .INIT_40(256'h6D6E25D9C27545C20F1051A3F06D12524232EF912603A8659CDEA9C5AF9F06D0),
    .INIT_41(256'h75F5F0A498BDE29594CE5B940BD57720937D2B69D7845117A52CD65F0EE42996),
    .INIT_42(256'h9A7D03E072671FBA1A0F885217AC383BED698A3693F0BB13683656B9ACCF4F0A),
    .INIT_43(256'h9883907EA0061438DAF739188891B3DF94ADDE6267B435DD525E744C7F1B02D3),
    .INIT_44(256'h7A586454C9B7DB62E7D1FECBB85FD67FE7D49363CE34AA0A253EBFAB9058F996),
    .INIT_45(256'h6E8705C00A4421B5D6FD95268111B25331729224C614DDB39F36EEAB6FB635BD),
    .INIT_46(256'hCAE096482FD9AAE14ECCEEB212DFB3525849BC25C15D2A3568F91E5297272176),
    .INIT_47(256'hDF48117DA0A7845EC8F1D9F269A665D8EC10F83421771A5DC9F263C4D26A86CC),
    .INIT_48(256'h95103FA96287109A4A9CB9E0A67381CF304278A8C7C5FD30BD3998205FA75DAF),
    .INIT_49(256'hA8FF8868E0B2FFD475178A90F5AD030E2CA30EE71CC26AFA9145D334F48647FD),
    .INIT_4A(256'hCAF8544EE350014D3E2BCD7F7C26CB4516D4E2C2791283B5C6092C3C1C06921A),
    .INIT_4B(256'h243BBB60ACC2A144512DC45A5ABDE77CD3C57FD546C18397E8F74CE90CB32317),
    .INIT_4C(256'h4AAE6C01A6C017A254AEDBE167384866D859AEBA74A8D4E99CA62E26C696D672),
    .INIT_4D(256'h45E9AD3F6221CEC4A8441C2D3D2603DB95B0A839325E3AB2C04C413E27D00FF9),
    .INIT_4E(256'hD2092DEC80A739882D0FFEA0201A5AC99F2182D0C9C396F97B6D2485A7DE11CA),
    .INIT_4F(256'hC5919A7FF1A24E97662EE9892EC105F90FAC64F9C9D176B937E064AA24A892FC),
    .INIT_50(256'h8FB96249A2B6BC0152CE695161B63B8F4FC86CEE2F90845EA750D2A2F69EC21E),
    .INIT_51(256'h773EEAB5BF800339FE04222F30FB292D8D7CFBF91FD565D6845F3791A0848EE9),
    .INIT_52(256'hA682CC09688482823CF127D34E0534E30EDAF065C86DB1D4B4C3446AA0D975AA),
    .INIT_53(256'h30270AED730AAE9E777C94DFE79C4E3701F00043A15454F97E8DC3D8899179C9),
    .INIT_54(256'h453D598ED9BE073D2AEB455B074022FA976BC52414CD123E87C473B917A12B73),
    .INIT_55(256'h58EA8B90DD2DABFA91EBE67DBA02E0B0610ED6AA058AC153D4569D498721802E),
    .INIT_56(256'h271D37259D984BA316A1BF6398212CEBBF6A6B121FB1D9E2139A6ADE18E2E96D),
    .INIT_57(256'hF3E516B9521E05C1BB1F1EF741F9055D06D400A45856637A9120ECA1B1D62FF5),
    .INIT_58(256'hD247C96597B0C948EE32125011FFC7AB6E5224812ECE27116A5A4E7E1FDE0AF1),
    .INIT_59(256'h7F530F1F8034BBB211403EAD04B80FC868FD7EF544FECE82F12B3E3BB85E1375),
    .INIT_5A(256'h42A5F4E2065A2927A0EF90BBB47537F0B6D757C408CAC04A4AEE72E8383B5204),
    .INIT_5B(256'hA3306AE4551E50387060A165E1D7D0B7B694EB39F43577CE7280690D71FE76C8),
    .INIT_5C(256'hB799A6F8B21531742E9BE04CC41DF62B189C7403398A74255289FD4F497387BA),
    .INIT_5D(256'h55E4845CBDB711D50925761C8D0335D6C7CAF587D1EFEB5A052124655E75C6EC),
    .INIT_5E(256'h1B0BB9F3B7F7BDB6ABDC20EDFB7A2AABB13CA6F3233FAE811E59F31ADF43E117),
    .INIT_5F(256'h7C759676C246D5BD2CBBADD2061C674F1ED7B12272565B6A4894D48B49BB5F04),
    .INIT_60(256'h5F280D7A67376A2E6833870E8250BC96E455BE4E745C918CFB9FFD718A75E629),
    .INIT_61(256'h6879548059CBB2C9E65B16B0F4142A3340B68ECDA2E05CC0BC58A127C20226D0),
    .INIT_62(256'hE0FC26AC0688024BECB156F0AD4D9E470A7A899F99E7D08C0BE19AA816969F0B),
    .INIT_63(256'h0F2D4FB0FF34824DA2726CADEABC8C59A4CA2E51DAC97AD42AA13F017451F1D7),
    .INIT_64(256'h2D6EE492299404277320190D5E65E2D3DBF4107631591518110A0ECA2C8A2865),
    .INIT_65(256'h6071312CAC34D5D502AB22E1092E7BC1D6325B5558A2E31DBBF35986EFEB274B),
    .INIT_66(256'h2D9B76DA6F41AD6BBC7F66DC497013625BC44D496453B44F40E3023105CB87AE),
    .INIT_67(256'hF7D48A10A4D0B446A224D0F20ADA30EF8937AF22A0D8199C71000B9B9B00D833),
    .INIT_68(256'hCDBF7F37B21B7CB3A49EC0D3A407CB1922354EF71184417C9CE2B35D64B5CE50),
    .INIT_69(256'h73EDC3D920704C7E192F151CBD4F6B66E5F2A067FD2AF59463291A402A675C66),
    .INIT_6A(256'h2E835918E065F2372FE61F4C5488C7A284FD65EC1C08A1E01BC4FE18319A7889),
    .INIT_6B(256'hDE6E04F88330F851F0434DBB8720A67D1F11C1F6FA59BDE934C46C8D83902EEE),
    .INIT_6C(256'hFBC3B921D53477C68079D5562C49CF04C664DD4235B2C1B0E2987FC8D1106FE9),
    .INIT_6D(256'h35AA20BFADA96DB2A3A7D75C61829FCE2CF892890C9444D8F000678AE5116596),
    .INIT_6E(256'h344D6A807872DF4BD7F8E35BB195E56D4217C1D0F7A6A2B8806B753133727E93),
    .INIT_6F(256'hDACA85190B7492EA0FE88D93A178D564C78DCA418794CC57717D7CF44F3CADEF),
    .INIT_70(256'h230921B7B8D64D91015A9D39BD776BA499B90002697A7B5F8896682628C96935),
    .INIT_71(256'h381413B07C46E4677BF8BCA89EB0E4FE88B2FE371E764A80CBCDD107939ECE0D),
    .INIT_72(256'h9378D0F042DF6B0A340D1CFEDA8DEDA48EDC8F9B096A8E23CD26B2E223C38348),
    .INIT_73(256'h4280E374622326D55FA33F035C226523A223016C76EA1D8A428B1DF7A08510CF),
    .INIT_74(256'h713F9B3F0A7EEBFC72A8044B5696AB07D23AF7789F1F2F8B7BDF5AD5C04B5EDC),
    .INIT_75(256'h06F21BDBBA2F3C67F1D846507F213C78493BA348E295087DDC87D6C83AC13A3B),
    .INIT_76(256'h53C391CA2E1CB7828D30509BF1555FFFDDBF02D7226AA4667542F03496DD962A),
    .INIT_77(256'hED1FBF084F73D901D8DE7348A1E4DFA1734F372B19479EE14EF1267ABFEE9B16),
    .INIT_78(256'h46213CFACBE84AE487FD1A5BA6318B60A4387AB65B667EC657CFAA936BB7A652),
    .INIT_79(256'hAE3A6B7A8BA85E92BA0E08160710901A17E10D378A7E798E80986A0D8E4655D9),
    .INIT_7A(256'h00000000000000000000006112E744979BD8C555EEF271E1AA669627D3B3C61C),
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
module weight1_bram_1_blk_mem_gen_prim_wrapper_init__parameterized2
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
    .INIT_00(256'hBFEB9F3E306F151ADF1D68E84E30BA0B1A6C7DF78DD7B9D1430B2A32EB1FDC97),
    .INIT_01(256'h99511B1B1B6B8C7C54BE851323B426026F9F7ABDE1408772FA11BCEC72787EC0),
    .INIT_02(256'h8FFA2C078D34779CD6468FC0B968EBEFEFF85D138384F54048F62F0061395F5C),
    .INIT_03(256'h88C8D2DCE966D2039D10C25A0FCC1883D4F033B5A2CCFB9DD6931A78AAAA799D),
    .INIT_04(256'hC8B15F52BC846DED5E6527C9D5C1C4A1A93A445EE4D56B01B05C9FF344A0F63C),
    .INIT_05(256'h0FCE6F00FA3E860179F8CFCD804B6A28966119855CF301505E28E721BC11B303),
    .INIT_06(256'h55AA5D7F4CB5E07745BF0A90B8DA855FDDCE5E182DCF00E78B36C0A0949CE8CE),
    .INIT_07(256'h854916FD4B215EC3472C51D595CD293F6F9E4EC7394F305FB9FBF775155C3F56),
    .INIT_08(256'hA8260EE57CD061961679F94726578C093A657E91D01D641B5E20481386875296),
    .INIT_09(256'h3E726E0A2DAA2B840F694CB37CC0C61D7DC4116A37BDF22D151FE99303111CEC),
    .INIT_0A(256'h4FECE126376C5D296B3409AE3E0EB676ECF973953D34B6782755D4C3A8978A28),
    .INIT_0B(256'h262F64B44331DEC285E860ACD96D002B1A04C169548585995E66CE9E1536B346),
    .INIT_0C(256'h5345F380FFF0C094638CF1E69C7F365DDEAE5C03FCE413DA913F03A1A7CA15FF),
    .INIT_0D(256'h46A311DBCC41034B3D5C771F3970EB0415CD871D49181A9703AD13F2F66A2956),
    .INIT_0E(256'h7D8933AD4B68406E52960EEEE17D370B66296865D061E793673204B5B6CBFFCC),
    .INIT_0F(256'h96F75002BECA752FD669A4045D308B1C2E25787D81EC0DB7B56BCCCCC7FAF8BD),
    .INIT_10(256'h7A00835F61F521352B8722FA63A1E81152B30A2BC19076220A03C4314DDEBE84),
    .INIT_11(256'h21D84328F743A001E6B95B1ACF0261DA0FF787C2E31AFB0663EC7A6831A33411),
    .INIT_12(256'hABC0FFBCFAD809109FC8EF212A0B7811E1C4D35AAD56E1CEB7127D8005226C08),
    .INIT_13(256'h1FB76BD716061C304EC4E71A69C0265150C5FB1D7A1C644A3130EB165C074A6A),
    .INIT_14(256'hC4B47C39742B48799DBB9D6E28AFCBAA2EA390504F253CD52E2CBAA977588680),
    .INIT_15(256'hAD09AF0FA8FB8B45EE817409FD5C38193136C80E6CB53A2D89F89E2CF1679AF6),
    .INIT_16(256'h08FADEA62FA641F533FC251E652626DE7BDBD3577EB812DF8E6E65D87C4614E5),
    .INIT_17(256'h8599378079E2C10DA4398A4BB05391AA9FD90FFAFC973CA13640F8E929C10BB9),
    .INIT_18(256'hF8A2A852B67A80B48BE4987264D335F21138D72BF7A5A2EE875FB07D3F759594),
    .INIT_19(256'hBF850F053ED992E9101C16C9A6B05D1FF856FEC9CEDCE3754C298F902232A5F9),
    .INIT_1A(256'hB534F81B2C718FE54EE2C492746DC59D56BCF3D6B96493FCC362B3FAD0EB7149),
    .INIT_1B(256'h6B4611482C0DFF59E2F7A3E1334CCB364AEBB63B63C543535133E83494C88FB0),
    .INIT_1C(256'hC9910E4D1AB6A305B31A6815BECC96A18CEC9A08664C6DDC66FA3CC2DD183A41),
    .INIT_1D(256'hEFDF4817083BCF531E4868BCEC131F58D77C6840DCF1EF20E5D128E5BD417985),
    .INIT_1E(256'h93C3C0FBBB2941EA660EA14E4FDDBEA095CEA0C8FAC873DCCD1C3D81D764C967),
    .INIT_1F(256'h0C9E2D1268E38DAF953CCAFFF9A9820CB823DE42CCD01D3B535191CF7184733A),
    .INIT_20(256'h2578A6C6445D153BB162AEA0A1EF77878A17D0DC86726EBF38930A9BD287FF93),
    .INIT_21(256'h84272C770EEB06BDEF8044CD494145D01788F253ACE5D015F58939FD1DCBB831),
    .INIT_22(256'h88AC2224F126E1FB4576CF9697615FFEBC39198B431A8D8C6BE31A36A2E0CD78),
    .INIT_23(256'h4A25A27C2D9904820F30B45883392FA8842857B5C88FFFF8AC2355A371B5C807),
    .INIT_24(256'hA2B04F09A98E02D3338A075EBD7852FB0744F6384EF581182C2EFE5D040945F1),
    .INIT_25(256'h249D864A0FDD73893E563EBB778996A8742CFBD3F750390D0E935047010FEFA7),
    .INIT_26(256'hD78758FDD1177289ACF4AA306E9B1B0871FAB5F9040DF784D34CE23236B6C975),
    .INIT_27(256'hDB0F0B0ADBD171D8B40D4F94EC722851454101E3871CF1C980A63A13E453098E),
    .INIT_28(256'h91940EA1633397197B59E6621164F208BAD4F4124C23C4577004A51C1551DB26),
    .INIT_29(256'h5A9DC15FF198DA4CFBE76E5126590150F953B4D43A7801D7074805234746A2F6),
    .INIT_2A(256'h50C21CA2D4C9EAC054CBE904737CD049CE84593604697AF994EFDD2732F0C53F),
    .INIT_2B(256'hC4C78A563BFE3FF6CE69DAEE2E3D026A40D21F7C1A257719C4FC00964060B284),
    .INIT_2C(256'h92EFAA3EAD05F7A03F21A32C6E998EF2F09A0015267DCFCC66C8399A08A2BAF4),
    .INIT_2D(256'hF3D974CCBCD747E19D522A108D2AA47720D939C4E6DCB158A553AB3337F047E2),
    .INIT_2E(256'h611AC5A3C57835C10F47519AE05E5D49103DD70B4EE0732ED0403AB8C8448172),
    .INIT_2F(256'hD0CFD3718A89474206F4FB7B1D048826FC9B1D0CB21C20C45522F518DB3D5328),
    .INIT_30(256'hFD275E7CC7125BF1580D3403C8BDD4AADF65B2FEE04FD6F0CCD9F5313F68D040),
    .INIT_31(256'hA0F424C84F7F5388BD3585F322410779DE09E41C490E8E8BA90FD2F5D2AC0C61),
    .INIT_32(256'hF5DAC7FD209BD38E2CD8B5524E7269576E29E35F235DDAEF151D45877A94D062),
    .INIT_33(256'hA582F5C99BD9DCC3775E9961C7B9A1B46B9861763D9E95F092945A020203FADE),
    .INIT_34(256'h592F887698B4ECCEB3823AC58514FA42807B735D94FBFEE9E20DC52C500CF6FB),
    .INIT_35(256'h201D6C50C1FC81EB10E9C509BC8E7E63990CDCC635600D1333D787FD290AF4F5),
    .INIT_36(256'h29E46E20E40441D1C590D9649AA89C3CA1BB68AA1C2BC765222C2A15A423C19B),
    .INIT_37(256'h1C4FC03D8EA12222FD502F34C197F025112567CF11A96716FB7E6F082D59EFCA),
    .INIT_38(256'h7D86B936C40FABEC39401EA813B7D6935A67E0D698B90DEE7223F3470153EE1D),
    .INIT_39(256'hB6AE982120E7B4A6EE31A0210DD7C432B1A3F1BFBAA451B93752D647AEB3CB01),
    .INIT_3A(256'h0B9D439B02849597F6891FFA6B09983941CE67D02188331FD791DD9A1DB1F8B3),
    .INIT_3B(256'h5F26B0746FC96FE9C0A8142B0DC08F042E04E820C154C31806CCFCA49E7449B7),
    .INIT_3C(256'hF0DF2FC948FDD1F51B9C92CE882ED5622D6C13F9805428ADDF86416DDFD0703D),
    .INIT_3D(256'h48C06555245FB6B7537148F8B7FA219839F539CDF67E3DA05EAFE5ACE0DA43D9),
    .INIT_3E(256'hCE40F8EE821B1F8B2EA80FB564283DE96EBADC53DB5C6DA3DADD91783104A404),
    .INIT_3F(256'hE1DDFDDC4E39423F1841C8BEA2343064F1CB2E47CC7FEFED092065B60F1A1C86),
    .INIT_40(256'h8DFA4589DFBECD2051E90531A207C77F4241F038F00ECB038AAB4E35BA59288E),
    .INIT_41(256'hEB4D88BBB3DB5AD711799B8F7CC9FFAFDCA0CD9CBB5CAF9EC5BF00A4EDB4CDD3),
    .INIT_42(256'h32128987FCB9132F034E6E1FE36D05CF838DC1A51B1FC87A285FF389DFB59872),
    .INIT_43(256'h9F7D587D703E588F1FD3F5C1986A932C4CDFB866F0831F2F8C5E312DDC74E3DE),
    .INIT_44(256'hBF0AF4B09B012FD557C164BC7B2EC3F204D1A2C3D08E9A54BD941C4996D8996D),
    .INIT_45(256'h033B8A00379BA04EFCF62DD59F2AC2E2D745DECB08F75A02D9B8168E4E0A973B),
    .INIT_46(256'hBB634032F3FEEB16595662CF7B0D67B137FA6CDBF6AE96BE8300DE037A7E28C4),
    .INIT_47(256'h0C6508F63C36FA1EFE4674125878CA1D390523B0E5D7178EF609030EB679929A),
    .INIT_48(256'h3429E13BF19164280B32F59B0C28E2B0DFBAD489ED7FC85C7BCC5211AB4010A4),
    .INIT_49(256'h056D090D795BF52AF0546C8D4CBCA473E538338BB12CAFA309AEC02829B809B9),
    .INIT_4A(256'hAE1817023F51E46DCB134610B9B7240D17DAAC5FE5ABC109BA2A30B561522CF8),
    .INIT_4B(256'h1E5F88EDE9290F2D2F25E9036F8E9564505E286503B8F6B1B6F21F8204F19F1B),
    .INIT_4C(256'h9793109868369EB06C97068224FC1C1EB540D2D09EF132244308AA5D7129CA32),
    .INIT_4D(256'h92C633ED49C4BA6C2C5077A25E5FD24557DCA937F60B66E70A345009A590C34A),
    .INIT_4E(256'hA3A6CB41803F4E1E73EE827A0D9D18C0277D39A8E1E0BC7431133E825721A7D8),
    .INIT_4F(256'h934EDDD31A6F568DED13F02B63E7FEC443E44E897FBA60909FF5D85682B1EA38),
    .INIT_50(256'hFC80466945BC45A96310304D967DB40FD0496BABBAEF1A800CB6C7F33C1905FC),
    .INIT_51(256'hA2A4F8C25CD8340FCF9BCC0635E7174EC88D00922958D4DEFDFA03AC90E2A824),
    .INIT_52(256'hF58D32F53CCDF9F789EADE6EDAC4653DF69F49A9C937F303968C0CF3F53105D4),
    .INIT_53(256'hD61CCB983F7EB64C2907383B989A77CDC8E5B6D0FB5D0B9707175EF129E71B48),
    .INIT_54(256'hFC37E038CF08D912556FFDA478086D33678E3C80E0952F9CD1D2E98BA1D3DCA8),
    .INIT_55(256'h143E73BF97B083953AA6413A3035C4031F22F530FC9620F4640CDCD012C09A27),
    .INIT_56(256'h55C25E8422FB82D64689677A4E7D92819EB9426AD5CAF9ADAE66BB408192686C),
    .INIT_57(256'h77A7B330E5EFB4307FB98A9B021544F4D72505538AC4D43C96408E33191FE31F),
    .INIT_58(256'h36F8E6FE208E6A3D8296AFC11A1AE2B0F7E1615A22FBA3512AB9038112EBFDA2),
    .INIT_59(256'h9A7CC7CE429D6224A3FC9D42A5F6F1A9D42FE6E7B45503DE4F88102653A4DAD3),
    .INIT_5A(256'h6E0837FA8F6E715DE4BFB76978117D1B7EC3F1A49055840B8FBF4E27C9824A94),
    .INIT_5B(256'h5EEFFB33EABECF531E44AB590C35DB8891B38A0283F38CED4B9B0D144B45EF46),
    .INIT_5C(256'h1D1935586BC1A17BE54EA6C7D3C12D437D9E1565C2E0CE894EDEA46E3BE41A13),
    .INIT_5D(256'h37086EDA442A8C16B61BECD9FE840EE9AF2420132DAB75CCB0CB9C06FF545FE1),
    .INIT_5E(256'hA9AD69EAB5154448510FF940FF426D2FCB8DABF4CC03141064341ECDEA19B18F),
    .INIT_5F(256'h6A1C938DE090C72BF1D478E794068F8F06B69700E698748995FE6EEABEEA0616),
    .INIT_60(256'h5205D33440C67F22A67D50AD626376B3FA4D7A7075C7366049BCA405D3DD65CF),
    .INIT_61(256'hAD332EBB32223F149A0C0AC6F1590DB9401FF6B40C5CD018409F84D523D7BA66),
    .INIT_62(256'h0340B4868A0AD1F3B069308A88525688B002FF684B2D8E7DDE5C064BC5D01727),
    .INIT_63(256'h15F7BF1E23FBE6C0575CB110F72BA183CD26311F77BC1E739C540524F1E8A764),
    .INIT_64(256'hB955C421B1C16EDCDA0E5F28DE38F4F5B4445E578EC8FB58F14158950BE033CC),
    .INIT_65(256'h442BD4D541F13D6DF0407183A205197C333E0922AB8D3621BCF537CAA2F47EAA),
    .INIT_66(256'h377976B5E18E3DEE47A09D67CAC4A986E05D95EDBEF555FD5634711FB9B034A6),
    .INIT_67(256'h6208AF8186D86A31D42DBD7F775C80E6BEC30705AC22D0ADC0DF4E73CD77AE0C),
    .INIT_68(256'h3EE16CDA47147E3BBD74AE58DE5027096023FAE6034845352D2A5D782521FB1F),
    .INIT_69(256'h866B268DBE6579A1B13F6AACAD335D7253BE3F1BDB7CD01FE69F7F4F1C2E52E4),
    .INIT_6A(256'h911DA2B6E51AA844F733469F539BF689D77F5F12FA91403F1A670595914FFA57),
    .INIT_6B(256'hFC3AA2A6EDE578C100C8DEF35DFD26102261E09A35A3A1EC609C634D9D63C77E),
    .INIT_6C(256'hB2C084A3142E111A3A2AB1233C01DC41370933104033CCCE1DE3B4BB99EFDD47),
    .INIT_6D(256'h7B2556FD77D603B14255767AEA8E357BED6FAEF67D53B2D72B85ABEA33231D69),
    .INIT_6E(256'h504F7F753A1D7C3DFE2778DE742449524646A2D7E52192D00C00CF02687EFC5D),
    .INIT_6F(256'hC1A01E06133BCD263F01EF47D5CEB3328467BB938E743C26B7F1CE2B710C83C6),
    .INIT_70(256'hEBC15867923525006D3808D26E230CBFB9D39E22EB2D91AA3661714AEFAF74A6),
    .INIT_71(256'h4F422A78284A9813006D847C5069AB512CE0954325A9708ED13135C5AA454E71),
    .INIT_72(256'h0EE29952F892AF856133B52B83F357D5DFB1658BC215F3A1D3716DBCDC801B82),
    .INIT_73(256'hB18C2944377BF6807BD56BD63BBB84B74EFDC8B7DD425FC9BF93CFC9AC5D983A),
    .INIT_74(256'hA0502E4F401307A682CD99566BB7131C69DAEB6BC7AA93CC92995DF27753AFF7),
    .INIT_75(256'h05144E9BF7BE7EBB7A3B1263E38EF0CA08233C8CAF95E7FB3847BA508EAB8FF0),
    .INIT_76(256'hA9AD816FA221CBF62549BC35A429076C3DC1ED592C65BC959E4CA55EED9EC354),
    .INIT_77(256'h0A28AF54ABAE88D888062A0F2438251841D974A93D60CE344C9E3A0C3A8A6F2A),
    .INIT_78(256'h74C10EE3FB5667B60F88F5372E070283A2809B0A0BCC3F67BB452CDAB3C0FFFC),
    .INIT_79(256'h5CD09AADD89A66EE4624BED682C8A50C6FA13F08A46212CCA80B036F3B9A8BF3),
    .INIT_7A(256'h000000000000000000000059F97AB363984E084D80AB621E6D6585CB22C67E55),
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
module weight1_bram_1_blk_mem_gen_prim_wrapper_init__parameterized3
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
    .INITP_00(256'h8832100A0E8558807B67A815F4EE567AFFB74FBFF26A34F356ED6F791375F7E9),
    .INITP_01(256'h8ADF8099A2301A218C44D2DBC03EE26E172130C2A018F4072C7592C008300432),
    .INITP_02(256'h2BF1E3207CBA807290022D00A2A1D2D19191A96ABF7BCD8DFF93CE71DABD8CC6),
    .INITP_03(256'h931A1029928D4267FB380143E7D40A7993872C8D17A8EA23ABB43B09358C8E8B),
    .INITP_04(256'h7CF8283EBB2C60F16E015F4623ED112EA33E0EE207E175A0167D830134299301),
    .INITP_05(256'hF7FC55B98A22E70100820880781340001EE0602235004006AC1C60F613E90160),
    .INITP_06(256'hBD05A117F67174B7CA1316FF53DCE76190C8BD8A1ACDA770A2A1AC1C17199A3F),
    .INITP_07(256'h9D01FAF7D04EE4B241662E2C6FBAAD8669523203D93F801310E884D537A05BAA),
    .INITP_08(256'h5AD4D140E6B2B05C3F1DD3D17CF6D56056D95C507BDE5287FD3718F595860FFA),
    .INITP_09(256'h191FD2003AFB484089F6F60B54F0232E38FEDAA07AB56345889B2103D1680512),
    .INITP_0A(256'h6FF34F33F842E27FC7022FF28832FE8C8444038CAF224FB90008376012EED808),
    .INITP_0B(256'h0818488286ABC986F8B9E96CC0EF4A362FFD5F8E1E42F5DB7F1B6C9DA0786988),
    .INITP_0C(256'h7EB16A8E001ACC23A7CAAADC26BE442E49815D2C2E2D695D04B7F69B1BCF764C),
    .INITP_0D(256'hD302E3F09F9D12B53FD5591320B4EABCC6E7653E28ADE2DA0EDD77C695DD0B48),
    .INITP_0E(256'hFB21073931CEA332F609ACD37840E1CE08B93DD052627A15887212FA3D68E45A),
    .INITP_0F(256'h2BE0ED2B66BFC282E1B1A833128BC257DAAFD60772C33A74A94BEA5AE2E1980E),
    .INIT_00(256'h000000FF0000FFFF01FFFFFF01FF00FFFFFFFFFF00FFFFFFFFFFFF00FF0000FE),
    .INIT_01(256'h00FF00FF00FFFF00FFFFFF00FFFF00FF00FFFF00FEFFFFFF00FFFFFFFF0000FF),
    .INIT_02(256'hFFFFFFFF0000FF0000FFFF00FF00FF000000FFFE00FF0001FFFFFFFF0000FFFF),
    .INIT_03(256'hFFFEFFFFFFFFFFFFFF00FFFF00FFFFFF01FF0000FFFFFFFFFF00FFFFFFFFFFFF),
    .INIT_04(256'hFFFFFFFF00FF0000FFFFFF00FEFFFF0000FF00FF00FFFF0000FFFFFFFF00FF00),
    .INIT_05(256'h00FFFFFFFF00FFFF00FFFF0000FFFFFFFF00FF00FF000000000000FF00FE00FF),
    .INIT_06(256'h00000000FFFFFF00FF00000001FF00FF01FF00FFFF000000FF00000000000000),
    .INIT_07(256'hFF000000FF0000000000FFFF0100FF00000000FF0000000000000000FF00FF00),
    .INIT_08(256'h00000000FF0000000000FFFF000000000000010000FF00000000FFFF0001FF00),
    .INIT_09(256'h0000FF00FFFF000000FFFFFF00FF00FFFF0000FF0101FF00FFFF000000010000),
    .INIT_0A(256'hFF00FF0000000000000000FFFF000000FFFFFFFF00FF00010000000000FFFFFF),
    .INIT_0B(256'h000000FF00FFFFFF0000FF00000000FF0000FFFF01000000FFFF00000000FF00),
    .INIT_0C(256'hFEFF0000000001000000FFFFFFFEFF01FFFFFF000000FF0000FEFF00FFFFFF00),
    .INIT_0D(256'hFF000000FFFF000000FF010000FF0000FFFF00FF0000FF00FEFF00FFFF00FFFF),
    .INIT_0E(256'hFF00FF000000FF000000FFFF00000001000000FFFF00FF000000FF00000000FF),
    .INIT_0F(256'hFF000000FF00FF00FFFF00FFFFFFFFFFFF00000000010000FF0000FFFF0000FF),
    .INIT_10(256'hFFFF00FFFF00FF00FF00FFFFFFFF00FFFF000000FFFF0000FFFF000000FFFE00),
    .INIT_11(256'hFFFFFFFFFFFFFFFFFF0000FF0000FFFFFFFF0000FFFFFF0000FFFFFF000000FF),
    .INIT_12(256'hFF00FEFFFFFFFFFF00FFFFFFFF00FFFFFFFF0000FFFF00FFFF000000FFFF00FF),
    .INIT_13(256'hFF0000FF000000FFFF0000FF000000FFFF00FF00FF0000FF00FFFF00FF00FF00),
    .INIT_14(256'hFF00FF000000FF00FF00FF00000000FFFFFF00FF0000FF00FFFF00FF000000FF),
    .INIT_15(256'hFF0000FF00000000000000000000FF000000FF00FFFF00FF0000000000000000),
    .INIT_16(256'h00FFFFFFFFFF0000FE00FFFFFF00FF00FF0000010000000000FFFFFF0000FF00),
    .INIT_17(256'h0000FF00FF00FFFFFFFFFFFF000000FFFFFFFF000000FFFF0000FF0000000000),
    .INIT_18(256'h0001FFFF00FF00FFFF000000FFFF0000FF000000FFFFFF00FF000000FF00FFFF),
    .INIT_19(256'hFF00FF00FF00FFFFFF00FFFF00FF00000000FFFFFF00FFFF00000000FF0000FF),
    .INIT_1A(256'h000000FF00FFFFFFFF00FF00FF000000FFFFFF00FF00FF000000FF000000FFFF),
    .INIT_1B(256'hFF0000FF0000FFFFFF00000000FFFFFF0000FF00FFFF0000FF000000FFFF00FF),
    .INIT_1C(256'hFFFFFF0000FFFFFFFFFF00FF00FF000000000000FF00FF0000FFFFFFFF0000FF),
    .INIT_1D(256'hFFFFFFFFFF00FFFE0000FFFFFF00000000000000000000FF00FF00000000FFFF),
    .INIT_1E(256'hFF0000FF0000FF00FF000000FFFF00FF00FF00000000FF0000FFFF0000FFFFFF),
    .INIT_1F(256'hFF0000FF0000FFFF000000FFFF00FF00000000FF000000000000FF00FF0000FF),
    .INIT_20(256'h0000FFFF00FF00000000FF00FF0000FFFF0000FF0000FFFF00000000000000FF),
    .INIT_21(256'h000000FF00FFFF0000FFFFFFFFFF00FFFF0000000000FFFF00000000000000FF),
    .INIT_22(256'h0000000000FFFFFFFFFFFF00000100FF00FFFFFF00FF00FFFF00FF0000000000),
    .INIT_23(256'hFF00FF000000FFFF0000FFFFFFFFFF0000000000FFFFFF00FFFFFF000000FF00),
    .INIT_24(256'h0000FF000000FFFFFFFFFF00FFFF00FF000000FF010001FF0000FF00FFFFFF00),
    .INIT_25(256'h00FFFF00FFFFFF0000000000000000FF00FF00FEFFFFFFFF00FF000000FFFF00),
    .INIT_26(256'hFF00FFFFFF00FFFF0000FF00FFFF000000FFFF0000010000FFFFFFFF000000FF),
    .INIT_27(256'h00FFFFFFFFFE0000FFFFFFFFFF0000000000FF00FF0000000000FFFFFFFFFF00),
    .INIT_28(256'h010000FF0000FFFFFEFFFF00FF0000FF00000000000000FF00FFFF0000000000),
    .INIT_29(256'hFF00FF00FFFF0000000000FFFFFF000000FFFF0000000000FFFFFFFF00FFFF00),
    .INIT_2A(256'h0000FFFF00FF00FF000000000000000001FF0000000000000000000000FFFF00),
    .INIT_2B(256'h000000FFFFFFFF00FFFFFF000000000000FFFF00000000010000FF000000FF00),
    .INIT_2C(256'h00FFFFFFFF000000000000FF0000FFFF00FF0000000000000000000000000000),
    .INIT_2D(256'h0100000000000000FF0000000000FF0000000000FF000000FF00000000000000),
    .INIT_2E(256'hFF000000FF00FF000000FF000000FF01FFFFFF0000FFFFFF00000000000000FF),
    .INIT_2F(256'hFFFFFFFF00FFFFFFFFFFFFFFFFFF000000FF00FF00FF00FFFF00FFFFFF0000FF),
    .INIT_30(256'h000001FF00FFFFFF000000FFFF0000FFFF0000FFFF00FF000000FFFFFFFFFFFF),
    .INIT_31(256'hFF00FF000000FF00FF00FF00000000FFFF00FF00FFFF0000000000FFFFFF0000),
    .INIT_32(256'h000000FFFF00FF00FFFF0000FFFF00FFFF00FF0000FFFFFF00FFFFFF00000000),
    .INIT_33(256'hFF0000FF00000000FFFF0000FF000000FF00FFFFFFFF00FFFF000000FF00FF00),
    .INIT_34(256'h00FF00FF0000FFFFFFFF00FFFFFF0000FFFFFF0000FFFFFF00FFFF00000000FF),
    .INIT_35(256'hFFFF0000FF00FF00000000FF0000FFFF000000FF00FFFF00FFFFFFFFFFFFFFFF),
    .INIT_36(256'hFFFFFEFF00FFFF0000FFFFFE000000FF00FFFFFF00FF0000FF00FFFF00FFFFFF),
    .INIT_37(256'hFF00FFFFFEFF00FF0000010000FF00FFFF00FF00000000FF000000FF00FFFFFF),
    .INIT_38(256'h0000FFFF00FFFFFFFF00FF000000010100FF00FFFF00FFFFFF00FF00FF00FF00),
    .INIT_39(256'h000000FF00000000FFFFFF00FF000000FF00010100FF0000FFFF00FF00FF01FF),
    .INIT_3A(256'hFFFF00FFFF0000FF0000FFFFFFFFFFFFFF00000000000000010000FF0000FFFF),
    .INIT_3B(256'h00FFFF00FF0000FF00FF00FF0000FF000000FFFF0000FF00000000000000FFFF),
    .INIT_3C(256'h00FFFF00FFFFFFFFFF00FFFFFE00FF00FF00FF00FFFF00FFFF00000000FFFF00),
    .INIT_3D(256'h00FF0000010000FF00FFFF0000FFFF000000FF00FFFFFF000000FF00FFFF0000),
    .INIT_3E(256'hFFFF00FF0000000000FF0000FFFFFF00FFFFFF0000FF0000FF00FFFF0000FF00),
    .INIT_3F(256'hFF0000FFFFFF00FF00000000000000FFFFFEFFFFFF00FF00FFFFFFFF00FFFFFF),
    .INIT_40(256'hFF0000FF00FF00FFFF00000000FFFF0000000000FFFFFFFFFFFFFFFFFF00FF01),
    .INIT_41(256'hFFFFFFFFFFFF00FF0000FFFF00FFFFFF000000FFFF000000FFFEFFFF00FE00FF),
    .INIT_42(256'h00FFFFFEFF00FFFFFFFF00FFFFFFFF0000FF00FF0000FF00FF00000000FFFFFF),
    .INIT_43(256'h00FF00FF00FFFF00FFFF00FEFF0000FF00FF00FFFFFF000000FF00FF00000000),
    .INIT_44(256'h00FFFFFFFFFF0000FFFFFFFF00FFFF00FFFF00FF00FF00FF00FFFF0000000000),
    .INIT_45(256'h0000FFFFFEFFFFFF000000FFFFFF00FFFFFF00FF0000FFFFFFFF00FF000000FF),
    .INIT_46(256'hFFFFFF0000FFFF00FF00FFFF0000FF00FF00FFFE0000000000FF00FFFFFF0000),
    .INIT_47(256'h00FF00FFFF00FF00FFFF00FF00FF0000FFFF00FF000000FF00FF000000010000),
    .INIT_48(256'hFFFF00FF000000FF00FFFF00FF0000000000000000FF00FF000000FF0000FF00),
    .INIT_49(256'hFF000000FF000000FF0000FFFF01FFFF0000FF00000000FF000000000000FFFF),
    .INIT_4A(256'h00FFFFFFFF00FF00FF00FFFF00FF01FF00FFFF000000FFFF00FF000100FF00FF),
    .INIT_4B(256'h0000FFFFFF000000FEFFFFFEFFFFFF00FFFF00FFFF00FF00FF00FF0000000000),
    .INIT_4C(256'h00FF00FF00FF0000FFFFFFFF000000000000FF000000FFFE0000FF00FFFFFF00),
    .INIT_4D(256'hFF000000FF0001FFFFFFFFFF00FFFF00FFFFFFFF00FFFF0000000000FF00FFFF),
    .INIT_4E(256'h0000FFFFFF00FF01FFFFFFFFFF00FEFF00FF0000FF00000000FF000000000000),
    .INIT_4F(256'h000000FFFF0000FF000000FFFFFFFFFFFFFF00FF0000FF000000000000000000),
    .INIT_50(256'h000000FF0000FF00FFFFFF00FFFFFF00FFFF00FFFF00000000000000FF000000),
    .INIT_51(256'h000000000000000000000000FF0000000000FFFF00FFFFFF00FFFF0000000000),
    .INIT_52(256'hFF00FF00FFFFFFFF0000FF000000FF0000FF0000FFFFFFFFFF00FFFFFF0000FF),
    .INIT_53(256'hFF00000000FF000100FF000000FF0000000000000000FFFFFF000000FFFF0000),
    .INIT_54(256'hFF000000FF0000000000FFFF0000FE00FEFEFFFFFFFFFF00FF000000FFFF0000),
    .INIT_55(256'hFFFF000000FFFFFF000000000000FF000000FF00FFFEFFFFFFFFFFFF0000FF00),
    .INIT_56(256'hFEFFFFFFFF00000000FF00000000FF00FFFFFF000000FF0000FFFFFFFFFFFFFF),
    .INIT_57(256'h00FFFF00FFFFFFFFFFFFFFFF0000FFFF00FF0000FFFFFFFF0000FFFF0000FFFF),
    .INIT_58(256'hFF00FF000000000000FFFFFFFF00000000FFFF00FF0000FFFF000000FF000000),
    .INIT_59(256'h00FFFFFFFFFFFFFF000000FFFF00FFFE00FFFF00FFFF0000FF0000FFFFFF00FF),
    .INIT_5A(256'h000000FFFFFFFF0000FF00000000FF00FFFFFFFF00FF00FFFFFF00FFFF00FFFF),
    .INIT_5B(256'h0000FF00FFFFFFFFFFFFFFFFFFFF00FF00FF00FFFFFFFFFFFF000000FEFFFF00),
    .INIT_5C(256'hFFFF000000000000FFFFFF00FFFFFFFF00FF0000FF00FF000000FFFF00FFFF00),
    .INIT_5D(256'hFFFFFFFFFF000000FF00FFFFFF0000FFFFFFFF00FF0000FF00FFFF00FFFF0000),
    .INIT_5E(256'hFF00000000FFFF00FF00FF00FF00FFFFFFFF0000FF0000FFFF00000000FFFF00),
    .INIT_5F(256'h00000000FF000000000000FFFF00000000FF0000FF000000FF0000000000FF00),
    .INIT_60(256'h000000FFFF00FFFFFFFF0000FFFFFFFF00FFFFFF00FFFF0000FF0000FFFF0000),
    .INIT_61(256'h0000000000FF0001FF00FFFF00FFFFFFFFFFFFFF00FFFF00FF0000FFFF00FFFF),
    .INIT_62(256'h0000FF00FFFFFF000000FF00FFFF00FF00FFFF00FF0000FF00FF00FFFFFF00FF),
    .INIT_63(256'h00FF0000FF0000FFFF000000010100FF00FF00FFFFFF00FF0000FF00FFFF0000),
    .INIT_64(256'h0000FF0000FFFF00FF00FFFFFFFFFF0000FF000000FF00000000FF00FFFFFF00),
    .INIT_65(256'hFF00FF0000FFFFFFFFFF0000FF00FF00FF00FF00FF00FF00FFFF00FFFFFF0000),
    .INIT_66(256'h0000000000000000000000FFFE00FF00FFFF0000FFFF00000001FF000000FFFF),
    .INIT_67(256'h00FFFFFFFFFFFF00FF00FFFF000000FF00FFFF00FF00FF00FF000000FFFFFF00),
    .INIT_68(256'hFF0000FF00FF00FFFFFF00FFFFFF00FF00000000FF00FFFF00FF0000FF000000),
    .INIT_69(256'h00000000FFFFFF00FFFF00FFFFFF00FF00FFFFFF00FFFFFFFFFF000000FFFF00),
    .INIT_6A(256'h0000FF00FF000000FF00FF00FFFF00FFFFFFFF000000FF00FFFF00FFFF00FF00),
    .INIT_6B(256'hFFFF000000FFFF00FFFFFF0000FFFFFF00FFFF0000FF00FF0000FFFFFFFFFF00),
    .INIT_6C(256'h0000FF0000000000FF00FFFF00FF0000FFFFFF00FF00FF00FF00FFFFFFFF0000),
    .INIT_6D(256'h0000FFFFFFFFFFFFFFFF00FF00FF00FF00FF00FFFF0000FF000000FF0000FFFF),
    .INIT_6E(256'hFF0000FFFFFFFFFFFF0000FFFFFF00FF000000FF0000FF00FF00FFFF00FF00FF),
    .INIT_6F(256'hFFFF00FF0000FFFF000000000000FF00FFFFFF000000FFFFFFFFFFFF00000000),
    .INIT_70(256'h0000FFFFFFFF00FF00FFFF00FF000000FFFFFF0000FF000000FF00FFFF00FF00),
    .INIT_71(256'hFF000000FF00000000FFFFFF0000FF00010000FF0000FF00FFFFFFFFFF00FF00),
    .INIT_72(256'h00FF00FF0000FF0000FFFF000000FF0000FFFFFFFF00FE00000000FF00FF00FF),
    .INIT_73(256'h00000000FF000000FF00FFFFFF0000FF0000FFFFFFFF00FFFFFF00FF00000000),
    .INIT_74(256'h00FFFFFFFF00000000FF000000000000FFFFFF00000000FFFFFF0000FFFFFF00),
    .INIT_75(256'hFFFFFFFF00FFFF0000000000FF0000FFFF00FF00FFFF0000FFFF00FF0000FFFF),
    .INIT_76(256'h0100FFFF000000FFFFFF0000FFFFFF00FF00FF000000FFFF0000FFFF0000FF00),
    .INIT_77(256'hFFFFFEFFFF00FFFF0000FF00000000FF0000000000FFFFFE0000FFFFFF0000FF),
    .INIT_78(256'hFFFFFF000000FF00FFFFFF00000000FFFF0000FFFF00000000000000FFFFFF00),
    .INIT_79(256'hFF00FF00FF0000FE00FF0000FF00FFFFFFFFFF00FF00FF0000FF00FFFF00FF00),
    .INIT_7A(256'h00FFFFFF0000FF00FFFF00000000FFFF0000FFFFFF00FF0000FFFFFF00FF0000),
    .INIT_7B(256'hFFFF00FFFF00FF00FF00FF00FFFFFFFFFFFF00FF00FFFF000000000000FFFFFF),
    .INIT_7C(256'h000000FF0000FF00FF000000FF00FFFEFFFF00000000FF0000FF00FF00FFFFFF),
    .INIT_7D(256'hFFFFFF00000000FFFF00FFFF000000FFFF00FF00FF0000000000FFFF0000FFFF),
    .INIT_7E(256'h00FFFF0000FFFF00FF00FFFFFFFFFFFFFFFF00000000FF00FF0000000000FF00),
    .INIT_7F(256'h0000FF01FF00FFFFFFFFFF0000000000FFFFFF00FFFF00FF0000FF00FF00FFFF),
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
module weight1_bram_1_blk_mem_gen_prim_wrapper_init__parameterized4
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
    .INITP_00(256'h83457F0FB82B805856D42042CB0C09E460181200C0744F73D18A9FFF2C9BBFF5),
    .INITP_01(256'h15177004B4FED470047689FCA5010C818A50C48F05B79C1AFE1DD22EF5271CE6),
    .INITP_02(256'h03A33F00772FC80253DDF06221830B351CB2AB195B16E41710D48C0027FE038C),
    .INITP_03(256'hE333CFCEC7B8E0FFFC0D97FFAF001FFB9B07FF4BE8047B72008E027002855DC0),
    .INITP_04(256'h5683C88279413000A10A2400123100DC0A3E15D03BD1FC00DAE525C943D271D5),
    .INITP_05(256'h8BB27B79B683360F293670F68E2146C0196F89D829E00E43BA2104FFCFE75C87),
    .INITP_06(256'hD94E6138005021400AE0FAC809155CBD8BA6E3FC7592321CDB1466B2DA6B05D8),
    .INITP_07(256'h8F9C18B032B760A5CB72C22905C6BE51D18D247DEB8387A606917DD5804FA881),
    .INITP_08(256'hCDC83731E4AD5017B3C6A089039FDF25E56E955D6361AFA7D7DF8B8CAEC47488),
    .INITP_09(256'hC048D8A80A2098003A440B0CB80111DA40BE01DB0A4935F506D713BB12DAD8C4),
    .INITP_0A(256'h4F609E8BEE8163F5F4A8CE25F922E6E8222C8EEB4178A0F00FD71DE4D39200DD),
    .INITP_0B(256'h2385B840C87551C5107B1EC3F7F320F86CF4803D8C8023A6950625FD06737589),
    .INITP_0C(256'hCB9049C7F18429BFC5FBFE8F05F3FDB0E987A3FE48381FD155EBE52E41D9D1F0),
    .INITP_0D(256'h74003A7E800738B02284801423ECB48517113804F2BF5202015840D310A028E9),
    .INITP_0E(256'h2C2647DFDCA67D402C4AC62C3F46899E5F3BAED47ACA87A5701C36A3F102BCCE),
    .INITP_0F(256'h0FAE275F20A1F648D937A7EF017F356138E7970368BD647BFF81326DBAC840C0),
    .INIT_00(256'h0000FF00FFFF0000FF0000FFFF00FFFFFF00FFFFFFFFFFFFFFFFFFFF00FF00FF),
    .INIT_01(256'hFFFF00FF000000FFFF000000FF00FF00FF0000FFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_02(256'hFFFF00000000000000FFFFFF00FF000000FF0000FFFFFFFF00FFFFFF0000FFFF),
    .INIT_03(256'h00FFFF0000000000000000FFFF010000000000FF0000FF000000000000000000),
    .INIT_04(256'hFFFF0000FF00FFFF01000000FFFF000000000000FF0000FFFFFFFF0000FF0000),
    .INIT_05(256'h00FF00FF00FFFF00FFFF00FF00FF00000000FF000000000000FF00000000FF00),
    .INIT_06(256'hFF00FFFEFF0000000000FF00FF00FFFFFF0000000000000000FF00FFFF000000),
    .INIT_07(256'hFF0000000000FFFF00FF000000FF00FF00FFFFFFFEFFFFFE00000000FFFFFFFF),
    .INIT_08(256'hFFFFFFFF00FF00FF0000FF0000FFFFFF000000FFFFFF0000FFFFFE0000FFFF00),
    .INIT_09(256'hFFFFFFFFFFFFFF00000000FFFFFF00FFFFFF00FF0000FF000000FF00FEFFFF00),
    .INIT_0A(256'h0000000000FE00FFFF00FFFF00FFFFFFFF0000FFFFFF0000000000FFFF00FF00),
    .INIT_0B(256'hFF000000FF00FF0000FF00FF00000000FFFF000000FF0000FF000000FFFFFFFF),
    .INIT_0C(256'hFF00FF0000FF00FF00000000000000FF00000000FFFF0000FF000000000000FF),
    .INIT_0D(256'h0000000000FF000000FFFFFF00FFFF00FF000000FF0000FFFFFFFFFFFFFF0000),
    .INIT_0E(256'hFF00FFFF00FF0000FFFFFFFFFFFFFF00FFFF00FF00FF000000FFFFFF00000000),
    .INIT_0F(256'h000000FF00FF00FF000000FF00FFFFFF00FFFFFF000000000000000000FF0000),
    .INIT_10(256'h0000FF0000FFFFFFFFFFFFFFFFFFFF00000000000000FFFFFF000000FFFF0000),
    .INIT_11(256'h000000FF00000000FFFF00FF00FF0000FF000000FFFF00000000000000000000),
    .INIT_12(256'h00FF00FFFF00FFFF000000FF00FFFF00FFFFFF0000FF0000000000FF00FFFFFF),
    .INIT_13(256'h000000FFFFFF0000FF00FFFF0000FF00FF00FF00FF00FFFF010001FFFF0000FF),
    .INIT_14(256'h0000FF00000000FFFF0000000000FFFF00000000FF00FEFF0000FFFF00FF00FF),
    .INIT_15(256'h00FF00FF0000FFFFFFFF00FFFFFF00FFFFFFFFFF0000000000FFFF000000FF00),
    .INIT_16(256'h00FFFFFF00FFFFFF0000FF00FFFFFFFFFFFF0000FF000000000000000000FF00),
    .INIT_17(256'h010000010000FFFFFF00FF000000FFFF0000FFFFFFFFFFFF0000000000010100),
    .INIT_18(256'h000000000100FF00FF00000000FF00FF00FF01FFFFFF00FEFFFF000000000101),
    .INIT_19(256'h0000010000010101FF000000FFFFFF00000000000000FF0000FFFFFF00000001),
    .INIT_1A(256'hFFFFFF00FF0000010000000000FF000000FEFFFFFF00FFFF00FFFFFF0000FF00),
    .INIT_1B(256'hFE0000FFFF00FFFF0001000100FFFFFFFEFFFFFFFFFFFFFF00FF0000FF00FFFF),
    .INIT_1C(256'hFF00FF00FFFFFFFF0100000001000100000000FFFEFFFEFEFFFEFFFFFF00FFFF),
    .INIT_1D(256'hFFFFFFFFFFFF000000000000FFFF00FFFF0000FF00FFFEFFFEFEFEFEFEFFFEFE),
    .INIT_1E(256'hFFFF000000FFFFFFFF00FFFFFF000000FFFFFF0000000000FFFEFFFFFFFFFFFF),
    .INIT_1F(256'hFFFFFF000000FFFF0000FFFF0000FFFFFFFF0000FFFFFFFFFFFF0000FFFFFE00),
    .INIT_20(256'h00FF00000000FFFFFFFF00FF0000FF0000FFFFFF000000FFFFFF00FF00FF00FF),
    .INIT_21(256'hFFFF00FFFF00FF00FFFFFF0000FF00FF0000FF0000FF00FFFFFF0000FF0000FF),
    .INIT_22(256'h0000FFFFFF00FFFFFFFF00FF000000FFFFFFFFFFFFFF00000000000000000000),
    .INIT_23(256'h00000000FF00FF010100FFFFFFFFFF00000000FF00FF00FFFFFF00FF01000000),
    .INIT_24(256'h000000FF0000FF000000FFFF000000FF0000000000010000FFFF00FFFFFF0000),
    .INIT_25(256'hFF00FF00000000FF00000100FF00FF000000FF0000FF00000001000000000000),
    .INIT_26(256'h00FFFFFFFF0000FF00FF0000000000FF0000FFFF000000000001010000000000),
    .INIT_27(256'h00FF00FF00FFFF00FF0000000000FFFFFFFF0000FF000000FF0000000000FF00),
    .INIT_28(256'hFFFF0100FFFFFFFFFFFFFF0000FFFFFF00FF00FFFFFF0100FF00000000FFFFFF),
    .INIT_29(256'hFF00FFFFFF00FF000000FF00000000FF0000000000FE0000FFFFFFFFFFFFFFFF),
    .INIT_2A(256'h0000FF00FF0000FFFFFFFF000000000000000000FFFFFF0000FF00000000FFFF),
    .INIT_2B(256'h000000FFFF0000FF00FFFF00FFFFFFFFFF000000FF0000FFFFFF00FFFF000000),
    .INIT_2C(256'hFF000000FFFFFF000000FF00000000FF00FF000000FFFF00FFFF000000000000),
    .INIT_2D(256'h0000FF00FF0000FF0100FFFD00FFFF0000FFFFFF00000000FFFFFFFF00FFFF00),
    .INIT_2E(256'hFF00FFFF00FFFF00FF0000000000FFFF0000FFFF00FFFF0000000000FFFFFFFF),
    .INIT_2F(256'hFF000000FF00FFFFFF00FFFF0000FF0000FFFFFFFF00FFFF00FFFFFFFF0000FF),
    .INIT_30(256'hFFFF00FFFF00FF0000FFFF00FF00FFFF0000000000FF00FFFFFF00FFFF000000),
    .INIT_31(256'hFFFF00FFFF00FFFF000000FF00FF000000FFFF0000FFFF00FF00FFFF0000FF00),
    .INIT_32(256'h00FFFFFF00FF00FFFF0000FF0000FF000000FFFF0000FF00000000FFFFFF0000),
    .INIT_33(256'hFF000000FF00FFFFFF00FF0000FFFE00FFFFFF000000FFFFFFFFFFFFFFFF0000),
    .INIT_34(256'h00000000FF0000FF000000FF00FF00FF00FF00FFFFFF0000FF00FFFFFFFF00FF),
    .INIT_35(256'h00000000FF00FF00FFFFFF0000000000FFFFFFFFFF00FF00FFFF0000FF000000),
    .INIT_36(256'h000000000000000000FF00FF000000000000FF00000000FF00FF000000000000),
    .INIT_37(256'hFFFF00FFFF0000FF00FF0000FFFFFF0000FEFF00000000FF0000FFFFFF000000),
    .INIT_38(256'hFF0000000000000000FF0000FFFFFFFFFE00FF00FF000001FF000100000000FF),
    .INIT_39(256'h0000000000FFFF00FF0000FF000100FF00FFFFFFFFFF00FFFFFF00FF01FF00FF),
    .INIT_3A(256'hFFFFFF00FF00FFFFFF0000000000FFFFFF00000000FFFFFFFF00FF0000FFFF00),
    .INIT_3B(256'hFFFF00FF000000FFFF000000FFFF00FF0000FF0000FF000000FFFFFFFFFF01FF),
    .INIT_3C(256'h0000000000FF00FFFFFF000000FFFF00FF00FFFFFFFFFF0000FF00FF000000FF),
    .INIT_3D(256'hFFFF0000FF00FFFF00FFFFFF0000FF00FFFF00000000FF000000FF00FF0000FF),
    .INIT_3E(256'h0000FFFF0000FF00FF00FFFF00FFFFFF00FFFF0000000000FF01FF0000FF00FF),
    .INIT_3F(256'hFF000000FFFFFFFFFF0000FFFFFF0000000000FFFF000000FF00FFFF00000000),
    .INIT_40(256'hFF00FF00FFFFFF00FFFF000000FF000000FFFFFF00FF0000FF000100FF000000),
    .INIT_41(256'hFFFF00FF00FFFFFFFFFF00FFFFFFFFFFFF000000FF00FFFFFF000000FFFF0000),
    .INIT_42(256'h00FFFF000000FFFF00FFFF00000000FFFE00FF00FFFFFFFFFF00FF0000FFFFFF),
    .INIT_43(256'hFFFFFF0000FF00FF00FFFE00FFFFFF00FF0000FF00FF00FF00FF00FFFFFE00FF),
    .INIT_44(256'h000000000100FFFFFF0000FFFFFFFFFFFFFF00FFFFFFFFFF0000FF0000FF00FF),
    .INIT_45(256'hFF00FFFF0000FFFFFFFF000000FFFF00FF00FF0000000000FF000000FF0000FF),
    .INIT_46(256'hFFFFFF0000FF0000FF00FF00FFFF01FF00FF00FF00000000000000FF00FFFFFF),
    .INIT_47(256'hFFFF0000FFFF00FFFFFF0000FF0000000000FFFF00FFFFFF0000FFFF000000FF),
    .INIT_48(256'h000000FF0000FF00FFFF00FFFF00FF00FFFF00FFFF000000FFFF000000FF0000),
    .INIT_49(256'h0000000000FFFF00FFFF00FF00FFFFFF000000FF0000FFFFFE00FFFFFF00FFFF),
    .INIT_4A(256'h00000000FF00FF0000FF0000FF0000FF0000FFFF00FF00FFFFFFFFFF00FF00FF),
    .INIT_4B(256'h00FF000000000000FF00FFFFFFFFFF0000000000000000FFFFFF00FFFF00FFFF),
    .INIT_4C(256'hFF00FFFFFF00000000000000000000FF000000FF000000FFFFFF00FFFF00FF00),
    .INIT_4D(256'h0000FFFFFF00FF0000FF010100FF000000000000FF00FFFF00000000FFFF0000),
    .INIT_4E(256'h00000000FF00FF000000FF0000000000FF0000FFFF0000000000000000000100),
    .INIT_4F(256'hFFFF00000000000000FF0000FF000000FFFF00FFFF000000FF00FF00FF000000),
    .INIT_50(256'hFFFF00FF0000FFFFFF0000FF0000FF000000000000000000FFFF00FFFFFF00FF),
    .INIT_51(256'h00000000FFFFFFFEFFFF00FF00FFFFFF000000FFFFFF00FFFFFFFF0000FF0000),
    .INIT_52(256'h00FF0000000000FF00FFFFFFFF000000FF00FF0000000000FEFFFFFF00000000),
    .INIT_53(256'h0000FF000000FF000000FF00FFFE0000FF000000FFFFFF00FFFFFF00FF00FFFF),
    .INIT_54(256'hFFFFFFFFFF0000FF0000FF000000FF00FFFFFF0000FFFF00FFFFFF00FF000000),
    .INIT_55(256'hFFFFFFFF00FF0000FF00FF00FF000000FFFF0000FFFFFF000000FF0000FF00FF),
    .INIT_56(256'hFFFFFF00FFFFFF00FF000000000000FF00FFFF000000FFFFFFFFFFFF00FF00FF),
    .INIT_57(256'h00FF0000FFFFFFFF00FFFF0000000000FF0000FFFFFFFF00FF000000FF00FFFF),
    .INIT_58(256'h0000000001FFFF0000FFFFFF0000FFFF00FFFFFF00FF00FFFF000000FF0000FF),
    .INIT_59(256'hFF0000FF00FF00FF0000000000FFFF000000FF0000FF00FFFFFFFFFFFFFF00FF),
    .INIT_5A(256'hFF000000FFFF0000FF000000000000000000FF000000FFFFFF00FF0000FFFF00),
    .INIT_5B(256'h01FFFF00FFFF0000FFFFFFFF00FF0000FF000000000000000000FFFFFFFF00FF),
    .INIT_5C(256'hFFFFFFFF00FFFEFFFFFFFFFF0000FFFF0000FF0000000000FFFFFFFFFF000000),
    .INIT_5D(256'h000000FF0000000000FFFFFFFE00FFFF000000FFFFFFFF00FFFF00000000FFFF),
    .INIT_5E(256'hFFFF0000FF00000000FFFFFF00FF00FF00FF00FF000000FFFFFF000000FF00FF),
    .INIT_5F(256'h0000FF000000FFFFFF00000001FF00FFFF00FFFFFF00000000FF000000000000),
    .INIT_60(256'h00FF0100000000FFFFFF00FFFF0000FFFFFF00FF000000FFFFFFFFFF00000000),
    .INIT_61(256'h00FF00FF00FF00FFFFFFFF00FF00FFFFFFFFFF0000FF00FF0000FF00FFFFFF00),
    .INIT_62(256'h00FF0000FF0000000000FFFFFF000000000000FFFFFFFFFFFFFF00FF000000FF),
    .INIT_63(256'hFFFEFF00FF0000FFFF00000000FFFFFFFF00FF000000FFFFFFFFFFFFFFFFFF00),
    .INIT_64(256'h0000000000FF00FFFFFFFFFF0000FFFFFFFFFFFFFFFE00FFFF00FFFF00000000),
    .INIT_65(256'hFFFF000000FF00FFFFFFFFFFFF00FFFFFFFFFFFFFFFFFF00FF000000FFFFFFFF),
    .INIT_66(256'hFFFFFFFF000000FFFF00000000FF00000000FF00FF0000FFFF00FFFFFFFFFFFF),
    .INIT_67(256'hFFFF0000FF00FFFFFF0000FF0100000000FF0001FF0000FFFFFF000000FEFFFF),
    .INIT_68(256'h000000FF00000000FF00FF01000000000001FF00FF000000FFFFFF00FF0000FF),
    .INIT_69(256'h00000000000000FF00FF00FFFF00000000FF000000000001FFFF00FF0000FFFF),
    .INIT_6A(256'hFFFFFFFF0000FF00FF00FFFFFEFFFFFE00FF00FF0000FF00000000000000FF00),
    .INIT_6B(256'h000000FF00FFFFFF000000FF000000FF0000FFFFFF0000000000000000FF0000),
    .INIT_6C(256'h0000FF000000FFFFFFFEFF01FFFF0000FF00FFFF00FF0000FF00000000FF00FF),
    .INIT_6D(256'h0000FF000000FF00FF00000000FF0000FF00000000000000000000FF00FF0000),
    .INIT_6E(256'hFF000000000000000000000000FFFFFF0000FFFFFF000000FF00FEFF00010000),
    .INIT_6F(256'h00FFFFFF00FF000000000000010000000000FFFFFF00FF0000FFFFFFFFFEFF00),
    .INIT_70(256'hFFFFFFFF000000FF000000000000FF00FF00FFFFFFFF0000FFFF0000FFFFFF00),
    .INIT_71(256'h00FFFFFF00000000000000FFFFFF00000000FFFF00FFFF00FF00FF000000FFFF),
    .INIT_72(256'h00FFFFFFFF00FF00FFFF0000FF00FF00FF00000000FFFFFFFE00FF0000FF00FF),
    .INIT_73(256'h00FF00FFFFFFFFFF0000FFFFFF00FFFFFF00FF00FFFFFF00FFFF00FF00FF0000),
    .INIT_74(256'h0000FFFFFFFFFFFF00FF000000FFFF00FF000000FF0000FFFF0000FFFFFFFF00),
    .INIT_75(256'h0000FF00FFFF000000FF0000FF00FF00FFFF000000FFFF000000FF00FFFF0100),
    .INIT_76(256'hFFFF00FFFFFF0000FF00FF0000FEFF0000FFFFFFFFFF00FF00FF000000000000),
    .INIT_77(256'h0000FF00FFFF00000000FF0000FFFF0000FF000000FFFFFFFFFF00FFFFFFFFFF),
    .INIT_78(256'hFF00FFFFFF00FF00FFFF0000FF00000000FF000001000000FFFF000001000000),
    .INIT_79(256'hFFFFFFFFFFFFFFFFFF000000000000FF0000FFFF0000FF0000FFFF00FFFF00FF),
    .INIT_7A(256'h00FFFF00FF000000FF00FFFFFFFF00FF00FFFF0000FF000000FFFFFFFF00FFFF),
    .INIT_7B(256'h0000FFFFFF000000FFFFFF0000FFFFFFFF0000FF00FFFFFF000000000000FFFF),
    .INIT_7C(256'h00000000000000FF00FFFFFFFFFFFFFF0000FFFF00FF00FF00FFFF00000000FF),
    .INIT_7D(256'hFFFF00FFFF0000FF0000FFFF00FFFFFFFF00FF0000FFFFFFFFFFFF00FFFFFFFF),
    .INIT_7E(256'h0000FF0000000000FF01FF00000000FEFFFFFFFF00FFFF0000FF0000FF000000),
    .INIT_7F(256'h00000000FFFFFFFFFF00FF00FFFFFF000000FF0000FFFEFF00FF00FFFFFFFFFF),
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
module weight1_bram_1_blk_mem_gen_prim_wrapper_init__parameterized5
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
    .INITP_00(256'hC3CF5B7F07BB0DFFB4A2FA3BAD06FC088D09BBE40A1CD3971DC7D391AFB5F21A),
    .INITP_01(256'hBF0747E33BC82D562BE1C1772343C28A45E8E5531371561D1A9473ADE3BABF0D),
    .INITP_02(256'h77B43B87EF2DF7ADF0BBADBD762BFFB7E1CCF07898BE769D0809CB20685A0AAE),
    .INITP_03(256'h2004652048C020024054801002128002BD00981500CB00745EE9B67F9EB1FF6A),
    .INITP_04(256'h07A627FEC266264EA45B46F7EB8607BFC6D7FD6635CDFFCE7DCFBFE05BD5F800),
    .INITP_05(256'h66AB663637C57A84CF841A8DDCB02573FE1175C6B584EDE23BEBCD02E34C00B8),
    .INITP_06(256'h9B5F2876247C7F9A1D0563CF36427C9FDB644F3C6D292E3B989C7C548AF356B5),
    .INITP_07(256'h91A93723B047D9E01C37FF407FE108E61EBC07A26F1E322AD648CCEC5173F5DB),
    .INITP_08(256'hDAE9B803F1A04943EA00428BFF1A8D08E8130E2A0042166BC3777F692D9C6A0A),
    .INITP_09(256'h1B9257E26147C25EAC5CF2BD393C6D7AFB1F7AEC1FFFD8466FBEA1D1FA2DF40F),
    .INITP_0A(256'h055E14996B9F45A57194EA4C02B8081765C6B2B22FEC076D5B40CA178877A9AA),
    .INITP_0B(256'hDD54CF8C673F9B0C9F05A98690B9101518710B9D0A3EA607EF878BC676E08004),
    .INITP_0C(256'hF61FF2765EFD4CD7E7FC00383F75DE817E9F4826D5FC009FD9881FDC37021FEC),
    .INITP_0D(256'hBFF5D6B560FA26DA9DB59D1E7932BFF0B15DBF42CBDEE0656DC80601BFA7FD20),
    .INITP_0E(256'h56FFEC0067FFA039FF712F7BDFE0A0B866429981125988296B249CA23AA77C99),
    .INITP_0F(256'hF69A1087D4E90F1B3C01FAC80A3F4E100748D2003140F807337CA510056AFE83),
    .INIT_00(256'hFF00FF00FFFFFFFFFF00FFFF00FF00FFFFFEFFFF0000FF00000000FFFF00FF00),
    .INIT_01(256'h000000FFFFFF00FFFFFF000000FFFFFFFFFF00FF0000FEFFFF0000FF000000FF),
    .INIT_02(256'h00000000FF00FF00000000FFFFFF0000FFFF00FF0000FFFFFF0000FF00FFFFFF),
    .INIT_03(256'hFF000000FFFF00FF00000000FF0000FFFF00FFFFFF00FFFFFFFFFF0000FF0000),
    .INIT_04(256'hFF00FF00FFFF00FF0000010000FFFF00FFFFFFFFFFFF000000000000FF000000),
    .INIT_05(256'hFF00FFFF00FF0000FF00FF000000FF00FFFFFFFFFF00FF000000FFFFFF00FFFF),
    .INIT_06(256'h0000000000FFFFFFFF00FFFFFF00FFFF00000000FFFF00FFFFFFFFFFFFFFFFFF),
    .INIT_07(256'hFFFF00000000FFFFFFFF0000FFFFFFFE00FF00FFFF01FFFF00FFFFFFFFFFFFFE),
    .INIT_08(256'hFFFFFF000000FFFFFF00FFFFFF00FF00FF00FFFFFFFEFFFF00000000FFFF00FF),
    .INIT_09(256'h000001FFFF00FF00FF0000FF00FF000000FFFFFF0000FFFFFF00FF00FFFF00FF),
    .INIT_0A(256'h000000FF0000FFFF00FFFFFF000000FF00FF00FF00FFFF00000000FFFFFF00FF),
    .INIT_0B(256'h00FF000000FF00FFFFFFFF00FF000000FFFFFF0000FF00FF00FF00FF0000FFFF),
    .INIT_0C(256'h0000FF000000FFFF00FF00000000FFFFFFFF00000000FF00FF000000FF00FF00),
    .INIT_0D(256'h0000FF00FF00FFFFFFFFFF00000000FFFFFF0000000000FF00FFFFFF00FFFFFF),
    .INIT_0E(256'h0000FFFFFF00FFFFFFFF0000FF0000000000FF00FFFF00FF00FF00FF00FFFF00),
    .INIT_0F(256'hFF00FFFFFFFFFFFF0000000000FFFFFF00FF000000FFFFFFFFFFFF000000FFFF),
    .INIT_10(256'h00FFFF00FF00010000FF00FFFF00FF0000000000FF00FF00FF00FF00FFFFFF00),
    .INIT_11(256'h00000000FF00000000000000FF0000FFFFFF0000FF00FFFF0000FF0000000000),
    .INIT_12(256'hFF0000FFFF010000FF00FFFFFFFEFF0000FFFFFF00FFFE00FF0000FFFFFF00FF),
    .INIT_13(256'hFFFFFF00000000FFFFFF0000FFFF0000FFFFFFFF0000000000FFFFFEFF000000),
    .INIT_14(256'h00FFFFFF00FFFF000000FF00FF00FFFFFFFFFFFFFFFFFFFEFF00FFFF00FFFFFF),
    .INIT_15(256'hFFFFFFFF00000000FF00FFFFFF00FFFFFF00FF00FFFF00FFFF00FFFEFFFF00FF),
    .INIT_16(256'hFFFFFF00FFFFFFFF0000FF00FFFF00FFFFFFFFFF00FFFFFFFF00FF00FFFF00FE),
    .INIT_17(256'h00FFFFFF00FFFFFFFF00FFFF00FF00010000FFFFFF00FFFFFF00000000FFFFFF),
    .INIT_18(256'hFF0000FEFFFFFF00FF00FFFF000000FFFFFFFFFFFFFFFFFF00FFFF00FF00FF00),
    .INIT_19(256'h00FF00FFFFFFFF00FFFFFE00FF0000FFFF00FFFF00FFFF0000FFFFFFFFFFFFFF),
    .INIT_1A(256'h0000000000000000FFFF0000FF00FFFF000000000100000000FFFFFF00FF0000),
    .INIT_1B(256'hFF00FFFFFFFF00FF0000000000000100FF0000FFFF000000000000FF00FF00FF),
    .INIT_1C(256'h000000000000FF00000000FF0000FF00FF00000001000000000001000000FF00),
    .INIT_1D(256'h00FF00000000000000FF00FF00FF0000FF00000000000100010000FF00010000),
    .INIT_1E(256'h00FF0000FF000000FFFF0000000000000000FF0100000000000000000100FF00),
    .INIT_1F(256'h0000FF00000000000000000000FF000000FFFF0000FF00FF0000FF0000000000),
    .INIT_20(256'h00FF00FFFF00FFFFFFFF00FF00FF00FFFFFFFFFFFF0000000000000000000000),
    .INIT_21(256'h00FFFFFFFFFF00FFFFFF0000FFFFFEFFFE00FFFFFFFFFFFFFFFFFF0000000000),
    .INIT_22(256'h0000FFFE00FF00FFFFFF0000FFFF00FEFFFFFFFFFFFFFFFFFFFF0000FFFFFF00),
    .INIT_23(256'hFFFF000000FFFF00FFFF00FF00FFFFFFFFFFFFFFFFFF00FF00FFFF0000FFFF00),
    .INIT_24(256'hFFFFFF00FF00FFFFFF00000000FFFF000000000000FFFFFFFF00FFFFFFFEFFFF),
    .INIT_25(256'hFF00FF0000FF000000FF00FFFF00FFFF00FF000000FFFF00FFFFFFFF00FFFFFF),
    .INIT_26(256'hFFFF00000000FF0000FFFF0000FFFF000000FF0000FFFF0000FF0000FFFFFF00),
    .INIT_27(256'h0000000000FFFFFFFF00FF0000FFFF000000FF0000FFFFFFFFFFFFFFFFFFFF00),
    .INIT_28(256'hFFFFFF000000FFFF00FF0000FFFF00000000000000000000FF00FFFFFF000000),
    .INIT_29(256'h0000FFFFFF00FFFFFFFFFF00FF00FFFFFFFF0000FFFF00FF000000000000FF00),
    .INIT_2A(256'hFF00FFFF00FF00FFFF00000000FF0000FFFFFF00FFFF00FFFFFFFF000000FF00),
    .INIT_2B(256'hFFFFFFFFFFFFFF00000000FF010000FF00FFFFFF00FF00FFFFFF000000FFFF00),
    .INIT_2C(256'hFFFE00FFFFFF0000FF00FFFF000000000000FF0000FF00FF00FFFFFF0000FFFF),
    .INIT_2D(256'hFFFF0000FFFFFFFFFF00000000FF0000000000FFFF00FF00FF000000FFFF00FF),
    .INIT_2E(256'h0000FFFF00FFFFFFFFFF000000FF00FF00FFFFFFFF00FF00FF00000000FF0000),
    .INIT_2F(256'h00FFFF0000FFFF00FF00FF00FF00FFFF00FFFF0000FFFF000000FFFF00FFFF00),
    .INIT_30(256'hFF000000FF00FF00FFFFFFFF0000FFFF00FF00FF00FFFF00FF00FFFF00FF00FF),
    .INIT_31(256'hFF0000FFFF000000FF0000FFFFFF000000FFFFFFFFFF000000FF00FF00FF0000),
    .INIT_32(256'h00FFFF00FFFF00FF0000FF00FF0000FF0000FF00FFFFFF000000FEFFFF00FFFF),
    .INIT_33(256'hFFFF00FFFF00FFFF00FFFF0000FF000000FF0000FFFFFFFF0000FEFFFFFF0000),
    .INIT_34(256'h0000FFFF00FFFF0100FF00000000FF0000FFFFFFFFFF0000FF0000FFFFFFFFFF),
    .INIT_35(256'h000000FFFFFF00FF0000000100FF00FF00FFFF000000FFFFFFFF0000FFFFFFFF),
    .INIT_36(256'h0000FF0000FF000000FFFFFFFFFF000000FFFFFFFFFFFFFFFF0000FFFF00FF00),
    .INIT_37(256'hFF0000FFFF00FFFF00FF00FFFFFFFFFF0000FF00FF00000000FFFFFF00FFFF00),
    .INIT_38(256'h00FF00FF000000FF00FFFFFF0000FFFFFFFFFFFF00FF00FFFFFF00FFFF00FFFF),
    .INIT_39(256'hFFFF00FF00FFFF0000FF0000FF000000FFFF0000FFFF0000FFFFFF00FFFF0000),
    .INIT_3A(256'h00FFFF00FFFFFEFF000000FFFFFFFF000000FFFF0000FF000000FF00FF01FF00),
    .INIT_3B(256'h000000FFFFFFFF00FF00FFFFFFFF00000000000001FFFFFFFF00FF000000FF00),
    .INIT_3C(256'h00FFFFFFFFFFFFFFFFFFFF00000000FF00000000FF000000FFFFFF0000FFFF00),
    .INIT_3D(256'h000000FFFFFF00000000FFFF00FFFFFFFFFFFFFFFFFFFFFF00FF000000000000),
    .INIT_3E(256'hFF00FFFF0000000000FF000000FFFFFFFFFF00FFFF0000FFFFFFFF0000000000),
    .INIT_3F(256'hFF0000FF000000FFFF00FF00FF0000FF0000FFFF00FFFFFF0000FF000000FFFF),
    .INIT_40(256'h0000FF00FFFF00FFFF0000FFFFFF000000FFFF00FF00FF0000000000FF00FF00),
    .INIT_41(256'hFFFF00000000FFFF00FFFFFF00FFFFFF00FFFFFFFFFFFFFF00FFFF00FF0000FF),
    .INIT_42(256'h000000000000000000FF00000000FF00000000FF00FEFF0000FFFF00FF00FFFF),
    .INIT_43(256'hFFFFFF00FF000000000000FF0000FFFF00010000FFFFFF000000FF00FF00FF00),
    .INIT_44(256'hFFFFFFFFFFFFFFFF000000FFFF00FF00FF000000FFFF00FF00000000FF000000),
    .INIT_45(256'hFFFFFF00FF00FF00000000000000000000FF00000000FF00FF000000FF00FFFF),
    .INIT_46(256'hFFFFFFFF000000FFFF00FF000000000000FF0000FF0000FF00FF00000000FFFF),
    .INIT_47(256'hFFFF00FFFF00FF00FFFFFF00FF0000FFFF00FFFFFF000000000000000000FFFF),
    .INIT_48(256'hFFFFFFFFFF00FF000000FF00FFFF00FFFFFFFFFF00FF000000000000FFFFFFFF),
    .INIT_49(256'h00FFFF00FFFFFEFEFF00FFFFFFFFFF00FF00FF00000000FFFFFF00FF000000FF),
    .INIT_4A(256'h000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFF00000000FF000000FFFF00),
    .INIT_4B(256'hFFFFFFFFFF00FFFF000000FFFFFFFFFF00FFFDFFFF00FF00FFFFFF00FFFF0000),
    .INIT_4C(256'h0000FFFFFF0000FF0000FFFFFFFF000100FFFF00FFFF00FF00FFFFFFFF00FF00),
    .INIT_4D(256'hFF00FF00FFFF000000FF00FFFFFF0000FFFFFFFF0000FF00FF00FFFFFFFF00FF),
    .INIT_4E(256'h00FFFF00000000FF00FF000000FFFFFEFFFF00000000FF0000FF00FFFFFFFF00),
    .INIT_4F(256'h000000FFFF00FFFFFF0000FF0000FF0000FF00FF00FFFFFFFFFFFF000000FE00),
    .INIT_50(256'hFF000000FF00000000FFFFFF00FFFFFFFF00FF00FF0000FFFF00FF00FF00FF00),
    .INIT_51(256'h00FF00FFFF00FFFF00FF000000000000FFFF0001FF00FF00000000FF00FFFFFF),
    .INIT_52(256'h0000FF00FFFFFFFFFFFFFF00FFFF00000000000000FFFFFF00FFFF01FFFF00FF),
    .INIT_53(256'h00FFFF0000FF00FFFFFF000000FFFF00FF00FFFF0000FF00FF00FFFF0000FF00),
    .INIT_54(256'h000000000000FF00FF00FFFFFF00000000000000FF000100000000FF00FFFFFF),
    .INIT_55(256'h00FFFFFF000000FFFF0000FF00FF0000FFFFFF00FF00FF0000FF0000FFFF0000),
    .INIT_56(256'h00FFFF00FF00FFFFFF0000FFFFFFFFFF00FF000000FF00FFFF00FF0000FF00FF),
    .INIT_57(256'h0000000000FF00FF00FF00FFFFFFFF00000000FF00FF0000FF0000FFFF0000FF),
    .INIT_58(256'h00FFFFFF00FFFF00FFFFFF0000000000FF000100000000000000000000FE0000),
    .INIT_59(256'hFFFFFF00FFFFFFFFFF00000000FFFFFFFF000000FF00FFFFFFFF000000FFFF00),
    .INIT_5A(256'h00000000FF00FF000000FFFFFFFFFF00FF00FF0000FFFF000000000000FFFFFF),
    .INIT_5B(256'h000000FFFF00000000FFFFFF000000FF00000000FF00FFFFFF0000FFFFFF00FF),
    .INIT_5C(256'hFF0000FF00000000FF00FFFFFF0000FF000000FF00000000000000FF00FF00FF),
    .INIT_5D(256'hFF0000FFFFFFFFFF0000000000FF00FFFF00FF00FF0000FFFF00010000FFFF00),
    .INIT_5E(256'h00FFFF0000FFFFFF0000FFFFFFFFFFFFFF0000FFFF00FFFF00000000FFFF0000),
    .INIT_5F(256'hFFFF00FFFFFF00FF00FF00FF00FF0001FFFF0000FFFFFFFFFF000000FFFF0000),
    .INIT_60(256'h0000FFFF00FFFFFF000100000000FF00000000FFFFFFFFFFFFFFFE00FFFF0000),
    .INIT_61(256'hFFFF00FFFF0000FFFF000000FF000001010000FFFFFFFEFFFFFF00FFFFFF0100),
    .INIT_62(256'hFFFF00FF00FF00FFFFFFFFFFFEFF00000000000101000000FF0000FFFFFFFFFF),
    .INIT_63(256'h00FFFFFFFFFFFF00FF0000FFFFFFFEFF00FF0000FF0000010100FF0000FFFF00),
    .INIT_64(256'h0000FFFFFFFFFFFF00FFFFFF00FF00FFFFFF00FFFFFFFF00FF000001000000FF),
    .INIT_65(256'hFFFFFF0100FFFEFEFEFEFFFFFEFF000000000000000000000000FFFFFE000001),
    .INIT_66(256'h00FF00FFFFFFFF00FFFEFDFEFFFF00FF00FF0000FFFF0000FFFF00FF00FFFFFF),
    .INIT_67(256'hFFFFFFFF00FFFF00000000FFFFFFFEFEFFFFFFFF0000FF0000FFFFFF00FFFF00),
    .INIT_68(256'hFF00FFFEFFFFFFFFFF00FF0000FFFFFFFFFFFFFFFFFF00FF0000FF0000000000),
    .INIT_69(256'h00FFFF00FFFF00FFFFFE0000FF0000000000000000FFFF0000000001000000FF),
    .INIT_6A(256'hFFFF0000FF00FFFFFFFF00FFFFFFFF00FFFFFF000000000000FFFF0000FF00FF),
    .INIT_6B(256'hFF00FFFF000000FF00FF00FFFFFF00FFFF00FFFFFFFFFFFF00FF00000000FF00),
    .INIT_6C(256'h00FFFFFFFF0000FF0000FFFF0000FF00FF00FFFFFFFFFFFFFFFFFFFF00000000),
    .INIT_6D(256'hFF0000FFFFFF00FFFE00FFFF00FF00FFFF0001FFFFFF00FF000000FFFFFFFF00),
    .INIT_6E(256'h00FFFF0000000000FFFFFFFFFF00FF000000FF0000FFFF00FFFF00FFFF00FF00),
    .INIT_6F(256'hFF00FFFFFFFFFFFFFFFFFFFF00FF00FFFFFF00FF00FFFF00FF00FFFF00FF00FF),
    .INIT_70(256'h0001FFFFFF00FF00FF00FF0000FFFFFF00FFFFFFFEFF0000FF0000FFFF0000FF),
    .INIT_71(256'h00FFFF00FF00FFFF0000FF0000FF0000FF0000FFFFFF0000FF00FF000000FF00),
    .INIT_72(256'h000000FF0000FF0000FF00FFFF0000FFFF000100FF0000000000FF00FF0000FF),
    .INIT_73(256'h00FFFF0000FFFF0000FF00000000FF00FF0000FFFF0000FFFF000000000000FF),
    .INIT_74(256'hFFFF00FFFEFFFFFFFFFFFF0000000000FF00FF0000000000FF00FFFFFF000000),
    .INIT_75(256'hFFFFFFFFFFFFFFFF00FFFFFF000000FF0000FF00FFFFFFFF00FFFFFFFF00FFFF),
    .INIT_76(256'h00FFFF0000FFFFFFFFFFFFFFFEFFFEFEFF00FF00000000000000FFFFFF0000FF),
    .INIT_77(256'h01FF00FF00FFFF00FFFFFFFFFFFFFFFFFFFFFF00FFFF00000000000000000000),
    .INIT_78(256'h0000000000FF00FF00FFFF00FF00FF00FFFFFFFFFFFFFF00FF0000000000FFFF),
    .INIT_79(256'h0000FFFF0000FFFF00FFFFFFFEFE0000FF00FF0100FF00FF000000FF00000000),
    .INIT_7A(256'h0000FFFF000000FF00FF000000000000FFFFFFFFFF0001000000000000FFFFFF),
    .INIT_7B(256'h0000000000FFFFFF00FF0000FF000000FFFF00FF0000FF000000000000000000),
    .INIT_7C(256'h00000000FF00FF000000FFFEFFFFFFFF00FF0000FFFFFF00000000FF00000000),
    .INIT_7D(256'h0000FFFFFFFF010000000100000000FFFEFFFFFFFF00FF00FFFF0000FF000000),
    .INIT_7E(256'hFFFF00FF00FF0000FFFFFF00FF0000FF00000000FFFFFFFF000000FFFF00FFFF),
    .INIT_7F(256'hFFFFFFFF00FFFE00FF0000FFFF00FF00000000FF00000000FF00000000FFFFFF),
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
module weight1_bram_1_blk_mem_gen_prim_wrapper_init__parameterized6
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
    .INITP_00(256'hE46D70703E30C24507DE2280070BD97D9F974377C03FD3FD03FE0D409FC0DACB),
    .INITP_01(256'h45F31CC816E0C301A0419E3D6000CAC818C095D1C4C1810A40F6BFB6BA9B0A31),
    .INITP_02(256'h0FD90176D949D22E5765E250FC5B7C7761E5CC3E97FFB68CFFF127DAD828387A),
    .INITP_03(256'h507888F586C57A8BE111E18247B5A5E054EFC16BB862B8D9C00BFC1A0047E4CB),
    .INITP_04(256'h36F3FB6CC606C5340463BFC01373170C6469113764A2381205A5120466F600D7),
    .INITP_05(256'hF7DE0CE82BE1BE107C1F5D9AC3FE319E3F97C7E3D5131C7A9F31E287579A11D1),
    .INITP_06(256'hF50FBD541072FBED378D611C6078536500012E01000160A012400582ADCFC029),
    .INITP_07(256'h892817B071B3AEDC83F9B4E56DB742490375476FF76B42B199C9F61830B107FB),
    .INITP_08(256'h10344B8107DEC18428E1004284080034384D044837A07501F984D25F7142BB4F),
    .INITP_09(256'h480059D89D3C75853D27B01BF9BBE28FB8B1AEF847839D3FF83381DD9576AB31),
    .INITP_0A(256'h10BDFF6FEFB4D3CC212A3CFF63FCF6F4C433011980BD7F124BD71F1A0BEDD13D),
    .INITP_0B(256'h3FF1FFA0ED034666006F21BC2344FBF2EA0FF89D412FF71E69FF4568A2D3FA90),
    .INITP_0C(256'h28B7AA7994F119C23C70855AE31773BDC869BFFE2AD75799D8F93A71F26F5AF6),
    .INITP_0D(256'h00000000000000000000000000000000000000000008C7D58B038D45E588996A),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'hFF0000FFFFFFFFFFFFFF000000000000FEFF00FFFF00FF00FFFF0000FF00FFFF),
    .INIT_01(256'h000000000000FFFFFFFFFFFFFFFFFF0000000000FFFF00FF00FF000000000101),
    .INIT_02(256'hFFFF0000000000000000FFFFFFFEFFFFFFFF00FF0000FFFFFFFFFFFFFFFF00FF),
    .INIT_03(256'hFF0000FFFFFFFFFFFE0000FF00FFFFFF00FF00000000FFFF00FFFFFF00FFFFFF),
    .INIT_04(256'h0000000000FFFFFF00000000FF00FFFFFFFF00FFFF0000FF00FFFFFFFFFF00FF),
    .INIT_05(256'h0000000000FFFFFFFFFF00FFFFFFFF000000FF000000FF00FF00000000000000),
    .INIT_06(256'h0000FFFFFFFFFF000000FFFF00000000FFFF00000000FF0000FF000000FF00FF),
    .INIT_07(256'hFFFFFF0000FF000000FFFF00FFFF00FF00FFFFFF0000000000FFFFFF00000000),
    .INIT_08(256'hFF00FFFFFF00FF00FF0000FFFF00FFFF00000000FF00FF000000FFFF000000FE),
    .INIT_09(256'h00FF000000000000FFFFFFFF00FFFF00FF00FFFFFFFFFFFFFF00FFFF00FFFF00),
    .INIT_0A(256'hFFFF000000FF0000FFFF0000000000FFFF000000000000FF00000000FF00FF00),
    .INIT_0B(256'h000000FFFF000000FFFF000000000000FF0000FF00FF00FFFFFF00FF000000FF),
    .INIT_0C(256'h00FFFF00000000000000000000000100FFFF0000FF00FF00FFFF0000FF000100),
    .INIT_0D(256'hFF00FF000000000000FF0000000000FFFF0000FFFFFFFF000000FFFFFFFF00FF),
    .INIT_0E(256'h000000FF00FFFE00FFFFFF0000000000FFFF00000000FFFF00000000000000FF),
    .INIT_0F(256'h00FF000000FF00FFFFFFFFFF0000FFFF000000FFFFFF0000FFFF0000FF000000),
    .INIT_10(256'hFFFF00FFFF0000000000FF00FF0000000000FFFFFF00000000FFFFFFFF00FF00),
    .INIT_11(256'hFEFFFFFFFFFFFFFFFFFFFFFF000000FF0000FF0000FFFFFFFFFF00FFFF00FF00),
    .INIT_12(256'hFF0000FE00FFFFFFFFFFFEFFFFFFFFFFFF00FFFF00FFFF00FF000000FFFF0000),
    .INIT_13(256'h00FEFF00000000FFFFFFFF0000FF00FFFFFF0000FFFF00000000FFFFFFFFFF00),
    .INIT_14(256'hFFFFFFFFFFFF000000FF00FFFF00FFFF00FFFFFFFFFF000000FFFFFF00FFFFFF),
    .INIT_15(256'h00FF00FF00FFFFFF00FFFF0000FF00FFFFFFFF000000FF0000FF00FF00000000),
    .INIT_16(256'hFFFF00FFFF0000FF00FF0000FF0000FFFFFF00FF0000FF000000FF00FFFFFF00),
    .INIT_17(256'h00000000FFFFFFFFFFFF00FFFF0000FF00000000000000FF00FFFFFF00FFFF00),
    .INIT_18(256'h000000000000000000FF000000FFFFFFFFFFFF0000FF0000FFFF0000FF00FFFF),
    .INIT_19(256'hFFFF00000000000000000000FF00FFFFFFFEFFFFFFFF0000000000FFFF00FF00),
    .INIT_1A(256'hFF00FFFFFF00000000FFFF000000FF00FF00FFFFFF000000FFFF00FFFF0000FF),
    .INIT_1B(256'h00FF00FF00FF0000FFFFFF00FFFFFFFFFFFF0000000100FF00FFFF00FF00FFFF),
    .INIT_1C(256'h00FF000000FFFFFFFF00FFFF00FF00FFFF00FF0000FF00FFFFFFFF0000000001),
    .INIT_1D(256'hFFFFFF00000000FF000000FF000000FFFFFFFF00000000FFFF0000000000FF00),
    .INIT_1E(256'hFF00000000FFFF00FFFF000000FF00FF00FFFFFFFF00FF00FF000000FF00FFFF),
    .INIT_1F(256'h00FF00FF0000000000FFFEFFFF000000FF000001FF000000FFFFFFFF00FF00FF),
    .INIT_20(256'h00FFFF0000FFFF00FFFFFFFF00FFFF000000000000000000FFFF00FF00FFFFFF),
    .INIT_21(256'h0000000000FF00FFFF00FF0000FF00FF000000FF0000FF000000000001FF0000),
    .INIT_22(256'h00FFFF0000FF0000FF00FF000000FF000000FFFFFF000000000000FF0100FF00),
    .INIT_23(256'h00FFFF0000FF000000FFFF00FF0000FF000000FF000000FF0000FFFF00FFFFFF),
    .INIT_24(256'h000000FF0000FFFF00FFFFFF0000FFFF000000FF00FFFFFF00000000FFFF0001),
    .INIT_25(256'h0000010000FF000000FFFF000000FFFFFF00FFFFFFFFFFFFFFFF000000000000),
    .INIT_26(256'hFFFF000000FFFF000000000000FFFF00FFFF000000FF00FF0000FFFF00FF0000),
    .INIT_27(256'h0000FFFF00FFFF00FFFFFFFF0000FFFFFFFFFFFFFF00FFFF00FFFF00FFFF0000),
    .INIT_28(256'h00FF00FF00FFFFFFFF0000FFFF00FF00000000FF000000FFFFFF00FF000000FF),
    .INIT_29(256'hFF0000FFFFFFFFFF0000FFFF000000FFFFFFFF000000FF00FF00000000FFFFFF),
    .INIT_2A(256'hFFFF00FF00FF00FF000000FF0000FFFF000000FFFFFF000000FFFFFFFF00FF00),
    .INIT_2B(256'h0100FFFEFFFFFFFFFF0000FF00FFFFFFFFFF000000FFFFFFFFFFFF000100FFFF),
    .INIT_2C(256'hFFFF00010101FFFFFFFFFFFEFFFFFF000000FFFF000000FFFF0000FFFFFFFF00),
    .INIT_2D(256'h00FFFFFFFFFF0001020100FFFFFFFFFE00FF00FFFFFF00FFFF0000FFFF00FF00),
    .INIT_2E(256'h0000FF00FF00FFFFFFFFFF00010101FFFF00FFFFFFFEFF00000000FF00000000),
    .INIT_2F(256'hFFFFFFFF00FFFFFFFFFF00FEFFFFFF0001010000FFFF0000FFFEFF00FF000000),
    .INIT_30(256'hFF00FF00FFFF00FFFFFF0000FFFFFFFFFFFF0000000101000000FF00FF0000FF),
    .INIT_31(256'h000000FF0000FF0000FF0000000000000000000000FF00FFFF0000000000FF00),
    .INIT_32(256'h000000000000000000000000000000FE00FFFF0000000000FF01FF0000010001),
    .INIT_33(256'h000000000000000000000001000000FF0000FF00FFFFFF0000000100000000FF),
    .INIT_34(256'h00FFFF000000000000FFFFFFFF00000000FF00FF0000FFFF00FFFF0000FF00FF),
    .INIT_35(256'h0000FFFF00FFFFFFFF000000FFFF00FF00FFFF00000000FF000000FFFFFF0000),
    .INIT_36(256'h000000FF0000000000FFFFFF0000FF00FFFFFFFFFF00FFFFFFFFFF00FFFF00FF),
    .INIT_37(256'hFFFFFFFF00FF00FF00000000FFFFFFFFFF00FFFFFFFF00FF00FF00FF00FF0000),
    .INIT_38(256'h0000FFFF00000000FF00FFFF000000FF0000000000FFFFFFFFFFFFFFFF00FFFF),
    .INIT_39(256'hFF0000FFFF0000FFFFFF0000FF0000FFFFFFFFFF00FFFF00000000FFFF000000),
    .INIT_3A(256'hFFFFFFFF00FFFFFF00FFFF00FF00FFFF00FF00000000FF00FF00FFFF000000FF),
    .INIT_3B(256'h000000000000FFFF00FFFFFF00FF00FF00FF000000FFFFFF00FFFF00FFFFFFFF),
    .INIT_3C(256'h00FFFF00FFFF00FFFF00FFFF00FFFFFF00FF00000000FF0000FF0000FF0000FF),
    .INIT_3D(256'hFF0000000000FFFFFFFFFFFFFF0000FFFF00FFFF01FF0000FFFFFF0000FF00FF),
    .INIT_3E(256'h00FFFFFF000000FFFF00FFFF0000FFFFFF00FF00FFFFFF00FFFF00FFFFFF0000),
    .INIT_3F(256'hFF000000FF0000FF0000FF00FF000000000000FE00FFFFFFFF00FFFF00000000),
    .INIT_40(256'h00FFFFFF000000FF00FF00000000FF00FF00FFFFFF00FEFF00FF0000FFFFFFFF),
    .INIT_41(256'hFFFEFFFFFF0000FFFF00000000FF0000FFFF00FF0000FF0000FF00FFFFFFFFFF),
    .INIT_42(256'h0000FFFF00FFFEFFFF00FF000000000000FFFFFF00FF00FF00000000000000FF),
    .INIT_43(256'h0000FFFFFF00000000FF0000FFFF00FF0000000000FF000000FF0000FF000000),
    .INIT_44(256'hFF00000000FF000000000000FF00000000000000000100000000FFFF00FF0000),
    .INIT_45(256'h0000FF01FF000000FFFFFF00000000FF000000000000000000FF00000000FF00),
    .INIT_46(256'h0000000000FFFFFFFFFF00FFFFFEFF00FFFF0000000000FFFF00000000FF0000),
    .INIT_47(256'h010100FF000000000000FFFF00FF000000FF0000FF00FFFFFF000001000100FF),
    .INIT_48(256'hFF0000FF00FF00FF00FFFEFF00FFFF00FF00FF00FF00FFFF0000FFFF000100FF),
    .INIT_49(256'hFFFFFFFFFF0000000000FFFF0000FFFFFF000000000000FFFFFF00FFFFFF00FF),
    .INIT_4A(256'h00FF000000FFFFFFFF0000000000FFFFFF0000FFFFFF00FF0000FFFFFFFFFFFF),
    .INIT_4B(256'hFF00FFFFFF000000FF00FFFF000000FFFF00FF00FFFFFF00FFFFFFFFFF000000),
    .INIT_4C(256'hFFFFFFFFFF0000FFFF00FFFFFF00FFFFFFFFFF000000FF00FF000000FFFFFFFF),
    .INIT_4D(256'h0000FFFFFEFF00FF0001FF0000FFFFFFFF00FFFF00000000000000FFFF00FFFF),
    .INIT_4E(256'hFF0000FFFFFF00FF0000FFFFFFFF000000FFFFFF00FF00FFFF00000000FF00FF),
    .INIT_4F(256'h00FF0000FF000001000000000000000000FF00FFFF0000FFFFFF00FFFF000000),
    .INIT_50(256'h00000000FF00FFFFFFFFFF00FFFF00FFFFFF00FF000000FF0000FFFFFFFF00FF),
    .INIT_51(256'h00FF0000FF00FFFFFFFF00FE00FFFFFF000000FFFFFFFFFF000000FFFF00FF00),
    .INIT_52(256'hFF00000000000000FF00FFFFFFFF00FF00FFFFFFFFFFFFFF000000FF0000FF00),
    .INIT_53(256'hFFFF000000FF00000000FFFF0000FFFF00000001000000FF000000FFFF0000FF),
    .INIT_54(256'h00FFFF000000FFFFFFFFFFFFFFFF0000FFFFFFFF00FFFF00FFFFFFFF00FF0000),
    .INIT_55(256'h0000FF00000000FF0000FF00FF00FF000000FFFFFFFF0000FFFFFFFFFFFFFFFF),
    .INIT_56(256'hFFFFFF00FFFFFFFFFF00FFFF00FF0000FFFF00FF0000FFFFFFFF0000FFFF0000),
    .INIT_57(256'h000000FF00000000FF00FFFFFFFF00FFFFFFFFFFFFFFFFFF00FFFF00FFFFFFFF),
    .INIT_58(256'hFF00FF000000FF00FFFF00FF0000FFFFFFFFFFFFFF00FF00FF0000FE00000000),
    .INIT_59(256'h00FFFF00FF0000FFFFFFFFFFFFFFFFFF00FF000000FF00FF00FFFF00FF000000),
    .INIT_5A(256'h00FF0000000000FF0000FF00FFFFFFFFFFFEFFFF00FFFFFF000100FFFFFFFF00),
    .INIT_5B(256'hFFFFFF00FF00FF0000000000FFFFFFFFFFFEFFFFFF000000FF0000FFFFFF00FF),
    .INIT_5C(256'h0000FF000000FFFF00FF000000FF0000FFFFFFFFFF00FFFFFFFFFEFF0001FF00),
    .INIT_5D(256'h000000000000000000FFFF00FFFFFFFF0000FF00000000FFFF00FFFFFFFF0000),
    .INIT_5E(256'hFFFFFF00FFFF00FF000000000000FFFE00FF000000FFFF0000FFFF0000FFFF00),
    .INIT_5F(256'h0000FFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFF00FF0000000000),
    .INIT_60(256'hFFFFFFFF0000FF0000FEFF00FFFFFFFF00FF00FFFF00FF00FFFFFFFF00FFFF00),
    .INIT_61(256'hFFFF00FFFF000000FFFFFFFFFF0000FF0000FFFFFF00FF0000FEFFFF000000FF),
    .INIT_62(256'h0000FF00FF00FF00FFFF00FF00FFFFFF00FF00FF00FFFFFFFF0000FFFF0000FF),
    .INIT_63(256'hFFFF0000FF00000000FFFF00FF0000FFFF00FFFFFFFFFFFFFFFFFFFFFFFFFF00),
    .INIT_64(256'hFFFFFF000000FFFF000000FF00FFFFFF00FFFFFF0000FFFFFF00FFFFFFFF00FE),
    .INIT_65(256'h0000FFFFFFFF000000FFFFFF00000000FF00000000FF00FF00FF00FFFF00FF00),
    .INIT_66(256'hFF0000FF00FF0000FFFFFFFF000000FF000000FFFF0000FFFFFF00000000FF00),
    .INIT_67(256'h0000FF00FF000000FF00FFFF00FFFFFFFF00FF00FF00FF0000FFFFFFFF0000FF),
    .INIT_68(256'hFFFFFF0000FF00FFFF000000FF000000FF0000FFFF0000FF00FFFF00FF00FF00),
    .INIT_69(256'hFF000000FF00FFFF000000000000FFFFFF000000FFFF00FF00FF000000FF00FF),
    .INIT_6A(256'h000000000000000000000000FF000000FFFF000000FFFFFFFFFF00FF00FF00FF),
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
module weight1_bram_1_blk_mem_gen_top
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

  weight1_bram_1_blk_mem_gen_generic_cstr \valid.cstr 
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
(* C_INITA_VAL = "0" *) (* C_INITB_VAL = "0" *) (* C_INIT_FILE = "weight1_bram_1.mem" *) 
(* C_INIT_FILE_NAME = "weight1_bram_1.mif" *) (* C_INTERFACE_TYPE = "0" *) (* C_LOAD_INIT_FILE = "1" *) 
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
module weight1_bram_1_blk_mem_gen_v8_4_4
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
  weight1_bram_1_blk_mem_gen_v8_4_4_synth inst_blk_mem_gen
       (.addra(addra),
        .clka(clka),
        .dina(dina),
        .douta(douta),
        .ena(ena),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_v8_4_4_synth" *) 
module weight1_bram_1_blk_mem_gen_v8_4_4_synth
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

  weight1_bram_1_blk_mem_gen_top \gnbram.gnativebmg.native_blk_mem_gen 
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
