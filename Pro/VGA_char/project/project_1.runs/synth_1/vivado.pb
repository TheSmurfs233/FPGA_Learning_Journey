
u
Command: %s
53*	vivadotcl2D
0synth_design -top vga_char -part xc7z010clg400-12default:defaultZ4-113h px� 
:
Starting synth_design
149*	vivadotclZ4-321h px� 
�
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2default:default2
xc7z0102default:defaultZ17-347h px� 
�
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2default:default2
xc7z0102default:defaultZ17-349h px� 
V
Loading part %s157*device2#
xc7z010clg400-12default:defaultZ21-403h px� 
�
%s*synth2�
xStarting RTL Elaboration : Time (s): cpu = 00:00:03 ; elapsed = 00:00:03 . Memory (MB): peak = 976.809 ; gain = 235.402
2default:defaulth px� 
�
synthesizing module '%s'%s4497*oasys2
vga_char2default:default2
 2default:default2S
=D:/FPGA_Learning_Journey/Pro/VGA��ʾ���ַ���ʾ/src/vga_char.v2default:default2
12default:default8@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
vga_clk_gen2default:default2
 2default:default2V
@D:/FPGA_Learning_Journey/Pro/VGA��ʾ���ַ���ʾ/src/vga_clk_gen.v2default:default2
12default:default8@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
	clk_wiz_02default:default2
 2default:default2�
sD:/FPGA_Learning_Journey/Pro/VGA/project_1.runs/synth_1/.Xil/Vivado-21892-DESKTOP-I8GGJRG/realtime/clk_wiz_0_stub.v2default:default2
52default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
	clk_wiz_02default:default2
 2default:default2
12default:default2
12default:default2�
sD:/FPGA_Learning_Journey/Pro/VGA/project_1.runs/synth_1/.Xil/Vivado-21892-DESKTOP-I8GGJRG/realtime/clk_wiz_0_stub.v2default:default2
52default:default8@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
vga_clk_gen2default:default2
 2default:default2
22default:default2
12default:default2V
@D:/FPGA_Learning_Journey/Pro/VGA��ʾ���ַ���ʾ/src/vga_clk_gen.v2default:default2
12default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2#
vga_timing_ctrl2default:default2
 2default:default2Z
DD:/FPGA_Learning_Journey/Pro/VGA��ʾ���ַ���ʾ/src/vga_timing_ctrl.v2default:default2
12default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2#
vga_timing_ctrl2default:default2
 2default:default2
32default:default2
12default:default2Z
DD:/FPGA_Learning_Journey/Pro/VGA��ʾ���ַ���ʾ/src/vga_timing_ctrl.v2default:default2
12default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2!
vga_image_gen2default:default2
 2default:default2X
