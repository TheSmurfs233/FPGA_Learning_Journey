
?
Command: %s
53*	vivadotcl2
route_designZ4-113h px� 

@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
Implementation2	
xc7a35tZ17-347h px� 
o
0Got license for feature '%s' and/or device '%s'
310*common2
Implementation2	
xc7a35tZ17-349h px� 
>
Running DRC with %s threads
24*drc2
2Z23-27h px� 
D
DRC finished with %s
79*	vivadotcl2

0 ErrorsZ4-198h px� 
e
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px� 
D

Starting %s Task
103*constraints2	
RoutingZ18-103h px� 
k
BMultithreading enabled for route_design using a maximum of %s CPUs17*	routeflow2
2Z35-254h px� 
L

Phase %s%s
101*constraints2
1 2
Build RT DesignZ18-101h px� 
I
%s*common20
.Phase 1 Build RT Design | Checksum: 2bb66d89d
h px� 
~

%s
*constraints2^
\Time (s): cpu = 00:00:15 ; elapsed = 00:00:14 . Memory (MB): peak = 1959.562 ; gain = 64.543h px� 
R

Phase %s%s
101*constraints2
2 2
Router InitializationZ18-101h px� 
W

Phase %s%s
101*constraints2
2.1 2
Fix Topology ConstraintsZ18-101h px� 
T
%s*common2;
9Phase 2.1 Fix Topology Constraints | Checksum: 2bb66d89d
h px� 
~

%s
*constraints2^
\Time (s): cpu = 00:00:15 ; elapsed = 00:00:14 . Memory (MB): peak = 1959.562 ; gain = 64.543h px� 
P

Phase %s%s
101*constraints2
2.2 2
Pre Route CleanupZ18-101h px� 
M
%s*common24
2Phase 2.2 Pre Route Cleanup | Checksum: 2bb66d89d
h px� 
~

%s
*constraints2^
\Time (s): cpu = 00:00:15 ; elapsed = 00:00:14 . Memory (MB): peak = 1959.562 ; gain = 64.543h px� 
L

Phase %s%s
101*constraints2
2.3 2
Update TimingZ18-101h px� 
I
%s*common20
.Phase 2.3 Update Timing | Checksum: 274753e0e
h px� 
~

%s
*constraints2^
\Time (s): cpu = 00:00:16 ; elapsed = 00:00:15 . Memory (MB): peak = 1990.695 ; gain = 95.676h px� 
y
Intermediate Timing Summary %s164*route28
6| WNS=-1.914 | TNS=-7.196 | WHS=-0.364 | THS=-11.051|
Z35-416h px� 
d

Phase %s%s
101*constraints2
2.4 2'
%Soft Constraint Pins - Fast BudgetingZ18-101h px� 
a
%s*common2H
FPhase 2.4 Soft Constraint Pins - Fast Budgeting | Checksum: 226488fd5
h px� 


%s
*constraints2_
]Time (s): cpu = 00:00:16 ; elapsed = 00:00:15 . Memory (MB): peak = 2014.719 ; gain = 119.699h px� 
O
%s*common26
4Phase 2 Router Initialization | Checksum: 273892442
h px� 


%s
*constraints2_
]Time (s): cpu = 00:00:16 ; elapsed = 00:00:15 . Memory (MB): peak = 2014.719 ; gain = 119.699h px� 
K

Phase %s%s
101*constraints2
3 2
Global RoutingZ18-101h px� 
H
%s*common2/
-Phase 3 Global Routing | Checksum: 273892442
h px� 


%s
*constraints2_
]Time (s): cpu = 00:00:16 ; elapsed = 00:00:15 . Memory (MB): peak = 2014.719 ; gain = 119.699h px� 
L

Phase %s%s
101*constraints2
4 2
Initial RoutingZ18-101h px� 
W

Phase %s%s
101*constraints2
4.1 2
Initial Net Routing PassZ18-101h px� 
T
%s*common2;
9Phase 4.1 Initial Net Routing Pass | Checksum: 2396feef1
h px� 


