// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Mon May  5 00:32:12 2025
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
   (CLK,
    A,
    B,
    P);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:b_intf:a_intf, ASSOCIATED_RESET sclr, ASSOCIATED_CLKEN ce, FREQ_HZ 10000000, PHASE 0.000, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [15:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [15:0]B;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef" *) output [31:0]P;

  wire [15:0]A;
  wire [15:0]B;
  wire CLK;
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
  (* C_LATENCY = "2" *) 
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
        .CLK(CLK),
        .P(P),
        .PCASC(NLW_U0_PCASC_UNCONNECTED[47:0]),
        .SCLR(1'b0),
        .ZERO_DETECT(NLW_U0_ZERO_DETECT_UNCONNECTED[1:0]));
endmodule

(* C_A_TYPE = "0" *) (* C_A_WIDTH = "16" *) (* C_B_TYPE = "0" *) 
(* C_B_VALUE = "10000001" *) (* C_B_WIDTH = "16" *) (* C_CCM_IMP = "0" *) 
(* C_CE_OVERRIDES_SCLR = "0" *) (* C_HAS_CE = "0" *) (* C_HAS_SCLR = "0" *) 
(* C_HAS_ZERO_DETECT = "0" *) (* C_LATENCY = "2" *) (* C_MODEL_TYPE = "0" *) 
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
  wire CLK;
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
  (* C_LATENCY = "2" *) 
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
        .CLK(CLK),
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
CVqqzYoyNtGMZ2mNpo2eCGxBnUt1yMaK0CEkNIEFivwKx7GLHzRELVf3aRuo1g6bffrdIGiiGWxL
oppdCfd5Ip9jBUum/U+Boa8v2eqKjkm3hw7KZxJU8I+BxSs3TlYu5gHUET3jSoFKy/m8UZeetXuO
0IfAFL0ZPdIvb/SCuGpnK1in6nz0pfyyyTR/G6xscB42ocVTxCXq7qVkwagFMnMKn/qMW+s7B7m4
9Zyo2jH/uu+uxG6hs/CKF3vHx7NzXgdRrD1YYgyp4mdZCOjI3kCiqyX3IkwvFIQ+t4a/84XdVlBj
18EnPDBdWMBKhPmAz+bBWBRGMTZDf+3CQw3VCw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
6kDZ6mEZv9BXHA8Pu8jtQEmAtMS/6TABNHhL8tIHDKQXxux75tSW7zvIk0v28T67re3Z/wIVncP9
4TQInC8Ol4AXp85Q5DZizm1fGZcsw9Yh8N1OW13a0eQ2urkO2VR/Vg8MMAc3XGsLfQI66fxZSuue
AfLqDquaa2pUl4Dm8uQxyiQSKm2bZ/dcYFc4KH/dyueKvLVwEyR0Yd6zJd1/MpEnumXWCv+RyWYV
4tFmyZWsuIdwNsU8iX0qI7xGRWqLSBp5Ah7nDp5rewa5OuSluju6LI3V7riQS/FU2I6l+GjAIqvt
ko7EdLws5IL5rWCLaCqUUvIIYnmJnFEs0jFqUA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 7200)
`pragma protect data_block
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
TI0hqwl03/suWk1F44qB1AzO
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