BD:/FPGA_Learning_Journey/Pro/VGA��ʾ���ַ���ʾ/src/vga_image_gen.v2default:default2
12default:default8@Z8-6157h px� 
Z
%s
*synth2B
.	Parameter CHAR_B_H bound to: 10'b0000111111 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	Parameter CHAR_B_V bound to: 10'b0011010000 
2default:defaulth p
x
� 
X
%s
*synth2@
,	Parameter CHAR_W bound to: 10'b1000000000 
2default:defaulth p
x
� 
X
%s
*synth2@
,	Parameter CHAR_H bound to: 10'b0001000000 
2default:defaulth p
x
� 
]
%s
*synth2E
1	Parameter BLACK bound to: 16'b0000000000000000 
2default:defaulth p
x
� 
]
%s
*synth2E
1	Parameter WHITE bound to: 16'b1111111111111111 
2default:defaulth p
x
� 
^
%s
*synth2F
2	Parameter GOLDEN bound to: 16'b1111111011000000 
2default:defaulth p
x
� 
�
merging register '%s' into '%s'3619*oasys2'
char_reg[62][0:511]2default:default2'
char_reg[63][0:511]2default:default2X
BD:/FPGA_Learning_Journey/Pro/VGA��ʾ���ַ���ʾ/src/vga_image_gen.v2default:default2
492default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2'
char_reg[61][0:511]2default:default2'
char_reg[63][0:511]2default:default2X
BD:/FPGA_Learning_Journey/Pro/VGA��ʾ���ַ���ʾ/src/vga_image_gen.v2default:default2
492default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2'
char_reg[60][0:511]2default:default2'
char_reg[63][0:511]2default:default2X
BD:/FPGA_Learning_Journey/Pro/VGA��ʾ���ַ���ʾ/src/vga_image_gen.v2default:default2
492default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2'
char_reg[59][0:511]2default:default2'
char_reg[63][0:511]2default:default2X
BD:/FPGA_Learning_Journey/Pro/VGA��ʾ���ַ���ʾ/src/vga_image_gen.v2default:default2
492default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2'
char_reg[58][0:511]2default:default2'
char_reg[63][0:511]2default:default2X
BD:/FPGA_Learning_Journey/Pro/VGA��ʾ���ַ���ʾ/src/vga_image_gen.v2default:default2
492default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2'
char_reg[57][0:511]2default:default2'
char_reg[63][0:511]2default:default2X
BD:/FPGA_Learning_Journey/Pro/VGA��ʾ���ַ���ʾ/src/vga_image_gen.v2default:default2
492default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2'
char_reg[56][0:511]2default:default2'
char_reg[63][0:511]2default:default2X
BD:/FPGA_Learning_Journey/Pro/VGA��ʾ���ַ���ʾ/src/vga_image_gen.v2default:default2
492default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2'
char_reg[55][0:511]2default:default2'
char_reg[63][0:511]2default:default2X
BD:/FPGA_Learning_Journey/Pro/VGA��ʾ���ַ���ʾ/src/vga_image_gen.v2default:default2
492default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2'
char_reg[54][0:511]2default:default2'
char_reg[63][0:511]2default:default2X
BD:/FPGA_Learning_Journey/Pro/VGA��ʾ���ַ���ʾ/src/vga_image_gen.v2default:default2
492default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2'
char_reg[53][0:511]2default:default2'
char_reg[63][0:511]2default:default2X
BD:/FPGA_Learning_Journey/Pro/VGA��ʾ���ַ���ʾ/src/vga_image_gen.v2default:default2
492default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2'
char_reg[52][0:511]2default:default2'
char_reg[63][0:511]2default:default2X
BD:/FPGA_Learning_Journey/Pro/VGA��ʾ���ַ���ʾ/src/vga_image_gen.v2default:default2
492default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2'
char_reg[51][0:511]2default:default2'
char_reg[63][0:511]2default:default2X
BD:/FPGA_Learning_Journey/Pro/VGA��ʾ���ַ���ʾ/src/vga_image_gen.v2default:default2
492default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2&
char_reg[4][0:511]2default:default2'
char_reg[63][0:511]2default:default2X
BD:/FPGA_Learning_Journey/Pro/VGA��ʾ���ַ���ʾ/src/vga_image_gen.v2default:default2
492default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2&
char_reg[3][0:511]2default:default2'
char_reg[63][0:511]2default:default2X
BD:/FPGA_Learning_Journey/Pro/VGA��ʾ���ַ���ʾ/src/vga_image_gen.v2default:default2
492default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2&
char_reg[2][0:511]2default:default2'
char_reg[63][0:511]2default:default2X
BD:/FPGA_Learning_Journey/Pro/VGA��ʾ���ַ���ʾ/src/vga_image_gen.v2default:default2
492default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2&
char_reg[1][0:511]2default:default2'
char_reg[63][0:511]2default:default2X
BD:/FPGA_Learning_Journey/Pro/VGA��ʾ���ַ���ʾ/src/vga_image_gen.v2default:default2
492default:default8@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys2&
char_reg[0][0:511]2default:default2'
char_reg[63][0:511]2default:default2X
BD:/FPGA_Learning_Journey/Pro/VGA��ʾ���ַ���ʾ/src/vga_image_gen.v2default:default2
492default:default8@Z8-4471h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2 
char_reg[62]2default:default2X
BD:/FPGA_Learning_Journey/Pro/VGA��ʾ���ַ���ʾ/src/vga_image_gen.v2default:default2
492default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2 
char_reg[61]2default:default2X
BD:/FPGA_Learning_Journey/Pro/VGA��ʾ���ַ���ʾ/src/vga_image_gen.v2default:default2
492default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2 
char_reg[60]2default:default2X
BD:/FPGA_Learning_Journey/Pro/VGA��ʾ���ַ���ʾ/src/vga_image_gen.v2default:default2
492default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2 
char_reg[59]2default:default2X
BD:/FPGA_Learning_Journey/Pro/VGA��ʾ���ַ���ʾ/src/vga_image_gen.v2default:default2
492default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2 
char_reg[58]2default:default2X
BD:/FPGA_Learning_Journey/Pro/VGA��ʾ���ַ���ʾ/src/vga_image_gen.v2default:default2
492default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2 
char_reg[57]2default:default2X
BD:/FPGA_Learning_Journey/Pro/VGA��ʾ���ַ���ʾ/src/vga_image_gen.v2default:default2
492default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2 
char_reg[56]2default:default2X
BD:/FPGA_Learning_Journey/Pro/VGA��ʾ���ַ���ʾ/src/vga_image_gen.v2default:default2
492default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2 
char_reg[55]2default:default2X
BD:/FPGA_Learning_Journey/Pro/VGA��ʾ���ַ���ʾ/src/vga_image_gen.v2default:default2
492default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2 
char_reg[54]2default:default2X
BD:/FPGA_Learning_Journey/Pro/VGA��ʾ���ַ���ʾ/src/vga_image_gen.v2default:default2
492default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2 
char_reg[53]2default:default2X
BD:/FPGA_Learning_Journey/Pro/VGA��ʾ���ַ���ʾ/src/vga_image_gen.v2default:default2
492default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2 
char_reg[52]2default:default2X
BD:/FPGA_Learning_Journey/Pro/VGA��ʾ���ַ���ʾ/src/vga_image_gen.v2default:default2
492default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2 
char_reg[51]2default:default2X
BD:/FPGA_Learning_Journey/Pro/VGA��ʾ���ַ���ʾ/src/vga_image_gen.v2default:default2
492default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
char_reg[4]2default:default2X
BD:/FPGA_Learning_Journey/Pro/VGA��ʾ���ַ���ʾ/src/vga_image_gen.v2default:default2
492default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
char_reg[3]2default:default2X
BD:/FPGA_Learning_Journey/Pro/VGA��ʾ���ַ���ʾ/src/vga_image_gen.v2default:default2
492default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
char_reg[2]2default:default2X
BD:/FPGA_Learning_Journey/Pro/VGA��ʾ���ַ���ʾ/src/vga_image_gen.v2default:default2
492default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
char_reg[1]2default:default2X
BD:/FPGA_Learning_Journey/Pro/VGA��ʾ���ַ���ʾ/src/vga_image_gen.v2default:default2
492default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
char_reg[0]2default:default2X
BD:/FPGA_Learning_Journey/Pro/VGA��ʾ���ַ���ʾ/src/vga_image_gen.v2default:default2
492default:default8@Z8-6014h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2!
vga_image_gen2default:default2
 2default:default2