%s
*constraints2_
]Time (s): cpu = 00:00:17 ; elapsed = 00:00:15 . Memory (MB): peak = 2014.719 ; gain = 119.699h px� 
I
%s*common20
.Phase 4 Initial Routing | Checksum: 2396feef1
h px� 


%s
*constraints2_
]Time (s): cpu = 00:00:17 ; elapsed = 00:00:15 . Memory (MB): peak = 2014.719 ; gain = 119.699h px� 
�
>Design has %s pins with tight setup and hold constraints.

%s
244*route2
452�
�The top 5 pins with tight setup and hold constraints:

+====================+===================+===================================================+
| Launch Setup Clock | Launch Hold Clock | Pin                                               |
+====================+===================+===================================================+
| c0_1x_clk_wiz_0    | c0_1x_clk_wiz_0   | hdmi_ctrl_inst/par2ser_inst1/data_fall_s_reg[2]/D |
| c0_1x_clk_wiz_0    | c0_1x_clk_wiz_0   | hdmi_ctrl_inst/par2ser_inst1/data_fall_s_reg[0]/D |
| c1_5x_clk_wiz_0    | c0_1x_clk_wiz_0   | hdmi_ctrl_inst/par2ser_inst2/data_rise_s_reg[3]/D |
| c0_1x_clk_wiz_0    | c0_1x_clk_wiz_0   | hdmi_ctrl_inst/par2ser_inst1/data_rise_s_reg[3]/D |
| c0_1x_clk_wiz_0    | c0_1x_clk_wiz_0   | hdmi_ctrl_inst/par2ser_inst3/data_fall_s_reg[3]/D |
+--------------------+-------------------+---------------------------------------------------+

File with complete list of pins: tight_setup_hold_pins.txt
Z35-580h px� 
O

Phase %s%s
101*constraints2
5 2
Rip-up And RerouteZ18-101h px� 
Q

Phase %s%s
101*constraints2
5.1 2
Global Iteration 0Z18-101h px� 
y
Intermediate Timing Summary %s164*route28
6| WNS=-3.457 | TNS=-21.130| WHS=N/A    | THS=N/A    |
Z35-416h px� 
N
%s*common25
3Phase 5.1 Global Iteration 0 | Checksum: 21693d463
h px� 


%s
*constraints2_
]Time (s): cpu = 00:00:36 ; elapsed = 00:00:26 . Memory (MB): peak = 2026.398 ; gain = 131.379h px� 
Q

Phase %s%s
101*constraints2
5.2 2
Global Iteration 1Z18-101h px� 
y
Intermediate Timing Summary %s164*route28
6| WNS=-3.007 | TNS=-20.680| WHS=N/A    | THS=N/A    |
Z35-416h px� 
N
%s*common25
3Phase 5.2 Global Iteration 1 | Checksum: 2452110cb
h px� 


%s
*constraints2_
]Time (s): cpu = 00:00:37 ; elapsed = 00:00:27 . Memory (MB): peak = 2026.398 ; gain = 131.379h px� 
Q

Phase %s%s
101*constraints2
5.3 2
Global Iteration 2Z18-101h px� 
y
Intermediate Timing Summary %s164*route28
6| WNS=-3.102 | TNS=-20.775| WHS=N/A    | THS=N/A    |
Z35-416h px� 
N
%s*common25
3Phase 5.3 Global Iteration 2 | Checksum: 1ff956656
h px� 


%s
*constraints2_
]Time (s): cpu = 00:00:59 ; elapsed = 00:00:41 . Memory (MB): peak = 2026.398 ; gain = 131.379h px� 
L
%s*common23
1Phase 5 Rip-up And Reroute | Checksum: 1ff956656
h px� 


%s
*constraints2_
]Time (s): cpu = 00:00:59 ; elapsed = 00:00:41 . Memory (MB): peak = 2026.398 ; gain = 131.379h px� 
X

Phase %s%s
101*constraints2
6 2
Delay and Skew OptimizationZ18-101h px� 
L

Phase %s%s
101*constraints2
6.1 2
Delay CleanUpZ18-101h px� 
N

