
Q
Command: %s
53*	vivadotcl2 
place_design2default:defaultZ4-113h px? 
?
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2"
Implementation2default:default2
xc7z0202default:defaultZ17-347h px? 
?
0Got license for feature '%s' and/or device '%s'
310*common2"
Implementation2default:default2
xc7z0202default:defaultZ17-349h px? 
P
Running DRC with %s threads
24*drc2
82default:defaultZ23-27h px? 
V
DRC finished with %s
79*	vivadotcl2
0 Errors2default:defaultZ4-198h px? 
e
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px? 
p
,Running DRC as a precondition to command %s
22*	vivadotcl2 
place_design2default:defaultZ4-22h px? 
P
Running DRC with %s threads
24*drc2
82default:defaultZ23-27h px? 
V
DRC finished with %s
79*	vivadotcl2
0 Errors2default:defaultZ4-198h px? 
e
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px? 
U

Starting %s Task
103*constraints2
Placer2default:defaultZ18-103h px? 
}
BMultithreading enabled for place_design using a maximum of %s CPUs12*	placeflow2
82default:defaultZ30-611h px? 
v

Phase %s%s
101*constraints2
1 2default:default2)
Placer Initialization2default:defaultZ18-101h px? 
?

Phase %s%s
101*constraints2
1.1 2default:default29
%Placer Initialization Netlist Sorting2default:defaultZ18-101h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
3744.7932default:default2
0.0002default:default2
21012default:default2
155652default:defaultZ17-722h px? 
Z
EPhase 1.1 Placer Initialization Netlist Sorting | Checksum: 6699aa7e
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:00.01 ; elapsed = 00:00:00.02 . Memory (MB): peak = 3744.793 ; gain = 0.000 ; free physical = 2101 ; free virtual = 155652default:defaulth px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
3744.7932default:default2
0.0002default:default2
21012default:default2
155662default:defaultZ17-722h px? 
?

Phase %s%s
101*constraints2
1.2 2default:default2F
2IO Placement/ Clock Placement/ Build Placer Device2default:defaultZ18-101h px? 
g
RPhase 1.2 IO Placement/ Clock Placement/ Build Placer Device | Checksum: 77167745
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:01 ; elapsed = 00:00:00.52 . Memory (MB): peak = 3744.793 ; gain = 0.000 ; free physical = 2135 ; free virtual = 156002default:defaulth px? 
}

Phase %s%s
101*constraints2
1.3 2default:default2.
Build Placer Netlist Model2default:defaultZ18-101h px? 
O
:Phase 1.3 Build Placer Netlist Model | Checksum: ef62c6cd
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:04 ; elapsed = 00:00:02 . Memory (MB): peak = 3744.793 ; gain = 0.000 ; free physical = 2142 ; free virtual = 156072default:defaulth px? 
z

Phase %s%s
101*constraints2
1.4 2default:default2+
Constrain Clocks/Macros2default:defaultZ18-101h px? 
L
7Phase 1.4 Constrain Clocks/Macros | Checksum: ef62c6cd
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:04 ; elapsed = 00:00:02 . Memory (MB): peak = 3744.793 ; gain = 0.000 ; free physical = 2142 ; free virtual = 156072default:defaulth px? 
H
3Phase 1 Placer Initialization | Checksum: ef62c6cd
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:04 ; elapsed = 00:00:02 . Memory (MB): peak = 3744.793 ; gain = 0.000 ; free physical = 2142 ; free virtual = 156072default:defaulth px? 
q

Phase %s%s
101*constraints2
2 2default:default2$
Global Placement2default:defaultZ18-101h px? 
p

Phase %s%s
101*constraints2
2.1 2default:default2!
Floorplanning2default:defaultZ18-101h px? 
B
-Phase 2.1 Floorplanning | Checksum: fc2f8704
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:06 ; elapsed = 00:00:02 . Memory (MB): peak = 3744.793 ; gain = 0.000 ; free physical = 2134 ; free virtual = 155992default:defaulth px? 
?

Phase %s%s
101*constraints2
2.2 2default:default25
!Update Timing before SLR Path Opt2default:defaultZ18-101h px? 
V
APhase 2.2 Update Timing before SLR Path Opt | Checksum: 865f006e
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:08 ; elapsed = 00:00:02 . Memory (MB): peak = 3744.793 ; gain = 0.000 ; free physical = 2135 ; free virtual = 155992default:defaulth px? 
?

Phase %s%s
101*constraints2
2.3 2default:default24
 Post-Processing in Floorplanning2default:defaultZ18-101h px? 