42default:default2
12default:default2X
BD:/FPGA_Learning_Journey/Pro/VGA��ʾ���ַ���ʾ/src/vga_image_gen.v2default:default2
12default:default8@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
vga_char2default:default2
 2default:default2
52default:default2
12default:default2S
=D:/FPGA_Learning_Journey/Pro/VGA��ʾ���ַ���ʾ/src/vga_char.v2default:default2
12default:default8@Z8-6155h px� 
�
%s*synth2�
yFinished RTL Elaboration : Time (s): cpu = 00:00:03 ; elapsed = 00:00:03 . Memory (MB): peak = 1050.961 ; gain = 309.555
2default:defaulth px� 
D
%s
*synth2,

Report Check Netlist: 
2default:defaulth p
x
� 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
� 
u
%s
*synth2]
I|      |Item              |Errors |Warnings |Status |Description       |
2default:defaulth p
x
� 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
� 
u
%s
*synth2]
I|1     |multi_driven_nets |      0|        0|Passed |Multi driven nets |
2default:defaulth p
x
� 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:04 ; elapsed = 00:00:04 . Memory (MB): peak = 1050.961 ; gain = 309.555
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:04 ; elapsed = 00:00:04 . Memory (MB): peak = 1050.961 ; gain = 309.555
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.1322default:default2
1050.9612default:default2
0.0002default:defaultZ17-268h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
>

Processing XDC Constraints
244*projectZ1-262h px� 
=
Initializing timing engine
348*projectZ1-569h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2
id:/FPGA_Learning_Journey/Pro/VGA/project_1.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0/clk_wiz_0_in_context.xdc2default:default25
vga_clk_gen_inst/clk_wiz_0_inst	2default:default8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2
id:/FPGA_Learning_Journey/Pro/VGA/project_1.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0/clk_wiz_0_in_context.xdc2default:default25
vga_clk_gen_inst/clk_wiz_0_inst	2default:default8Z20-847h px� 
�
Parsing XDC File [%s]
179*designutils2P
:D:/FPGA_Learning_Journey/Pro/VGA��ʾ���ַ���ʾ/src/vga.xdc2default:default8Z20-179h px� 
�
Finished Parsing XDC File [%s]
178*designutils2P
:D:/FPGA_Learning_Journey/Pro/VGA��ʾ���ַ���ʾ/src/vga.xdc2default:default8Z20-178h px� 
�
�Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2N
:D:/FPGA_Learning_Journey/Pro/VGA��ʾ���ַ���ʾ/src/vga.xdc2default:default2.
.Xil/vga_char_propImpl.xdc2default:defaultZ1-236h px� 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0022default:default2
1233.4062default:default2
0.0002default:defaultZ17-268h px� 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common24
 Constraint Validation Runtime : 2default:default2
