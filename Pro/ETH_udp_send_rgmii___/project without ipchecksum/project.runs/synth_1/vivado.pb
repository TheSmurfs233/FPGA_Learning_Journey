
�
Command: %s
53*	vivadotcl2O
;synth_design -top eth_send_test_rgmii -part xc7a35tfgg484-22default:defaultZ4-113h px� 
:
Starting synth_design
149*	vivadotclZ4-321h px� 
�
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2default:default2
xc7a35t2default:defaultZ17-347h px� 
�
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2default:default2
xc7a35t2default:defaultZ17-349h px� 
V
Loading part %s157*device2#
xc7a35tfgg484-22default:defaultZ21-403h px� 
�
%s*synth2�
xStarting RTL Elaboration : Time (s): cpu = 00:00:02 ; elapsed = 00:00:03 . Memory (MB): peak = 972.867 ; gain = 233.746
2default:defaulth px� 
�
synthesizing module '%s'%s4497*oasys2'
eth_send_test_rgmii2default:default2
 2default:default2�
oD:/FPGA_Learning_Journey/Pro/ETH_udp_send_rgmii___/src/arp_send_rgmii_crc_with_ipchecksum/eth_send_test_rgmii.v2default:default2
22default:default8@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
pll2default:default2
 2default:default2�
�D:/FPGA_Learning_Journey/Pro/ETH_udp_send_rgmii___/project without ipchecksum/project.runs/synth_1/.Xil/Vivado-14144-DESKTOP-I8GGJRG/realtime/pll_stub.v2default:default2
52default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
pll2default:default2
 2default:default2
12default:default2
12default:default2�
�D:/FPGA_Learning_Journey/Pro/ETH_udp_send_rgmii___/project without ipchecksum/project.runs/synth_1/.Xil/Vivado-14144-DESKTOP-I8GGJRG/realtime/pll_stub.v2default:default2
52default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2!
eth_send_test2default:default2
 2default:default2
iD:/FPGA_Learning_Journey/Pro/ETH_udp_send_rgmii___/src/arp_send_rgmii_crc_with_ipchecksum/eth_send_test.v2default:default2
52default:default8@Z8-6157h px� 
a
%s
*synth2I
5	Parameter CRC bound to: 1853019265 - type: integer 
2default:defaulth p
x
� 
�
synthesizing module '%s'%s4497*oasys2
CRC32_d82default:default2
 2default:default2z
dD:/FPGA_Learning_Journey/Pro/ETH_udp_send_rgmii___/src/arp_send_rgmii_crc_with_ipchecksum/crc32_d8.v2default:default2
22default:default8@Z8-6157h px� 
W
%s
*synth2?
+	Parameter Tp bound to: 1 - type: integer 
2default:defaulth p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
CRC32_d82default:default2
 2default:default2
22default:default2
12default:default2z
dD:/FPGA_Learning_Journey/Pro/ETH_udp_send_rgmii___/src/arp_send_rgmii_crc_with_ipchecksum/crc32_d8.v2default:default2
22default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
eth_send2default:default2
 2default:default2z
dD:/FPGA_Learning_Journey/Pro/ETH_udp_send_rgmii___/src/arp_send_rgmii_crc_with_ipchecksum/eth_send.v2default:default2
42default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
eth_send2default:default2
 2default:default2
32default:default2
12default:default2z
dD:/FPGA_Learning_Journey/Pro/ETH_udp_send_rgmii___/src/arp_send_rgmii_crc_with_ipchecksum/eth_send.v2default:default2
42default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
checksum2default:default2
 2default:default2z
dD:/FPGA_Learning_Journey/Pro/ETH_udp_send_rgmii___/src/arp_send_rgmii_crc_with_ipchecksum/checksum.v2default:default2
12default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
checksum2default:default2
 2default:default2
42default:default2
12default:default2z
dD:/FPGA_Learning_Journey/Pro/ETH_udp_send_rgmii___/src/arp_send_rgmii_crc_with_ipchecksum/checksum.v2default:default2
12default:default8@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2!
eth_send_test2default:default2
 2default:default2
52default:default2
12default:default2
iD:/FPGA_Learning_Journey/Pro/ETH_udp_send_rgmii___/src/arp_send_rgmii_crc_with_ipchecksum/eth_send_test.v2default:default2
52default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2!
gmii_to_rgmii2default:default2
 2default:default2