Phase %s%s
101*constraints2
6.1.1 2
Update TimingZ18-101h px� 
K
%s*common22
0Phase 6.1.1 Update Timing | Checksum: 2dc84d1e7
h px� 


%s
*constraints2_
]Time (s): cpu = 00:00:59 ; elapsed = 00:00:41 . Memory (MB): peak = 2026.398 ; gain = 131.379h px� 
y
Intermediate Timing Summary %s164*route28
6| WNS=-2.935 | TNS=-19.926| WHS=N/A    | THS=N/A    |
Z35-416h px� 
I
%s*common20
.Phase 6.1 Delay CleanUp | Checksum: 1e49cc627
h px� 


%s
*constraints2_
]Time (s): cpu = 00:01:00 ; elapsed = 00:00:41 . Memory (MB): peak = 2026.398 ; gain = 131.379h px� 
V

Phase %s%s
101*constraints2
6.2 2
Clock Skew OptimizationZ18-101h px� 
S
%s*common2:
8Phase 6.2 Clock Skew Optimization | Checksum: 1e49cc627
h px� 


%s
*constraints2_
]Time (s): cpu = 00:01:00 ; elapsed = 00:00:41 . Memory (MB): peak = 2026.398 ; gain = 131.379h px� 
U
%s*common2<
:Phase 6 Delay and Skew Optimization | Checksum: 1e49cc627
h px� 


%s
*constraints2_
]Time (s): cpu = 00:01:00 ; elapsed = 00:00:41 . Memory (MB): peak = 2026.398 ; gain = 131.379h px� 
J

Phase %s%s
101*constraints2
7 2
Post Hold FixZ18-101h px� 
L

Phase %s%s
101*constraints2
7.1 2
Hold Fix IterZ18-101h px� 
y
Intermediate Timing Summary %s164*route28
6| WNS=-2.926 | TNS=-19.559| WHS=0.053  | THS=0.000  |
Z35-416h px� 
I
%s*common20
.Phase 7.1 Hold Fix Iter | Checksum: 2520b731f
h px� 


%s
*constraints2_
]Time (s): cpu = 00:01:00 ; elapsed = 00:00:41 . Memory (MB): peak = 2026.398 ; gain = 131.379h px� 
G
%s*common2.
,Phase 7 Post Hold Fix | Checksum: 2520b731f
h px� 


%s
*constraints2_
]Time (s): cpu = 00:01:00 ; elapsed = 00:00:41 . Memory (MB): peak = 2026.398 ; gain = 131.379h px� 
K

Phase %s%s
101*constraints2
8 2
Route finalizeZ18-101h px� 
H
%s*common2/
-Phase 8 Route finalize | Checksum: 2520b731f
h px� 


%s
*constraints2_
]Time (s): cpu = 00:01:00 ; elapsed = 00:00:41 . Memory (MB): peak = 2026.398 ; gain = 131.379h px� 
R

Phase %s%s
101*constraints2
9 2
Verifying routed netsZ18-101h px� 
O
%s*common26
4Phase 9 Verifying routed nets | Checksum: 2520b731f
h px� 


%s
*constraints2_
]Time (s): cpu = 00:01:00 ; elapsed = 00:00:41 . Memory (MB): peak = 2026.398 ; gain = 131.379h px� 
O

Phase %s%s
101*constraints2
10 2
Depositing RoutesZ18-101h px� 
L
%s*common23
1Phase 10 Depositing Routes | Checksum: 19d05dfce
h px� 


%s
*constraints2_
]Time (s): cpu = 00:01:00 ; elapsed = 00:00:41 . Memory (MB): peak = 2026.398 ; gain = 131.379h px� 
R

Phase %s%s
101*constraints2
11 2
Post Process RoutingZ18-101h px� 
O
%s*common26
4Phase 11 Post Process Routing | Checksum: 19d05dfce
h px� 


%s
*constraints2_
]Time (s): cpu = 00:01:00 ; elapsed = 00:00:41 . Memory (MB): peak = 2026.398 ; gain = 131.379h px� 
P