00:00:002default:default2 
00:00:00.0652default:default2
1233.4062default:default2
0.0002default:defaultZ17-268h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
Finished Constraint Validation : Time (s): cpu = 00:00:09 ; elapsed = 00:00:09 . Memory (MB): peak = 1233.406 ; gain = 492.000
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
V
%s
*synth2>
*Start Loading Part and Timing Information
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
J
%s
*synth22
Loading part: xc7z010clg400-1
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Loading Part and Timing Information : Time (s): cpu = 00:00:09 ; elapsed = 00:00:09 . Memory (MB): peak = 1233.406 ; gain = 492.000
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
Z
%s
*synth2B
.Start Applying 'set_property' XDC Constraints
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:09 ; elapsed = 00:00:09 . Memory (MB): peak = 1233.406 ; gain = 492.000
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:09 ; elapsed = 00:00:10 . Memory (MB): peak = 1233.406 ; gain = 492.000
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
� 
a
%s
*synth2I
5+------+-------------------+------------+----------+
2default:defaulth p
x
� 
a
%s
*synth2I
5|      |RTL Partition      |Replication |Instances |
2default:defaulth p
x
� 
a
%s
*synth2I
5+------+-------------------+------------+----------+
2default:defaulth p
x
� 
a
%s
*synth2I
5|1     |vga_image_gen__GB0 |           1|     32004|
2default:defaulth p
x
� 
a
%s
*synth2I
5|2     |vga_image_gen__GB1 |           1|      8192|
2default:defaulth p
x
� 
a
%s
*synth2I
5|3     |vga_image_gen__GB2 |           1|     10143|
2default:defaulth p
x
� 
a
%s
*synth2I
5|4     |vga_char__GC0      |           1|       395|
2default:defaulth p
x
� 
a
%s
*synth2I
5+------+-------------------+------------+----------+
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
L
%s
*synth24
 Start RTL Component Statistics 
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     10 Bit       Adders := 6     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	              512 Bit    Registers := 47    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               16 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               10 Bit    Registers := 2     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input     16 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     16 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     10 Bit        Muxes := 4     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 2     
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
O
%s
*synth27
#Finished RTL Component Statistics 
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
Y
%s
*synth2A
-Start RTL Hierarchical Component Statistics 
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
O
%s
*synth27
#Hierarchical RTL Component report 
2default:defaulth p
x
� 
B
%s
*synth2*
Module vga_image_gen 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     10 Bit       Adders := 2     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	              512 Bit    Registers := 47    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               16 Bit    Registers := 1     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input     16 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     10 Bit        Muxes := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
� 
D
%s
*synth2,
Module vga_timing_ctrl 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     10 Bit       Adders := 4     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               10 Bit    Registers := 2     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     16 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     10 Bit        Muxes := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
[
%s
*synth2C
/Finished RTL Hierarchical Component Statistics
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
H
%s
*synth20
Start Part Resource Summary
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2j
VPart Resources:
DSPs: 80 (col length:40)
BRAMs: 120 (col length: RAMB18 40 RAMB36 20)
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Finished Part Resource Summary
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
W
%s
*synth2?
+Start Cross Boundary and Area Optimization
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
]
%s
*synth2E
1Warning: Parallel synthesis criteria is not met 
2default:defaulth p
x
� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2=
)vga_image_gen_insti_1/\char_reg[36][255] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2=
)vga_image_gen_insti_1/\char_reg[35][255] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2=
)vga_image_gen_insti_1/\char_reg[34][255] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2=
)vga_image_gen_insti_1/\char_reg[33][255] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2=
)vga_image_gen_insti_1/\char_reg[32][255] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2=
)vga_image_gen_insti_1/\char_reg[31][255] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2=
)vga_image_gen_insti_1/\char_reg[30][255] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2=
)vga_image_gen_insti_1/\char_reg[29][255] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2<
(vga_image_gen_insti_1/\char_reg[8][255] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2<
(vga_image_gen_insti_1/\char_reg[7][255] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2<
(vga_image_gen_insti_1/\char_reg[6][255] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2<
(vga_image_gen_insti_1/\char_reg[5][255] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2=
)vga_image_gen_insti_1/\char_reg[36][254] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2=
)vga_image_gen_insti_1/\char_reg[35][254] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2=
)vga_image_gen_insti_1/\char_reg[34][254] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2=
)vga_image_gen_insti_1/\char_reg[33][254] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2=
)vga_image_gen_insti_1/\char_reg[32][254] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2=
)vga_image_gen_insti_1/\char_reg[31][254] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2=
)vga_image_gen_insti_1/\char_reg[30][254] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2=
)vga_image_gen_insti_1/\char_reg[29][254] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2<
(vga_image_gen_insti_1/\char_reg[8][254] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2<
(vga_image_gen_insti_1/\char_reg[7][254] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2<
(vga_image_gen_insti_1/\char_reg[6][254] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2<
(vga_image_gen_insti_1/\char_reg[5][254] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2=
)vga_image_gen_insti_1/\char_reg[36][253] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2=
)vga_image_gen_insti_1/\char_reg[35][253] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2=
)vga_image_gen_insti_1/\char_reg[34][253] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2=
)vga_image_gen_insti_1/\char_reg[33][253] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2=
)vga_image_gen_insti_1/\char_reg[32][253] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2=
)vga_image_gen_insti_1/\char_reg[31][253] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2=
)vga_image_gen_insti_1/\char_reg[30][253] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2=
)vga_image_gen_insti_1/\char_reg[29][253] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2<
(vga_image_gen_insti_1/\char_reg[8][253] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2<
(vga_image_gen_insti_1/\char_reg[7][253] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2<
(vga_image_gen_insti_1/\char_reg[6][253] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2<
(vga_image_gen_insti_1/\char_reg[5][253] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2=
)vga_image_gen_insti_1/\char_reg[36][252] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2=
)vga_image_gen_insti_1/\char_reg[35][252] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2=
)vga_image_gen_insti_1/\char_reg[34][252] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2=
)vga_image_gen_insti_1/\char_reg[33][252] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2=
)vga_image_gen_insti_1/\char_reg[32][252] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2=
)vga_image_gen_insti_1/\char_reg[31][252] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2=
)vga_image_gen_insti_1/\char_reg[30][252] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2=
)vga_image_gen_insti_1/\char_reg[29][252] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2<
(vga_image_gen_insti_1/\char_reg[8][252] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2<
(vga_image_gen_insti_1/\char_reg[7][252] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2<
(vga_image_gen_insti_1/\char_reg[6][252] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2<
(vga_image_gen_insti_1/\char_reg[5][252] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2=
)vga_image_gen_insti_1/\char_reg[36][251] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2=
)vga_image_gen_insti_1/\char_reg[35][251] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2=
)vga_image_gen_insti_1/\char_reg[34][251] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2=
)vga_image_gen_insti_1/\char_reg[33][251] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2=
)vga_image_gen_insti_1/\char_reg[32][251] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2=
)vga_image_gen_insti_1/\char_reg[31][251] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2=
)vga_image_gen_insti_1/\char_reg[30][251] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2=
)vga_image_gen_insti_1/\char_reg[29][251] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2<
(vga_image_gen_insti_1/\char_reg[8][251] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2<
(vga_image_gen_insti_1/\char_reg[7][251] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2<
(vga_image_gen_insti_1/\char_reg[6][251] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2<
(vga_image_gen_insti_1/\char_reg[5][251] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2=
)vga_image_gen_insti_1/\char_reg[36][250] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2=
)vga_image_gen_insti_1/\char_reg[35][250] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2=
)vga_image_gen_insti_1/\char_reg[34][250] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2=
)vga_image_gen_insti_1/\char_reg[33][250] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2=
)vga_image_gen_insti_1/\char_reg[32][250] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2=
)vga_image_gen_insti_1/\char_reg[31][250] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2=
)vga_image_gen_insti_1/\char_reg[30][250] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2=
)vga_image_gen_insti_1/\char_reg[29][250] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2<
(vga_image_gen_insti_1/\char_reg[8][250] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2<
(vga_image_gen_insti_1/\char_reg[7][250] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2<
(vga_image_gen_insti_1/\char_reg[6][250] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2<
(vga_image_gen_insti_1/\char_reg[5][250] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2=
)vga_image_gen_insti_1/\char_reg[36][249] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2=
)vga_image_gen_insti_1/\char_reg[35][249] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2=
)vga_image_gen_insti_1/\char_reg[34][249] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2=
)vga_image_gen_insti_1/\char_reg[33][249] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2=
)vga_image_gen_insti_1/\char_reg[32][249] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2=
)vga_image_gen_insti_1/\char_reg[31][249] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2=
)vga_image_gen_insti_1/\char_reg[30][249] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2=
)vga_image_gen_insti_1/\char_reg[29][249] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2<
(vga_image_gen_insti_1/\char_reg[8][249] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2<
(vga_image_gen_insti_1/\char_reg[7][249] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2<
(vga_image_gen_insti_1/\char_reg[6][249] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2<
(vga_image_gen_insti_1/\char_reg[5][249] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2=
)vga_image_gen_insti_1/\char_reg[36][248] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2=
)vga_image_gen_insti_1/\char_reg[35][248] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2=
)vga_image_gen_insti_1/\char_reg[34][248] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2=
)vga_image_gen_insti_1/\char_reg[33][248] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2=
)vga_image_gen_insti_1/\char_reg[32][248] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2=
)vga_image_gen_insti_1/\char_reg[31][248] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2=
)vga_image_gen_insti_1/\char_reg[30][248] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2=
)vga_image_gen_insti_1/\char_reg[29][248] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2<
(vga_image_gen_insti_1/\char_reg[8][248] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2<
(vga_image_gen_insti_1/\char_reg[7][248] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2<
(vga_image_gen_insti_1/\char_reg[6][248] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2<
(vga_image_gen_insti_1/\char_reg[5][248] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2=
)vga_image_gen_insti_1/\char_reg[36][247] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2=
)vga_image_gen_insti_1/\char_reg[35][247] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2=
)vga_image_gen_insti_1/\char_reg[34][247] 2default:defaultZ8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2=
)vga_image_gen_insti_1/\char_reg[33][247] 2default:defaultZ8-3333h px� 
�
�Message '%s' appears more than %s times and has been disabled. User can change this message limit to see more message instances.
14*common2 
Synth 8-33332default:default2
1002default:defaultZ17-14h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys29
%vga_image_gen_insti_3/pix_data_reg[0]2default:default2
FDC2default:default29
%vga_image_gen_insti_3/pix_data_reg[1]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys29
%vga_image_gen_insti_3/pix_data_reg[1]2default:default2
FDC2default:default29
%vga_image_gen_insti_3/pix_data_reg[2]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys29
%vga_image_gen_insti_3/pix_data_reg[2]2default:default2
FDC2default:default29
%vga_image_gen_insti_3/pix_data_reg[3]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys29
%vga_image_gen_insti_3/pix_data_reg[3]2default:default2
FDC2default:default29
%vga_image_gen_insti_3/pix_data_reg[4]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys29
%vga_image_gen_insti_3/pix_data_reg[4]2default:default2
FDC2default:default29
%vga_image_gen_insti_3/pix_data_reg[5]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys29
%vga_image_gen_insti_3/pix_data_reg[5]2default:default2
FDC2default:default29
%vga_image_gen_insti_3/pix_data_reg[8]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys29
%vga_image_gen_insti_3/pix_data_reg[6]2default:default2
FDC2default:default29
%vga_image_gen_insti_3/pix_data_reg[7]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys29
%vga_image_gen_insti_3/pix_data_reg[7]2default:default2
FDC2default:default29
%vga_image_gen_insti_3/pix_data_reg[9]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys29
%vga_image_gen_insti_3/pix_data_reg[9]2default:default2
FDC2default:default2:
&vga_image_gen_insti_3/pix_data_reg[10]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2:
&vga_image_gen_insti_3/pix_data_reg[10]2default:default2
FDC2default:default2:
&vga_image_gen_insti_3/pix_data_reg[11]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2:
&vga_image_gen_insti_3/pix_data_reg[11]2default:default2
FDC2default:default2:
&vga_image_gen_insti_3/pix_data_reg[12]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2:
&vga_image_gen_insti_3/pix_data_reg[12]2default:default2
FDC2default:default2:
&vga_image_gen_insti_3/pix_data_reg[13]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2:
&vga_image_gen_insti_3/pix_data_reg[13]2default:default2
FDC2default:default2:
&vga_image_gen_insti_3/pix_data_reg[14]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2:
&vga_image_gen_insti_3/pix_data_reg[14]2default:default2
FDC2default:default2:
&vga_image_gen_insti_3/pix_data_reg[15]2default:defaultZ8-3886h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:29 ; elapsed = 00:00:30 . Memory (MB): peak = 1233.406 ; gain = 492.000
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
� 
a
%s
*synth2I
5+------+-------------------+------------+----------+
2default:defaulth p
x
� 
a
%s
*synth2I
5|      |RTL Partition      |Replication |Instances |
2default:defaulth p
x
� 
a
%s
*synth2I
5+------+-------------------+------------+----------+
2default:defaulth p
x
� 
a
%s
*synth2I
5|1     |vga_image_gen__GB0 |           1|      1328|
2default:defaulth p
x
� 
a
%s
*synth2I
5|2     |vga_image_gen__GB2 |           1|       678|
2default:defaulth p
x
� 
a
%s
*synth2I
5|3     |vga_char__GC0      |           1|       213|
2default:defaulth p
x
� 
a
%s
*synth2I
5+------+-------------------+------------+----------+
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
R
%s
*synth2:
&Start Applying XDC Timing Constraints
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:34 ; elapsed = 00:00:35 . Memory (MB): peak = 1233.406 ; gain = 492.000
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
F
%s
*synth2.
Start Timing Optimization
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
}Finished Timing Optimization : Time (s): cpu = 00:00:50 ; elapsed = 00:00:52 . Memory (MB): peak = 1408.109 ; gain = 666.703
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
� 
\
%s
*synth2D
0+------+--------------+------------+----------+
2default:defaulth p
x
� 
\
%s
*synth2D
0|      |RTL Partition |Replication |Instances |
2default:defaulth p
x
� 
\
%s
*synth2D
0+------+--------------+------------+----------+
2default:defaulth p
x
� 
\
%s
*synth2D
0|1     |vga_char_GT0  |           1|      1791|
2default:defaulth p
x
� 
\
%s
*synth2D
0+------+--------------+------------+----------+
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
E
%s
*synth2-
Start Technology Mapping
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
|Finished Technology Mapping : Time (s): cpu = 00:00:50 ; elapsed = 00:00:52 . Memory (MB): peak = 1408.109 ; gain = 666.703
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
?
%s
*synth2'
Start IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
Q
%s
*synth29
%Start Flattening Before IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
T
%s
*synth2<
(Finished Flattening Before IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
H
%s
*synth20
Start Final Netlist Cleanup
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Finished Final Netlist Cleanup
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
vFinished IO Insertion : Time (s): cpu = 00:00:52 ; elapsed = 00:00:54 . Memory (MB): peak = 1408.109 ; gain = 666.703
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
O
%s
*synth27
#Start Renaming Generated Instances
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Instances : Time (s): cpu = 00:00:52 ; elapsed = 00:00:54 . Memory (MB): peak = 1408.109 ; gain = 666.703
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
D
%s
*synth2,

Report Check Netlist: 
2default:defaulth p
x
� 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
� 
u
%s
*synth2]
I|      |Item              |Errors |Warnings |Status |Description       |
2default:defaulth p
x
� 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
� 
u
%s
*synth2]
I|1     |multi_driven_nets |      0|        0|Passed |Multi driven nets |
2default:defaulth p
x
� 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
L
%s
*synth24
 Start Rebuilding User Hierarchy
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:52 ; elapsed = 00:00:55 . Memory (MB): peak = 1408.109 ; gain = 666.703
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Start Renaming Generated Ports
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Ports : Time (s): cpu = 00:00:52 ; elapsed = 00:00:55 . Memory (MB): peak = 1408.109 ; gain = 666.703
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:53 ; elapsed = 00:00:55 . Memory (MB): peak = 1408.109 ; gain = 666.703
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
J
%s
*synth22
Start Renaming Generated Nets
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Nets : Time (s): cpu = 00:00:53 ; elapsed = 00:00:55 . Memory (MB): peak = 1408.109 ; gain = 666.703
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Start Writing Synthesis Report
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
A
%s
*synth2)

