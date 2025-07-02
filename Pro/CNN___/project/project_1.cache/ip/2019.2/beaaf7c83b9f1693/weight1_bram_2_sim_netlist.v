// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Wed Jul  2 15:16:59 2025
// Host        : DESKTOP-I8GGJRG running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ weight1_bram_2_sim_netlist.v
// Design      : weight1_bram_2
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tfgg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "weight1_bram_2,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  (* C_INIT_FILE = "weight1_bram_2.mem" *) 
  (* C_INIT_FILE_NAME = "weight1_bram_2.mif" *) 
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_4 U0
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

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bindec
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

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_generic_cstr
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

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bindec \bindec_a.bindec_inst_a 
       (.addra(addra[13:12]),
        .ena(ena),
        .ena_array(ena_array));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_mux \has_mux_a.A 
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width \ramloop[0].ram.r 
       (.addra(addra),
        .clka(clka),
        .dina(dina[0]),
        .douta(douta[0]),
        .ena(ena),
        .wea(wea));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized0 \ramloop[1].ram.r 
       (.addra(addra),
        .clka(clka),
        .dina(dina[2:1]),
        .douta(douta[2:1]),
        .ena(ena),
        .wea(wea));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized1 \ramloop[2].ram.r 
       (.addra(addra),
        .clka(clka),
        .dina(dina[4:3]),
        .douta(douta[4:3]),
        .ena(ena),
        .wea(wea));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized2 \ramloop[3].ram.r 
       (.addra(addra),
        .clka(clka),
        .dina(dina[6:5]),
        .douta(douta[6:5]),
        .ena(ena),
        .wea(wea));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized3 \ramloop[4].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[4].ram.r_n_0 ,\ramloop[4].ram.r_n_1 ,\ramloop[4].ram.r_n_2 ,\ramloop[4].ram.r_n_3 ,\ramloop[4].ram.r_n_4 ,\ramloop[4].ram.r_n_5 ,\ramloop[4].ram.r_n_6 ,\ramloop[4].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\ramloop[4].ram.r_n_8 ),
        .addra(addra[11:0]),
        .clka(clka),
        .dina(dina[15:7]),
        .ena_array(ena_array[0]),
        .wea(wea));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized4 \ramloop[5].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[5].ram.r_n_0 ,\ramloop[5].ram.r_n_1 ,\ramloop[5].ram.r_n_2 ,\ramloop[5].ram.r_n_3 ,\ramloop[5].ram.r_n_4 ,\ramloop[5].ram.r_n_5 ,\ramloop[5].ram.r_n_6 ,\ramloop[5].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\ramloop[5].ram.r_n_8 ),
        .addra(addra[11:0]),
        .clka(clka),
        .dina(dina[15:7]),
        .ena_array(ena_array[1]),
        .wea(wea));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized5 \ramloop[6].ram.r 
       (.DOADO({\ramloop[6].ram.r_n_0 ,\ramloop[6].ram.r_n_1 ,\ramloop[6].ram.r_n_2 ,\ramloop[6].ram.r_n_3 ,\ramloop[6].ram.r_n_4 ,\ramloop[6].ram.r_n_5 ,\ramloop[6].ram.r_n_6 ,\ramloop[6].ram.r_n_7 }),
        .DOPADOP(\ramloop[6].ram.r_n_8 ),
        .addra(addra[11:0]),
        .clka(clka),
        .dina(dina[15:7]),
        .ena_array(ena_array[2]),
        .wea(wea));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized6 \ramloop[7].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[7].ram.r_n_0 ,\ramloop[7].ram.r_n_1 ,\ramloop[7].ram.r_n_2 ,\ramloop[7].ram.r_n_3 ,\ramloop[7].ram.r_n_4 ,\ramloop[7].ram.r_n_5 ,\ramloop[7].ram.r_n_6 ,\ramloop[7].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\ramloop[7].ram.r_n_8 ),
        .addra(addra),
        .clka(clka),
        .dina(dina[15:7]),
        .ena(ena),
        .wea(wea));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_mux
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

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width
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

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init \prim_init.ram 
       (.addra(addra),
        .clka(clka),
        .dina(dina),
        .douta(douta),
        .ena(ena),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized0
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

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized0 \prim_init.ram 
       (.addra(addra),
        .clka(clka),
        .dina(dina),
        .douta(douta),
        .ena(ena),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized1
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

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized1 \prim_init.ram 
       (.addra(addra),
        .clka(clka),
        .dina(dina),
        .douta(douta),
        .ena(ena),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized2
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

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized2 \prim_init.ram 
       (.addra(addra),
        .clka(clka),
        .dina(dina),
        .douta(douta),
        .ena(ena),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized3
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

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized3 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .addra(addra),
        .clka(clka),
        .dina(dina),
        .ena_array(ena_array),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized4
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

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized4 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .addra(addra),
        .clka(clka),
        .dina(dina),
        .ena_array(ena_array),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized5
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

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized5 \prim_init.ram 
       (.DOADO(DOADO),
        .DOPADOP(DOPADOP),
        .addra(addra),
        .clka(clka),
        .dina(dina),
        .ena_array(ena_array),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized6
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

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized6 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .addra(addra),
        .clka(clka),
        .dina(dina),
        .ena(ena),
        .wea(wea));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init
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
    .INIT_00(256'h43064242B373456D3A68F560E5A72495A71C6E1CE5E9963DEF72CD29920CA9ED),
    .INIT_01(256'h02CE5067F7F0451D171482C86F414CCD4D754D5B1E74B75635284B81062E1CDC),
    .INIT_02(256'h7501579B32350E2CDCA7E0C90EB4D2CBC2BA6605092694C4FBD1B47390FE127A),
    .INIT_03(256'h4DA7B78C04A66E5B2B7DB2613CE72BBF132015A0208E68FDF09740931880777E),
    .INIT_04(256'hA6EF9D04FCD39E02AC2542CD9CAB1505DEC695EF6AFC3A6817D744FA1BF128F4),
    .INIT_05(256'h49860384AB0D75DD16F1EB374BF04D81DEE6491CC43C454CC5E818AB7C450779),
    .INIT_06(256'hF4BD1E427D30C2DF6524BF5C57D2CAFAFDD3D81AE5F38C755DEB41AC1D12105E),
    .INIT_07(256'hB3A9ABB84D6AA81545CC3406FE740C3D9E32A144214D54185184A8DE4A19E3B8),
    .INIT_08(256'h92DB08D824A6088F8A1BB02062B7F69350898ADD06881CFA72FFEAAEE6CBED2B),
    .INIT_09(256'hA7BF91DBCA6118897A721B56B0D705D17FBC660FB49C3BC80BC9547B6A6BDB83),
    .INIT_0A(256'h588C7C5A576415C829580774B911AF5B26B571B33CFFC78EE84EFD34BCB17BC9),
    .INIT_0B(256'h1C268EAD6DF5031ADA0AD43AFD3A26672A327EF44E986D6A6834B806BBE49E6E),
    .INIT_0C(256'hE157DC918AF8844EE8B669AC5AE39C028FE948F25810E378FEE0E9F093C93D54),
    .INIT_0D(256'hEBEDFF718AA1377B123D661EA09A7AB325EF3093B01342BE93CB30081DB6544C),
    .INIT_0E(256'h5A591AFF768AA3A79F8B43F9292107833D1B956AA8F853171BD288FE587FD1C0),
    .INIT_0F(256'h561512B1992BF5B958D59AFEA6115FC3F3B9065CFF5A66E546476FFDBEFC2AA1),
    .INIT_10(256'h0B261813522196420171E80C6EEAE48292768DAB297564F67B40E0E630D974E3),
    .INIT_11(256'hFA262DC2DF4B6A8CC610050DF2D7BBB19CCC13D948A11F0076B4B1A4AA41F6B0),
    .INIT_12(256'h4B25E0505B81D46A6B75EDEDD51DEC1F4B9F19250A598A2F8E29AABF6178AA6C),
    .INIT_13(256'h16755A9F58E1839483E4D90490EB915142FC9D7DB0DBAA792FF553CA6F051728),
    .INIT_14(256'h0D1464A1AD1F28681553254C2875D97786F1D7C4910D6591FB708849C3135738),
    .INIT_15(256'h6770EF147EFBB6A3977A7437236B6FE3A58C66E704720414F274595BB89F65C2),
    .INIT_16(256'h746EF01958434076CE3D330A0DD25B31B6AAD1DD2193D43D36860FE750CC97BD),
    .INIT_17(256'hE6326F0B78E938ECFD95BDBCBC3CA276A52A5B33873E928627F92EBA91F10557),
    .INIT_18(256'hCF97F93CD25E33618C6F96C5C386F04711717189F75FEB5440EDFE3F253EE9BE),
    .INIT_19(256'hA9F9F2F0EBDD80D276ED779E938FED0AF839460AA79410D731EF2E0A96137233),
    .INIT_1A(256'hE36F02C6E572D3F51CA6463FEAE1B7E4FBFE5FFA2CCC398421DD1BDAC14EF893),
    .INIT_1B(256'h71AD26C8045252299758585037F47B69DCCE3C3EE19F7DF2B06F56ED0EE28A8F),
    .INIT_1C(256'hAE685168597939356447DA8F037666226F7FD01A0EC27E7AA896EB92AB564174),
    .INIT_1D(256'h6798F772459D1B86B16DFC702866D6193FC7B68CF7EDB60A506078F4D42D6F8D),
    .INIT_1E(256'h751202C5C3371327CED8077C36CB25131A686E2A21C48E6B3E0F7EF066DD0BA1),
    .INIT_1F(256'hCD302B089172F5B1D0FB8ED128DD479BE7616B8669368D7305E160AC8B86A5B4),
    .INIT_20(256'hDD8637A78C5026EC1A49EB8287D326CA41881C3224229E857C654744D77F6875),
    .INIT_21(256'hA4D4D0707F677B4B602AA062B02DCA6483F0B6D126E68C64B9C128C1BE7F7FC5),
    .INIT_22(256'h0D5C786F73A3324A8BA60C3286D5B56935C66DD85444D4B0AB7745598BCF1CC8),
    .INIT_23(256'h931D08F9605071D0CAFA4D80A48B6CFCB4E32F4A3B735A744B7B52F63B60A9F0),
    .INIT_24(256'h491408CEA48A572AFB08E0C36C439C723B454BE8F97350FCDC82B5A0BA54C612),
    .INIT_25(256'h8BD5AA7B1D30E689FF19FF65A6CF301DEB1CF809F59234208F88A3F727FDCE6F),
    .INIT_26(256'h7BD484E5B4B8D9678F3E11B69C8C0AFE711936A9822091A0F70E7B6278E42AF7),
    .INIT_27(256'h04153C2DF6A6AC0D6F6AF1254E7201C24ABDB6C940F05EA6B48A78BD8DA9AD5C),
    .INIT_28(256'hEF854A8C7A60823E9093CE2D5C4BFA7839DD4944CE85B79D478ADBF150369B23),
    .INIT_29(256'h3D73E40E944580ECBCFB048586FF12268E2009F740BCE292BDDA5EFACE248883),
    .INIT_2A(256'hD3178172F94515C906CBC77EE5226D65C9213C9C2F370F7D28D824C8618E51BF),
    .INIT_2B(256'h6F7EFA0DBB8CC53CF5441346950BA20816F1D464379B97495106B81BC6C995ED),
    .INIT_2C(256'hEE6E0F4CB5D5D28B02AB2A85C9C0F00A1BEE3E41F349A5D12B9B5BD0908AD719),
    .INIT_2D(256'h712A323EF50B2A77147DE0EBEFCC5C09477C3DA5A5C871895B2FEF7425BA090A),
    .INIT_2E(256'h74421FEA33EBB7A06AC59916E06EEFD27210AB72C7DDE7D824BEEF0BD365BA79),
    .INIT_2F(256'hF49620909402BD939618B4FCA6ECB67AB5524097FEE19979BD95DEDCCFC073CF),
    .INIT_30(256'h4E31D46D8E364A4207A8258C899355410AC424DA4072DD7D64992F8A93594EE2),
    .INIT_31(256'hD647E943036D722135B4D203E5FC88CCAB9C0129BC84A92CE259D73AFC95D101),
    .INIT_32(256'h3CF62EF726254BF247801635CA626F4A35BBDC50C6193541B60961557C5A6AC3),
    .INIT_33(256'h50F110278E8CB891D87FDD4DE451C5A4E9B4EE203E7BD3F1C99112228BBC13F3),
    .INIT_34(256'hB454ED66B65109805A700EC26C99CE66CF881D7A34FCD56C2A133172A239A5BD),
    .INIT_35(256'hC5AF3916133FBA229C69D2D632A31B41358F7ABD4792E8FE38B37ADEAD34BE34),
    .INIT_36(256'h11B168527997707019FDD4C25F8B6E998415606D05B879DC54415F33B5715300),
    .INIT_37(256'h598DF2DC01C8DDDA0FC9715FAA0D18CECDB5F4163D53F23EAFC6127338631E69),
    .INIT_38(256'hCE4AAF02D401255E4C1BF64FAB259566363C05B2AC1A637F141AD23F22A36289),
    .INIT_39(256'h93DBD261FF843CC1CA3C8126F2F1765621D663BB3710EDF801AB26A3F3CC9855),
    .INIT_3A(256'h4C48FF812DDDD567628CD44633FDE341DB4CFE77464D300CA6F3C0068492ED65),
    .INIT_3B(256'h980B66963DA89A30F39B8820452CFF784B81C45ADC96F3986785C38031C7113A),
    .INIT_3C(256'hA0D1EA59A4D50A58F538D3D3FF9AF0840E7065725568559D696C6CFDCC5C758C),
    .INIT_3D(256'h00000000000000000000000000000000000000000008E4D262BC815EDCC06905),
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized0
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
    .INIT_00(256'hD295508E7BE428BD884574CA82032C131CBF6840734ECB0DF9025820911486FF),
    .INIT_01(256'hD4E7873E350DCC6B5D4B1EFFA5481CF46F1A41E7F0266EC6E779BE78FDC10F5B),
    .INIT_02(256'hB0E019BB08ED01C4B27F33C23E9AC5C26DB5CA0BBB3CC9828E9B2FED734BA47C),
    .INIT_03(256'hE200B1102FF463D30FDEC4A95A8B40D807566FD368C81271931405716B702BC3),
    .INIT_04(256'h0D9454D4103B32E72CB4861DEE148F5ABB4CCDB41C6633F1304C0FA0B2360E96),
    .INIT_05(256'hD02786846F79C961B0A542E0808B386D4572B825AA9ACF5B4AF0D789F3722F82),
    .INIT_06(256'hA099C3A92CC6B7667F526726A3EE949B5B25BF5DCBAD891F47AD8E0D7D464AE4),
    .INIT_07(256'hA58F7A9144B321BEBFC92AAB16076E65EC35B245736D4C9CB3C9FEEA9E14C1A5),
    .INIT_08(256'hAF6E03264AEC83D8DC237D949E5FCCDB6E32AB08631301509D407F8CB0507190),
    .INIT_09(256'h7534EFA37A97399982A44A5DD1914AA567B1EFB28CB575E9D59717F4A5EAB9AB),
    .INIT_0A(256'h5C419E2A7611CE0BFF067BA86A5C83CADDFA31B56CDF3E1191A539C610F6F117),
    .INIT_0B(256'h31B3E64C9686150CB5EA57D280660248D8A5520FF52F2FFF39A2127E06E0151A),
    .INIT_0C(256'hC3702B10BBE6E8549326E70BA1418F95CE09DBF92FE7D330135869F91EBEB3F2),
    .INIT_0D(256'h436B1C5F857435F9F5A5BEAA5E2011C0E9067116569E81547EBBDE322EBF04B5),
    .INIT_0E(256'hF32200236467EF90240DDA9DF666E7515BB6645BAB53FD12D3ADC13B67DFB18E),
    .INIT_0F(256'h26A9DC12ACFF6393215FF9A5828EEE8FFA63A052404B227B0C831E587FEBCF95),
    .INIT_10(256'h575B4FB095AD772E7967647A2AF89132734AA4EC0198BC4DD43CBD68709ADDE0),
    .INIT_11(256'h192AA4E1245E339D8D31D3E2A94C1A0431752950503DD0B8B6073C959DF09615),
    .INIT_12(256'hB40CB80C46A941D7E4C4FDC5E5A8E5A0C9C7DA698775F5073F4A47E32F1E9C61),
    .INIT_13(256'hF1A27BA7CA441383E7F2B131D487402126BBBDB1941F3D58EA427884C3E840F3),
    .INIT_14(256'hAC47B1B09CD7581E5CDAF44E90B1F2C0926489D5224D3C3415AB754B94AAEF92),
    .INIT_15(256'hFC697F9EC5103F7F77FC6B1BE04558594C086B877566FAC29952E94C9E2BBE0E),
    .INIT_16(256'h1B07931DEFB733BE030975CA60CB5078118A35247DCB6EA9D1442864E5AC1107),
    .INIT_17(256'h7DF8A466FC1449588CDFB8756908ABE85FF3CDBDCCFF180D685E0CFA3C93233C),
    .INIT_18(256'hCC3008206DB7CCD2D25FFA6C8E7D7FD10AAD9DCC5F2EC33F48DE891A7EF1548F),
    .INIT_19(256'hEC9F4AE6C4B981E296038FF579DA8271DDE189DED2B15A4E52EB54354B47B08B),
    .INIT_1A(256'h6D5754D5EAE422CA79E1D5A15808EBCB343CE8AC284661D6CBBF48D5FF6C6901),
    .INIT_1B(256'h8E5A04B77373CB4B5321B704A4587736615CE3102AA45CEE943D2A127B1AB853),
    .INIT_1C(256'h2C6D81D1B4C3CDD3694A812DDA4E2E3956E2E52FB20E6492F98FAC49FCDF6906),
    .INIT_1D(256'h49DD1B64B081D76E637B560674C8B770A2B99736145D0CB3658AFB379C010A23),
    .INIT_1E(256'h2262B68215175806CCF3DF3987233282DBB3CE51D3660343EB0CCBFC11D9E0F1),
    .INIT_1F(256'h8C6E57D6DBE6DDF3FD385894712E0FDB0B05F4D59C3F8D15F03170BEC2A96072),
    .INIT_20(256'h835A5AA7C03E7C5A661D694463D811A261380996B3176864E5C57390143FEAD7),
    .INIT_21(256'h5AB6DB03F880D0BB038EB1CE67A549C693D1F75D72613B2193645D217AD6199F),
    .INIT_22(256'h8DC7BB7E78C497336B07A8195C630D99CF468F6F0EF0BF3C1E57B7D721BFE912),
    .INIT_23(256'h13F0B92A6547C67482CD9CAABCF02A03F0D387EDF8A6701C1F679AF489274040),
    .INIT_24(256'hE01499769EE191A400A2E3E0E78503523BF5A3182F9221CEBED7113FB67C646F),
    .INIT_25(256'hF988954E9AEDF4930416D5EBCB9F625309DE664ACD2D7E619726C1EE3CC35D1B),
    .INIT_26(256'hC8E05556B4FCE29D29FA18E79A1F76907AF7A2BEF68B6C14F0D9FF223C6D177E),
    .INIT_27(256'hD3DB45699002B5638FE56D03DD7DCA9C5981AAC43CAF8704D690DA26E9F5A1FA),
    .INIT_28(256'h40A2A30CFF5525D22195200059673048FAA07C0884D110A3BF8F4CF6868F2804),
    .INIT_29(256'h4F542115BDA977CF1B97166D4C6A61BC99AB7BFF5198EDF3C895C952FF6334D5),
    .INIT_2A(256'h20AB9D4CD6064407C1858DD0021862FD47268FB85A7F51B25A70990D4201FB16),
    .INIT_2B(256'h90C9C94251A6829BE7A74865A2C2436B23AAB03B83AF51445C49C2DBA58BA8F4),
    .INIT_2C(256'h36E67A7BE2FC51F9FF236DAD45746C830D3647500E98BCC8B86E94E90622553A),
    .INIT_2D(256'hF5BA76095DDD78040C468DB7F3FD6D04E4CF1DAB3558DAF8270BDBA8683BA07E),
    .INIT_2E(256'hA05752BDBFDEC306058530341C57CBACA1AEB11F73B2046BAB028188F25504C0),
    .INIT_2F(256'h541EAB6D1302C59C1DF8F09274A7D2F611478F50ACF82B586AC4C4E238095282),
    .INIT_30(256'h8BD737AF87A0913FED33189FDE5A2865ED0135B5D86169052C336BCB719C9DE1),
    .INIT_31(256'hD14025738AFAF0242F80E827BFA94C437EB030AA57ECFEF94F41FEA5C4408439),
    .INIT_32(256'hB933829E08DE7C73C6288D3AFA1847FAA8353355EBA3888813995A96F0CE2293),
    .INIT_33(256'h4F046B79F9D743E71823501B61CE703ACD344DD50F465E358BCDBA1A60D65AA2),
    .INIT_34(256'h70CA3A1DD87A9045B89358FAA3EEA1795A7FBBF63565461D86271945B1BC50A0),
    .INIT_35(256'h0DC2421DC0E9EE87B14C2E2649B176AE1239C1008EAD87F2DB2DAE91BF4631C7),
    .INIT_36(256'h2F98D8EAE02FC88C3819460845FF4BC140421571B1AC1D08E0F59FFED628229F),
    .INIT_37(256'h988BD393584D152ACE51150360208F06BF287B4BC72F0A580DB054C1973D79E3),
    .INIT_38(256'h7DAF364670FAF85A6EB1A2D0B232D1B2250FC90E617034E76F430035CE6D7506),
    .INIT_39(256'hFD4CB170E485519DD5CAED430D2662339FC9F0A828F3F16CDA32D7AADE620104),
    .INIT_3A(256'h1A0D50C57B8A860060B440141B96A6DEC00477176E0DA4AA46536BCB49C4ED6A),
    .INIT_3B(256'h78678AEEAA57BCDFAEBA1017DF24C6890B0B00705C0E11111B23036137166291),
    .INIT_3C(256'h92541BB3A15DC236ABE834E7F1783DB8E2801A1CB5675D518B6FD7200989E78A),
    .INIT_3D(256'h92C13198833DC1FE3D2D6B8E908CE2AC9955A08C9C54B46733E923A32D45807C),
    .INIT_3E(256'hD825B6ADA7CFFA6A89B8E790861EB164632FE27E4A70AE97FACF508EF4AAD83D),
    .INIT_3F(256'h16615C224CD80C902E6AECDA1E637ACE4BEBBA0EADD7FC650879DDEE1FC50050),
    .INIT_40(256'h1D4C94E0E5B4118DCDCE650BD46DD0B0C77648DEB2B546C8789AFDBEF2D79633),
    .INIT_41(256'hE854868D6AD7740AD3320DA459966DE235B9D8FAE952FD03287E6B10B3FB0A96),
    .INIT_42(256'hEDEDCDBA5DDAF0CD950FEE4E6E6F7382CF3DBBE953C4572F95FB77AE01F34F82),
    .INIT_43(256'h72BF13CA49BC634A5E7AD1DEE29383F912C33CC2B023D5BFA0E6824BCE3D5D23),
    .INIT_44(256'hC7C02518E41A18D8C736A4D93A9B512F0DBB29E63437C096D3264D60527AEB7D),
    .INIT_45(256'h24211AF3D51BC21C81DA2D787DBDD5CD3DCECA012F46F6C45DFDDA3F6B870DB7),
    .INIT_46(256'h64FF2FD94D0B6388E86E8F5AC2A9F8B24EDF12CE4EA8D9DC570C06A1AA12F1E5),
    .INIT_47(256'h77F12D89B6858D9AB6A1EFE6D876823F417B97ACB12B1C1E9636B459B77D4E74),
    .INIT_48(256'hB719D4EFC55624C63CD6F6434D40A8568CB88BB1C3D88AB1CD61F381FC20BDE3),
    .INIT_49(256'hA0BBF06DA092E296F3A15517EBFF92B9ABCC09F7B294FD9BAAD79D9991AAAB86),
    .INIT_4A(256'hB90D46B811FA99131D68838C7FB5A36EA7D6CA65499A245A6CCF9CDF1F15E805),
    .INIT_4B(256'hCFE2ABEE2C597CFFEBF816C7D2A4F50B70DDA3EF5C8AD71DFDFA4DCE6D94CBFE),
    .INIT_4C(256'h4A626772EE7527E6CC257FD5CB518E64FB360BC261D5A29056F8558C6E969CE2),
    .INIT_4D(256'h0246EED530520CC5464C5EA50A58592B5558B6A1A4D53402145C28A106850EFB),
    .INIT_4E(256'hC961358D433D86C92C33A431D08372C9717B2442CCAAD0601175B73018257047),
    .INIT_4F(256'h4ED72FB0B824E7DA09928D05E87659E003DF5B93D3899F35714384917392716A),
    .INIT_50(256'hBC6986EDCFE19003A16E2A38BE012BD5A2075FC7AC460B8639D0E49267F52C3B),
    .INIT_51(256'hB81F0277A0639752A1A685FDA79720E4B6AD2D086C9C65DC3E15BCBF48CD4063),
    .INIT_52(256'h0AA807C1BC10772FB596DFDE3C0197C4A3AE323030F5F0A8035F187FE8CFC736),
    .INIT_53(256'h744A9169915E83DB080D1832D0131C33DD9E41E9326DC25CEE984BF3B05DE864),
    .INIT_54(256'hB4F96CD7D40F22C54157BA55053D89F83135D4F0EB88B9300029351A7B93F00E),
    .INIT_55(256'h59B72C6CF3C96CE0300CE3D27A8E071BF98FC0C709815A2990492C63FD59F29A),
    .INIT_56(256'hC968626A4F46512545183AACA00137A7FDB3BE77CCD7D237D18A9822F8EF0639),
    .INIT_57(256'h497D3E6787357AB967355880918D06DB192F9EC079C1D1165BFC5FA1F2F0F73B),
    .INIT_58(256'hEC2C0902F313762218CC5F53ADE2F13F103B2F29B109116176B84CDE4187DF81),
    .INIT_59(256'hF315A428A06F1A3ACAC12761B00FDE19C3CAEE076CFCFAF7507292EF1404939E),
    .INIT_5A(256'h1A5FAC38C837E8F2EF321ED3041A234AB4152E1E36F7B5859B3DD64099346212),
    .INIT_5B(256'h86A4E3BC0189449372FB5F424625353C16A08702E2B86BDC643CF9DB75A1C421),
    .INIT_5C(256'h31A6526D8B3F3A4B87A0E86E6B93F1DDFDFA57B287A367A924AFCD33CC0646F7),
    .INIT_5D(256'hC8608D7F2E8DBEE447560416B458D89E0A485EFEFD541B9D2D103530BC20874F),
    .INIT_5E(256'h26AF4B081BB6E3A2C6594ACE8D52223C2CC38952D0E311045CC2E42BEF1DA20E),
    .INIT_5F(256'hB9EE26F8A9EA2FAD26406356B5D17EF1EE2C5BA2FE6239EDF17D198C6B40C5CA),
    .INIT_60(256'h86F760AE2966A3C50543515C58CE772BD48654302567361BB9CFC542CEDD9E7A),
    .INIT_61(256'h94A9450D5EB10C3BE07CFC94D79CC581133AEFCA0694E1E049611634A5EAFA37),
    .INIT_62(256'h8CDF2FE97D10384C9B71519D9332834D2F26CBDC979E341703924F98F430BF67),
    .INIT_63(256'hE3DCE7218EE10F3196D4AC3D5E2A65E229223AC276B560D0DD3F96B392F9A1C5),
    .INIT_64(256'hCB4A6CEB993DA37484D11C1D5729157630D30B41593C144F80803E71F9A71CA9),
    .INIT_65(256'h4D818A961445657B90521A764075F1A9B17E4DC830BDEC80E49AA2E092E8C2D7),
    .INIT_66(256'hE3A444344DC780CBF3D519F195C1680B5917613B17706ED27B77BFBE5881CB7B),
    .INIT_67(256'hFA769B946424DD607D71A363D2BF7845FDE62A35E04EA2FC06B49E09B5460C9E),
    .INIT_68(256'hCA79DF1A41F28EAAC5BCB69049E8129703B2F5255F35A412F1692AECBCB48C94),
    .INIT_69(256'hCAC34F2309AA84606DCBAC60A35093F6E14450F6EA2C2342A31B29FEF4DC295C),
    .INIT_6A(256'h358328450530DE4B2543E5930EA4C1B7B7F9275BDD6EFFA6537FFF466C5F028B),
    .INIT_6B(256'h5CA310A444D0A08D2F7539C01A490A9CE5CDA7CDB5EEA6AB0B274A5FC1BB3259),
    .INIT_6C(256'hA989BF07901BC9A3F276FCE6C91080ED322BA508695BAD9F624F5697E3C514D4),
    .INIT_6D(256'hCE159E43BE3EC89DBE035CB433D2886B9B759950DE04A3F6E7A0BB21222EECE6),
    .INIT_6E(256'h8CD810AAB08006F28D39615CD4D9BCC457B56183026440CA861EA90C6D3BBFB8),
    .INIT_6F(256'hFF79B1ECB5FD9E438C6B46ED5C61832FC68F219C4485AD79E35CD7EAF2057567),
    .INIT_70(256'hAE74CD1CB838C5F14D2BB13E06F0DC1915A0FE37450516CD5D3EAB67940743CE),
    .INIT_71(256'h18F9CAFB2DEE09D27FBE95FFB35C290D7942166ACDBA6656123CB67597DB5266),
    .INIT_72(256'hA7237F623719B142FE716378066BE7A10CDB4C2C977AA37F1CEFA0DF9772791D),
    .INIT_73(256'hDE624DDF499B3230E6332FC35A7B1B2DD6343B9DB43162D9C6C520506A580B82),
    .INIT_74(256'h8687675E72F61545888D1BE3E333002124CB8364AE298AC524D33D225B26BC41),
    .INIT_75(256'h82CC7B350E036FFE4DBCA4E12880DE834FCD036BFB7C9F0E299B2DCEBC49244B),
    .INIT_76(256'h560BFEF5F325523D969C561BB8EA0B2056CA314EDFACE40775610CC80DF61794),
    .INIT_77(256'h5DF9078DA5199B44379DB608B0051C34E950591F59FE305B016C4EC2679E8E4A),
    .INIT_78(256'h2A22E8642FBE4F40552C08A6C3F2E33D939D19134B03F03B34C7C68352BFA61A),
    .INIT_79(256'h8EBCD18CB50BEA951939D9CC0233C1A9CB728D912D955F335AB1746745A15C0C),
    .INIT_7A(256'h00000000000000000000007BED7BCF2B248F907D48182159705C88A0DAC920C8),
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized1
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
    .INIT_00(256'hBD84CCD00B501BDF645E69E4754772310F559928C37B058A15F3EA5445E50474),
    .INIT_01(256'h4E2314BE18BA1FA5D9593BE7EB793E979356A0A625A1AB6161DDBE60DE37BD1B),
    .INIT_02(256'h71D06F369EB58E27526F9190F75B4950B4CD59EEB7DA87E292AD0F35837AB51D),
    .INIT_03(256'h69B87CA69C947DDBF95DBCC4533B0CB2BE98B204ED4573B75B1C3D92AEE9BD8A),
    .INIT_04(256'h10EB3A44C4C6BEAB0EBCAAF81D0EFCABE9C896614EADEEEB55C172F387C410E3),
    .INIT_05(256'hC43083BE36B2BA98642EA352C68B30AE91C740A3F459BC92FE9CFEE8B3377AC6),
    .INIT_06(256'h6549F68BD73D3941B0FA2D3D71D96A2B2814167A1333D68AB70E739A10923D04),
    .INIT_07(256'hA76B10971224EAEAD39842DA72AF9A9CF32FD8D89345184195059E35FCF49AF8),
    .INIT_08(256'h17A58FEA3B9A5C3A076F0086F2C2DE33417DF01EED0B3661600F5037BBD970D8),
    .INIT_09(256'h9CA18E45913CC12C1EBDF38759924A2914734871247A12265D5DF2D6C38ADAE1),
    .INIT_0A(256'h78AAB83E201B0099450967BF13B3F66A17B26E0E76052022185E9CA25ED2BA3F),
    .INIT_0B(256'h509FCE647234C0A7F6958F9E0B4D5F39150037ABE8DE0441823E9FDFE913E818),
    .INIT_0C(256'h20819CEF2E2418CAA7CE6EB39A75987BF7007C4655479B1A5B1241E455160EA0),
    .INIT_0D(256'hBA82AC02ACB4829A2FEED443F7CE14B2AEC1682260853DCB538E83466CE1C08A),
    .INIT_0E(256'h992DE8BF9162EB0D4F3AFDFF9FA43CA15759169923F715F13D55E574F985268C),
    .INIT_0F(256'h22ED92238D29AF7E845465A8804854E510E59CC2C146BC91EECE0B03131F2D6E),
    .INIT_10(256'hCA742B9F22C531D431B0099C3446EA86C12D5A5561503322AAFAB4B5EA49D883),
    .INIT_11(256'h95AC19947DBB41F9A9120CE475A10DE9F1AF7D5E601CEABE0BD4F3BC606AD297),
    .INIT_12(256'h3DC52C7940F0E2DA5D846DE68D60C5D35944C900CE8CDDEC726587730E84C509),
    .INIT_13(256'h376A4362CABECF9BF1415F0E8146356BBC51E16DCF6BB7AA2B4A2BB921BCFE94),
    .INIT_14(256'hFC2D1E576596F4DB3B4BC6DD47808070734805566DA09D34EEA53F8259D44A38),
    .INIT_15(256'h13D5ADFB48DBBBEE2DD4773EE06AD7547EEC4AC969594170A45124F224F37D0A),
    .INIT_16(256'hBDD9EB0F71E1DB1B40F5C8F19C53B6BD527FC469F12880BE0EAD9897C3357155),
    .INIT_17(256'h212E0FF52F46C27925A41E099AB22EB4A0F3398BCC13123256D92C22F8288265),
    .INIT_18(256'h3D38CB3C1BF37615FA298448BA2B36AFB58315C6E612A1A72F3CC88F6D3D07D2),
    .INIT_19(256'h8739F14F5BF5C42CE86BB3FF1D5967AF0FA58BF5BB804D70819BDA708D2D0613),
    .INIT_1A(256'h3F413CB7A817CF96795624594A6C86C66D56E88B8E065436D32C8BF6148B9976),
    .INIT_1B(256'hAC6F106402F16B16474AC9826911A1FC5AADD11328C7B919808C7478DAED01E7),
    .INIT_1C(256'hF32D4FBAD908F7DBAEC0729EBAD9C592DFF3B626465D40539432F153D52A359C),
    .INIT_1D(256'h7E6E8B7F22E49CAAD2FDB3E21B0A2FFCEF11C8B80F2933AD2F98C9726CC9E2FA),
    .INIT_1E(256'h64397FA71D382F0F9F6DD3B99D746785DAC5168D1C995D7A4F22AE69A5A2E940),
    .INIT_1F(256'h8D466CD16F8E8692181CD8FDE9140165F562B294B43F528461002579DA4C906F),
    .INIT_20(256'hF69A382156BBD6F15EE86CD391DE3BA1865068ADB3128B0B298B1FE0037780A8),
    .INIT_21(256'hF03953B644EEBCEEDBEC999C193D980419E9DCBAE590EC0EE15D8FC71C37DD67),
    .INIT_22(256'hA2F28A308A617BA49291849EE6988066315B1BBB224F0C89501FCB7B51A612C0),
    .INIT_23(256'hF2697E7BB0A92712A62ED2EF8871D459386F40C66A6D730B38ED75C9D0A8CDDA),
    .INIT_24(256'hA0E7F7466CB5E1BF641074B4E29B2AD801B6B31C7C480E226FBDADCA16211971),
    .INIT_25(256'h9FFCEC86C8CB4607E2795CB4FDC51232884174FEBBCDCEB29A333F840F1151B9),
    .INIT_26(256'h1668CDF70826225D05D89F415B403F49ED4315E58CB9BE0AAE50CC74CA80AACC),
    .INIT_27(256'hBB494FC2362D65CEA1A18339311F76B75BBF6ABF4931F6BEF0086128DBB376F0),
    .INIT_28(256'h9F0E5825B9773C3F95FBC6169E3E2DC65DB4C8616BC41DB2A1DEEDFBC22646AC),
    .INIT_29(256'hE9542A25A3388E0EA784576C40AADF3E2F3E6747E7E2C2DC9DFADC28DA5ABF20),
    .INIT_2A(256'h261C10D8747DCF4CAEFD3B914B8164BECADBC2F092B6383EF9A0DA63A3F9A7C3),
    .INIT_2B(256'h271C659AFFEF249264F755C03F9BE544E6EECD50BCEACEE2E701C91911F9667B),
    .INIT_2C(256'hD70C87C87E46BEDCC5AB6B3594CC6A4B236AE8C30E0488A37C03C7E04736525D),
    .INIT_2D(256'h44A9CB1F158CFAAC02B0B7BE0BAF59A9EF43F781A1EA3589FAE9194933E2D465),
    .INIT_2E(256'h6F83BC4ED63BFFF5287AB6EC5DC9E4854A41586F5BDDC25CBEB9C23EE9979A47),
    .INIT_2F(256'hCCE83D472A050A91752DDFF916CD4587ADAA681EABD430AF4E6C49CDF188204E),
    .INIT_30(256'h76539072F7FC885C2A07C76E2182964A5B4D6106F7471AEB01D51FE43811896E),
    .INIT_31(256'h1204FBB798D8AC21268634C0762EFFD8A4205E08CFEE03D9A2F20267A487285F),
    .INIT_32(256'h3ABD0653AA545BB8D0A128457EEFEE05B283E71A121842510731355F160958D8),
    .INIT_33(256'h1BBBA4DC416181E6C6F3284CFC2BD6245226E3455339EDC3FFC335F9338CD9AF),
    .INIT_34(256'h20E85B5F6C32CBD6A7BF40C142BA587D810BF50C4810287082700C536772645F),
    .INIT_35(256'h37009F33291130CB8073E7C1480DC794E89F434CC35B610C1D6A132A1336701A),
    .INIT_36(256'h6FAD9D7A6232CBF608EA0A64914A69FF4D1CC314B4FF834F9598593C6EC897C8),
    .INIT_37(256'h54B06E57137DA62841C71BCE973A447957D287CB3C26DF098024BAA492AE4822),
    .INIT_38(256'h06ED24CCCB813CE34BE62554E28F8B5E519DBCD313280521EF2E39E9F7ED4A99),
    .INIT_39(256'h0BCD13C3B35EE238E5FBE1238E3F741EA9E9B00D4FA979BE9C8DD5EFE439988D),
    .INIT_3A(256'h20500972E4C621B6067E182BAC777AA7A7BA8F837BCACF5A78F1264133B017F1),
    .INIT_3B(256'h9F4B030B737281A465EAB69F3773ECE9D1098F962A288A847A3A62A5D295FF04),
    .INIT_3C(256'h99BE56BBF5F1F67FEF22FF0C87E45F6071CA78A52596F8FD2AC90233A793D387),
    .INIT_3D(256'hFFE71421402ACA6FA5DD5CA8DAD4EA4D170BBBBC9C9900982F2BEDD6BF82A368),
    .INIT_3E(256'h6AC5E6D0478AD7B7519F787464CF823D8C6C193EE7C3CA81F8AD3A29A917C550),
    .INIT_3F(256'h5B9E82B8DA36F467B61C923C76592B1F7DAE7D599BE116A6DE8F4BAD18BA5A59),
    .INIT_40(256'h6B82B6B223D47C94607BDD5DE51B3EA8EE3D0824E325C906BE329FD91167E7F3),
    .INIT_41(256'hCDF494FED7BCF288E68E298E10F89C73DE701467D0CC73060A30C130BF9CF8F4),
    .INIT_42(256'h58A22387A30B66E4B7393695743C918442459D59D33A9483BAA3EC056FCD3C40),
    .INIT_43(256'hD09469B20000EBC50FD30F0B5F54251DC2D29A6BBEED435ECB95906FCDB0012A),
    .INIT_44(256'hFE9FF1115DA24741D1DD5AA512DA01853C45C7304B3D4989DBF896E83495B5A5),
    .INIT_45(256'h76A2EAA415F8CD067E7DC511AC844344A055E3E5FA513076FE46C5031E4CBE34),
    .INIT_46(256'hC75F3049390A8A79510CCC8B6BBC89F3215B15971B0568BA03B944C5735DD591),
    .INIT_47(256'hD603FE4A7F18AF41D4400C22D3EDE98D623A439273BF32293E7564FEEAF0FF02),
    .INIT_48(256'h87F961AA3248CDEF0C921F4C12D7141F4B5FC04DF1C584D12959149EC74288E4),
    .INIT_49(256'hCA0529CD58F8E5B072514C5D2AB5FC0956E27B89F4BA9E5F21AC08147360BD42),
    .INIT_4A(256'h117E2DE83E2AFEE4BC83D95468BF989449CE726D617C9C696EA82E4BCD995A7F),
    .INIT_4B(256'h36D081702F6E28D3C66EF17D7D4F6999DF5EDC119CCC88AA80CF279CC1F8F991),
    .INIT_4C(256'hFD1A4F89803626B4D5936ACD74D6598600362A3972B1F46145AA1282AB2B29FC),
    .INIT_4D(256'h761F9C1888019CC74393800807CBA5E24978F56A7A0FA7DB15F30BADF5F9F817),
    .INIT_4E(256'h127D1FB11B17000FA5D1CCECBE331BE9585BA0AEA6D36F228ED5A7035878C391),
    .INIT_4F(256'hF2F6304080BE78F81B57EDB4FD4C942DFCAA9B06FA9ADF7062473E583F4A4B0C),
    .INIT_50(256'h4A4CF8CDBBF5D709F4CA79694B36178368AB749E8D1834897EE1742B70D6A178),
    .INIT_51(256'h675EC65BF5486169168A6492D0AC439925045E021C04C975AB69906AAC5E7600),
    .INIT_52(256'hAAD1F83EAF6FCE0F11D56398F827D9AE144376DC2E50F6B1D0499EAF995494C9),
    .INIT_53(256'h1D6B99E8D2805221FDABC7C21165576FB21616A0AFF7B92541B8675A9A07BF44),
    .INIT_54(256'h93E18D25FA31619773BD801B89E234E268D595226C6D36D3BD907ABFB0A3A8C8),
    .INIT_55(256'hCF75755C07509C0BA689A2C05E58B4C5214FA75DD49066E3E34B98C86B9C2123),
    .INIT_56(256'h105479CD1D75ECBE4323E2AC880091FF995B0421D6891F471895676DFBF55162),
    .INIT_57(256'h3660240FE0BB39D5EABC8D4E3AE445B43CF9960C9A9ECC1BAC82EA30645CDC47),
    .INIT_58(256'h34AF825126C2AC757D2455C1539EC516AE4C81DAF31584973F8EC4AC02C608D5),
    .INIT_59(256'h6CC9FA97F1CB4B05CAFA9EF4AEF946119B10916A922D5144CF04D19D205C2324),
    .INIT_5A(256'h4626248B82DEB25F97C0061E0D026DB39DF250463298EDCDB5E70B59BEDB84EB),
    .INIT_5B(256'hDC17D73A67DA0BDF1E55C51AF8EED5062194B59CD6108EB2E62D9AB705C459C4),
    .INIT_5C(256'h951E57B20F2CAD6CC642F2F37BD3A50ABD4C261713215C509642EC193781C4D1),
    .INIT_5D(256'h9E56A209DBD5A11DB743588C6A016EA2BDC35523B37E6B2DBD2CFDD44758A992),
    .INIT_5E(256'hEB51396406EE86829745E30B0C6A7F499EB6FCF7EA91F3F8BC7884CAA2692AF1),
    .INIT_5F(256'hD032A07BCF3EB5CC88E233DD50B57758945336C04E59E77411DD3C4401E6118B),
    .INIT_60(256'h56B9722A9D8450217B9A8BDC809B1A466FA49A5729A161AF11BB07E6DB65484D),
    .INIT_61(256'hDE4C0931C37EE69C4C83028D46D479E65E932A28F2FCC10E5324F1CEC1170966),
    .INIT_62(256'hE19CC345D42160002DAA40646388498C6AB6F4C5E8AF871C64076BFA7BE5E53C),
    .INIT_63(256'h15DFACC10F3059C74FF1D7E552A3634AF92A86E6FA80FB429315C388524C16B5),
    .INIT_64(256'h257DEC609FE1008AAF1334853496CEBEA9636665487EBFA0DD72B33D84B37F45),
    .INIT_65(256'h72D46E55BAA577CF354BF2F699EDACAEE810D15C35EF39D6728AF98350C64B07),
    .INIT_66(256'h99964F2D1DE7962591071F306F6E87DDEB5158953B4F38E24D8E4090FA1B12BC),
    .INIT_67(256'h4F4A816082E3B09DCAA9187A7B6847CBD5C775F9FFD1805AA4B5383385A29AC1),
    .INIT_68(256'hF8EC3D4740B300473781F48EE472657985990E6834D53C0968854C20ECA4E5A2),
    .INIT_69(256'hF80C9ED9F8BCB4F2789DFA5AFF07E0A4ADDB6D55E7076525271778706A591152),
    .INIT_6A(256'h8FB85F0A6B2010AFDDB776DCB1750856966B8632B8672E3DCB2ACAC6ED149B87),
    .INIT_6B(256'h827D6010C1AE022EE062EC365D458904094E57FE588A39C8BC4AC2ABAB64CEC2),
    .INIT_6C(256'hEE7E59F109CE044EC1241A47E4AD4F27170803785A99C0B58CD9B6C9CC9E3B38),
    .INIT_6D(256'h5F09E2A5C9E730A37155687E18DC123AD6B0D56199B161EB87C9BD3045700649),
    .INIT_6E(256'hCE880A2191E59B58583EF68ECB2DBF9E5FAC8DF41448EA00F30F731D174BE242),
    .INIT_6F(256'h8770EF9E77DDF36F55A7BD26EEAD4D60C4530179521F129E6387B4B82F18288B),
    .INIT_70(256'hF799EDDCB898B8D3BD7D017027A5CDDF573967E3AA256FD8D0E0038E3FAD2484),
    .INIT_71(256'hF1064ADA30AAC2EB18D45F76E766015806134556664602CBF358FDC2FAC34431),
    .INIT_72(256'hAAFC430095FC2E74CBC36E7B0ABF4726F89994AD9A2E2DFBA3B976CEF7BD61FC),
    .INIT_73(256'hEF5D50E67A5EA6B6E067E8B485D6B5ADD33A77A1893C8DEF47013B6BA8FD5C4B),
    .INIT_74(256'h0AFE5EC75B03BEE2AF65F4630F6F60D3A2C0B7F6EF8EEFE0AD5C8C0EAC651B77),
    .INIT_75(256'h83E43AFA5BD5795C5FC7C1B954B0BAB36959F314EABACDA5F2DA13E585AF1BF2),
    .INIT_76(256'hB8DCC54909ADD177C64D1030175FD744C391BF8A7FF2707C8057D70E0337788F),
    .INIT_77(256'h42A6E9CCCDAEA179237A4CA8900EFCAC676FB500EB2E681BC8077CADAF4C1868),
    .INIT_78(256'h51E92382FDD3C41A403601E86DF518236158C1BABA99CE87E57143C050D6E789),
    .INIT_79(256'h27EA19C55532B653F596A4EE51AC44A2CB98140592777B89B18E98A9BC5796F8),
    .INIT_7A(256'h0000000000000000000000EB0D00C27D82FAFF0E4BCC8C332301E9E762E7BEF1),
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized2
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
    .INIT_00(256'hAD103FF5400AFD481502E2F07B74366413DF05373A8488CE1A0282B477C2CA3E),
    .INIT_01(256'hC7F569C30A9A184DE77AA27F3DBA589125BBAAEB110D70001168B640A0AFF3AB),
    .INIT_02(256'hE112A80450D802F833BFC8B41991D24F1D6C53169CFBDB91465C2CE30FEFECEF),
    .INIT_03(256'h8D901807E5F973C2598E40D85D830DA23222C5A8EEA71D5722589DAF9F8AA861),
    .INIT_04(256'h1D6419D4A3AE6F9F1D41511D322E53849AF5733DDFF4A811B3287DE4E8FF52A3),
    .INIT_05(256'h1A29FB672E0A19C5A256EAEECCAE56D138D249F02882888EECB520011156FC7D),
    .INIT_06(256'hD8AB2173C7AEE796D2EF4FA1F85DFDAAE2E5F1F022E09A5194AF7316BB3AC110),
    .INIT_07(256'h61D0E568C9C4419237AD1CB6500586F63AAF3454B84C2777A5E593B5EA70D5F3),
    .INIT_08(256'hD3C17720D56BC93EF1C6A7B518A52A8C9C96C4249FDFE955A5B87AF85FB200FE),
    .INIT_09(256'h36790EFBB89130961638E3809BE1DD6009E470C4C80EDF6D5F5B8EC95F1F7C05),
    .INIT_0A(256'h6E0AB73624C41CB8A0B5C6EAD606834EF3C9CBAB7EF55E3CF80DC36F46C0F377),
    .INIT_0B(256'h3C00E85B821E8EB6DBBA1A9B4B20A4EB32C9468D2DAC99980252317193DE9283),
    .INIT_0C(256'hFD1625D3AFED564F6B8DB172918FA40ED60404600BFA6E9C8C709AA067E257F6),
    .INIT_0D(256'h2624EC4FAD2B62DECC7ED44A8153AEB12AB3C9B740FC126D087224A747E49DE7),
    .INIT_0E(256'h14230CC549F313A473F1ADFE101A7C1F51C3DCDB2D47BD1BCAF84B73082480EF),
    .INIT_0F(256'h7E09D45287093422B5142ACCBF1A0B725F5363648CC06B9630031D543E353927),
    .INIT_10(256'h4A71E4E5F0E2E229C3C6EFD771AB5DC1666D507093943701AEF66CA0DF5C8A30),
    .INIT_11(256'hCD0A787CEA63898DDD1F2F3B04481AC1816D8219BB4B6507F1AC622B16818238),
    .INIT_12(256'h58430691973D839BEAC9765E90168B03A32EDD07B963FDFC20DF006B30C5C621),
    .INIT_13(256'h8448D772136E934BD0D438F6D74A715DBB33F2EEDEAFCF6501D776531F9F87CC),
    .INIT_14(256'h68ADFE01C822C8355F78F16C7695C891C386CF0470EF530D49B142EA0E718CF7),
    .INIT_15(256'h910FB17E75DE4168B37737B4BF96DF90BC3C3340629E7C366BB0873E68C09972),
    .INIT_16(256'hFD9947DFAF98778FFCD2E308D9CDF2A4F66E2BA3B1FAEAF805584DD5FDB2D601),
    .INIT_17(256'h81EF53023C0FB3A1D0AEA386ACC3161E36CCA97ED3B62AF6F7098E391027B7AE),
    .INIT_18(256'hBAC1273922C840FEFDE1288004336965D4845C193EDEE1447F4AD082FF9BF843),
    .INIT_19(256'hB5829346F3535BDECE979C15ECE9EEB4BBD3F519EE95848EA3887D828E2DC25F),
    .INIT_1A(256'hD1A877C4C4EBD7F38A428C330DFEA4BFA919CF0C484C828D8E86B29FFB9F2330),
    .INIT_1B(256'hAD98493D61AA3D70764D7EF1C8E9D42128E08191A11DCA12BA9C66D05E69602F),
    .INIT_1C(256'hC24EA0F74CF53873369DFC542F4E0F341B85C4B844DA36F60F38DAE466FFBBDE),
    .INIT_1D(256'h7F3EC2FB2FAB5B609EC9A044943E504EC3E9FC1932B207C2DE0599E528366D0D),
    .INIT_1E(256'h1ACD6EF8D662D2D2418B9218A04CA95A6795BA7EC6DF7BE3C87E7C6204F1200B),
    .INIT_1F(256'h7F08A810A71AAA60DF126ACB7AA7A0C5177508B680FCC73F64CD11D90ED1F169),
    .INIT_20(256'hA71CAEF4675BD0C7C68126757C2557257D087BF7B71C177B9EE8E9AFB918BB5C),
    .INIT_21(256'hB2287C37C65F9944F679BB2D66BADEF0AD18E50E8A0D7BC20041CFC2BCC2BDCA),
    .INIT_22(256'h8BBF58D316A394008D404582CCACCE3C92323E023A1673A3CBEBE2EBCF486D50),
    .INIT_23(256'h77C544DB37B29CB8BDB109FC3DFF7D7594EAF8307BA415F0E18B9C6C1B94CD73),
    .INIT_24(256'hE08857AB5874F3EAC9E9FE1A36F30DFF7682F04D13AA2B4470601A7B368471B5),
    .INIT_25(256'h53E5170B7C24D3DC7A5AC2695A87F9266C708EC383E886327F523061E07460AB),
    .INIT_26(256'hF1AD3A3F1EE65B6FA182D4DE6F3CCEC70B2658F4935B71A3F5B9062FE1A45446),
    .INIT_27(256'h82AA3BE34D09775156E47B1111344330E382848E80B120180E22F2C804F68604),
    .INIT_28(256'hA31AD5E80FCD2CE1D23B422FBE977FF8BDDF915E8AEFE3B4AA914309BEF914A2),
    .INIT_29(256'h9B634B12CE526DF0F81C3C802B5DC9A9DA77FA639372AF462D7AF58A8E0B6D51),
    .INIT_2A(256'h7E60EDB359787A45C1F4C067C83C7CDDEE92CF7E08F69E940CD3A66C59B0CAB5),
    .INIT_2B(256'h7371C9EB64C302240567052BB3E930F2CDE6E382A510438F330D83FF4BD852E8),
    .INIT_2C(256'h10BB51705949267F6A10A4C81F13331A7570468B0A1FC42D808E722E47C4A076),
    .INIT_2D(256'h762B66AF5AAC9C7C0E59B3D4485A1D602D3EC08C81D2097C6D5F92F80D69EB5E),
    .INIT_2E(256'h4587E8F81A1EB2A1DD4C0AB3788C8F877B5F3B419CE028545A8ED2E60D693DE5),
    .INIT_2F(256'h0D5B3702FC8367DF3989F8F1B3B0CD258DD173FEB84F7379CC46744DA5502E64),
    .INIT_30(256'h5210A9E9E4483333F193B00E6B1CFEBA4F46A5E6B28B5C87E82E6C9A1E3D4C34),
    .INIT_31(256'hAF6238ED7805B1EC0CFCEB3B69D594F5484C9720A5868345C5407D2B536BBE72),
    .INIT_32(256'hA99436E03E51385C43F2C5A9C8F0D2F38E59A2273B592D600C508643D9D18332),
    .INIT_33(256'hEEB2C738DA83F7650CFEBF7CE6E41C7B7792D91531FF7C189555B1819C4C669C),
    .INIT_34(256'h512BAC3E2F1090283492CBA83C4D49FB612A8D3A5AC8C063776CE961270F2EF5),
    .INIT_35(256'h5BEA7CB1599B1420F4F494C519FF045CB6B2147BDF19DC1DACCD80056E8621C6),
    .INIT_36(256'hAEB31E508800D7C7797DF1AD2449CEBFFAA2D6EC183BA883608C19199DE4C088),
    .INIT_37(256'hADCBBB55BD34D3102D2A06A1C74100A0A25ED7AF02BD03CB58D4817F2911A873),
    .INIT_38(256'hBA185F2E7AF48DBADE48DD341CFBF723120777BBAEFD7695796B182D00A91277),
    .INIT_39(256'hB29CCF1AB8DF8E0FA5EFBFE941EEC684C6F4220345BF004280BC9E730B24880C),
    .INIT_3A(256'h856941CCFB50397E031B5759F73FB5A3329069A634589FCA49D9BC6CC2013552),
    .INIT_3B(256'h258DA2F7656823D0DAF1B026ADB84891588C06F3A774CF447410704DA3F853E9),
    .INIT_3C(256'h08B0C74B861387527970BC7C36AF547341AE628C8E41772C5DE552B6C831AC2B),
    .INIT_3D(256'h1404F6CAC5479E13440479FE053FE28FDEF03401FF69DE08C3B78F8D3AA2E7A4),
    .INIT_3E(256'h7FDDDA369E485FED0D8682BB9CAF7E10FAD2C8D5C13CD387790185F51C5C2CB4),
    .INIT_3F(256'h4E1A7E50829E15DABFBD45E79CEB88BA7D8678C8B5E238626D299BB51D23E4A8),
    .INIT_40(256'hD0BD6A8BD87FC123C846C8C791F9CC837B2BC42920902F7B649F42EB726B6598),
    .INIT_41(256'h6DF7297DECE0CB063B0623E005B397300E1419DD33CC9CEFC2BD4199EA53F65A),
    .INIT_42(256'h4CF9BD930E89FE5FAC0DFC63BDE2DED5B51B45B8831BCDF14274B5E0B488C573),
    .INIT_43(256'hA570CF976A05818A0FF30E453042C366C290F13F211CD36AB567924056631226),
    .INIT_44(256'hC747DE959730B8D70ECB5AB1E23332F67E2CCC6EBEF53DEDF8BA30B9DFCD102F),
    .INIT_45(256'h76EE73C87273456386A011A714A1EF3C9DE819C725B50EEBE11E301AE63F121E),
    .INIT_46(256'h401DD07DEA8C27874D07D6E0AEA896475F3F877B2C40403A0C8BC25FA7F17455),
    .INIT_47(256'hBC3BFA5C72275632D16A9C386B943C97257A39ABEA95B4D4CEE09257BCD6ECB8),
    .INIT_48(256'hE9B5B843719AF1392B51752BA386B8C7ACB804F781BCAFBC54F575169E2CF00A),
    .INIT_49(256'hE758C10B321DD4A04C250383EFC13DCA07CBEC4A12A6299BCE595018B6B5AA5D),
    .INIT_4A(256'hF807D6A943A2722B7CBBF9D572CCD150E25CD1D7F754C17D970A9C7BDD05B5FD),
    .INIT_4B(256'hCE26784F216B09F01CE31F6A639AD8D176BEC19F69449301B94555E1D0534FE6),
    .INIT_4C(256'h2EC2471026AC362C39BC4317083822B8E1A87B573FBCC6DA190D9F3C68B2A401),
    .INIT_4D(256'h258BD6A193011A640550D9263F46C5BC058C13E9E3FED30C9ACE9C19BD4FF38A),
    .INIT_4E(256'h18C46E753FB1B4009C22CF19318ED63A5C52C7677C822D5470ECF4A40E3C4319),
    .INIT_4F(256'h2A2E548D07D446F2C43CD83170EBF1E38723E31C86F84F3AB08FAA9903ADC447),
    .INIT_50(256'h19EE3418B48FDBFD638FDFD3F0B2BBAF280144B0EFA305BC64AFD4F37EADBC2F),
    .INIT_51(256'hFCD4455A8EA722E4DE2D96DBE5652E1C093C08BE0FCDD590A315AC0459B07092),
    .INIT_52(256'h7DB7E403C7D1A089935853FC20C1626FA52B2697B107FB5A5D7582D58ACDFF89),
    .INIT_53(256'hF08A0C2CDED0A9D58772319A000B81640747B9DA45910659F8A8B0ED1C644F1F),
    .INIT_54(256'h3A45A49328EC749D0679FDFADBB7B3582FCBD320B58E57251AB473D044D7C1B2),
    .INIT_55(256'h32CA9DD3EF50540F327A7B01FBC324479DF0BB248C9810CB1EFC95CBFDEE7C60),
    .INIT_56(256'h3E0724FC1DE7588250E3B5782259758EECCF1FA127CB7C1754523FE707A61A8B),
    .INIT_57(256'h787ABDEE5E80212EB5D0FD23FD9358D1905234A4521635AB2DD1CEEC683D2D3A),
    .INIT_58(256'h750F2CA6841AA4E12006F192E84986C761B5AFFD7B2D9049B6FD7E80B734C497),
    .INIT_59(256'h75ECB28D8D1BBC62678210CEA3CDE4AEF59564C4B431EF1D17381E458F0BBA7E),
    .INIT_5A(256'h126E9C72741A1FDBBAE538B8D3CF2066313ED8B60002D04035F409FEADF56C92),
    .INIT_5B(256'h4546E300F6E68EEFE3623C718BEBCB4A195B3A3D3B070D657CD97329EE92075E),
    .INIT_5C(256'h07FC1D7AF3081BD253940CFA6E6EB551E8C25422DEF65D2D1B43876AB423F096),
    .INIT_5D(256'h4E1C5796B565C273A69F2BB5A878C41FD6073990FA3A723A6681C0611EAD3348),
    .INIT_5E(256'hB44B118AACA320E740935F2C3269A9FBEF0AD92B91F5514D224FF7988C635D84),
    .INIT_5F(256'hCB36012E8047814B26DCD78B8F17BF7E7C18BB838C919FB442B9F6C47F743590),
    .INIT_60(256'h593EAADF2DC021DB6AAEFBB407D17B1C47062527CD25FF20B78CE8A127D7A51B),
    .INIT_61(256'hD039456983F65565D09BA7E7FCF4AED475090DC4F283693248464E560D7A93B8),
    .INIT_62(256'hBACC7DA8558486E7BB54A907AB1C1AB3A1AC30E0DDC593E6D3DB750F4837D7C9),
    .INIT_63(256'h5A76F20EA519945DC9CFFD1A5E52C72795890D98CEDA037F20D0B25DD4DE9110),
    .INIT_64(256'h5522A0B0E238C06F53742C40195E0B9223B31FE91C2EBBCFE479C271C0E88C51),
    .INIT_65(256'h6D950FD0DAE415AFE557B9AC33B4DA6E8D8C65CA28F4E516D4B6DA1857A3EE6E),
    .INIT_66(256'h04BF72E97F19106B6E43D66263334388882F4027175223D63A10F0611E673A2B),
    .INIT_67(256'hA8CD1B33927F78BDAB32B10EDF4E83A2DBB4C4150E5BD0C54AF3F93FCC7352E1),
    .INIT_68(256'hC98C9FFAC2ED81E427CA9732D55E27B8DEA1293BBB739D3EE37AC39D9803B039),
    .INIT_69(256'h1704ABAD4BAA7D44F43E77673117FB007B593C21AD1D756CA34208ED0893D0CE),
    .INIT_6A(256'h21E3FF61C7277AADD1946C2DFAD06BC273E1D6F6A7C512D5C7F0DD952A8B0D34),
    .INIT_6B(256'hC4FC77C2F3DA154F18454E3C60CD2CB4E7D9D37967F0723E843FF3C05A3201D7),
    .INIT_6C(256'h752EB9510CD5F013A895953DF760B17EDD4FB7D93926F59F449E02729DD0C21E),
    .INIT_6D(256'h2606CE91E8747F27487C61A6D1494516D5849283EB13B48668BC348D4E45A00A),
    .INIT_6E(256'hF15D68994331EF47DB3E2EA5123FAA182E6CFBE4D9A2627021BC7E2C3E4FAD21),
    .INIT_6F(256'hF01A7449048ADCC18D90CD34A1B78A7CE8A03A517F6649E2017171434E4B955B),
    .INIT_70(256'h46A26A8543B9FB82972E67B1E6366B700036D679EEC87BAA91EB56ACBE1CBE31),
    .INIT_71(256'h44ED727E903EB37043F260A4A5D4E9776820143CFBD5A499603600079A8A0FBE),
    .INIT_72(256'h646B926CF1047931AC5D6DA5F4AF42030152B023D1FF8252BD03662E29D6DF6F),
    .INIT_73(256'hEADFB708C465EF0E764DA3B2CAD733BFB6606EA6D4AD5E1CD4C706FA1E0FE348),
    .INIT_74(256'hB029CF790F942AE87392C646DA3D3BC7154002A1DEEB20E6CF36EC3F4381E3F9),
    .INIT_75(256'h6856225FF185CAB9516CB4EB6841BE997E06A01EE868433DECA67D11ADA6FDD4),
    .INIT_76(256'h26F577F28ACB057C2A59A8965DDB0989F144EDB03B198CF1C07D15BB1D9EF711),
    .INIT_77(256'h4FBD5A7835330F3ED0927F151DE4A06690AF1654E3CDEF51CCDB4DD917BB5C91),
    .INIT_78(256'h0E63C71C2A9CA3BDF5863A610B265D1F8163111CCE5385B602A2CA31ED647239),
    .INIT_79(256'h6E92AFD2154939942214D98D21D84043038A4C6E5AA5DC14CFFB943DEA70C571),
    .INIT_7A(256'h000000000000000000000003FF94477F62AB47373E17FC8A21FB148921A4B709),
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized3
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
    .INITP_00(256'h9FA12267F61D763C27FFC0C00EB037D1F47F006340D854561C077EAA31949CB6),
    .INITP_01(256'hBC29F6691A8AA9255588FC67123FBB5C48A08C2C5F8E78872A15C5F906391F8F),
    .INITP_02(256'h11F570184BDEAF486C28780AFD4F05EDEC703F7B2F025790EED7BD645278EF4D),
    .INITP_03(256'h180498005665C0004F6F62090DFE8C3C8B549EF9DF1D8EE7D8EC48118F1466C0),
    .INITP_04(256'h4FE7CC4116D0BDC02C49E017F3BA03799BD03FA6D817EC3B81FEBFF04F7C350C),
    .INITP_05(256'h60C996A91815100848136A2A012C0B9900F44EEEDD8BF81BD83FF4A442BF08D4),
    .INITP_06(256'h54ABE75BEBE391FD6CAD0E542D8F5BADA94F7D7E3BED8BC300001D6AA46C065E),
    .INITP_07(256'hF3A8B645C72AF21D3888883541727660052339527DEF3823C9BF61F3EEBC2E8F),
    .INITP_08(256'hA26EED0AA3674A089E91F305DE5F199625ED89C21EF94D89E20C9E75FDED8AF4),
    .INITP_09(256'hA2B55FD3E8779943F5DFBFF219593F9A6118C693DA79A1B19EA1F4EE4A3548A0),
    .INITP_0A(256'h0FC77F00D15FF19CEE580024D4F648352EE1ADA032CFFC8890B04016BC1834AF),
    .INITP_0B(256'h0F5073CD8253EF124607DD4DD3364453FEBBFADBEF12AADCE33DC9FE0BB8EFF0),
    .INITP_0C(256'hAD9B1D37BBB6A8BE5DCEFA0BD2A9368370545E0EFC6805668CA27BD8F3C1FAA1),
    .INITP_0D(256'h6A0E0D445BE98E807C00C2F5EA4E65F78E588F99F8A52C43F0B62292B9C35304),
    .INITP_0E(256'hF61F7F34BFC8E6439EE24D18B0BC6493938D21C56AE43A454C8E0A6D32D865FA),
    .INITP_0F(256'h50A0B374D1EDFD8B154CCC97EA46EEC62A7C91998B938AADB872BBF997E58D41),
    .INIT_00(256'h0000FFFF000000FFFF0000FE00FF0000FF0000FFFFFF0000FF00FFFF00FFFF00),
    .INIT_01(256'h000000FFFFFF00000000000000FFFFFF00FFFFFFFFFFFF00FF00FF00FF00FF00),
    .INIT_02(256'h00FF000000000000FFFF00FFFF00010000FF00FF00FF000001FF00FF00FFFF00),
    .INIT_03(256'hFFFFFFFF00FF000000FFFFFFFFFFFFFF000000000000000000FFFF000000FFFF),
    .INIT_04(256'h00000000FFFFFF00FF00FFFF000000000000FFFF00FFFFFFFFFF00FF000000FF),
    .INIT_05(256'h0000FF0000FFFFFFFFFFFFFFFFFFFFFFFFFF000000000000FFFF000000000000),
    .INIT_06(256'hFFFFFFFF00FFFF00000000FFFFFF00FF00FEFFFF00FEFF000000FFFFFFFF0000),
    .INIT_07(256'hFF0000FFFFFFFFFFFF00FF00000001FF0000FF000000FF0000FFFF0000FFFFFF),
    .INIT_08(256'h0000010000FFFF000000FFFFFF0000FF000000FFFFFFFFFFFF000000FFFFFFFF),
    .INIT_09(256'h0000FF00FF00FF00000000FF00FF00FFFFFF000000FF00FFFFFFFFFFFF0000FF),
    .INIT_0A(256'h00FF00FEFFFFFEFFFF000000FFFFFF0000FFFFFFFF000000FF01000000FFFFFF),
    .INIT_0B(256'h00FF0000FF000000FF00FF0000000000FF000000FFFF00000000FF00FFFF0000),
    .INIT_0C(256'h000000FF0000FF010000FFFFFFFFFFFFFF00FFFFFF00FFFF00FF00FFFFFF0000),
    .INIT_0D(256'h00FF00FF00FF00FFFF000000FF000000FFFFFFFFFFFF000000FFFF0000FFFFFF),
    .INIT_0E(256'h000000FFFF00FE00FF000001FF00FF00FF00FF00FF0000FF0000FF0000FF00FF),
    .INIT_0F(256'hFF00FFFFFFFF00000000FF00FF0000FFFFFFFFFF00FFFF0000FFFF00FE0000FF),
    .INIT_10(256'h00FF00FF0000FF0000FFFFFFFF000000FFFFFF00FFFFFFFF00FF0000FFFF00FF),
    .INIT_11(256'hFFFFFF00FFFFFF00FFFF00FF00FFFFFFFF00FFFFFFFF00FF00FFFF0000FF0000),
    .INIT_12(256'h0000FF00FFFFFFFF000000000000FF0001FF00FF00FFFEFFFF0000FF00000000),
    .INIT_13(256'hFFFFFF00FFFF000000FFFFFF000000000000FFFFFFFFFFFF00FFFFFFFF00FFFF),
    .INIT_14(256'hFEFFFFFFFFFF00FF00FF0000FFFFFFFF0000000000FF00FFFFFFFF00FFFF00FF),
    .INIT_15(256'h00FFFF00FFFF00000000FF00FF00000000FFFFFFFF00000000000000FF00FF00),
    .INIT_16(256'h00FF0000FF00FFFFFFFF00FFFFFFFF00FF00FF00FFFFFFFF00FF0000FF000000),
    .INIT_17(256'h000000FF000000FFFFFFFFFF00FF00FF00FFFFFF00000000000000FFFF000000),
    .INIT_18(256'hFF000000FFFFFFFF000001FF00FF000000FFFF0000FFFF00FFFF000000000000),
    .INIT_19(256'hFFFF00FFFF000000FFFFFF00FFFF000000FF0000FF000000000000FF000000FF),
    .INIT_1A(256'hFFFF00FFFFFFFFFF000000FFFFFF00FFFF000000FFFFFF00FFFFFF0000FFFFFF),
    .INIT_1B(256'hFF000000FF00FFFF00FF00FF00FF0000FF0000FFFFFFFF00FFFFFFFFFF0000FF),
    .INIT_1C(256'h00000000FFFF00FFFFFFFFFFFFFFFF00FF000000FFFF00000000FFFFFFFF0000),
    .INIT_1D(256'h00FF0000FFFFFFFF00FFFF00FFFFFFFF00FFFF000000FF0000000000FF0000FE),
    .INIT_1E(256'h00FF00FF00FFFF0000FFFF0000FF00FFFFFF0000000000000001000000000000),
    .INIT_1F(256'h000000FFFF0000000000000000FF0000FF0000FFFF0000000000010100010100),
    .INIT_20(256'h00FF0000FFFFFFFF00FFFFFFFFFF00000000FFFF00FF00FF00000000FFFF0000),
    .INIT_21(256'hFF000000000000FFFFFFFFFFFFFFFF00FF00FFFFFFFFFFFFFFFFFFFF00000000),
    .INIT_22(256'hFFFE00FFFF000000000000FF00FFFFFFFFFFFF00FFFF00000000FFFFFF00FFFF),
    .INIT_23(256'hFF0000FFFF00FFFFFFFF00FF000000010000FFFFFFFFFFFEFF00FF0000FFFF00),
    .INIT_24(256'hFFFFFFFF0000FFFFFF00FFFFFE00FF00000100000100FFFF00FFFFFFFF0000FF),
    .INIT_25(256'h0000FF00FFFF000000FF0000FF0000FFFFFFFF0000000000000000FF00FFFFFF),
    .INIT_26(256'h000000FF00FEFF00FFFF01FF00000000FF00FFFFFFFF00FFFFFF000000000000),
    .INIT_27(256'h00FF0000FFFFFFFFFFFFFF0000FFFFFFFFFF0000FFFF000000FF0000000000FF),
    .INIT_28(256'h00FF00000000FF00FF00FFFFFFFFFFFF00010000FF010000FFFF00FF00FF0000),
    .INIT_29(256'hFFFF00FFFF0000000000FFFFFFFFFFFEFFFEFFFF00FF0000FF00FF0000FF0000),
    .INIT_2A(256'hFFFF00FFFFFF00FFFF000000FF00FFFFFFFFFFFFFF000000000000FFFF00FFFE),
    .INIT_2B(256'h0000000000000000FFFFFFFF00FF000000FF0000FFFFFF00FFFFFF00FFFFFF00),
    .INIT_2C(256'h00000000000000FF0000FF00FFFF000000000000FF00FFFFFF0000FFFF0000FF),
    .INIT_2D(256'h00FF0000FF000000000000FF0000FFFF00FFFF00FF00FF000000FF00FF00FF00),
    .INIT_2E(256'h000000FFFF000000000000FF00FF00FF000000FF0000000000000000FF000000),
    .INIT_2F(256'h00FFFF0000000000FFFF0000FF0000FFFF0000FF00FFFF00FF01FF00FF0000FF),
    .INIT_30(256'hFF00FF0000FF000000FFFF00FFFF00000000000000FFFF0000FF00FFFFFFFF00),
    .INIT_31(256'h00000000000000000000000000000000000000FFFFFF00FF00FFFF00FF00FF00),
    .INIT_32(256'h0000FFFFFF00FFFFFFFFFF00FFFF00FFFF000000FF00FFFFFFFF00000000FFFF),
    .INIT_33(256'hFF00FF00FF0000FF00FF0000FFFFFFFF00FFFFFFFFFF00FF00FFFFFFFFFFFF00),
    .INIT_34(256'h0000FF00FFFF00FFFF000000FFFFFFFF00FF00FFFF00FFFFFF00FF00FFFF00FF),
    .INIT_35(256'h00FFFF00FFFF0000FF00FF00FFFF00FF00000000FFFFFF0000FF00FF00FF0000),
    .INIT_36(256'hFFFFFF00FF00FFFFFFFFFF000000FFFFFF0000FF000000FFFFFFFFFFFFFF00FF),
    .INIT_37(256'h00FF00FF00FE0000FF00FF01FF00FFFFFFFFFF0000FFFFFF00FF00FFFF00FFFF),
    .INIT_38(256'hFFFFFF00FFFFFF00FF00FFFFFFFF00000000FF00FFFFFF00FF000000FFFFFFFF),
    .INIT_39(256'hFFFF0000FF0000FFFF00FFFFFFFFFFFF00FFFF00000000FFFFFFFFFF0000FFFF),
    .INIT_3A(256'h00FFFFFFFFFF00FFFFFFFF00FFFFFEFF0000FFFFFF0000000000FF000000FFFF),
    .INIT_3B(256'h0000000100FF00FF0000FE000000FFFF0000FFFFFF0000FF00FF00FF0000FF00),
    .INIT_3C(256'h00FF0001010000FF00FFFFFF0000FF0000FFFFFF00FEFF0000FFFF0000000100),
    .INIT_3D(256'h0000FFFFFF000000FF000000FF000000FF000000FF0000000000FFFF00FF00FF),
    .INIT_3E(256'hFFFF000000FFFFFF0000FF00FF00FF00FFFFFFFF0000FF00000000FFFFFF00FF),
    .INIT_3F(256'hFFFFFFFF0000FFFFFF00FF00FF000000FF00FFFF00FFFF0000FE000000FF00FF),
    .INIT_40(256'hFFFFFFFFFFFF00FFFFFFFF00FFFF00FFFF000000FF00FF00FFFFFFFF00FF0000),
    .INIT_41(256'hFFFFFF000000FF0000000000FFFF0000FF0000FFFFFFFF0000FFFFFE00FF00FF),
    .INIT_42(256'h000000FEFFFFFF00FFFFFFFFFF0000FF00FF0000FFFF00FEFF000000FF0000FF),
    .INIT_43(256'h0000FF0000FF00FFFFFFFF00FFFF00FFFF000100FF0000FFFFFF00000000FF00),
    .INIT_44(256'hFFFF00FFFFFFFF0000FF00FFFFFFFFFF000000FFFF0000FFFF0000FF00FFFF00),
    .INIT_45(256'hFF0000FFFFFFFF00FF0000FF000000FFFFFFFFFF0000FFFF0000000000FF00FF),
    .INIT_46(256'hFF00FF000000FFFF00FFFF0000FFFFFF00FF0000FF00FF0000000000FF000000),
    .INIT_47(256'hFF00FF000000FF0000FFFF00FFFFFF00FFFFFF00FFFF00FF00000000FF00FF00),
    .INIT_48(256'h00FF0000FF00FF000000FFFF00FF00FF00FF0000FF000000FF00FF0000000000),
    .INIT_49(256'hFF0000FFFFFFFF00FF00FF00000000FFFFFFFFFF00FF0000FFFFFF00FFFFFF00),
    .INIT_4A(256'hFFFF00FFFF00FF0000FFFFFFFF0000FFFF00FF00000000FFFF00FFFF000000FF),
    .INIT_4B(256'h00FFFF00000000FF000000FFFF000000FFFF000000FFFF00FF0000FF0000FFFF),
    .INIT_4C(256'h000000FFFF0000FF00FF00FFFF0000FF0000FFFFFFFFFFFFFF0000FFFF00FF00),
    .INIT_4D(256'hFFFFFFFF00FF00FFFFFF00FFFFFFFFFFFF00FEFFFFFFFEFFFFFFFFFF0000FF00),
    .INIT_4E(256'hFFFFFF00FF00000000FFFFFF00FFFFFFFF0000FFFF0000FF00FF00000000FFFF),
    .INIT_4F(256'hFF00FF000000FF00FF00FFFF00FF00FF00FF00FFFFFFFFFFFFFF00FF0000FFFF),
    .INIT_50(256'hFF00FFFFFFFF0000000000FFFF0000000000FFFF00FF0000FF00FF00FFFFFFFF),
    .INIT_51(256'hFF0000FF00000000FF00FFFF0000000000FF000000000000000000FF00FFFF00),
    .INIT_52(256'h0000FFFF0000FF00FFFF0000FFFFFEFFFFFFFFFFFFFF0000FF000000FF000000),
    .INIT_53(256'h0000FF00FFFFFF00FFFFFF00000000FFFF00FF00FFFF00FFFF00FF0000000000),
    .INIT_54(256'hFFFF00FF00FF0000FFFFFFFF00FFFF0001FF0000FF0000000000FFFF00FF00FF),
    .INIT_55(256'hFFFFFF00FFFFFF0000FF00FFFF00000000000000000000000000FF0000FF0000),
    .INIT_56(256'hFFFF00FF000000FF00FF00FFFFFFFFFFFFFFFFFF000000FFFF0000FFFFFF0000),
    .INIT_57(256'h00000000FFFFFFFFFFFF000000FFFFFF00FFFFFFFFFFFFFF0000000000000000),
    .INIT_58(256'h01000000FF00FFFFFF00FFFFFF000000FFFFFF00FFFFFFFFFFFFFFFF00000100),
    .INIT_59(256'hFFFEFF000000FFFF0000FFFFFFFF00FFFFFF0000FF0000FFFFFFFFFFFFFEFE00),
    .INIT_5A(256'hFFFFFF00FEFFFFFF000000FF0000FF00FF00FF00FF00FF00FFFF00FFFFFF0000),
    .INIT_5B(256'hFFFFFFFFFFFFFF00FF00FFFFFF00FFFFFFFFFFFFFF00FF00FFFF00FFFF01FFFF),
    .INIT_5C(256'hFFFF00FF0000FFFF0000FFFF00FEFF0000FF000001FF000000FF00FF0000FFFF),
    .INIT_5D(256'h00FF000000FFFF000000000000FEFFFFFFFF00FFFFFF00FF00FF0000FFFF00FF),
    .INIT_5E(256'hFF0000000000FF0000FF00FF0000FFFFFFFFFF00FFFFFFFF000000FF0000FF00),
    .INIT_5F(256'h00000000FFFFFFFF00FF00FF0000000000FFFFFF0000FFFFFFFF0000FFFF00FF),
    .INIT_60(256'hFFFFFFFE0000FFFFFFFF0000000000FFFFFFFFFFFF00FF00FF00FF00000000FF),
    .INIT_61(256'hFF000000FFFF0000FF00FF000000FF0000FFFFFFFF00FFFFFFFF00FFFF000000),
    .INIT_62(256'hFFFFFFFFFFFF000000FFFF00FF0000000000000000FF00FF00FFFF0000FFFF00),
    .INIT_63(256'h00FEFFFF0000000000FF00FF00FF000000FF00FFFFFFFF0000000000FFFEFF00),
    .INIT_64(256'hFFFF00FF0000FF00FF00FF00FF0000FF0000FFFF01FFFF00FF0000000000FFFF),
    .INIT_65(256'h00FF00FFFFFF00FFFFFF0000FFFFFF00FFFFFEFFFF00FF0000000000FF00FFFF),
    .INIT_66(256'hFF00FFFFFF00FFFFFF00FFFF00FFFF00FF00FF00FF000000FF00FFFFFFFFFF00),
    .INIT_67(256'hFF00FF00FFFF00FFFF0001FFFF00FFFF000000FFFFFF00FF0000FFFF00FFFFFF),
    .INIT_68(256'hFF00FFFFFF0000FFFFFF00000000FFFF00FF00FF0000FFFF0000000000FF0000),
    .INIT_69(256'hFFFFFFFF00000000FF00FFFF00FFFE000000FF000000FF00FF0000FF0000FF00),
    .INIT_6A(256'hFFFFFFFFFF000000FF00FF0000FF00FF0000FF00FFFF000000FF00000000FFFF),
    .INIT_6B(256'hFF000000FFFFFF0000FF00FFFF000000FF000000FFFFFFFFFF0000FFFF0000FF),
    .INIT_6C(256'hFFFFFF00FF01FF0000FF0000FFFFFF0000FFFF0000FF00FFFFFFFFFF00FFFFFF),
    .INIT_6D(256'h00FFFFFFFFFF00000000000000000000FFFF00000000FF00FFFFFFFF00FF00FF),
    .INIT_6E(256'h00FF00FFFF00FFFFFFFFFE00FF0000FFFF000000FFFFFF00FF00000000000000),
    .INIT_6F(256'h00FFFF00FF00FF0000000000FFFFFF0000000000FFFF00FF00FF000000FF0000),
    .INIT_70(256'h0000FFFF0000FF00FFFF00FFFF00000000FFFF0000FF00FFFFFFFFFFFF00FF00),
    .INIT_71(256'h00FF0000FFFF0000FF000000FFFFFF0000000000FF00FF0000FFFF00FFFF00FF),
    .INIT_72(256'h00FFFF00FF00FF00FFFFFF0000FF00000000FFFFFF00FF0000FF000000FF00FF),
    .INIT_73(256'hFF0000FF0000FFFFFF000000FFFF00FF0000FF00000000FFFFFF000000FF00FF),
    .INIT_74(256'hFF00FFFF00000000FF00FFFFFFFF000000FFFF0000FF0000FF0000FF0100FFFF),
    .INIT_75(256'hFF0000FFFFFFFF00FFFFFF000000FF0000FF0000FFFF00FF000000FFFF000000),
    .INIT_76(256'hFF00FFFFFFFFFFFFFFFF0000FF000000FFFFFF0000FFFF0000FF00000000FFFF),
    .INIT_77(256'hFFFFFFFF00FFFF00000000FFFFFFFFFF00FFFFFFFFFFFFFF0000FFFF00FF0000),
    .INIT_78(256'hFF0000FF00FFFFFFFFFFFF0000FF00FFFF000000FFFF00FF00FF0000000000FF),
    .INIT_79(256'hFF00FFFFFF00000000FFFFFF0000FF00FF00FFFFFF00FFFFFFFFFFFFFF0000FF),
    .INIT_7A(256'hFF000000FF00FFFFFF0000FF0000FFFFFF000000FF00FF01FF00FF00FFFF00FF),
    .INIT_7B(256'h0000FF00FF00FF0000FFFFFFFFFF0000FF0000FF000000FFFF0000FFFF0000FF),
    .INIT_7C(256'hFFFFFF00FF00FF0000FF000000FFFF00FFFFFF00FFFFFF00FEFF000000FFFF00),
    .INIT_7D(256'h000000FF00FF00FF00FF0000FFFF0000FFFF0000FFFF0000FF0000FF00FFFFFF),
    .INIT_7E(256'hFFFF00FF000000FFFFFFFF00FFFF00FFFFFFFFFFFFFE00FFFF000000FF00FFFF),
    .INIT_7F(256'h00FF00FE00000000FF00FF0000000000FF00FFFF0000FFFF00FFFFFF00FF0000),
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized4
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
    .INITP_00(256'hD4310FA2F6E2F5BCE0C6027900A8E1E88ABC578998F5E43470FDD017BAEFF2DA),
    .INITP_01(256'h78A55DACF58C6EFC8FEE766CCF2EFEAD9E7D9DB1A08AA2B0D5F5705F8EDBB0E8),
    .INITP_02(256'h8CF9E0DAF385B9F5A4E91E05F161E5CFC2192C9E8CFF7C2F50CA1758C03E584F),
    .INITP_03(256'h9A0D305780F5061C19038F4231DA3C10C867F01288FE16F817EC1D49FC17E811),
    .INITP_04(256'hC431B56C626C5A8EBDF195717EC9F2FC978A2B6CC71579726F8F2F746B10BE04),
    .INITP_05(256'h56AF49440F4BFA8DBD88221B529F2A1854ED34B88C01A2FFF8BCBFDE2D0E6CAC),
    .INITP_06(256'h57FB1AE66FD9190027221D0403AA20221BC4005FC48077FB842F7BA683FE7AC7),
    .INITP_07(256'h8171EDFB49EDDCA09C5F6256A00BC824010C67D4E01D6AB15B71A4427F9E2078),
    .INITP_08(256'hFC4F62CC26F7AAAC9230CE8010F7D375108C1254D9C3FEFFB1CD5B68873977A6),
    .INITP_09(256'hE5D789C02FE6DC2D5A804062801822FB6E7C7C62BD87ACDD3DD9767D282DF9B4),
    .INITP_0A(256'hFD254F82CEA83DA2ED17F3A3EAA075C173E7700768BEF30F4FB63885F0C5123E),
    .INITP_0B(256'hABF8F494213AB104D3BB1F1B2A87E3A5792480B8778401B770880F214860B888),
    .INITP_0C(256'hFA10CBBBFBFA0BFD8C518F009FB11682D21284FEF8E42FF503FFAE5D67268B5F),
    .INITP_0D(256'h27DF461C3EC57CAD23ADF4B0E602DE1FF49AF87F0317D66950FA02A77FE01445),
    .INITP_0E(256'h40D4A1A520EF26CBAC60F0029FFB7CDC249F8190E0EE5D640E4AB976FC5FA4E5),
    .INITP_0F(256'h23481FBA7F01ED3F707FDC5D07B625C07295BA0F2BDF0F7DE9AA96B8704E2A6C),
    .INIT_00(256'hFF00FFFFFF00FF00FFFFFF00FFFFFFFFFFFFFFFF0000FF01FFFF00FFFF00FF00),
    .INIT_01(256'h00FFFFFF00000000FFFFFFFFFFFF00FFFFFF00FF00000000000000FF00FFFFFF),
    .INIT_02(256'hFF0000FFFF000000FFFFFFFF00FF00FFFFFFFF0000FF00000000FFFF00FF0000),
    .INIT_03(256'hFF000000FF00FF00FF00FFFFFFFF000000FF00FF00FFFFFFFF000000FF0000FF),
    .INIT_04(256'h0000000000000000FF00FF00FF000000FFFFFF00000000FFFFFFFF00FF000000),
    .INIT_05(256'hFFFFFF0000000000FFFF000000FFFF00000000000000FF0000FFFFFFFF0000FF),
    .INIT_06(256'hFFFFFFFE00FFFF00FFFFFF000000FF00FFFFFFFF00FF00FFFF00FFFFFFFF0000),
    .INIT_07(256'hFFFF00FF00FF00000000FFFF000000FF00000000FFFFFFFFFF00FF010000FF00),
    .INIT_08(256'hFF000000FFFFFF00FFFF00FFFF00FFFFFF00FFFF00000000FFFFFF00FF000100),
    .INIT_09(256'hFFFF00FF00FF00FFFFFFFFFF00FF00FF00FFFFFF0000000000FF00FFFFFFFFFF),
    .INIT_0A(256'hFF00FF0000000000FF000000FF00FF00FF00FF000000FF00FF00FFFF00000000),
    .INIT_0B(256'hFF0000FFFFFFFF0000FFFFFFFFFF00FFFF0000FFFFFF00FFFF00FFFF000000FF),
    .INIT_0C(256'hFFFF0000FFFFFFFF0000FF00FFFFFF00FFFFFFFFFFFFFF00FF00FF00FFFF00FF),
    .INIT_0D(256'hFF000000FFFFFFFFFFFFFF00FFFFFF0000FFFFFF00FFFF0000FFFF00FFFF0000),
    .INIT_0E(256'hFFFFFFFF00FF00FFFF000000FFFF000000FFFF00FFFFFF00FFFFFFFFFFFF0000),
    .INIT_0F(256'h00FFFFFFFF000000FF00FF0000FF00FF00FF00FFFFFF00FFFF00FF00FFFF0000),
    .INIT_10(256'hFFFF0000000000000000FFFFFFFFFF0000FF00FFFF00000000FF0000FFFFFFFF),
    .INIT_11(256'h00FF00FF00000000FFFF0000FF00FF00010000FF00FFFFFF00FF00FFFF000000),
    .INIT_12(256'hFF000000FFFF0000FFFFFFFFFFFFFFFF00FFFFFFFFFF00000000FF00FFFFFFFF),
    .INIT_13(256'hFFFF00000000FF00000000FFFF0000FF0000FF00FFFF0000FF0001FFFFFFFF00),
    .INIT_14(256'hFFFEFFFF000000FF00FFFF00000000FFFFFFFF0000FF00FFFFFF0000FFFFFFFF),
    .INIT_15(256'hFF00FF0000FF0000FFFFFF00FF0000FF000000FFFFFFFF000000000000FF00FF),
    .INIT_16(256'hFFFFFFFF0000FFFFFF00000000FF00FFFF00FFFFFF0000FFFFFFFFFF00FF00FF),
    .INIT_17(256'hFF000000FFFF0000FFFFFFFFFF0000FFFFFFFF0000000000FFFF00FFFF00FF00),
    .INIT_18(256'hFFFEFFFFFFFF0000000000FF00FFFFFFFFFFFF00FF000000000000FF000000FF),
    .INIT_19(256'h000000FF01FFFFFEFFFFFF00FFFF0000000000FFFFFF00FF00FF0001FF0000FF),
    .INIT_1A(256'hFF000000FF000000FEFFFFFFFFFFFF00000000FF00FFFF00FFFFFFFFFF000000),
    .INIT_1B(256'hFFFF0000FF00000000FFFF0100FFFFFEFFFFFFFF00000000000100FF0000FF00),
    .INIT_1C(256'h0000FFFF000000FFFFFF00FFFF00FF000000FFFFFEFF0000000000FF00000000),
    .INIT_1D(256'h000000FFFF0000FF000000000000FFFFFF000000FFFFFFFF00FF00000100FF00),
    .INIT_1E(256'hFF00010000000000FFFFFFFF00FF00FF0000000000FFFF00000000FFFFFF0101),
    .INIT_1F(256'hFF0000FFFF00FF0000000000FFFF00FF0000FFFF0000000000FF00FF00FFFFFF),
    .INIT_20(256'h00FFFF00FF00FFFF000000FF00000000FF00FFFFFFFFFF000000000000FF0000),
    .INIT_21(256'h00FFFF00FFFFFFFFFF000000FFFFFFFF0000FF00FFFFFFFF00FFFFFF00FF0000),
    .INIT_22(256'hFFFF000000FFFFFF000000FF00FF00FF00FFFFFFFF0001FF00FFFFFF0000FF00),
    .INIT_23(256'hFF0000FF00FFFFFFFF000000FF00FF000000FF00FF00FFFF00FFFF01FFFF0000),
    .INIT_24(256'h00FFFFFFFFFFFF00FFFF0000FF0000FFFFFFFFFF0000FF00FFFFFEFFFFFF0000),
    .INIT_25(256'hFF00FFFFFFFF00FFFFFFFFFF000000FFFF0000FF00FF00FF00FFFFFF000000FF),
    .INIT_26(256'h00FFFF000000FF0000FFFF00FFFF000000FF00FFFF00FF00FF000000FFFFFF00),
    .INIT_27(256'hFFFF000000FF00000000FFFF000000FFFF00FFFF00FF00FF00FFFF00FFFF0000),
    .INIT_28(256'h0000FF00FFFF00FF00000000FFFFFE0000FFFF00FFFF0000FF00FF00FFFF0000),
    .INIT_29(256'hFFFFFFFFFF000000FF00FFFFFFFF0000FF00FFFFFEFFFFFFFFFF00FFFFFFFF00),
    .INIT_2A(256'hFF000000FFFF000000000000000000FFFF00FF000000FF00FFFFFFFFFFFFFFFF),
    .INIT_2B(256'h00FF00FF00FF0000FFFFFF00FFFF00FF0000FFFF00FF0000FF00FFFFFF000000),
    .INIT_2C(256'h00FF00FF0000FF00FF0000FFFFFFFFFF0000FF00FF00FF00000000FFFF000000),
    .INIT_2D(256'hFF00FFFFFFFF00FFFF000000FF0000000000FF000000FF00000000FFFF00FFFF),
    .INIT_2E(256'h00000000FFFFFFFF00FF0000FF00FFFFFFFFFFFFFF00FF00FF000000FFFF00FF),
    .INIT_2F(256'h00FF00FF00FFFF00FF00FF00FFFFFFFF00FF0000FF0000FF00FF010000FF0000),
    .INIT_30(256'hFF0000000000FFFFFFFEFFFFFFFFFF0000FFFFFFFE00FF00FFFF000000FFFFFF),
    .INIT_31(256'hFF00000000FF00000000FF00FFFFFEFE00FFFFFFFF00FFFFFF00FF0000FFFF00),
    .INIT_32(256'hFFFF000000FF0000FF0000000000000000FFFFFF00FFFFFFFFFFFFFFFF00FFFF),
    .INIT_33(256'h000000FFFF00FFFFFFFF000000FF0000000000000001000000FF00FFFFFFFFFF),
    .INIT_34(256'h000000000000FFFFFF00FF00FF00FF000000FF00000000000000FF000000FF00),
    .INIT_35(256'h0000FF0000FFFFFF0000FF000000FF00000000FFFFFF00FF0000000000FF0001),
    .INIT_36(256'h00FFFF00FFFFFFFFFFFF00FFFF0000FF000000FFFF0000FF0000000000000000),
    .INIT_37(256'h00FF00FF00FFFFFFFFFFFFFFFF00FFFF000000FFFF00FF00FFFFFF0000FFFF00),
    .INIT_38(256'h00FFFFFFFFFFFFFFFF0000FFFEFFFF000000FF000000000100FFFFFFFF000000),
    .INIT_39(256'h00FF00FFFF00FFFF00FFFFFF000001FFFF00FF0000FF000101FF00000000FF00),
    .INIT_3A(256'hFFFFFF0000010000000000FFFFFF00FF00FFFF00FF00FF01FF00FFFF000000FF),
    .INIT_3B(256'h00000000000000FF00000000FFFF000000FFFF0000FFFFFFFFFF00FF00FF0000),
    .INIT_3C(256'hFF00FF000000000000000000FF00FFFFFFFF0000FF0000000000FF0000FF0000),
    .INIT_3D(256'hFF0000FFFFFF000000FF00FFFFFFFFFF00FFFF000000FF0000FF00FF00FFFF00),
    .INIT_3E(256'h00FF0000FF0000FFFFFFFF00FEFE00FFFFFF00FFFFFF0000FF00FF0001000000),
    .INIT_3F(256'hFF000000000000FE00FFFFFF000000FFFFFFFF00FFFF00FEFFFFFFFFFF00FFFF),
    .INIT_40(256'hFF00000000FFFFFF0000FFFFFF0000FF00FFFFFF00FFFFFFFF00FF0000FEFF00),
    .INIT_41(256'hFF00FFFF000000FFFFFF0000FEFF00FF00FF00FFFF00FFFF00FFFF00FF000000),
    .INIT_42(256'hFFFF00FFFF0000FFFFFF00000000FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFF),
    .INIT_43(256'h000000FF00000000FF000000FFFF0000000000FF0000FF0000FF00FF00FF0000),
    .INIT_44(256'h000000FF00000000FFFFFFFF00FFFFFFFFFF00FF0000FFFF00FFFFFF00FF00FF),
    .INIT_45(256'hFF0000FF0000FF000000FFFF00000000FFFF0000FFFFFF00FF00000000000000),
    .INIT_46(256'h0000FF0000FFFF00FFFFFFFF00FFFFFFFF00FF00FF00FF00FF00FF00FFFF0000),
    .INIT_47(256'hFFFFFFFFFFFF000000FF0000FFFFFFFF00FFFF000000FF00FFFF0000FFFF0000),
    .INIT_48(256'h0000FF00FF0000000000FF00FFFF00FFFFFFFFFFFF0000FFFF00FFFF00FF0000),
    .INIT_49(256'h0000FFFFFFFF00FFFFFF00FFFF0000FF00FFFFFF00FFFF0000FFFFFFFFFF00FF),
    .INIT_4A(256'hFF00FFFFFEFF00FFFF00000000FFFFFFFF00FF00FFFF0000FFFF00FFFFFF00FF),
    .INIT_4B(256'h00FFFF00FFFFFF0000FFFFFFFFFF000000FFFFFFFFFF000000FFFF000000FF00),
    .INIT_4C(256'hFF00000000000000000000FFFF0000000000FF000000FF00FFFFFFFFFF00FFFF),
    .INIT_4D(256'h00FF00FFFF00FF00FF0000000001000000FF01000000000000FFFF000000FF00),
    .INIT_4E(256'h0000FF01FFFFFFFFFFFFFF0000FFFF00FFFF00FFFFFF00000000FF00FFFF00FF),
    .INIT_4F(256'hFFFFFF0000FF00FFFFFF00FF00FFFFFFFF000000FF0000FFFFFF000000000000),
    .INIT_50(256'hFFFFFFFF00000000FFFF000000FF00FF000000FF0000FF000100FFFFFFFFFF00),
    .INIT_51(256'h00FF0000FFFFFFFFFF00FFFF00FFFF000000FFFFFF000000FF00000000FF00FF),
    .INIT_52(256'h00FFFF00FF000000FE00FFFFFFFFFF00FFFFFFFF0000FFFF00000000FFFFFFFF),
    .INIT_53(256'h00FFFFFF0000FFFFFFFFFF0000FFFFFF00FFFFFF000000000000000000FFFFFF),
    .INIT_54(256'hFFFFFF00FF00FF00FF00FF000000000000FFFFFE00FF00FFFFFF0000000100FF),
    .INIT_55(256'hFFFFFF00FFFF00FF000000FF00FFFFFFFFFFFFFF0000FFFFFF00FF000000FFFF),
    .INIT_56(256'hFFFF0000FFFFFF00FF00FF00FF0000000000FFFFFFFF00FEFF00FF000000FF00),
    .INIT_57(256'hFFFFFFFFFFFF00FF0000FF0000FF00FF00FF0000FFFFFEFFFF0000000000FF00),
    .INIT_58(256'h00FF0000FF00000000FFFF0000000000FF00FFFFFF000000FF000000FF000000),
    .INIT_59(256'h00FFFFFF00000000FF000000FF00000000000000FFFFFFFF0000FF00000000FF),
    .INIT_5A(256'h00FFFFFF00FFFFFFFF00000000FF000001000000000000FFFF00FFFF00FEFFFF),
    .INIT_5B(256'h00FFFFFFFF0000FF0000FF0000FF0000FF00000000000000FF00FFFFFF000000),
    .INIT_5C(256'h0000FF00FF00FF00FF00000000FFFFFFFFFFFF000000FFFFFF00FF0000FF00FF),
    .INIT_5D(256'hFFFF00FF0000FFFFFF00FFFFFF00FFFF000000FFFFFFFFFF000000FFFF00FEFF),
    .INIT_5E(256'h0000FF00000000FF0000FFFFFF00FF00FF01FFFF000000FF0000000000FF0000),
    .INIT_5F(256'hFF00FF00FE00FFFFFFFFFFFFFF000000FFFFFFFF00FF0000FF0000FF00FF0000),
    .INIT_60(256'h00FEFE0000FFFFFF0000FF0000FFFF00FF000100FF00FFFF00FF00FFFFFFFFFF),
    .INIT_61(256'h000000000000FEFFFFFEFFFEFFFFFFFFFF00FF00FFFFFF0000FF00FFFFFF00FF),
    .INIT_62(256'hFFFFFFFFFF000000FFFFFF0000FF00000000FF00FFFEFFFFFFFFFFFF01FF00FF),
    .INIT_63(256'hFFFF00FF0000FF00000000FF0000FF00FF00000000FF0000FFFFFFFFFFFFFF00),
    .INIT_64(256'hFF0000FFFFFFFFFFFF00FFFF000000FF000100FF00FFFF00FF0000000000FF00),
    .INIT_65(256'hFF000000FFFF000000FF00FF000000FFFF000000FFFFFFFF0000000000000000),
    .INIT_66(256'hFFFFFFFFFF00FFFFFFFFFFFFFF00FF0000000000FF00FFFFFFFFFFFFFFFF00FF),
    .INIT_67(256'hFFFFFFFFFF00FF00000001FF00000000FFFF0000FF00FFFFFF00FFFFFF00FEFF),
    .INIT_68(256'h00FFFFFFFFFFFFFFFFFFFF0101000001000000FF00FF000000FF000000FF00FF),
    .INIT_69(256'h00FF00FF00000000FFFFFFFFFF00FF00000001000000FF00FF00FF0000FFFFFF),
    .INIT_6A(256'h000000000000FFFF000000FF00FFFFFFFFFF00FF00FFFF0000FFFF00FF0000FF),
    .INIT_6B(256'hFFFFFFFF00FF0000FF0000FFFF00FF00FFFFFFFFFF00000000FEFFFFFFFFFFFF),
    .INIT_6C(256'hFFFFFE0000FFFF00000000000000FF00FFFF00FFFFFFFF00000000FFFFFFFFFF),
    .INIT_6D(256'h0000FF000000FFFFFF00FF00FFFF00FFFFFFFFFF00FF0000FF00FFFF00000000),
    .INIT_6E(256'h0000FFFFFFFFFF00FFFF000000FF00FF00FFFFFFFFFF0000FF00FF00FFFF00FF),
    .INIT_6F(256'h0000FF0000FFFFFFFFFF00FFFFFFFFFF00FF000000FFFF00000000FFFFFF0000),
    .INIT_70(256'hFFFFFFFFFFFF000000FF00FFFFFEFFFFFF00FF0000FF0000FFFFFF0000FF00FF),
    .INIT_71(256'h00000000FFFFFF0000FF0000FF01FF00FF00FFFFFF0000FF00FFFFFF00FFFF00),
    .INIT_72(256'hFFFFFF0100000000FFFFFF00FFFFFF0000FF00FFFFFF00FF00FFFF0000FF0000),
    .INIT_73(256'h0000FF0000FF0000FF0000FFFFFFFFFFFF000000000000FFFF0000FF00000000),
    .INIT_74(256'hFF0000FFFFFFFFFFFFFFFFFFFF00FFFF00FFFFFFFFFF0000FFFF00FFFFFF0000),
    .INIT_75(256'hFF00FF00FFFF000000FFFE0000000000FFFFFFFF00000000000000000000FF00),
    .INIT_76(256'h0000FF0000000000FFFFFF00FFFFFFFF0000FF0000FFFF00FEFF0000FF00FFFF),
    .INIT_77(256'h00FF000000000000FFFF00FF00FF0000FF00FF00000000FFFF00FF0000FF00FF),
    .INIT_78(256'h00FFFFFF0000000000FF0000FFFFFF000000FF00FF00FF0000FFFF00FFFF0000),
    .INIT_79(256'hFFFFFF00FF0001FFFF00FF00FF00FF00FF0000FF00FFFF00FF00FFFFFF000000),
    .INIT_7A(256'h0000FF00FF00FFFFFFFF00FFFFFFFFFF00000001FFFFFFFF00FFFFFFFFFF00FF),
    .INIT_7B(256'h00FFFFFE0000FF00FF0000FF00FF00FFFF00FFFFFF00FF0000000000FFFFFFFF),
    .INIT_7C(256'h0000000000FFFFFFFF00FFFF00FFFF000000FF0000FF00FFFFFF000000000000),
    .INIT_7D(256'h00FFFFFF0000000000FFFFFFFEFFFFFFFFFF00FFFFFF000000FF00FFFFFF00FF),
    .INIT_7E(256'h00FFFFFFFFFFFFFF00000000000000FEFEFFFF00FFFF00FF0000FFFFFFFFFFFF),
    .INIT_7F(256'h0000FF000000FFFF00FF0000FF000000000000FFFFFFFFFFFF00FFFFFF00FF00),
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized5
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
    .INITP_00(256'h293EFC91135C5CD4304B5A2BBE00DDFEC25F0F8182A98CE8FF861827C70BC1FA),
    .INITP_01(256'h8EB960193D3240D988D74295D5D03501AFC93AF326E46CA9F18293FD14EAFBAD),
    .INITP_02(256'h7EDA4D2DA4074AFE80694C1BC743DF52B1E4F4C95F3FD54FF6B33778CC4FBA27),
    .INITP_03(256'hE7F2C53D87A4507D060CDEDCBCCFE8EF0B86FA5139985A91379F68870993DD68),
    .INITP_04(256'h928342CAA415F86319EB1C63D106D67A9CE952C670375B49EEAF86BECD45B6E0),
    .INITP_05(256'hBFEF471D7FFC19ADFE81A8500008C00803FE00414DE85ADCDB8B5687F335B2CF),
    .INITP_06(256'h4B84DDA44087F79C0BDFDB923FFEEFC9E9F00E527E51001ECAFF56B833FE7DE0),
    .INITP_07(256'h77081E1E06A44A8CA1D69E3C42001E830904750000A0483003940A204ED02610),
    .INITP_08(256'hEA0BEE5CF35BD35637663B9459EE416B7AC24EBF1BBDCFF7012DBD46EDDF6BE7),
    .INITP_09(256'hCA720800A54B00801BC80003884A24336CE190C0021E48F6E75B41D7FD892AFA),
    .INITP_0A(256'h7AEDD883D7D0E9692AD02A0B1FEAFEEC500F7ECB36FFECD67FA4CB5C69F88980),
    .INITP_0B(256'h47E2E00648FDF00007EC8101BDB6E677434EBFE10D1770EBEB1CF34705DF179B),
    .INITP_0C(256'hFED807AFF90BFAFF9C09C7E3043130500324014040C00003103F00805EF81681),
    .INITP_0D(256'hA0D5D93BF025BFF0116E59206A55211213ED0369FC26BB5547CD61F84F4AEFEC),
    .INITP_0E(256'hB209FC9D617FE6AB8165D5520088AE535E66D077D86F7BD9C820DD661192C188),
    .INITP_0F(256'hB407C0031BFE105567E020B89E00765840016D4000165CE700E78CF04FCAAF2E),
    .INIT_00(256'hFFFF000000FFFFFF00000000FF00FFFFFFFF0000000000FFFFFFFFFFFF00FF00),
    .INIT_01(256'hFFFFFFFFFFFFFFFFFF00000000FFFF00000000FFFF0000000000FF0000FFFFFF),
    .INIT_02(256'hFF0000000000FF00FF00FF00FF0000FFFF000000FFFF0000FFFFFF00FF000000),
    .INIT_03(256'hFFFF00000000FF0000FF00FFFFFFFFFE00000000FFFFFFFFFF000000000000FF),
    .INIT_04(256'hFF00FFFFFFFFFF000000000000000000FFFF00FFFFFF00FFFFFFFFFFFFFFFF00),
    .INIT_05(256'h0000FFFF0000000000FF0000FF00FFFF00FF01FFFF00FF000000FF00FF00FFFF),
    .INIT_06(256'h000000FF0000FFFF00FF00FFFFFF000000FF00FFFFFF0000FFFF00FF00FF0000),
    .INIT_07(256'h0000FF00FF0000FF0000FFFFFFFFFF00FFFFFFFFFFFF0000FF0000FF000000FF),
    .INIT_08(256'h000000FF00FF0001FFFFFF00FF00FF01FFFFFFFFFF00FFFFFF00FF00FFFF00FF),
    .INIT_09(256'hFFFFFFFF000000FFFF0000000000FF00FF0000FF0000FFFFFFFFFFFFFFFF00FF),
    .INIT_0A(256'h0000FF0000FFFF00FFFFFF0000FF010000FFFF00FFFF0000FF00FF00FF0000FF),
    .INIT_0B(256'hFF00FF00FFFFFFFFFFFF0000FF0000FF0000FFFFFF00FF00FFFFFFFF0000FFFF),
    .INIT_0C(256'hFFFF00FF00FF00FFFFFF00FF000000000000FFFF00FF00FF00000000000000FF),
    .INIT_0D(256'hFF000000FF000000FFFF00FF00FFFFFF00FF00000000FF00FF0000FF00FF00FF),
    .INIT_0E(256'h0000FFFFFFFF00FF0000FFFF0000FF0000FF000000000000FFFF00FFFF0000FF),
    .INIT_0F(256'hFF000000FFFFFF00FF00FFFFFF0000FF00FFFF0000000000000000FFFF0000FF),
    .INIT_10(256'hFFFF0000FFFF000000FF0000FFFFFFFFFF00FFFFFF00FF000000FF0000FFFFFF),
    .INIT_11(256'hFFFEFFFF00FFFF00FF00FFFF0000FFFF0000FEFF00FFFFFF00FFFFFFFF000000),
    .INIT_12(256'h00FF00FFFFFFFFFF0000FFFFFFFFFFFFFFFF00FF00FF00FF00FF0000FFFFFFFF),
    .INIT_13(256'hFF00FFFF000000FFFFFFFF0000FF0000FFFFFFFF00FF0000FFFF0000FF0000FF),
    .INIT_14(256'hFFFF000000FFFFFF00FF00000000FFFFFFFF00FFFFFFFFFF00FF00FF0000FF00),
    .INIT_15(256'hFF0000000000000000FFFF00FF0000FF00FF0000FFFF0000000000FFFF00FFFF),
    .INIT_16(256'hFF00FF0000FF00000000000000FFFFFF00FF0000FF00FF00FFFFFFFEFFFFFF00),
    .INIT_17(256'h00FFFFFFFFFFFF00FFFE01FFFF00FF0000FF0000FFFF00FF0000FF00FFFF00FF),
    .INIT_18(256'h00000000FF0000FFFF0000FF0000FFFFFFFF00FEFFFF00FF00FFFF00FF000000),
    .INIT_19(256'h0000FFFF00FFFFFFFF0000FFFFFFFFFE00FFFF00FF000000FF00000000FFFFFF),
    .INIT_1A(256'h0000FFFFFF0000FFFF0000FFFF00000000FF00FFFF00FF00FF0000FF000000FF),
    .INIT_1B(256'h00000000FF00FFFFFF00000000FFFF00FFFFFFFFFF00FF0000FF00FF000000FF),
    .INIT_1C(256'hFF00FFFFFFFF0000FFFF0000FFFFFFFFFFFFFF01FF000000FFFFFF00FFFFFFFF),
    .INIT_1D(256'h0000000000FFFF0000000000FFFF0000FFFF00FFFFFFFF00FFFF00FFFFFF0000),
    .INIT_1E(256'hFF00000000FFFFFFFF01FF0000FF000000FF00FF0000000100FFFFFFFFFF00FF),
    .INIT_1F(256'hFFFFFF0000FFFFFFFFFFFFFF0000FF00FFFF000000FF00FF0000FFFFFFFF00FF),
    .INIT_20(256'hFFFF0000FFFF00FF00FF000000FF00FFFF00FFFF00FFFF00FFFFFF0000000000),
    .INIT_21(256'hFFFFFF00FFFFFF00FF00FF00FFFFFFFFFF00000000FFFF00FF00FFFFFFFFFF00),
    .INIT_22(256'h00FFFFFF000000000000FFFF00FFFFFF00FF00FFFF00FFFF00FF0000FF0000FF),
    .INIT_23(256'hFF0000FFFFFF0000FFFFFF00FF0000FF00FF00FF0000FF00FFFF000000FFFF00),
    .INIT_24(256'hFFFF00FF000000FF0000000000FFFF00FFFF00FF00FFFF0000FFFFFFFF00FF00),
    .INIT_25(256'h000000FFFF0000FFFFFFFF00FF00FFFF000000FFFFFF000000FFFF000000FFFF),
    .INIT_26(256'hFF00FF0000FF0000000000FF00FF00FFFFFFFFFFFF00000000FFFF000000FFFF),
    .INIT_27(256'hFF0000FF0000FF00FF0000000000FFFF01FF00000000FF00FFFF0000FF00FF00),
    .INIT_28(256'hFFFFFFFF0000FFFF0000FFFF00FF00FFFF00FFFF0000FF00FFFF0000FFFFFFFF),
    .INIT_29(256'hFFFF00FFFF00FFFFFF000000FF00FFFF00FF00FF00FFFF00FF00000000FFFFFF),
    .INIT_2A(256'h00FF0000FFFF00FFFEFFFF00FF00000000FF00FFFF00FF00FFFF00FFFFFF0000),
    .INIT_2B(256'h000000000000FFFFFFFFFFFFFFFFFF00000000000000000000FF0000000000FF),
    .INIT_2C(256'h000000000000000000000000FF000000FFFF00010000000000000000FF000000),
    .INIT_2D(256'hFFFFFFFFFFFFFF00FF010000000000FFFF00FF00FF00000000FF00FF00000000),
    .INIT_2E(256'h00FFFEFFFFFEFFFEFFFFFFFFFFFF0000000000FFFF0000FFFF00FF00FFFF00FF),
    .INIT_2F(256'hFF00FFFFFFFFFFFFFFFEFF00FFFFFFFF00FF000000FFFFFF000000FFFFFF00FF),
    .INIT_30(256'h0000FFFF0000FFFFFFFEFEFFFFFFFF0000FFFFFFFFFF00FFFFFFFF0000000000),
    .INIT_31(256'hFFFF0000FF00FF00FFFFFFFFFFFFFFFF00FF00FF00FFFF01FF00FFFFFF000000),
    .INIT_32(256'h00FFFFFFFFFFFF0000FF00FF000000FF0000000000000000000000FFFFFFFF00),
    .INIT_33(256'hFFFFFE00FF0000FFFFFFFFFF0000000000000000FFFFFF0000FF00FF0000FF00),
    .INIT_34(256'h0000FFFFFFFFFFFFFFFFFEFEFFFFFF00FFFFFF00FFFFFFFFFFFF0000FF0000FF),
    .INIT_35(256'h01000001FF00FFFFFFFF00FFFFFEFEFFFEFF00FFFF00FFFFFF0000FF0000FF00),
    .INIT_36(256'h00FF000000000000FF00000000FFFFFFFFFEFFFF00FFFFFFFF0000FFFFFF0000),
    .INIT_37(256'h00FF0000FF00FFFFFF00000000FF0000FFFF00FFFFFF00FFFF00FF0000FF0000),
    .INIT_38(256'h00FF0000FFFFFF00FFFF00FF000000000000FF0000FFFF00000000FF00000000),
    .INIT_39(256'h000000000000FFFFFF0000FF00FF000000000000FF00FF000000FF0000000000),
    .INIT_3A(256'h0000000001000100FF00FF000000000000FF0000FF0000000000FFFF00000000),
    .INIT_3B(256'h00000000FF0000FF0100000000FF000000FFFFFF00FF00FF0000000000000000),
    .INIT_3C(256'h00FF00000000FF000000000000000000000000FFFFFFFF00FF0000000000FFFF),
    .INIT_3D(256'hFF00FF00000000FFFEFF00FF00FFFF00FF0000FFFFFFFF000000FFFFFFFF0000),
    .INIT_3E(256'h0000000000FFFF00FF00FF0000FF000000FF0000FF00FF00FF000000FFFF0000),
    .INIT_3F(256'h00FFFFFF00FFFFFF00000000FF000000000000FFFFFFFF00000000FFFEFFFF00),
    .INIT_40(256'hFFFFFF00FFFF00FFFFFF00FFFFFFFFFF00FFFF00FF00FFFFFFFFFF0000FFFFFF),
    .INIT_41(256'h00000000000000FF0000FF01FFFF00FFFF00FFFFFFFF00FF00FF000000FFFE00),
    .INIT_42(256'h000000FFFF00FFFFFF00FFFFFFFF00FFFFFF0000FFFFFFFFFFFFFFFF00FFFFFF),
    .INIT_43(256'h00FFFFFFFF00FF00FFFF00000000FF0000FF0000FFFFFF00FF00FFFFFFFFFFFF),
    .INIT_44(256'h00FF00FFFF0000FFFFFFFF00FFFFFF0000FF0000000000FF00FFFF00FF00FFFF),
    .INIT_45(256'h0000FFFF00FFFFFF00FFFF0000FFFF000000FFFEFF00FFFFFF0000FF00FF0000),
    .INIT_46(256'hFFFFFFFF0000FFFF00FF00FFFF00FFFFFFFF00FF0000FFFF00FF00FF00FFFF00),
    .INIT_47(256'hFFFFFF00FF00FF0000000000FF00FFFFFFFFFF00FFFFFF0000FF00FFFFFF0000),
    .INIT_48(256'hFFFFFFFFFFFF00FFFF000000FF0000FF0000FF00FF00FF00FFFFFEFEFF00FF01),
    .INIT_49(256'hFFFFFF0000FFFFFF00FF00FFFF00FFFF00FF0000000000FFFFFF00FF00FFFFFF),
    .INIT_4A(256'h000001000000FF00000000FFFFFFFF0000FF0100FF000000FFFFFFFF00FFFF00),
    .INIT_4B(256'h00FFFF00FFFF0000FFFFFF01000000FFFF0000FF00000000FFFF000000000000),
    .INIT_4C(256'hFF000000FF00000000FF0000FF00FF000000FF0000FF00000000FFFF0000FFFF),
    .INIT_4D(256'h000000FFFF01FFFFFFFF0000FF0000000000000000000000000000000000FFFF),
    .INIT_4E(256'hFF00FF0000FF00FF00FF0000FF00FFFF0000010000000000FF00000000000000),
    .INIT_4F(256'hFFFF0000FF00FF0000FFFFFF0000FF0000000000FF0000010000000000000000),
    .INIT_50(256'h00FFFF00FF0000FFFFFFFFFFFF000000FF000000FF0000FFFF00000000000000),
    .INIT_51(256'h00FFFFFFFEFFFFFFFF00FF0000FF0000FFFF0000FE00FFFF00FF00FFFFFF0000),
    .INIT_52(256'h0000FFFF00FFFF00FEFFFEFFFFFFFFFFFFFFFF01FFFF0000FFFF00FF00FFFF00),
    .INIT_53(256'h00FF00FF0000000000000000FFFFFFFF00FFFFFFFFFFFE00FFFF0000FF00FFFF),
    .INIT_54(256'h000000FFFFFFFFFFFFFFFF00FF00FF00FFFFFFFFFFFFFF00FFFFFF00FFFF0000),
    .INIT_55(256'h0000FF00FF00FF00FFFF00FF000000000000FF00FF00FF0000000000FF00FFFF),
    .INIT_56(256'hFFFF00FF00FFFFFFFFFF00FF00000000FFFFFF00FF0000FF00FFFF00FF0000FF),
    .INIT_57(256'h00FFFFFFFF00FF00FFFFFF00FFFF00FFFFFF00FFFF000000FF0000000000FFFF),
    .INIT_58(256'h0000000000FF01FFFFFF00FFFFFFFFFF000000FF00FFFFFFFF0000FFFF00FFFF),
    .INIT_59(256'hFFFFFF00FF00FFFF000000FFFFFF0000FFFFFFFF0000FFFF00FF000000FFFFFF),
    .INIT_5A(256'h00000000FFFF00FF000000FF00FFFFFF00FFFFFF00000000FFFFFF00FF00FFFF),
    .INIT_5B(256'h00FF00000000FFFE00FF0000FFFFFF00FF00FFFFFFFFFFFEFFFFFF00000000FF),
    .INIT_5C(256'hFF00FFFFFFFF00FFFE00FFFF00FFFF00FFFFFF0000FFFF0000FFFFFF00FEFFFF),
    .INIT_5D(256'h0000000000FFFFFFFFFFFF00FFFF0000FF000000000000FF00000000000000FF),
    .INIT_5E(256'h00FF0000FF000000FFFFFFFFFFFF00FFFFFFFFFF000000000000000100010101),
    .INIT_5F(256'h00FF000000FFFFFFFFFFFF010000FF00FFFFFF00000000000000000000FFFF00),
    .INIT_60(256'h00FF00FFFFFFFF00FFFFFFFFFF000001000000FF00FFFF00FF000000000000FF),
    .INIT_61(256'h000000FF000000000000FFFFFFFFFFFF0000000002010100FF00000000000000),
    .INIT_62(256'h01FF000000000000FFFF0100000000000000000000010001000101000000FFFF),
    .INIT_63(256'h010001000000FFFF0000FF0000FF000000000001000000FF00FF000100000100),
    .INIT_64(256'h0000000000FF00000000FFFF000000FF0000FFFF0001000000FF00FF00000000),
    .INIT_65(256'hFF0000FFFFFF000000000000FF0000FFFFFF000000FFFFFFFFFFFF000100FFFF),
    .INIT_66(256'hFFFFFFFFFF0000FF00000000FF00FFFFFFFFFFFFFF00FF01FFFFFFFFFFFFFFFF),
    .INIT_67(256'hFFFFFFFFFFFFFF00FFFE00FFFF0000000000000000FFFFFFFF00FF00FFFFFFFF),
    .INIT_68(256'h00FF0000FFFFFFFF00FF0000FE00FF00FFFFFF00FFFFFFFFFFFEFF00FFFF0000),
    .INIT_69(256'h00FF000000FFFFFFFFFF0001FFFF00FF00FFFF00000000FFFFFFFFFFFF000000),
    .INIT_6A(256'hFFFFFFFFFFFF01000100FF0000FFFF00FF00FFFFFF00FFFF00FF00FF00FF00FF),
    .INIT_6B(256'h000000FF0000FFFEFEFFFF00FFFF00FF000000000000FFFF00FFFF00FF0000FF),
    .INIT_6C(256'h00FFFF00FF00FF0000FF00FF00FF00FF0000FF00000000FF000000FF0000FF00),
    .INIT_6D(256'h000000FF000000FF00FFFF00FFFFFF0000FF00FFFF0000FF0000FF0001000000),
    .INIT_6E(256'hFFFFFFFF000000000000FF0000FF00FFFF00FFFFFFFFFFFFFFFFFFFF00000000),
    .INIT_6F(256'hFF00FF0000000000FFFF00FF00FF00FFFFFF00FFFF0000FF0001FFFFFF00FFFF),
    .INIT_70(256'h000000FF000000FFFF0000FF0000FF00FFFF0000000000FFFF000000FF000000),
    .INIT_71(256'hFFFF0000FF0000000000FF0000000000FFFF00FFFFFF00FF00FFFF0000FFFF00),
    .INIT_72(256'hFFFF00FEFF00000000FFFF00FFFFFFFF00FFFFFFFF00FFFFFFFE00FFFF0000FF),
    .INIT_73(256'h00FF00FFFFFFFE0000FFFF0000FEFF00FFFF00FF0000000000FFFFFF00FFFFFF),
    .INIT_74(256'h0000000000000000FF000000FF000000FF00FF00FFFFFF0000FF00FF0000FFFF),
    .INIT_75(256'hFF000000000000FF00FFFF0000FF00FFFFFF00FF00FF00FF00FF00FF0000FF00),
    .INIT_76(256'h00FFFF00000000FF00FFFFFFFFFFFFFFFFFFFF0000FFFF00FF00FF00FF00FFFF),
    .INIT_77(256'hFF00FFFF0000FF0000000000FF0000FFFFFEFFFFFFFF0000FF0000FFFFFF00FF),
    .INIT_78(256'h00FF0000FFFFFFFFFFFF0000FF00FF00FF00FF00FFFFFFFF0000FF00FFFFFF00),
    .INIT_79(256'h0000000001000000FFFFFF0000FFFFFFFF000000FFFF0000FFFFFFFF00000000),
    .INIT_7A(256'h0000000000010000000000FF00FFFF0000FF00FFFFFF0000FFFFFF0000FFFFFF),
    .INIT_7B(256'h00FF00000100000001010100000100FF00FFFF00FFFF00FF00FF000000000000),
    .INIT_7C(256'hFF0000FFFFFFFF01010000000001000100FFFFFF00FFFF0000FF00FFFF000000),
    .INIT_7D(256'h00FFFF0000FFFFFFFFFFFF00000000000000FF0000000000FF00FFFFFF000000),
    .INIT_7E(256'h000000FFFF00FFFFFFFFFFFEFFFFFF00000000FF0000000000FF00FF00FF00FF),
    .INIT_7F(256'hFF00FFFF00FF00000000000000FEFFFFFFFF000001000100000100000000FFFF),
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized6
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
    .INITP_00(256'h8C001F64895DEDFEC218DB652000379E375378797BFC19723FE5A6FAFBA97982),
    .INITP_01(256'h24C3807BA3E271D5ACAABF1508DFCFC842FE9AACF66CF23D2AC8A21899530DBB),
    .INITP_02(256'h207E5C02DFFE5407EAC96ECCCDB51FA705CCF6853E60013D5D18275B84148CA5),
    .INITP_03(256'h6A359F6FB153B21D8E8957882DEFA5580F1AB447519815528705785D5CC4E053),
    .INITP_04(256'h92FFB4E8C7FF55D87664E246D32A2B2BAEBD96887AC78356B727F5A6D186E184),
    .INITP_05(256'h8E5DDB2F21F6EA2EDE9E8C47A7D8B51B9FF491FC8926DC19DDFF7D6F84BDFB20),
    .INITP_06(256'h01F9ED75262F2290E8C9F4C92E6E30C357612AC1E8E4D4DFA31EF5CB2A3DE812),
    .INITP_07(256'hE66203A108A0C7A6A250B52D04C13B4BC8EB04B1F75617F2667EF1F4DA766371),
    .INITP_08(256'h0FDFC7C17D9EFC17670EC3EB57F0FF17158FD4F9F7FDE47E5FD69EDFFF166AF6),
    .INITP_09(256'hFBFE80F3FBDCB85FD47D8AE2090DB393231EC0646A786F918F0387C7F1536DFF),
    .INITP_0A(256'h007F730017E9A8637287E4976574E9E847F030FE58B3A449001DBB4DB7F790F5),
    .INITP_0B(256'h37707D375C021EFEE152DBFE89BBFFE0FEDDFF16727FE97AC1E87FAD8607FB50),
    .INITP_0C(256'hB9E94A69108B8A291A27D4A0014794840592FC12DFE517BB88C0F1A7099C0F56),
    .INITP_0D(256'h00000000000000000000000000000000000000000001BA9F191373EB0D0049D2),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'hFFFFFFFFFF00FFFFFF00FF00FF0000FF00FFFFFEFF0000FFFF0000000100FF00),
    .INIT_01(256'h0000FFFEFFFFFFFFFFFFFF0000FF00FFFF00FF0000FFFF00FFFFFFFFFF00FF00),
    .INIT_02(256'h00FFFFFFFF00FFFFFFFFFFFFFFFF0000000000FFFF0000FF00FFFFFF0000FF00),
    .INIT_03(256'h0000FFFF01FFFFFF00FF00FF0000FFFF00FFFFFFFF01000000FFFFFFFF0000FF),
    .INIT_04(256'h0000FF000000000000000000000100000001FFFF00FFFFFFFF0000FFFFFFFF00),
    .INIT_05(256'hFFFF00000000FF00010000FFFF000000FFFF00FFFF00FFFF00FFFF0000FF00FF),
    .INIT_06(256'hFF000000FF0000FF00FF00FFFFFF00FFFFFFFE00FFFF00FFFFFFFEFEFFFFFF00),
    .INIT_07(256'hFF000000FFFF00000000000000000000000000FFFFFFFFFF00FFFF0000FF0000),
    .INIT_08(256'hFF0000FFFF0000FF00FF00FF0001FFFF00000000FFFF00FFFF00FFFFFF00FFFF),
    .INIT_09(256'h0000FF00FF00FF00FFFF0000FF000000FF00FF000000FF00000000FFFF000000),
    .INIT_0A(256'hFFFFFFFF00FFFF0000FFFF00FFFF0000FFFFFFFF0000FF000000FFFFFFFF00FF),
    .INIT_0B(256'h00FF00000000FF00FFFFFFFFFFFFFF00FF0000FFFF00FF00FF00FF00FFFF0000),
    .INIT_0C(256'h00000000FF000000FFFF00FFFFFFFFFFFFFF0000FFFFFFFFFFFF0000FF000000),
    .INIT_0D(256'hFF00FF00FFFF0000FF00FF00FF00FF00FF00FFFFFFFFFFFF000001FF00FF00FF),
    .INIT_0E(256'hFF00FF000000FFFFFFFFFF000000FF0000FFFFFF000000FEFFFF00FF00FF00FF),
    .INIT_0F(256'h0000FF0000FF0000FFFF00000000FFFFFF0000000000000000FFFFFFFF00FFFF),
    .INIT_10(256'hFF00000000FF0000000000FF00FF0000FF000000FFFF0000FF00FF0000FF00FF),
    .INIT_11(256'h00FF00FFFFFF00FF000000FFFF0000010000FF0000FFFFFF00FF00FFFF00FFFF),
    .INIT_12(256'h0000FFFFFFFFFF0000FFFF000000000100000000000000FF0000FFFFFFFF00FF),
    .INIT_13(256'h0000000000FF00FFFFFF0000FFFF0000FFFFFFFF00FFFF00FF00000000FF00FF),
    .INIT_14(256'hFFFF0000FFFF00FFFF00FFFF00FF00FF000000FFFFFFFFFFFF00FF0000FFFFFF),
    .INIT_15(256'hFFFFFF00FF00FF00FFFF0000FF0000FF00FFFF00FFFFFF00FFFF0000FFFF0000),
    .INIT_16(256'hFFFF00FFFFFFFFFEFFFFFFFFFFFFFF0000FF00FF00FF00000000000000FFFFFF),
    .INIT_17(256'h0000FF000000000000FFFFFFFFFFFF0000FF00FFFFFF0000000000000000FF00),
    .INIT_18(256'h00FF00FFFFFF0000FFFF000000FF0000FFFFFF000100000000FF00FF0100FFFF),
    .INIT_19(256'hFF00000000FFFFFF0000000000FF00FF00FFFFFFFF00000000FF00FFFFFF00FF),
    .INIT_1A(256'h00FF00FF000000FFFF0000FFFF000000000000FF00FF00FF00FF00FE0000FF00),
    .INIT_1B(256'h01000000FFFFFFFF000000FFFF00FF00FF00FFFF00FF000000FF000000FFFFFF),
    .INIT_1C(256'h0000FF00FFFF00FFFFFFFF00FFFFFFFFFF00FF0000FF00FF00FF00FFFF000000),
    .INIT_1D(256'hFF000000FFFFFF00FF000000FF0000FF00FF00FF00FFFFFFFF000000FF000001),
    .INIT_1E(256'hFF00FFFF000000FF00FF00FF0000FFFFFF00FFFF0000FF00000000FFFFFF00FF),
    .INIT_1F(256'h00FFFF00FF00FF000000FFFF00FF00FFFF0000FFFFFFFFFF00FFFF00FFFFFFFF),
    .INIT_20(256'hFFFF00FF000000FFFF00000000FFFF00FFFFFF00000000FFFF00000000FF0000),
    .INIT_21(256'hFF00FFFF00FFFFFF0000FF0000FFFFFFFFFFFFFF00FF00FFFF00FF0000FFFF00),
    .INIT_22(256'h00FFFFFFFF00FF00FFFF000000FFFFFFFF0000000000FFFF00FF00FF00FFFF00),
    .INIT_23(256'hFF00FF00FFFFFF00FF00FFFFFFFF00FFFF0000FF00FFFF00FF000000FF000000),
    .INIT_24(256'hFFFF00FE0000FFFF0000FF00FF00FF000000FF00FF00FFFF0000FF00FF00FFFF),
    .INIT_25(256'h00FFFFFF00FFFF0000FFFF0000FF0000FFFFFF000000FF0000FF000000FFFF00),
    .INIT_26(256'hFFFF000000FFFFFFFFFFFFFFFFFFFFFF00FF00FF00FF00FFFFFF00FFFF000000),
    .INIT_27(256'hFF0000FF0000FF00FFFFFFFFFFFFFFFFFF00FFFF00FF0000FFFFFF00FF000000),
    .INIT_28(256'hFE00000000FF0000FF00FEFFFFFF00FFFFFFFFFFFF00FFFF0000FF0000000000),
    .INIT_29(256'hFFFF00FFFFFF00FFFFFFFFFFFFFFFFFF00FFFFFFFFFF00FF00FFFF00FFFFFFFF),
    .INIT_2A(256'hFF000000FF0000FF0000FF0000FFFF00FFFF00FFFFFF0000000000FFFF0001FF),
    .INIT_2B(256'hFF0001FFFFFFFFFFFFFFFFFF00FF0000FF0000FF000000FFFFFFFEFFFFFF0000),
    .INIT_2C(256'hFF00FF0000FFFFFFFFFF00FEFF000000FF00FFFF00FF00FF000000FFFF00FFFE),
    .INIT_2D(256'hFFFF00FEFFFFFF00FF0000FFFFFFFF00FF000000FFFF000000FF000000FFFFFF),
    .INIT_2E(256'h0000FF00000000FFFFFFFFFF00FFFF00FFFFFF00FF00FF000000FF00FFFFFF00),
    .INIT_2F(256'hFF000000FFFFFF0000FF00FFFFFF00FFFFFF00FFFF00FFFF0000FF00FFFFFFFF),
    .INIT_30(256'h0000FF00FF00FF000000FFFFFFFF00FFFFFFFF00FF000000000000FF0000FF00),
    .INIT_31(256'hFF00FF000000FFFF000000FFFFFFFF00FFFFFFFF00FF00FFFFFE0000FF00FFFF),
    .INIT_32(256'hFFFFFF00FF000000FFFFFF0000FF0000FFFF00FF00FF0000FFFF00FFFFFFFFFF),
    .INIT_33(256'h00FF00FF00FFFFFF00FFFF00000000FF0000FF00FF00FF00FFFF0000000000FF),
    .INIT_34(256'h0000FF00FFFFFE0000FFFF00FFFFFF000000FFFF00000000FFFF00000001FFFF),
    .INIT_35(256'hFFFFFF00FF000000FFFF0000FF0000FFFFFFFFFF00FF0000FFFF0000FF0000FF),
    .INIT_36(256'h0000FF0000FFFF000000FF00FFFFFFFF0000FF000000FF00FF0000FF00000000),
    .INIT_37(256'h00000000000000FFFFFFFFFFFF0000FFFFFFFF00FFFF00FF00FFFFFF00FF00FF),
    .INIT_38(256'hFFFF00FFFF00FF0000FFFFFF00FFFF0000FFFF000000FFFF00FFFFFF000001FF),
    .INIT_39(256'h00FFFF0000FFFF0000FFFFFFFFFFFF00FFFFFFFF000000FFFFFFFFFF00FF0000),
    .INIT_3A(256'hFFFFFFFF00FFFFFF00FF00FF00FFFF00000000FF00FFFFFFFFFFFFFF0000FF00),
    .INIT_3B(256'hFFFF0000FF000000FFFFFF00FF00FFFF0000000000FF0100FF00FFFF000000FF),
    .INIT_3C(256'h0000000000FF0000FFFF0000000000FF0000FFFFFF00FFFF00FF0000FF00FFFF),
    .INIT_3D(256'hFF00FF000000FF0000FF00FF00000000FF00FFFF00FF00FF0000FF00FFFF00FF),
    .INIT_3E(256'h00000000FF000100FF00FF0000000000FFFF000000FFFFFFFF00FF0000FFFF00),
    .INIT_3F(256'hFFFFFF0000FFFF0000FFFF000000FF00000000000000FFFFFF00FF00000000FF),
    .INIT_40(256'hFEFFFFFFFEFFFFFF000000FF00FFFF0000FFFF00FF00FF00FFFFFEFF00FEFF00),
    .INIT_41(256'h00FF00FFFFFEFFFFFFFF00FF00FFFF00FF0000FFFFFFFF00FFFF00FFFFFFFFFF),
    .INIT_42(256'hFFFFFFFF00FFFFFFFFFFFFFFFFFF00FFFFFFFF0000FF000000FFFFFFFFFFFF00),
    .INIT_43(256'h000000FF00FF00FFFF000000FFFFFFFFFFFF00FF00FF0000FFFFFFFFFF0000FF),
    .INIT_44(256'h00FF00FF00FFFFFFFFFFFFFF00000100FFFEFFFEFFFFFFFF000000FF00FFFFFF),
    .INIT_45(256'h00FFFF0000FFFFFF00000000FFFFFE00FFFF00000000FFFFFFFFFF00FF00FFFF),
    .INIT_46(256'h00FFFFFFFFFF00FFFF0000FFFFFFFF00FFFFFFFFFFFF0101000000FF00FFFFFF),
    .INIT_47(256'h01000000FFFFFFFFFFFF00FFFFFFFFFFFFFF000000FFFFFFFEFF0000000000FF),
    .INIT_48(256'hFFFEFFFF010000FF00FF00FF0000FFFF00FFFF00FFFF00FFFFFFFFFFFFFFFFFF),
    .INIT_49(256'hFF000000FFFFFFFF000001000000FFFFFF00000000FFFFFFFFFF000000FFFFFF),
    .INIT_4A(256'h00FFFF00FF00FF0000FFFEFFFF00000000FFFF00FFFFFFFFFF0100FF000000FF),
    .INIT_4B(256'h0000FF000000FFFF000000FFFFFFFE00FFFF00000000000000FFFF0000FF0000),
    .INIT_4C(256'h00000000FF0000FF00000000FFFF00FFFF00FFFF0000FFFFFF0000FF0000FFFF),
    .INIT_4D(256'hFFFF00FF00FF000000FFFFFFFFFF00FFFF000000FF00FF00FFFFFF000000FF00),
    .INIT_4E(256'hFFFFFFFFFF00FFFFFFFF00FFFFFF0000FF00FFFFFF00000000FF00FFFFFFFFFF),
    .INIT_4F(256'hFFFFFFFFFF00FFFEFFFFFFFFFFFFFF00FF00000000000000FFFFFFFF0000FFFF),
    .INIT_50(256'hFF00FFFF00FFFFFFFFFFFFFF00FFFFFFFF0000FF00000000FFFFFFFF00FF00FF),
    .INIT_51(256'h0000000000000000000000FFFEFF00FFFF00FFFFFE00FFFF00FF0000FFFF00FF),
    .INIT_52(256'h00FF00FFFF000000FF00FFFF0000FFFFFF00FF0000FF000000FF0000FF0000FF),
    .INIT_53(256'h00FF010000FFFFFFFFFFFFFF000000000000FFFF00000000FFFFFFFFFFFFFF01),
    .INIT_54(256'h00FFFF0000FF00FF01FFFFFF00FF0000FFFFFF00FF0000FFFFFFFF00FF000000),
    .INIT_55(256'h00FEFFFF0000FF00FF00000000FFFFFFFFFFFF0000FF0000FF0000FF00FFFFFF),
    .INIT_56(256'h000000FF00FFFFFFFFFFFF00FF0000FFFF00FF00FF00010000FFFF000000FFFF),
    .INIT_57(256'h000000000000000000FFFFFFFFFFFFFE00FFFFFF0000FFFF0000000000000000),
    .INIT_58(256'hFF00000000FFFF000000000000FFFFFFFFFFFFFFFF00FFFF00FF00FF00010000),
    .INIT_59(256'hFFFF0000000000FFFFFFFF00FF00010000FFFFFFFFFFFFFFFF00FF00FFFF00FF),
    .INIT_5A(256'h00FFFFFF0000FF0000FFFFFFFFFFFFFEFFFFFF00FF0000FF00FFFFFFFF00FF00),
    .INIT_5B(256'hFFFFFFFFFFFFFF00FFFF00FFFFFE00FEFFFFFEFEFEFFFEFF000000FF00FFFE00),
    .INIT_5C(256'hFF000000FF0000FFFF00FFFFFF00FFFFFFFFFFFEFEFEFEFEFEFEFF0000000000),
    .INIT_5D(256'hFFFFFF00000000FF00FF00FF0000FF00FFFF00FEFF00FFFFFFFEFEFEFFFFFF00),
    .INIT_5E(256'h00FF00FFFFFF0000000000000000FF00000000FFFFFFFF00FFFFFFFFFFFFFF00),
    .INIT_5F(256'h0000FFFF00FFFFFF00FFFFFF0000000000FFFFFFFFFF00FF0000FFFF00FFFFFF),
    .INIT_60(256'h00000000FF0000FFFF0000FFFFFF000000000000FFFFFFFF00FF00FF00FFFF00),
    .INIT_61(256'hFF000000FF000000FFFF000000000000FFFFFFFF000001FFFF00FF0000FFFFFF),
    .INIT_62(256'hFFFF00FFFFFFFFFFFFFFFF0000FF00FF000000FF00FFFFFFFF00FFFFFF00FFFF),
    .INIT_63(256'h0101000100FF00FFFF0000FF0000FF00FFFFFFFFFFFF0000000000FF0000FF00),
    .INIT_64(256'h00000000000000FF00FF000000FFFFFFFE0000FF00FF0000FF00000000FF0000),
    .INIT_65(256'h000000FFFF00FF000000FF0000FFFEFFFFFF00FF00FF0000FF00FF0000000001),
    .INIT_66(256'h000000FF00000000FF000000FF00FFFFFF000000FF00FF000000FF00FF0000FF),
    .INIT_67(256'hFF00FFFFFF0000FFFFFFFF00FF0000FF00FF0000FF00FF0000FFFF00FF0100FF),
    .INIT_68(256'h01000000FFFF00FF000000000000000000FF0000FF0000FFFFFF00FF0000FF00),
    .INIT_69(256'h000000FFFF0000FF000000FF0000FFFF01FFFFFF0000FFFFFFFFFF00FF00FFFF),
    .INIT_6A(256'h000000000000000000000000000000FFFF00FFFFFF00FF00FF0000FFFFFFFFFF),
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

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_top
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

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_generic_cstr \valid.cstr 
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
(* C_INITA_VAL = "0" *) (* C_INITB_VAL = "0" *) (* C_INIT_FILE = "weight1_bram_2.mem" *) 
(* C_INIT_FILE_NAME = "weight1_bram_2.mif" *) (* C_INTERFACE_TYPE = "0" *) (* C_LOAD_INIT_FILE = "1" *) 
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
(* downgradeipidentifiedwarnings = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_4
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_4_synth inst_blk_mem_gen
       (.addra(addra),
        .clka(clka),
        .dina(dina),
        .douta(douta),
        .ena(ena),
        .wea(wea));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_4_synth
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

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_top \gnbram.gnativebmg.native_blk_mem_gen 
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
