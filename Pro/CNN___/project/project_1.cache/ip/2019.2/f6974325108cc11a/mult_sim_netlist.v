// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Wed Jul  2 15:17:24 2025
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
gZVgO6LLmClBxyXv5fiOgB8WGHn5fNhEXCx+sGcZ1se/5t1CvVNv8g2zqWY1EPYka4TfkG/mIWGE
2qRl3a9HFMq4dAsD9q/7BY56WK6wrCScR9UoDKTEgqoA/86C2IYbXCxt6SjvZ/1xhGBGcFEcCvUX
Xmbz5HCfMLS7aTYuEjXOkOI24/qfuUxGtRS6DG8K3ii8VwAvD4KysSAzo2pnRE2QS9bE0toePBKn
ZDooM1TllqxySZL05fJplVdUvXbgNQ/AQMLGfQtrDZQ0h1s1+LNolYhYSroP10u1CyvXTq4vwuDd
ceaAsSHjH+P+zIy7UQ2nqFc8EwvTiO31lNoPSg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
F/9GinYE6ZGrGVDcUuU/JbPusP2dJe/B6apcoNDlp02JL31xcGGVZHHi+s6WMlmN8mI+yqSYbDDX
dWDzK9oFDHenUIhkgGHjRCloiQn3tQ7ZOAQJt4pPkUxUKICWtumGNKIuYOzuXAmEu0WahJXXOu95
n9ZJfhR6v1qBLUlvtsKgEz1gSmp7fHEzAJy5Aup/m/FXrc9DzovGtbw6tnko+aaB9H4q+m++r4yd
rhpRC5Xp9EGg5HT7NjKIvuLvBHQGLhqXyK8iwiQ08XjARArwQDMaEVsCukjxYRuEKhqwItfpebp5
v2gOZI7jYy8J4h6WcC2etZGI8IDPbk56BeqKuw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 6560)
`pragma protect data_block
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
xzeWcNc=
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