Report BlackBoxes: 
2default:defaulth p
x
� 
O
%s
*synth27
#+------+--------------+----------+
2default:defaulth p
x
� 
O
%s
*synth27
#|      |BlackBox name |Instances |
2default:defaulth p
x
� 
O
%s
*synth27
#+------+--------------+----------+
2default:defaulth p
x
� 
O
%s
*synth27
#|1     |clk_wiz_0     |         1|
2default:defaulth p
x
� 
O
%s
*synth27
#+------+--------------+----------+
2default:defaulth p
x
� 
A
%s*synth2)

Report Cell Usage: 
2default:defaulth px� 
G
%s*synth2/
+------+----------+------+
2default:defaulth px� 
G
%s*synth2/
|      |Cell      |Count |
2default:defaulth px� 
G
%s*synth2/
+------+----------+------+
2default:defaulth px� 
G
%s*synth2/
|1     |clk_wiz_0 |     1|
2default:defaulth px� 
G
%s*synth2/
|2     |LUT2      |    15|
2default:defaulth px� 
G
%s*synth2/
|3     |LUT3      |    37|
2default:defaulth px� 
G
%s*synth2/
|4     |LUT4      |    74|
2default:defaulth px� 
G
%s*synth2/
|5     |LUT5      |   134|
2default:defaulth px� 
G
%s*synth2/
|6     |LUT6      |   461|
2default:defaulth px� 
G
%s*synth2/
|7     |MUXF7     |    89|
2default:defaulth px� 
G
%s*synth2/
|8     |MUXF8     |    15|
2default:defaulth px� 
G
%s*synth2/
|9     |FDCE      |     1|
2default:defaulth px� 
G
%s*synth2/
|10    |FDRE      |    26|
2default:defaulth px� 
G
%s*synth2/
|11    |FDSE      |    10|
2default:defaulth px� 
G
%s*synth2/
|12    |IBUF      |     1|
2default:defaulth px� 
G
%s*synth2/
|13    |OBUF      |    18|
2default:defaulth px� 
G
%s*synth2/
+------+----------+------+
2default:defaulth px� 
E
%s
*synth2-

