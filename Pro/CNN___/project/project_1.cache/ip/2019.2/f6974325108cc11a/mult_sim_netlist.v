// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Tue May  6 00:29:30 2025
// Host        : DESKTOP-I8GGJRG running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ mult_sim_netlist.v
// Design      : mult
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tfgg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "mult,mult_gen_v12_0_16,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_16,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mult_gen_v12_0_16 U0
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
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "artix7" *) (* downgradeipidentifiedwarnings = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mult_gen_v12_0_16
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mult_gen_v12_0_16_viv i_mult
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
eAeVuvkCOii51lcw1WZEpSEbNfkttXKTEhTz9SiLoes6JBSM+8vc1SmUbIkX4EK7icvjFD0LkFOJ
GDdqwpD6ywegADw3rRSOv9zDbrdsvjKLDXixeTCUZRhIcoeAoo+Y9TN5gaK233Baz3oF2RbyTXme
fKTk0R21tkAsgSypEzJuROJ26QnbNW4/l/xNevvgQLLNFvSutx8Cl/NclMnnRDPGOldZ0jSFLoqA
dhwmoF/BZ4R8LNhJ1500Jqg/skqkopsDXOf6Z6WIjZHpi0xx6OZ8+cVH5ItEd4z5stPYYUN/UNN1
gi6Fl+yMhtM/tv9IMegzm+QL2rmTO0ArYchiQA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
uUJFGnNsixbda0w8xwRG0EbPeVi4Um7WSPLpPCJeyB3/zsRgTvJl+XjMhNV+GHb16kJWY4tkUUM9
GobQCJdE2QggHEb97646O2mioxaxO8wbvplgdjBjpO9s2lcRzL6/zFGE+IoLtIjqvRan/mldHHZe
opVsmBK7Sor8WZTPTRvj+gIsJF2j4Uf2bO0DB0N7Jp3doCWLlIh1XIPuZ6ojphd2FHE3C627hD7+
KjToLXgMWuAO9C5+TveOIVaRfqISuF7BoKwTQcg4Bar0UbRL21FaGeFpGvq7fwFLJoj4ZF9kkL7c
vXMNZ1KxUePNk3V4W8D0PMXjtYyK1vcs7U5cqw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 6560)
`pragma protect data_block
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
4dt76BY=
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