iD:/FPGA_Learning_Journey/Pro/ETH_udp_send_rgmii___/src/arp_send_rgmii_crc_with_ipchecksum/gmii_to_rgmii.v2default:default2
12default:default8@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
ODDR2default:default2
 2default:default2K
5D:/Xilinx/Vivado/2019.2/scripts/rt/data/unisim_comp.v2default:default2
496812default:default8@Z8-6157h px� 
h
%s
*synth2P
<	Parameter DDR_CLK_EDGE bound to: SAME_EDGE - type: string 
2default:defaulth p
x
� 
L
%s
*synth24
 	Parameter INIT bound to: 1'b0 
2default:defaulth p
x
� 
U
%s
*synth2=
)	Parameter IS_C_INVERTED bound to: 1'b0 
2default:defaulth p
x
� 
V
%s
*synth2>
*	Parameter IS_D1_INVERTED bound to: 1'b0 
2default:defaulth p
x
� 
V
%s
*synth2>
*	Parameter IS_D2_INVERTED bound to: 1'b0 
2default:defaulth p
x
� 
]
%s
*synth2E
1	Parameter SRTYPE bound to: SYNC - type: string 
2default:defaulth p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
ODDR2default:default2
 2default:default2
62default:default2
12default:default2K
5D:/Xilinx/Vivado/2019.2/scripts/rt/data/unisim_comp.v2default:default2
496812default:default8@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2!
gmii_to_rgmii2default:default2
 2default:default2
72default:default2
12default:default2
iD:/FPGA_Learning_Journey/Pro/ETH_udp_send_rgmii___/src/arp_send_rgmii_crc_with_ipchecksum/gmii_to_rgmii.v2default:default2
12default:default8@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2'
eth_send_test_rgmii2default:default2
 2default:default2