U
@Phase 2.3 Post-Processing in Floorplanning | Checksum: 865f006e
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:08 ; elapsed = 00:00:02 . Memory (MB): peak = 3744.793 ; gain = 0.000 ; free physical = 2135 ; free virtual = 155992default:defaulth px? 
x

Phase %s%s
101*constraints2
2.4 2default:default2)
Global Placement Core2default:defaultZ18-101h px? 
?

Phase %s%s
101*constraints2
2.4.1 2default:default20
Physical Synthesis In Placer2default:defaultZ18-101h px? 
?
FFound %s LUTNM shape to break, %s LUT instances to create LUTNM shape
553*physynth2
182default:default2
3462default:defaultZ32-1035h px? 
?
YBreak lutnm for timing: one critical %s, two critical %s, total %s, new lutff created %s
561*physynth2
72default:default2
112default:default2
182default:default2
02default:defaultZ32-1044h px? 
?
^End %s Pass. Optimized %s %s. Breaked %s %s, combined %s existing %s and moved %s existing %s
576*physynth2
12default:default2
1722default:default2 
nets or LUTs2default:default2
182default:default2
LUTs2default:default2
1542default:default2
LUTs2default:default2
02default:default2
LUT2default:defaultZ32-1138h px? 
K
)No high fanout nets found in the design.
65*physynthZ32-65h px? 
?
$Optimized %s %s. Created %s new %s.
216*physynth2
02default:default2
net2default:default2
02default:default2
instance2default:defaultZ32-232h px? 
?
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
12default:default2
02default:default2
net or cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:defaultZ32-775h px? 
j
FNo candidate cells for DSP register optimization found in the design.
274*physynthZ32-456h px? 
?
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
22default:default2
02default:default2
net or cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:defaultZ32-775h px? 
i
DNo candidate cells found for Shift Register to Pipeline optimization564*physynthZ32-1123h px? 
?
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
12default:default2
02default:default2
net or cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:defaultZ32-775h px? 
h
DNo candidate cells for SRL register optimization found in the design349*physynthZ32-677h px? 
?
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
12default:default2
02default:default2
net or cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:defaultZ32-775h px? 
i
ENo candidate cells for BRAM register optimization found in the design297*physynthZ32-526h px? 
?
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
12default:default2
02default:default2
net or cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:defaultZ32-775h px? 
j
FNo candidate cells for URAM register optimization found in the design
437*physynthZ32-846h px? 
?
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
22default:default2
02default:default2
net or cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:defaultZ32-775h px? 
o
KNo candidate nets found for dynamic/static region interface net replication521*physynthZ32-949h px? 
?
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
12default:default2
02default:default2
net or cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:defaultZ32-775h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
3744.7932default:default2
0.0002default:default2
20902default:default2
155582default:defaultZ17-722h px? 
B
-
Summary of Physical Synthesis Optimizations
*commonh px? 
B
-============================================
*commonh px? 


*commonh px? 


*commonh px? 
?
?-----------------------------------------------------------------------------------------------------------------------------------------------------------
*commonh px? 
?
?|  Optimization                                     |  Added Cells  |  Removed Cells  |  Optimized Cells/Nets  |  Dont Touch  |  Iterations  |  Elapsed   |
-----------------------------------------------------------------------------------------------------------------------------------------------------------
*commonh px? 
?
?|  LUT Combining                                    |           18  |            154  |                   172  |           0  |           1  |  00:00:00  |
|  Retime                                           |            0  |              0  |                     0  |           0  |           1  |  00:00:00  |
|  Very High Fanout                                 |            0  |              0  |                     0  |           0  |           1  |  00:00:00  |
|  DSP Register                                     |            0  |              0  |                     0  |           0  |           1  |  00:00:00  |
|  Shift Register to Pipeline                       |            0  |              0  |                     0  |           0  |           1  |  00:00:00  |
|  Shift Register                                   |            0  |              0  |                     0  |           0  |           1  |  00:00:00  |
|  BRAM Register                                    |            0  |              0  |                     0  |           0  |           1  |  00:00:00  |
|  URAM Register                                    |            0  |              0  |                     0  |           0  |           1  |  00:00:00  |
|  Dynamic/Static Region Interface Net Replication  |            0  |              0  |                     0  |           0  |           1  |  00:00:00  |
|  Total                                            |           18  |            154  |                   172  |           0  |           9  |  00:00:00  |
-----------------------------------------------------------------------------------------------------------------------------------------------------------
*commonh px? 


*commonh px? 