Phase %s%s
101*constraints2
12 2
Post Router TimingZ18-101h px� 
u
Estimated Timing Summary %s
57*route28
6| WNS=-2.926 | TNS=-19.559| WHS=0.053  | THS=0.000  |
Z35-57h px� 
B
!Router estimated timing not met.
128*routeZ35-328h px� 
M
%s*common24
2Phase 12 Post Router Timing | Checksum: 19d05dfce
h px� 


%s
*constraints2_
]Time (s): cpu = 00:01:00 ; elapsed = 00:00:41 . Memory (MB): peak = 2026.398 ; gain = 131.379h px� 
Y

Phase %s%s
101*constraints2
13 2
Post-Route Event ProcessingZ18-101h px� 
V
%s*common2=
;Phase 13 Post-Route Event Processing | Checksum: 1315ba127
h px� 


%s
*constraints2_
]Time (s): cpu = 00:01:00 ; elapsed = 00:00:41 . Memory (MB): peak = 2026.398 ; gain = 131.379h px� 
@
Router Completed Successfully
2*	routeflowZ35-16h px� 
E
%s*common2,
*Ending Routing Task | Checksum: 1315ba127
h px� 


%s
*constraints2_
]Time (s): cpu = 00:01:00 ; elapsed = 00:00:42 . Memory (MB): peak = 2026.398 ; gain = 131.379h px� 
H
Releasing license: %s
83*common2
ImplementationZ17-83h px� 

G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
6302
12
02
0Z4-41h px� 
L
%s completed successfully
29*	vivadotcl2
route_designZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
route_design: 2

00:01:002

00:00:422

2026.3982	
142.742Z17-268h px� 
�
Executing command : %s
56330*	planAhead2e
creport_drc -file hdmi_char_drc_routed.rpt -pb hdmi_char_drc_routed.pb -rpx hdmi_char_drc_routed.rpxZ12-24828h px� 
�
Command: %s
53*	vivadotcl2e
creport_drc -file hdmi_char_drc_routed.rpt -pb hdmi_char_drc_routed.pb -rpx hdmi_char_drc_routed.rpxZ4-113h px� 
>
IP Catalog is up to date.1232*coregenZ19-1839h px� 
>
Running DRC with %s threads
24*drc2
2Z23-27h px� 
�
#The results of DRC are in file %s.
586*	vivadotcl2�
dD:/FPGA_Learning_Journey/Pro/HDMI_char_1080p___/project/project.runs/impl_1/hdmi_char_drc_routed.rptdD:/FPGA_Learning_Journey/Pro/HDMI_char_1080p___/project/project.runs/impl_1/hdmi_char_drc_routed.rpt8Z2-168h px� 
J
%s completed successfully
29*	vivadotcl2