82default:default2
12default:default2�
oD:/FPGA_Learning_Journey/Pro/ETH_udp_send_rgmii___/src/arp_send_rgmii_crc_with_ipchecksum/eth_send_test_rgmii.v2default:default2
22default:default8@Z8-6155h px� 
�
%s*synth2�
yFinished RTL Elaboration : Time (s): cpu = 00:00:02 ; elapsed = 00:00:03 . Memory (MB): peak = 1046.637 ; gain = 307.516
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
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:03 ; elapsed = 00:00:04 . Memory (MB): peak = 1046.637 ; gain = 307.516
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
�Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:03 ; elapsed = 00:00:04 . Memory (MB): peak = 1046.637 ; gain = 307.516
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
00:00:00.0082default:default2
1046.6372default:default2
0.0002default:defaultZ17-268h px� 
e
-Analyzing %s Unisim elements for replacement
17*netlist2
62default:defaultZ29-17h px� 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px� 
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
848*designutils2�
�d:/FPGA_Learning_Journey/Pro/ETH_udp_send_rgmii___/project without ipchecksum/project.srcs/sources_1/ip/pll/pll/pll_in_context.xdc2default:default2
pll	2default:default8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�d:/FPGA_Learning_Journey/Pro/ETH_udp_send_rgmii___/project without ipchecksum/project.srcs/sources_1/ip/pll/pll/pll_in_context.xdc2default:default2
pll	2default:default8Z20-847h px� 
�
Parsing XDC File [%s]
179*designutils2�
tD:/FPGA_Learning_Journey/Pro/ETH_udp_send_rgmii___/project without ipchecksum/project.srcs/constrs_1/new/eth_udp.xdc2default:default8Z20-179h px� 
�
Finished Parsing XDC File [%s]
178*designutils2�
tD:/FPGA_Learning_Journey/Pro/ETH_udp_send_rgmii___/project without ipchecksum/project.srcs/constrs_1/new/eth_udp.xdc2default:default8Z20-178h px� 
�
�Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2�
tD:/FPGA_Learning_Journey/Pro/ETH_udp_send_rgmii___/project without ipchecksum/project.srcs/constrs_1/new/eth_udp.xdc2default:default29
%.Xil/eth_send_test_rgmii_propImpl.xdc2default:defaultZ1-236h px� 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
1142.1912default:default2
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
00:00:00.0042default:default2
1142.1912default:default2
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
Finished Constraint Validation : Time (s): cpu = 00:00:06 ; elapsed = 00:00:08 . Memory (MB): peak = 1142.191 ; gain = 403.070
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
Loading part: xc7a35tfgg484-2
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
�Finished Loading Part and Timing Information : Time (s): cpu = 00:00:06 ; elapsed = 00:00:08 . Memory (MB): peak = 1142.191 ; gain = 403.070
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
�Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:06 ; elapsed = 00:00:08 . Memory (MB): peak = 1142.191 ; gain = 403.070
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
�Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:07 ; elapsed = 00:00:08 . Memory (MB): peak = 1142.191 ; gain = 403.070
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
.	   9 Input     20 Bit       Adders := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     17 Bit       Adders := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     16 Bit       Adders := 3     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      6 Bit       Adders := 1     
2default:defaulth p
x
� 
8
%s
*synth2 
+---XORs : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   4 Input      1 Bit         XORs := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit         XORs := 12    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   6 Input      1 Bit         XORs := 8     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   7 Input      1 Bit         XORs := 6     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input      1 Bit         XORs := 4     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  11 Input      1 Bit         XORs := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   9 Input      1 Bit         XORs := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   8 Input      1 Bit         XORs := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  10 Input      1 Bit         XORs := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   5 Input      1 Bit         XORs := 4     
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
.	               48 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               32 Bit    Registers := 1     
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
.	                8 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                6 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 3     
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
.	   2 Input      8 Bit        Muxes := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      6 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 5     
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
=
%s
*synth2%
Module CRC32_d8 
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
8
%s
*synth2 
+---XORs : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   4 Input      1 Bit         XORs := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit         XORs := 11    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   6 Input      1 Bit         XORs := 8     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   7 Input      1 Bit         XORs := 6     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input      1 Bit         XORs := 4     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  11 Input      1 Bit         XORs := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   9 Input      1 Bit         XORs := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   8 Input      1 Bit         XORs := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  10 Input      1 Bit         XORs := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   5 Input      1 Bit         XORs := 4     
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
.	               32 Bit    Registers := 1     
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
.	   2 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
� 
=
%s
*synth2%
Module eth_send 
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
.	   2 Input      6 Bit       Adders := 1     
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
.	               48 Bit    Registers := 1     
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
.	                8 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                6 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 3     
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
.	   2 Input      8 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      6 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 4     
2default:defaulth p
x
� 
=
%s
*synth2%
Module checksum 
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
.	   9 Input     20 Bit       Adders := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     17 Bit       Adders := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     16 Bit       Adders := 1     
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
B
%s
*synth2*
Module eth_send_test 
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
.	   2 Input     16 Bit       Adders := 2     
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
.	   2 Input      8 Bit        Muxes := 1     
2default:defaulth p
x
� 
B
%s
*synth2*
Module gmii_to_rgmii 
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
8
%s
*synth2 
+---XORs : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit         XORs := 1     
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
DSPs: 90 (col length:60)
BRAMs: 100 (col length: RAMB18 60 RAMB36 30)
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
+design %s has port %s driven by constant %s3447*oasys2'
eth_send_test_rgmii2default:default2
	phy_rst_n2default:default2