Report Instance Areas: 
2default:defaulth p
x
� 
e
%s
*synth2M
9+------+-----------------------+----------------+------+
2default:defaulth p
x
� 
e
%s
*synth2M
9|      |Instance               |Module          |Cells |
2default:defaulth p
x
� 
e
%s
*synth2M
9+------+-----------------------+----------------+------+
2default:defaulth p
x
� 
e
%s
*synth2M
9|1     |top                    |                |   883|
2default:defaulth p
x
� 
e
%s
*synth2M
9|2     |  vga_clk_gen_inst     |vga_clk_gen     |     3|
2default:defaulth p
x
� 
e
%s
*synth2M
9|3     |  vga_image_gen_inst   |vga_image_gen   |     1|
2default:defaulth p
x
� 
e
%s
*synth2M
9|4     |  vga_timing_ctrl_inst |vga_timing_ctrl |   860|
2default:defaulth p
x
� 
e
%s
*synth2M
9+------+-----------------------+----------------+------+
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Writing Synthesis Report : Time (s): cpu = 00:00:53 ; elapsed = 00:00:55 . Memory (MB): peak = 1408.109 ; gain = 666.703
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
r
%s
*synth2Z
FSynthesis finished with 0 errors, 0 critical warnings and 0 warnings.
2default:defaulth p
x
� 
�
%s
*synth2�
Synthesis Optimization Runtime : Time (s): cpu = 00:00:47 ; elapsed = 00:00:52 . Memory (MB): peak = 1408.109 ; gain = 484.258
2default:defaulth p
x
� 
�
%s
*synth2�
�Synthesis Optimization Complete : Time (s): cpu = 00:00:53 ; elapsed = 00:00:55 . Memory (MB): peak = 1408.109 ; gain = 666.703
2default:defaulth p
x
� 
B
 Translating synthesized netlist