*commonh px? 
T
?Phase 2.4.1 Physical Synthesis In Placer | Checksum: 2340b9abf
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:30 ; elapsed = 00:00:09 . Memory (MB): peak = 3744.793 ; gain = 0.000 ; free physical = 2085 ; free virtual = 155552default:defaulth px? 
K
6Phase 2.4 Global Placement Core | Checksum: 1e37d1a09
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:32 ; elapsed = 00:00:09 . Memory (MB): peak = 3744.793 ; gain = 0.000 ; free physical = 2074 ; free virtual = 155522default:defaulth px? 
D
/Phase 2 Global Placement | Checksum: 1e37d1a09
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:32 ; elapsed = 00:00:09 . Memory (MB): peak = 3744.793 ; gain = 0.000 ; free physical = 2076 ; free virtual = 155532default:defaulth px? 
q

Phase %s%s
101*constraints2
3 2default:default2$
Detail Placement2default:defaultZ18-101h px? 
}

Phase %s%s
101*constraints2
3.1 2default:default2.
Commit Multi Column Macros2default:defaultZ18-101h px? 
P
;Phase 3.1 Commit Multi Column Macros | Checksum: 14d198d31
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:33 ; elapsed = 00:00:10 . Memory (MB): peak = 3744.793 ; gain = 0.000 ; free physical = 2077 ; free virtual = 155542default:defaulth px? 


Phase %s%s
101*constraints2
3.2 2default:default20
Commit Most Macros & LUTRAMs2default:defaultZ18-101h px? 
R
=Phase 3.2 Commit Most Macros & LUTRAMs | Checksum: 123c76f3b
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:36 ; elapsed = 00:00:11 . Memory (MB): peak = 3744.793 ; gain = 0.000 ; free physical = 2078 ; free virtual = 155532default:defaulth px? 
y

Phase %s%s
101*constraints2
3.3 2default:default2*
Area Swap Optimization2default:defaultZ18-101h px? 
L
7Phase 3.3 Area Swap Optimization | Checksum: 196c1e1c3
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:37 ; elapsed = 00:00:11 . Memory (MB): peak = 3744.793 ; gain = 0.000 ; free physical = 2078 ; free virtual = 155532default:defaulth px? 
?

Phase %s%s
101*constraints2
3.4 2default:default22
Pipeline Register Optimization2default:defaultZ18-101h px? 
T
?Phase 3.4 Pipeline Register Optimization | Checksum: 16804cc7f
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:37 ; elapsed = 00:00:11 . Memory (MB): peak = 3744.793 ; gain = 0.000 ; free physical = 2078 ; free virtual = 155532default:defaulth px? 
t

Phase %s%s
101*constraints2
3.5 2default:default2%
Fast Optimization2default:defaultZ18-101h px? 
G
2Phase 3.5 Fast Optimization | Checksum: 103d3c322
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:41 ; elapsed = 00:00:12 . Memory (MB): peak = 3744.793 ; gain = 0.000 ; free physical = 2094 ; free virtual = 155502default:defaulth px? 


Phase %s%s
101*constraints2
3.6 2default:default20
Small Shape Detail Placement2default:defaultZ18-101h px? 
R
=Phase 3.6 Small Shape Detail Placement | Checksum: 27157cf1d
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:44 ; elapsed = 00:00:15 . Memory (MB): peak = 3744.793 ; gain = 0.000 ; free physical = 2089 ; free virtual = 155432default:defaulth px? 
u

Phase %s%s
101*constraints2
3.7 2default:default2&
Re-assign LUT pins2default:defaultZ18-101h px? 
H
3Phase 3.7 Re-assign LUT pins | Checksum: 18ecd52c6
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:44 ; elapsed = 00:00:15 . Memory (MB): peak = 3744.793 ; gain = 0.000 ; free physical = 2088 ; free virtual = 155442default:defaulth px? 
?

Phase %s%s
101*constraints2
3.8 2default:default22
Pipeline Register Optimization2default:defaultZ18-101h px? 
T
?Phase 3.8 Pipeline Register Optimization | Checksum: 13d86e882
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:44 ; elapsed = 00:00:15 . Memory (MB): peak = 3744.793 ; gain = 0.000 ; free physical = 2088 ; free virtual = 155442default:defaulth px? 
t

Phase %s%s
101*constraints2
3.9 2default:default2%
Fast Optimization2default:defaultZ18-101h px? 
G
2Phase 3.9 Fast Optimization | Checksum: 172dc8685
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:51 ; elapsed = 00:00:17 . Memory (MB): peak = 3744.793 ; gain = 0.000 ; free physical = 2067 ; free virtual = 155282default:defaulth px? 
D
/Phase 3 Detail Placement | Checksum: 172dc8685
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:51 ; elapsed = 00:00:18 . Memory (MB): peak = 3744.793 ; gain = 0.000 ; free physical = 2046 ; free virtual = 155282default:defaulth px? 
?

