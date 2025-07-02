// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Wed Jul  2 15:17:25 2025
// Host        : DESKTOP-I8GGJRG running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim C:/FPGA_Learning_Journey/Pro/CNN___/src/ip/mult/mult_sim_netlist.v
// Design      : mult
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tfgg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "mult,mult_gen_v12_0_16,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_16,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module mult
   (A,
    B,
    P);
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [15:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [15:0]B;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef" *) output [31:0]P;

  wire [15:0]A;
  wire [15:0]B;
  wire [31:0]P;
  wire [47:0]NLW_U0_PCASC_UNCONNECTED;
  wire [1:0]NLW_U0_ZERO_DETECT_UNCONNECTED;

  (* C_A_TYPE = "0" *) 
  (* C_A_WIDTH = "16" *) 
  (* C_B_TYPE = "0" *) 
  (* C_B_VALUE = "10000001" *) 
  (* C_B_WIDTH = "16" *) 
  (* C_CCM_IMP = "0" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_ZERO_DETECT = "0" *) 
  (* C_LATENCY = "0" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_MULT_TYPE = "1" *) 
  (* C_OPTIMIZE_GOAL = "1" *) 
  (* C_OUT_HIGH = "31" *) 
  (* C_OUT_LOW = "0" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  mult_mult_gen_v12_0_16 U0
       (.A(A),
        .B(B),
        .CE(1'b1),
        .CLK(1'b1),
        .P(P),
        .PCASC(NLW_U0_PCASC_UNCONNECTED[47:0]),
        .SCLR(1'b0),
        .ZERO_DETECT(NLW_U0_ZERO_DETECT_UNCONNECTED[1:0]));
endmodule

(* C_A_TYPE = "0" *) (* C_A_WIDTH = "16" *) (* C_B_TYPE = "0" *) 
(* C_B_VALUE = "10000001" *) (* C_B_WIDTH = "16" *) (* C_CCM_IMP = "0" *) 
(* C_CE_OVERRIDES_SCLR = "0" *) (* C_HAS_CE = "0" *) (* C_HAS_SCLR = "0" *) 
(* C_HAS_ZERO_DETECT = "0" *) (* C_LATENCY = "0" *) (* C_MODEL_TYPE = "0" *) 
(* C_MULT_TYPE = "1" *) (* C_OPTIMIZE_GOAL = "1" *) (* C_OUT_HIGH = "31" *) 
(* C_OUT_LOW = "0" *) (* C_ROUND_OUTPUT = "0" *) (* C_ROUND_PT = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "artix7" *) (* ORIG_REF_NAME = "mult_gen_v12_0_16" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module mult_mult_gen_v12_0_16
   (CLK,
    A,
    B,
    CE,
    SCLR,
    ZERO_DETECT,
    P,
    PCASC);
  input CLK;
  input [15:0]A;
  input [15:0]B;
  input CE;
  input SCLR;
  output [1:0]ZERO_DETECT;
  output [31:0]P;
  output [47:0]PCASC;

  wire \<const0> ;
  wire [15:0]A;
  wire [15:0]B;
  wire [31:0]P;
  wire [47:0]NLW_i_mult_PCASC_UNCONNECTED;
  wire [1:0]NLW_i_mult_ZERO_DETECT_UNCONNECTED;

  assign PCASC[47] = \<const0> ;
  assign PCASC[46] = \<const0> ;
  assign PCASC[45] = \<const0> ;
  assign PCASC[44] = \<const0> ;
  assign PCASC[43] = \<const0> ;
  assign PCASC[42] = \<const0> ;
  assign PCASC[41] = \<const0> ;
  assign PCASC[40] = \<const0> ;
  assign PCASC[39] = \<const0> ;
  assign PCASC[38] = \<const0> ;
  assign PCASC[37] = \<const0> ;
  assign PCASC[36] = \<const0> ;
  assign PCASC[35] = \<const0> ;
  assign PCASC[34] = \<const0> ;
  assign PCASC[33] = \<const0> ;
  assign PCASC[32] = \<const0> ;
  assign PCASC[31] = \<const0> ;
  assign PCASC[30] = \<const0> ;
  assign PCASC[29] = \<const0> ;
  assign PCASC[28] = \<const0> ;
  assign PCASC[27] = \<const0> ;
  assign PCASC[26] = \<const0> ;
  assign PCASC[25] = \<const0> ;
  assign PCASC[24] = \<const0> ;
  assign PCASC[23] = \<const0> ;
  assign PCASC[22] = \<const0> ;
  assign PCASC[21] = \<const0> ;
  assign PCASC[20] = \<const0> ;
  assign PCASC[19] = \<const0> ;
  assign PCASC[18] = \<const0> ;
  assign PCASC[17] = \<const0> ;
  assign PCASC[16] = \<const0> ;
  assign PCASC[15] = \<const0> ;
  assign PCASC[14] = \<const0> ;
  assign PCASC[13] = \<const0> ;
  assign PCASC[12] = \<const0> ;
  assign PCASC[11] = \<const0> ;
  assign PCASC[10] = \<const0> ;
  assign PCASC[9] = \<const0> ;
  assign PCASC[8] = \<const0> ;
  assign PCASC[7] = \<const0> ;
  assign PCASC[6] = \<const0> ;
  assign PCASC[5] = \<const0> ;
  assign PCASC[4] = \<const0> ;
  assign PCASC[3] = \<const0> ;
  assign PCASC[2] = \<const0> ;
  assign PCASC[1] = \<const0> ;
  assign PCASC[0] = \<const0> ;
  assign ZERO_DETECT[1] = \<const0> ;
  assign ZERO_DETECT[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_A_TYPE = "0" *) 
  (* C_A_WIDTH = "16" *) 
  (* C_B_TYPE = "0" *) 
  (* C_B_VALUE = "10000001" *) 
  (* C_B_WIDTH = "16" *) 
  (* C_CCM_IMP = "0" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_ZERO_DETECT = "0" *) 
  (* C_LATENCY = "0" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_MULT_TYPE = "1" *) 
  (* C_OPTIMIZE_GOAL = "1" *) 
  (* C_OUT_HIGH = "31" *) 
  (* C_OUT_LOW = "0" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  mult_mult_gen_v12_0_16_viv i_mult
       (.A(A),
        .B(B),
        .CE(1'b0),
        .CLK(1'b0),
        .P(P),
        .PCASC(NLW_i_mult_PCASC_UNCONNECTED[47:0]),
        .SCLR(1'b0),
        .ZERO_DETECT(NLW_i_mult_ZERO_DETECT_UNCONNECTED[1:0]));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2019.1"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
HPMPLvpmoX7LOmPj78BMT9X1rCnPz6PdhVGZQ307N9haGfAdMGVirvGR3e0Glyn2ieoWqXA6qOQL
t0xn28+h0g==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
Nxv/BnutRgdmHnLyK7kvDGjm7WGfFKW2mxQ6xUKF14zS4ziz5pSV0ueW4VqAzUyEPsErIAEuyV6F
m5KCqRBB197Q2NbZa7O7tdAqboX6tPAJzbB6u4U/MmNS1AQcSgtfj5srMbdBzDa5pR4V3HrI0MRj
0xhV1BWf725FYPP4av0=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
F5KGJgEDQsX2btdjtRUlSmNtuyodIhGXEa3/AXv1Y7qgSO8gknBfiqj5HcIaVA9b4npQpDnNcmq+
1ONAqLeLhdOm9TES+GsTAkh/lClvl89bzfqgOV33iqwQHYIHwSsWMRXT9JSUx+YWu+g6xKpT1Ycn
8BCPsq4QUJIqL6W16fheEHB/lkMgnespIWEYJJG6R6zvv2zG8GiU6cG8zHrRjdvAj8kOkhmiMvSd
YjGXJSMfjw7ojCPSUF+nb6WWhUEmoMA/6lgSVaXRm00YHSZ09k7rKTJWSXFSpTmkL2WOsQhNS0ek
jdTK2KF5K6z2YOK4zkfHgZ+fB0KJyANaLLJH/Q==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
lFuQXeJ0hi7qnIKAR+37XCSOwp8bGLukonngcICceOVpL87+rxvhP5TyNJ/zXpAWDF0BaRYlGr7d
isPiUStrvUthNyOqCr4vFZyhCdY8n+Mrv3OCvLoLQSarxVXbaKbXb0tPsXJCUdXTrCt9mr5x0Nda
6DAI8FBPlFMAiqnFXnYMwlUiSlkNWUpInuNw7+1eD8kUdckEUV1PDwZ0yjpFqMokMH9oJjN6z0Yy
65D8Tqo288ZMfZQuIimjski+X6EK157XbpyuoZIuYLJ7j6oaATdintgfZpgGzVvhCZtMbx6/SJtR
efW5vLBGiGs7rPBPE2T8fosHGOvmeC9QBSj8Ww==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2019_02", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Q8VVvHzTNgU3tZr4+8ia7ylST+kbNPWskONHDOT1dTkB7cHZIAWyzXpQZPuEgk2wJq21PoqmVlG9
t08IYzkfC8vYQ2LRf2Co3SXc7p3gF2OFMC68J9Nf9D+/PXJCJy3QO4H8oO39l6bn8c56K2ARnK0R
mMIALbCWSBDGCWGQmXWZJ+xmDGs1KgTeiSW3bZRftWJ6K8l8BhMit8BLOY2Mi3jJ0WRhN8kKd6JT
D4NU1jTZT6jEtmI7Gnj/AXG6auTqDPHsVQzf+ZzBsLTfw83CFoO70xM997L5cZXlqz8fEDmxezkr
wWxPwJbJeVkRV3tUxlo2Bs2x1uVkXQeNVMI8jg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
oUeTLA0HA2uKORUHo1HidNC3lw54gxwlLUkv28qRPv1pz7AEVUbIJ7wsyu2Scju+EkC2Ivi8HbBn
jxkeqRDTAwAbAqIKnY3AdyfojN9Hb8SMLcLnpWLLCpb6E0vwA09r7uqKRZ8wYAgT9CPFvzpQ3zKt
9DTLgQ3rZtFxx2nfCug=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Fayrlym1l14Y48yZ195XboT9ZQmp/mAzUyHby3Y9qJTzDF+m6mRQ/ZbebObo8bu4VAm45JeETPx1
YI4UZNOK4IqKv0BZsAlzUfAYAmqmkmIJYbn2gWUCwXyKX5AoA4ONnlxEHxzZhqtsmEXvxwTEs25/
R7iLzeoMfmwwNHgPNQkteiR4zDlB76CYmgu6EOSUX5Nnitq1oh7qRuU8WqWN7lLfgIC6T7qNHwGD
RPze2yiP06fSG45jPrOn2fvBX9SRbUXjNtiFgmqim4anwJU46v7y3ubit/I6giZhz5PJMZfkDaFX
ag+uCMq4Q8ZEolqMBmjUjat86BdVd4Nmr0yUaA==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
kIpxh3qIIkWUg8aLJSPKvKhKTPFH7T8fisti5RtNaftS7xh3KDsGLYnF1lYhH2RVXgzbdaVqvtED
5QJazVo6wUFI91xgFeOR5jX+Ny5UBUX2MngsK+UZyZg5+EdtSiDtiJNtQqgjq1Rn+XQCGF3xP80n
7YvuVMbgRHCAfWrWw7ZJ7Y3raRzeIkx+koPFio7XnC+QdRJ0ItO1YtQgF4Sg1Ihr5TH8/RrNn903
kPa+anH9spo3SFCf2Ts11UXAGLdIBmOLMtEAKjjCUbtmjGSeSc0gn2q2I+xRTFcegLevlr/iuLTw
3lFndBAoW40xOiCDjWZ6Rz7J+jZhsRl3D0Bhwg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
ZmnXGjyXlDIZf/TZnyPb24wcpvoqQn2bz4E3iuP9P+mRCY7P4g5R1yNKCgwY2gqCze7GhkYPJd9/
z63ChpOoaODxp6JhQpSvqxLZTJoxTNumtE6VtrsssDu7YRUD8cT/5a5uPeLKSrGvid3VtUouT7Mu
fm/4O88QNaiWagTpv8kjnOpzywTpsrMYUzcxxGgHpneHUsqOZTuyELqiN/HDoY7gg94CSC+FIn0J
WWBKC+crdQPUlmdx7lRcUoQzgobcKKOvOLgkvn2BW3gxUUvN0k8iJbntFwnGTEQh3rRP3yPKEUpC
nDAQsfGhjSTYx7CpsPuGX1iqtTQeO7qP5dXxbg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
IgKWIm06H5rWlXpxWj/5BANaaunRzkDUACoXla+SqeJFgQ1RoAyT6cCSp4btUTRkyzUQ8NMobkqe
OC3CmH/Y/H9+zqgZ+73i2k9Thu2D2sFkxpN/MtH7H3VJpHyjl7RAIrjA7ZK9GRGTEvbhgRbwPF/y
czYGIcjtJI9AyoYqrXiTjCCHMl7PcpJsxB9sx+bQwURKCw5fTT3drxU392rcQ2+BexrwbToBkEty
/E+fdocZKsQqASxDzhDxaV9H97nSvSIF8314tZlqEyTiCtV3sU/MMjILAzfDQlkRJCTRR8151HH2
khSZjSJZRCepjopR+ZT2E/QzG7SPgRMj2RPx7g==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 6528)
`pragma protect data_block
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
`pragma protect end_protected
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