report_drcZ4-42h px� 
�
Executing command : %s
56330*	planAhead2�
�report_methodology -file hdmi_char_methodology_drc_routed.rpt -pb hdmi_char_methodology_drc_routed.pb -rpx hdmi_char_methodology_drc_routed.rpxZ12-24828h px� 
�
Command: %s
53*	vivadotcl2�
�report_methodology -file hdmi_char_methodology_drc_routed.rpt -pb hdmi_char_methodology_drc_routed.pb -rpx hdmi_char_methodology_drc_routed.rpxZ4-113h px� 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px� 
G
$Running Methodology with %s threads
74*drc2
2Z23-133h px� 
�
2The results of Report Methodology are in file %s.
609*	vivadotcl2�
pD:/FPGA_Learning_Journey/Pro/HDMI_char_1080p___/project/project.runs/impl_1/hdmi_char_methodology_drc_routed.rptpD:/FPGA_Learning_Journey/Pro/HDMI_char_1080p___/project/project.runs/impl_1/hdmi_char_methodology_drc_routed.rpt8Z2-1520h px� 
R
%s completed successfully
29*	vivadotcl2
report_methodologyZ4-42h px� 
�
Executing command : %s
56330*	planAhead2�
�report_timing_summary -max_paths 10 -file hdmi_char_timing_summary_routed.rpt -pb hdmi_char_timing_summary_routed.pb -rpx hdmi_char_timing_summary_routed.rpx -warn_on_violation Z12-24828h px� 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px� 
`
UpdateTimingParams:%s.
91*timing2'
% Speed grade: -2, Delay Type: min_maxZ38-91h px� 
j
CMultithreading enabled for timing update using a maximum of %s CPUs155*timing2
2Z38-191h px� 
�
rThe design failed to meet the timing requirements. Please see the %s report for details on the timing violations.
188*timing2
timing summaryZ38-282h px� 
�
)Running report commands "%s" in parallel.56334*	planAhead2/
-report_incremental_reuse, report_route_statusZ12-24838h px� 
Y
+Running report generation with %s threads.
56333*	planAhead2
2Z12-24831h px� 
�
Executing command : %s
56330*	planAhead2G
Ereport_incremental_reuse -file hdmi_char_incremental_reuse_routed.rptZ12-24828h px� 
g
BIncremental flow is disabled. No incremental reuse Info to report.423*	vivadotclZ4-1062h px� 
�
Executing command : %s
56330*	planAhead2T
Rreport_route_status -file hdmi_char_route_status.rpt -pb hdmi_char_route_status.pbZ12-24828h px� 
�
Executing command : %s
56330*	planAhead2u
sreport_power -file hdmi_char_power_routed.rpt -pb hdmi_char_power_summary_routed.pb -rpx hdmi_char_power_routed.rpxZ12-24828h px� 
�
Command: %s
53*	vivadotcl2u
sreport_power -file hdmi_char_power_routed.rpt -pb hdmi_char_power_summary_routed.pb -rpx hdmi_char_power_routed.rpxZ4-113h px� 
K
,Running Vector-less Activity Propagation...
51*powerZ33-51h px� 
P
3
Finished Running Vector-less Activity Propagation
1*powerZ33-1h px� 

G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
6472
12
12
0Z4-41h px� 
L
%s completed successfully
29*	vivadotcl2
report_powerZ4-42h px� 
�
Executing command : %s
56330*	planAhead2G
Ereport_clock_utilization -file hdmi_char_clock_utilization_routed.rptZ12-24828h px� 
�
Executing command : %s
56330*	planAhead2�
�report_bus_skew -warn_on_violation -file hdmi_char_bus_skew_routed.rpt -pb hdmi_char_bus_skew_routed.pb -rpx hdmi_char_bus_skew_routed.rpxZ12-24828h px� 
`
UpdateTimingParams:%s.
91*timing2'
% Speed grade: -2, Delay Type: min_maxZ38-91h px� 
j
CMultithreading enabled for timing update using a maximum of %s CPUs155*timing2
2Z38-191h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
generate_parallel_reports: 2

00:00:092

00:00:052

2051.4692
25.070Z17-268h px� 
H
&Writing timing data to binary archive.266*timingZ38-480h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Write ShapeDB Complete: 2

00:00:002
00:00:00.0012

2051.4692
0.000Z17-268h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Wrote PlaceDB: 2

00:00:002
00:00:00.0602

2051.4692
0.000Z17-268h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Wrote PulsedLatchDB: 2

00:00:002

00:00:002

2051.4692
0.000Z17-268h px� 
=
Writing XDEF routing.
211*designutilsZ20-211h px� 
J
#Writing XDEF routing logical nets.
209*designutilsZ20-209h px� 
J
#Writing XDEF routing special nets.
210*designutilsZ20-210h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Wrote RouteStorage: 2

00:00:002
00:00:00.0202

2051.4692
0.000Z17-268h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Wrote Netlist Cache: 2

00:00:002
00:00:00.0012

2051.4692
0.000Z17-268h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Wrote Device Cache: 2

00:00:002
00:00:00.0042

2051.4692
0.000Z17-268h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Write Physdb Complete: 2

00:00:002
00:00:00.0902

2051.4692
0.000Z17-268h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2b
`D:/FPGA_Learning_Journey/Pro/HDMI_char_1080p___/project/project.runs/impl_1/hdmi_char_routed.dcpZ17-1381h px� 


End Record