
q
Command: %s
53*	vivadotcl2@
,link_design -top sobel -part xc7a35tfgg484-22default:defaultZ4-113h px� 
g
#Design is defaulting to srcset: %s
437*	planAhead2
	sources_12default:defaultZ12-437h px� 
j
&Design is defaulting to constrset: %s
434*	planAhead2
	constrs_12default:defaultZ12-434h px� 
V
Loading part %s157*device2#
xc7a35tfgg484-22default:defaultZ21-403h px� 
�
-Reading design checkpoint '%s' for cell '%s'
275*project2t
`d:/FPGA_Learning_Journey/Pro/SobelEdge____/project/project.srcs/sources_1/ip/clk_gen/clk_gen.dcp2default:default2!
clk_gen_inst12default:defaultZ1-454h px� 
�
-Reading design checkpoint '%s' for cell '%s'
275*project2�
ld:/FPGA_Learning_Journey/Pro/SobelEdge____/project/project.srcs/sources_1/ip/blk_mem_gen_0/blk_mem_gen_0.dcp2default:default2G
3hdmi_ram_inst/vga_image_gen_inst/blk_mem_gen_0_inst2default:defaultZ1-454h px� 
�
-Reading design checkpoint '%s' for cell '%s'
275*project2�
rd:/FPGA_Learning_Journey/Pro/SobelEdge____/project/project.srcs/sources_1/ip/fifo_generator_0/fifo_generator_0.dcp2default:default2:
&sobel_ctrl_inst/fifo_generator_0_inst12default:defaultZ1-454h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0202default:default2
758.8712default:default2
0.0002default:defaultZ17-268h px� 
g
-Analyzing %s Unisim elements for replacement
17*netlist2
1552default:defaultZ29-17h px� 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px� 
x
Netlist was created with %s %s291*project2
Vivado2default:default2
2019.22default:defaultZ1-479h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
�
LRemoving redundant IBUF, %s, from the path connected to top-level port: %s 
35*opt23
clk_gen_inst1/inst/clkin1_ibufg2default:default2
sys_clk2default:defaultZ31-35h px� 
�
�Could not create '%s' constraint because net '%s' is not directly connected to top level port. Synthesis is ignored for %s but preserved for implementation.
528*constraints2 
IBUF_LOW_PWR2default:default2+
clk_gen_inst1/clk_in12default:default2 
IBUF_LOW_PWR2default:default8Z18-550h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
rd:/FPGA_Learning_Journey/Pro/SobelEdge____/project/project.srcs/sources_1/ip/fifo_generator_0/fifo_generator_0.xdc2default:default2?
)sobel_ctrl_inst/fifo_generator_0_inst1/U0	2default:default8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
rd:/FPGA_Learning_Journey/Pro/SobelEdge____/project/project.srcs/sources_1/ip/fifo_generator_0/fifo_generator_0.xdc2default:default2?
)sobel_ctrl_inst/fifo_generator_0_inst1/U0	2default:default8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
rd:/FPGA_Learning_Journey/Pro/SobelEdge____/project/project.srcs/sources_1/ip/fifo_generator_0/fifo_generator_0.xdc2default:default2?
)sobel_ctrl_inst/fifo_generator_0_inst2/U0	2default:default8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
rd:/FPGA_Learning_Journey/Pro/SobelEdge____/project/project.srcs/sources_1/ip/fifo_generator_0/fifo_generator_0.xdc2default:default2?
)sobel_ctrl_inst/fifo_generator_0_inst2/U0	2default:default8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2|
fd:/FPGA_Learning_Journey/Pro/SobelEdge____/project/project.srcs/sources_1/ip/clk_gen/clk_gen_board.xdc2default:default2(
clk_gen_inst1/inst	2default:default8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2|
fd:/FPGA_Learning_Journey/Pro/SobelEdge____/project/project.srcs/sources_1/ip/clk_gen/clk_gen_board.xdc2default:default2(
clk_gen_inst1/inst	2default:default8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2v
`d:/FPGA_Learning_Journey/Pro/SobelEdge____/project/project.srcs/sources_1/ip/clk_gen/clk_gen.xdc2default:default2(
clk_gen_inst1/inst	2default:default8Z20-848h px� 
�
%Done setting XDC timing constraints.
35*timing2v
`d:/FPGA_Learning_Journey/Pro/SobelEdge____/project/project.srcs/sources_1/ip/clk_gen/clk_gen.xdc2default:default2
572default:default8@Z38-35h px� 
�
Deriving generated clocks
2*timing2v
`d:/FPGA_Learning_Journey/Pro/SobelEdge____/project/project.srcs/sources_1/ip/clk_gen/clk_gen.xdc2default:default2
572default:default8@Z38-2h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2 
get_clocks: 2default:default2
00:00:062default:default2
00:00:062default:default2
1426.6842default:default2
550.4142default:defaultZ17-268h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2v
`d:/FPGA_Learning_Journey/Pro/SobelEdge____/project/project.srcs/sources_1/ip/clk_gen/clk_gen.xdc2default:default2(
clk_gen_inst1/inst	2default:default8Z20-847h px� 
�
Parsing XDC File [%s]
179*designutils2M
7D:/FPGA_Learning_Journey/Pro/SobelEdge____/src/hdmi.xdc2default:default8Z20-179h px� 
�
Finished Parsing XDC File [%s]
178*designutils2M
7D:/FPGA_Learning_Journey/Pro/SobelEdge____/src/hdmi.xdc2default:default8Z20-178h px� 
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
1426.6842default:default2
0.0002default:defaultZ17-268h px� 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
122default:default2
22default:default2
02default:default2
02default:defaultZ4-41h px� 
]
%s completed successfully
29*	vivadotcl2
link_design2default:defaultZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2!
link_design: 2default:default2
00:00:102default:default2
00:00:112default:default2
1426.6842default:default2
953.0122default:defaultZ17-268h px� 


End Record