12default:defaultZ8-3917h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2?
+eth_send_test/eth_send/r_type_length_reg[4]2default:default2
FDE2default:default2?
+eth_send_test/eth_send/r_type_length_reg[0]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2@
,eth_send_test/eth_send/r_type_length_reg[12]2default:default2
FDE2default:default2?
+eth_send_test/eth_send/r_type_length_reg[0]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2;
'eth_send_test/eth_send/r_des_mac_reg[4]2default:default2
FDE2default:default2@
,eth_send_test/eth_send/r_type_length_reg[11]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2<
(eth_send_test/eth_send/r_des_mac_reg[12]2default:default2
FDE2default:default2@
,eth_send_test/eth_send/r_type_length_reg[11]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2<
(eth_send_test/eth_send/r_des_mac_reg[20]2default:default2
FDE2default:default2?
+eth_send_test/eth_send/r_type_length_reg[0]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2<
(eth_send_test/eth_send/r_des_mac_reg[28]2default:default2
FDE2default:default2?
+eth_send_test/eth_send/r_type_length_reg[0]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2<
(eth_send_test/eth_send/r_des_mac_reg[36]2default:default2
FDE2default:default2?
+eth_send_test/eth_send/r_type_length_reg[0]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2<
(eth_send_test/eth_send/r_des_mac_reg[44]2default:default2
FDE2default:default2?
+eth_send_test/eth_send/r_type_length_reg[0]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2?
+eth_send_test/eth_send/r_type_length_reg[0]2default:default2
FDE2default:default2?
+eth_send_test/eth_send/r_type_length_reg[1]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2?
+eth_send_test/eth_send/r_type_length_reg[8]2default:default2
FDE2default:default2?
+eth_send_test/eth_send/r_type_length_reg[1]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2;
'eth_send_test/eth_send/r_des_mac_reg[0]2default:default2
FDE2default:default2?
+eth_send_test/eth_send/r_type_length_reg[1]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2;
'eth_send_test/eth_send/r_des_mac_reg[8]2default:default2
FDE2default:default2?
+eth_send_test/eth_send/r_type_length_reg[1]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2<
(eth_send_test/eth_send/r_des_mac_reg[16]2default:default2
FDE2default:default2?
+eth_send_test/eth_send/r_type_length_reg[1]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2<
(eth_send_test/eth_send/r_des_mac_reg[24]2default:default2
FDE2default:default2@
,eth_send_test/eth_send/r_type_length_reg[11]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2<
(eth_send_test/eth_send/r_des_mac_reg[32]2default:default2
FDE2default:default2?
+eth_send_test/eth_send/r_type_length_reg[1]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2<
(eth_send_test/eth_send/r_des_mac_reg[40]2default:default2
FDE2default:default2?
+eth_send_test/eth_send/r_type_length_reg[1]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2?
+eth_send_test/eth_send/r_type_length_reg[5]2default:default2
FDE2default:default2?
+eth_send_test/eth_send/r_type_length_reg[1]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2@
,eth_send_test/eth_send/r_type_length_reg[13]2default:default2
FDE2default:default2?
+eth_send_test/eth_send/r_type_length_reg[1]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2;
'eth_send_test/eth_send/r_des_mac_reg[5]2default:default2
FDE2default:default2@
,eth_send_test/eth_send/r_type_length_reg[11]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2<
(eth_send_test/eth_send/r_des_mac_reg[13]2default:default2
FDE2default:default2@
,eth_send_test/eth_send/r_type_length_reg[11]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2<
(eth_send_test/eth_send/r_des_mac_reg[21]2default:default2
FDE2default:default2?
+eth_send_test/eth_send/r_type_length_reg[1]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2<
(eth_send_test/eth_send/r_des_mac_reg[29]2default:default2
FDE2default:default2@
,eth_send_test/eth_send/r_type_length_reg[11]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2<
(eth_send_test/eth_send/r_des_mac_reg[37]2default:default2
FDE2default:default2@
,eth_send_test/eth_send/r_type_length_reg[11]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2<
(eth_send_test/eth_send/r_des_mac_reg[45]2default:default2
FDE2default:default2?
+eth_send_test/eth_send/r_type_length_reg[1]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2?
+eth_send_test/eth_send/r_type_length_reg[1]2default:default2
FDE2default:default2?
+eth_send_test/eth_send/r_type_length_reg[2]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2?
+eth_send_test/eth_send/r_type_length_reg[9]2default:default2
FDE2default:default2?
+eth_send_test/eth_send/r_type_length_reg[2]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2;
'eth_send_test/eth_send/r_des_mac_reg[1]2default:default2
FDE2default:default2?
+eth_send_test/eth_send/r_type_length_reg[2]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2;
'eth_send_test/eth_send/r_des_mac_reg[9]2default:default2
FDE2default:default2@
,eth_send_test/eth_send/r_type_length_reg[11]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2<
(eth_send_test/eth_send/r_des_mac_reg[17]2default:default2
FDE2default:default2?
+eth_send_test/eth_send/r_type_length_reg[2]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2<
(eth_send_test/eth_send/r_des_mac_reg[25]2default:default2
FDE2default:default2?
+eth_send_test/eth_send/r_type_length_reg[2]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2<
(eth_send_test/eth_send/r_des_mac_reg[33]2default:default2
FDE2default:default2?
+eth_send_test/eth_send/r_type_length_reg[2]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2<
(eth_send_test/eth_send/r_des_mac_reg[41]2default:default2
FDE2default:default2?
+eth_send_test/eth_send/r_type_length_reg[2]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2?
+eth_send_test/eth_send/r_type_length_reg[6]2default:default2
FDE2default:default2?
+eth_send_test/eth_send/r_type_length_reg[2]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2@
,eth_send_test/eth_send/r_type_length_reg[14]2default:default2
FDE2default:default2?
+eth_send_test/eth_send/r_type_length_reg[2]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2;
'eth_send_test/eth_send/r_des_mac_reg[6]2default:default2
FDE2default:default2?
+eth_send_test/eth_send/r_type_length_reg[2]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2<
(eth_send_test/eth_send/r_des_mac_reg[14]2default:default2
FDE2default:default2@
,eth_send_test/eth_send/r_type_length_reg[11]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2<
(eth_send_test/eth_send/r_des_mac_reg[22]2default:default2
FDE2default:default2?
+eth_send_test/eth_send/r_type_length_reg[2]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2<
(eth_send_test/eth_send/r_des_mac_reg[30]2default:default2
FDE2default:default2?
+eth_send_test/eth_send/r_type_length_reg[2]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2<
(eth_send_test/eth_send/r_des_mac_reg[38]2default:default2
FDE2default:default2@
,eth_send_test/eth_send/r_type_length_reg[11]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2<
(eth_send_test/eth_send/r_des_mac_reg[46]2default:default2
FDE2default:default2?
+eth_send_test/eth_send/r_type_length_reg[2]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2?
+eth_send_test/eth_send/r_type_length_reg[2]2default:default2
FDE2default:default2?
+eth_send_test/eth_send/r_type_length_reg[3]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2@
,eth_send_test/eth_send/r_type_length_reg[10]2default:default2
FDE2default:default2?
+eth_send_test/eth_send/r_type_length_reg[3]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2;
'eth_send_test/eth_send/r_des_mac_reg[2]2default:default2
FDE2default:default2?
+eth_send_test/eth_send/r_type_length_reg[3]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2<
(eth_send_test/eth_send/r_des_mac_reg[10]2default:default2
FDE2default:default2?
+eth_send_test/eth_send/r_type_length_reg[3]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2<
(eth_send_test/eth_send/r_des_mac_reg[18]2default:default2
FDE2default:default2?
+eth_send_test/eth_send/r_type_length_reg[3]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2<
(eth_send_test/eth_send/r_des_mac_reg[26]2default:default2
FDE2default:default2?
+eth_send_test/eth_send/r_type_length_reg[3]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2<
(eth_send_test/eth_send/r_des_mac_reg[34]2default:default2
FDE2default:default2?
+eth_send_test/eth_send/r_type_length_reg[3]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2<
(eth_send_test/eth_send/r_des_mac_reg[42]2default:default2
FDE2default:default2?
+eth_send_test/eth_send/r_type_length_reg[3]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2?
+eth_send_test/eth_send/r_type_length_reg[7]2default:default2
FDE2default:default2?
+eth_send_test/eth_send/r_type_length_reg[3]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2@
,eth_send_test/eth_send/r_type_length_reg[15]2default:default2
FDE2default:default2?
+eth_send_test/eth_send/r_type_length_reg[3]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2;
'eth_send_test/eth_send/r_des_mac_reg[7]2default:default2
FDE2default:default2?
+eth_send_test/eth_send/r_type_length_reg[3]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2<
(eth_send_test/eth_send/r_des_mac_reg[15]2default:default2
FDE2default:default2@
,eth_send_test/eth_send/r_type_length_reg[11]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2<
(eth_send_test/eth_send/r_des_mac_reg[23]2default:default2
FDE2default:default2@
,eth_send_test/eth_send/r_type_length_reg[11]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2<
(eth_send_test/eth_send/r_des_mac_reg[31]2default:default2
FDE2default:default2?
+eth_send_test/eth_send/r_type_length_reg[3]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2<
(eth_send_test/eth_send/r_des_mac_reg[39]2default:default2
FDE2default:default2@
,eth_send_test/eth_send/r_type_length_reg[11]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2<
(eth_send_test/eth_send/r_des_mac_reg[47]2default:default2
FDE2default:default2?
+eth_send_test/eth_send/r_type_length_reg[3]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2?
+eth_send_test/eth_send/r_type_length_reg[3]2default:default2
FDE2default:default2<
(eth_send_test/eth_send/r_des_mac_reg[11]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2@
,eth_send_test/eth_send/r_type_length_reg[11]2default:default2
FDE2default:default2;
'eth_send_test/eth_send/r_des_mac_reg[3]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2;
'eth_send_test/eth_send/r_des_mac_reg[3]2default:default2
FDE2default:default2<
(eth_send_test/eth_send/r_des_mac_reg[19]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2<
(eth_send_test/eth_send/r_des_mac_reg[11]2default:default2
FDE2default:default2<
(eth_send_test/eth_send/r_des_mac_reg[27]2default:defaultZ8-3886h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
12default:default2>
*\eth_send_test/eth_send/r_des_mac_reg[19] 2default:defaultZ8-3333h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2<
(eth_send_test/eth_send/r_des_mac_reg[27]2default:default2
FDE2default:default2<
(eth_send_test/eth_send/r_des_mac_reg[35]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2<
(eth_send_test/eth_send/r_des_mac_reg[35]2default:default2
FDE2default:default2<
(eth_send_test/eth_send/r_des_mac_reg[43]2default:defaultZ8-3886h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2>
*\eth_send_test/eth_send/r_des_mac_reg[43] 2default:defaultZ8-3333h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2<
(i_1/eth_send_test/data_total_len_reg[12]2default:default2
FDCE2default:default2<
(i_1/eth_send_test/data_total_len_reg[15]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2<
(i_1/eth_send_test/data_total_len_reg[13]2default:default2
FDCE2default:default2<
(i_1/eth_send_test/data_total_len_reg[15]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2<
(i_1/eth_send_test/data_total_len_reg[14]2default:default2
FDCE2default:default2<
(i_1/eth_send_test/data_total_len_reg[15]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2<
(i_1/eth_send_test/data_total_len_reg[15]2default:default2
FDCE2default:default2<
(i_1/eth_send_test/data_total_len_reg[11]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2;
'i_1/eth_send_test/data_total_len_reg[6]2default:default2
FDCE2default:default2<
(i_1/eth_send_test/data_total_len_reg[11]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2;
'i_1/eth_send_test/data_total_len_reg[7]2default:default2
FDCE2default:default2<
(i_1/eth_send_test/data_total_len_reg[11]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2;
'i_1/eth_send_test/data_total_len_reg[8]2default:default2
FDCE2default:default2<
(i_1/eth_send_test/data_total_len_reg[11]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2;
'i_1/eth_send_test/data_total_len_reg[9]2default:default2
FDCE2default:default2<
(i_1/eth_send_test/data_total_len_reg[11]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2<
(i_1/eth_send_test/data_total_len_reg[10]2default:default2
FDCE2default:default2<
(i_1/eth_send_test/data_total_len_reg[11]2default:defaultZ8-3886h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2>
*i_1/\eth_send_test/data_total_len_reg[11] 2default:defaultZ8-3333h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:08 ; elapsed = 00:00:10 . Memory (MB): peak = 1142.191 ; gain = 403.070
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
�Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:12 ; elapsed = 00:00:15 . Memory (MB): peak = 1142.191 ; gain = 403.070
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
}Finished Timing Optimization : Time (s): cpu = 00:00:13 ; elapsed = 00:00:15 . Memory (MB): peak = 1149.770 ; gain = 410.648
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
|Finished Technology Mapping : Time (s): cpu = 00:00:13 ; elapsed = 00:00:15 . Memory (MB): peak = 1153.664 ; gain = 414.543
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
vFinished IO Insertion : Time (s): cpu = 00:00:15 ; elapsed = 00:00:17 . Memory (MB): peak = 1158.445 ; gain = 419.324
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
�Finished Renaming Generated Instances : Time (s): cpu = 00:00:15 ; elapsed = 00:00:17 . Memory (MB): peak = 1158.445 ; gain = 419.324
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
�Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:15 ; elapsed = 00:00:18 . Memory (MB): peak = 1158.445 ; gain = 419.324
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
�Finished Renaming Generated Ports : Time (s): cpu = 00:00:15 ; elapsed = 00:00:18 . Memory (MB): peak = 1158.445 ; gain = 419.324
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
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:15 ; elapsed = 00:00:18 . Memory (MB): peak = 1158.445 ; gain = 419.324
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
�Finished Renaming Generated Nets : Time (s): cpu = 00:00:15 ; elapsed = 00:00:18 . Memory (MB): peak = 1158.445 ; gain = 419.324
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
#|1     |pll           |         1|
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
D
%s*synth2,
+------+-------+------+
2default:defaulth px� 
D
%s*synth2,
|      |Cell   |Count |
2default:defaulth px� 
D
%s*synth2,
+------+-------+------+
2default:defaulth px� 
D
%s*synth2,
|1     |pll    |     1|
2default:defaulth px� 
D
%s*synth2,
|2     |CARRY4 |    23|
2default:defaulth px� 
D
%s*synth2,
|3     |LUT1   |    10|
2default:defaulth px� 
D
%s*synth2,
|4     |LUT2   |    50|
2default:defaulth px� 
D
%s*synth2,
|5     |LUT3   |    25|
2default:defaulth px� 
D
%s*synth2,
|6     |LUT4   |    23|
2default:defaulth px� 
D
%s*synth2,
|7     |LUT5   |    27|
2default:defaulth px� 
D
%s*synth2,
|8     |LUT6   |    80|
2default:defaulth px� 
D
%s*synth2,
|9     |ODDR   |     6|
2default:defaulth px� 
D
%s*synth2,
|10    |FDCE   |    72|
2default:defaulth px� 
D
%s*synth2,
|11    |FDPE   |     3|
2default:defaulth px� 
D
%s*synth2,
|12    |FDSE   |    32|
2default:defaulth px� 
D
%s*synth2,
|13    |IBUF   |     1|
2default:defaulth px� 
D
%s*synth2,
|14    |OBUF   |     7|
2default:defaulth px� 
D
%s*synth2,
+------+-------+------+
2default:defaulth px� 
E
%s
*synth2-

Report Instance Areas: 
2default:defaulth p
x
� 
a
%s
*synth2I
5+------+---------------------+--------------+------+
2default:defaulth p
x
� 
a
%s
*synth2I
5|      |Instance             |Module        |Cells |
2default:defaulth p
x
� 
a
%s
*synth2I
5+------+---------------------+--------------+------+
2default:defaulth p
x
� 
a
%s
*synth2I
5|1     |top                  |              |   360|
2default:defaulth p
x
� 
a
%s
*synth2I
5|2     |  eth_send_test      |eth_send_test |   345|
2default:defaulth p
x
� 
a
%s
*synth2I
5|3     |    CRC32_d8_inst    |CRC32_d8      |    80|
2default:defaulth p
x
� 
a
%s
*synth2I
5|4     |    checksum_inst    |checksum      |    22|
2default:defaulth p
x
� 
a
%s
*synth2I
5|5     |    eth_send         |eth_send      |   177|
2default:defaulth p
x
� 
a
%s
*synth2I
5|6     |  gmii_to_rgmii_inst |gmii_to_rgmii |     6|
2default:defaulth p
x
� 
a
%s
*synth2I
5+------+---------------------+--------------+------+
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
�Finished Writing Synthesis Report : Time (s): cpu = 00:00:15 ; elapsed = 00:00:18 . Memory (MB): peak = 1158.445 ; gain = 419.324
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
FSynthesis finished with 0 errors, 0 critical warnings and 1 warnings.
2default:defaulth p
x
� 
�
%s
*synth2�
Synthesis Optimization Runtime : Time (s): cpu = 00:00:11 ; elapsed = 00:00:16 . Memory (MB): peak = 1158.445 ; gain = 323.770
2default:defaulth p
x
� 
�
%s
*synth2�
�Synthesis Optimization Complete : Time (s): cpu = 00:00:15 ; elapsed = 00:00:18 . Memory (MB): peak = 1158.445 ; gain = 419.324
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
00:00:00.0032default:default2
1158.4452default:default2
0.0002default:defaultZ17-268h px� 
f
-Analyzing %s Unisim elements for replacement
17*netlist2
292default:defaultZ29-17h px� 
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
1170.2702default:default2
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
1042default:default2
12default:default2
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
00:00:172default:default2
00:00:212default:default2
1170.2702default:default2
699.7302default:defaultZ17-268h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
1170.2702default:default2
0.0002default:defaultZ17-268h px� 
K
"No constraints selected for write.1103*constraintsZ18-5210h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2�
zD:/FPGA_Learning_Journey/Pro/ETH_udp_send_rgmii___/project without ipchecksum/project.runs/synth_1/eth_send_test_rgmii.dcp2default:defaultZ17-1381h px� 
�
%s4*runtcl2�
|Executing : report_utilization -file eth_send_test_rgmii_utilization_synth.rpt -pb eth_send_test_rgmii_utilization_synth.pb
2default:defaulth px� 
�
Exiting %s at %s...
206*common2
Vivado2default:default2,
Wed Mar  5 15:43:50 20252default:defaultZ17-206h px� 


End Record