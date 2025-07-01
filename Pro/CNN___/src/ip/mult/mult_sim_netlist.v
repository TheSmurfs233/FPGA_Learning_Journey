// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Tue May  6 00:29:30 2025
// Host        : DESKTOP-I8GGJRG running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim D:/CNN/OV5640_DDR3_HDMI_UDP_gray___/src/ip/mult/mult_sim_netlist.v
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
aAf30l1XwPWiXTC/PO06K3VCG+3GWwHHVGOSpmGjI0N809qiEHGD6lIbmtjMv3vajAJER8+z0eq3
CfcPtW8NETqAfhPuUbHQpiNWDSvhn4xLXbs/sv7CRa1O1Gos5U+6qWbWIhR9chKH0PpViUyPXJB2
OVGM89d7uZxmr7V8OvlA9NYJRcK2Cq1blO5jMa1xQlI0SJHvRx8kdF6RJq3vudN8sEDXPh8WcwY9
B2zCtAis1o4pz8JBSdKNsMuVjYYeEsZjFY09mcvFg46NYVDWxNBo5V9/kLxif0D76zfKkErZkntC
Wu4wQqyB/uJJInwrzM2YCMDTkSzdlqY+tr4WyQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
iHVkyogz/vquVoH/XbGhyFGWsi1ug6K7RK3LlKNZ1LL0yCBPgaFLFB+lWcGhLn58gw+cbur1tzJ0
tq9hvN80AwN1ocfqB9pZEWOVIKYh7wtRBZAMPoe9KzxayPyLC4IyT7Jw3NvksNO9rOIFghPVnjxk
89ltJtTG3mTdwgWdk1ShI4MTA4ZXBkhxSAmODJxY9Vu55DrxiWysnG/MEgSs5ssFdINzqPpJMZIg
EU6rjxGd89XPCx5e1DGdMrl6Bj1quTYCNV9GWd7uqDzgOJQ0L01uGDGi4Q6AIiwpfo2aXgBmSxq+
wI0QSa45HNZKtaete6FI4sVK0CZEYi4O/zMVFg==

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