Phase %s%s
101*constraints2
4 2default:default2<
(Post Placement Optimization and Clean-Up2default:defaultZ18-101h px? 
{

Phase %s%s
101*constraints2
4.1 2default:default2,
Post Commit Optimization2default:defaultZ18-101h px? 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px? 
?

Phase %s%s
101*constraints2
4.1.1 2default:default2/
Post Placement Optimization2default:defaultZ18-101h px? 
V
APost Placement Optimization Initialization | Checksum: 196d9d962
*commonh px? 
u

Phase %s%s
101*constraints2
4.1.1.1 2default:default2"
BUFG Insertion2default:defaultZ18-101h px? 
a

Starting %s Task
103*constraints2&
Physical Synthesis2default:defaultZ18-103h px? 
?

Phase %s%s
101*constraints2
1 2default:default25
!Physical Synthesis Initialization2default:defaultZ18-101h px? 
?
EMultithreading enabled for phys_opt_design using a maximum of %s CPUs380*physynth2
82default:defaultZ32-721h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-2.5682default:default2
-77.4482default:defaultZ32-619h px? 
U
@Phase 1 Physical Synthesis Initialization | Checksum: 18a1226f0
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:01 ; elapsed = 00:00:00.19 . Memory (MB): peak = 3744.793 ; gain = 0.000 ; free physical = 2071 ; free virtual = 155362default:defaulth px? 
?
PProcessed net %s, BUFG insertion was skipped due to placement/routing conflicts.32*	placeflow2?
?design_1_2h_i/multihart_ip_0/inst/grp_multihart_ip_Pipeline_VITIS_LOOP_189_1_fu_121/flow_control_loop_pipe_sequential_init_U/m_state_is_full_0_0_fu_8903_out2default:defaultZ46-33h px? 
?
?BUFG insertion identified %s candidate nets. Inserted BUFG: %s, Replicated BUFG Driver: %s, Skipped due to Placement/Routing Conflicts: %s, Skipped due to Timing Degradation: %s, Skipped due to Illegal Netlist: %s.43*	placeflow2
12default:default2
02default:default2
02default:default2
12default:default2
02default:default2
02default:defaultZ46-56h px? 
J
5Ending Physical Synthesis Task | Checksum: 1d9e7dab2
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:01 ; elapsed = 00:00:00.47 . Memory (MB): peak = 3744.793 ; gain = 0.000 ; free physical = 2071 ; free virtual = 155352default:defaulth px? 
H
3Phase 4.1.1.1 BUFG Insertion | Checksum: 196d9d962
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:57 ; elapsed = 00:00:19 . Memory (MB): peak = 3744.793 ; gain = 0.000 ; free physical = 2071 ; free virtual = 155332default:defaulth px? 
?

Phase %s%s
101*constraints2
4.1.1.2 2default:default26
"Post Placement Timing Optimization2default:defaultZ18-101h px? 
?
hPost Placement Timing Summary WNS=%s. For the most accurate timing information please run report_timing.610*place2
-0.8822default:defaultZ30-746h px? 
\
GPhase 4.1.1.2 Post Placement Timing Optimization | Checksum: 1b0c8a322
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:01:18 ; elapsed = 00:00:40 . Memory (MB): peak = 3744.793 ; gain = 0.000 ; free physical = 2092 ; free virtual = 155352default:defaulth px? 
?

%s
*constraints2?
?Time (s): cpu = 00:01:18 ; elapsed = 00:00:40 . Memory (MB): peak = 3744.793 ; gain = 0.000 ; free physical = 2092 ; free virtual = 155352default:defaulth px? 
N
9Phase 4.1 Post Commit Optimization | Checksum: 1b0c8a322
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:01:18 ; elapsed = 00:00:40 . Memory (MB): peak = 3744.793 ; gain = 0.000 ; free physical = 2092 ; free virtual = 155352default:defaulth px? 
y

Phase %s%s
101*constraints2
4.2 2default:default2*
Post Placement Cleanup2default:defaultZ18-101h px? 
L
7Phase 4.2 Post Placement Cleanup | Checksum: 1b0c8a322
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:01:18 ; elapsed = 00:00:40 . Memory (MB): peak = 3744.793 ; gain = 0.000 ; free physical = 2092 ; free virtual = 155342default:defaulth px? 
s

Phase %s%s
101*constraints2
4.3 2default:default2$
Placer Reporting2default:defaultZ18-101h px? 


Phase %s%s
101*constraints2
4.3.1 2default:default2.
Print Estimated Congestion2default:defaultZ18-101h px? 
?
'Post-Placement Estimated Congestion %s
38*	placeflow2?
?
 ____________________________________________________
|           | Global Congestion | Short Congestion  |
| Direction | Region Size       | Region Size       |
|___________|___________________|___________________|
|      North|                1x1|                1x1|
|___________|___________________|___________________|
|      South|                1x1|                1x1|
|___________|___________________|___________________|
|       East|                1x1|                1x1|
|___________|___________________|___________________|
|       West|                1x1|                1x1|
|___________|___________________|___________________|
2default:defaultZ30-612h px? 
R
=Phase 4.3.1 Print Estimated Congestion | Checksum: 1b0c8a322
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:01:18 ; elapsed = 00:00:40 . Memory (MB): peak = 3744.793 ; gain = 0.000 ; free physical = 2092 ; free virtual = 155342default:defaulth px? 
F
1Phase 4.3 Placer Reporting | Checksum: 1b0c8a322
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:01:18 ; elapsed = 00:00:40 . Memory (MB): peak = 3744.793 ; gain = 0.000 ; free physical = 2092 ; free virtual = 155342default:defaulth px? 
z

Phase %s%s
101*constraints2
4.4 2default:default2+
Final Placement Cleanup2default:defaultZ18-101h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:00.012default:default2
3744.7932default:default2
0.0002default:default2
20922default:default2
155342default:defaultZ17-722h px? 
?

%s
*constraints2?
?Time (s): cpu = 00:01:18 ; elapsed = 00:00:40 . Memory (MB): peak = 3744.793 ; gain = 0.000 ; free physical = 2092 ; free virtual = 155342default:defaulth px? 
\
GPhase 4 Post Placement Optimization and Clean-Up | Checksum: 11e30bdfe
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:01:18 ; elapsed = 00:00:40 . Memory (MB): peak = 3744.793 ; gain = 0.000 ; free physical = 2092 ; free virtual = 155342default:defaulth px? 
=
(Ending Placer Task | Checksum: e8652c03
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:01:18 ; elapsed = 00:00:40 . Memory (MB): peak = 3744.793 ; gain = 0.000 ; free physical = 2092 ; free virtual = 155342default:defaulth px? 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
802default:default2
12default:default2
02default:default2
02default:defaultZ4-41h px? 
^
%s completed successfully
29*	vivadotcl2 
place_design2default:defaultZ4-42h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2"
place_design: 2default:default2
00:01:202default:default2
00:00:412default:default2
3744.7932default:default2
0.0002default:default2
21182default:default2
155612default:defaultZ17-722h px? 
H
&Writing timing data to binary archive.266*timingZ38-480h px? 
=
Writing XDEF routing.
211*designutilsZ20-211h px? 
J
#Writing XDEF routing logical nets.
209*designutilsZ20-209h px? 
J
#Writing XDEF routing special nets.
210*designutilsZ20-210h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2)
Write XDEF Complete: 2default:default2
00:00:022default:default2
00:00:00.552default:default2
3744.7932default:default2
0.0002default:default2
20972default:default2
155592default:defaultZ17-722h px? 
?
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2?
q/home/goossens/book-2022.1/new_book_ip/multihart_ip/z1_multihart_2h_ip.runs/impl_1/design_1_2h_wrapper_placed.dcp2default:defaultZ17-1381h px? 
n
%s4*runtcl2R
>Executing : report_io -file design_1_2h_wrapper_io_placed.rpt
2default:defaulth px? 
?
?report_io: Time (s): cpu = 00:00:00.09 ; elapsed = 00:00:00.14 . Memory (MB): peak = 3744.793 ; gain = 0.000 ; free physical = 2111 ; free virtual = 15558
*commonh px? 
?
%s4*runtcl2?
~Executing : report_utilization -file design_1_2h_wrapper_utilization_placed.rpt -pb design_1_2h_wrapper_utilization_placed.pb
2default:defaulth px? 
?
%s4*runtcl2o
[Executing : report_control_sets -verbose -file design_1_2h_wrapper_control_sets_placed.rpt
2default:defaulth px? 
?
?report_control_sets: Time (s): cpu = 00:00:00.06 ; elapsed = 00:00:00.09 . Memory (MB): peak = 3744.793 ; gain = 0.000 ; free physical = 2112 ; free virtual = 15560
*commonh px? 


End Record