350*projectZ1-571h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0052default:default2
1408.1092default:default2
0.0002default:defaultZ17-268h px� 
g
-Analyzing %s Unisim elements for replacement
17*netlist2
1042default:defaultZ29-17h px� 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
1408.1092default:default2
0.0002default:defaultZ17-268h px� 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px� 
U
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
1542default:default2
172default:default2
02default:default2
02default:defaultZ4-41h px� 
^
%s completed successfully
29*	vivadotcl2 
synth_design2default:defaultZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
synth_design: 2default:default2
00:00:552default:default2
00:00:592default:default2
1408.1092default:default2
936.8712default:defaultZ17-268h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
1408.1092default:default2
0.0002default:defaultZ17-268h px� 
K
"No constraints selected for write.1103*constraintsZ18-5210h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2X
DD:/FPGA_Learning_Journey/Pro/VGA/project_1.runs/synth_1/vga_char.dcp2default:defaultZ17-1381h px� 
�
%s4*runtcl2z
fExecuting : report_utilization -file vga_char_utilization_synth.rpt -pb vga_char_utilization_synth.pb
2default:defaulth px� 
�
Exiting %s at %s...
206*common2
Vivado2default:default2,
Wed Jan 22 19:19:18 20252default:defaultZ17-206h px� 


End Record