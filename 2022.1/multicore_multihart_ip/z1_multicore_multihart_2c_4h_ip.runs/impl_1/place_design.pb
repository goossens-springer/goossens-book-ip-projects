
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
00:00:00.012default:default2
00:00:00.012default:default2
4276.9022default:default2
0.0002default:default2
106612default:default2
172732default:defaultZ17-722h px? 
[
FPhase 1.1 Placer Initialization Netlist Sorting | Checksum: 130c2dec2
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:00.02 ; elapsed = 00:00:00.05 . Memory (MB): peak = 4276.902 ; gain = 0.000 ; free physical = 10661 ; free virtual = 172732default:defaulth px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:00.012default:default2
00:00:00.012default:default2
4276.9022default:default2
0.0002default:default2
106612default:default2
172722default:defaultZ17-722h px? 
?

Phase %s%s
101*constraints2
1.2 2default:default2F
2IO Placement/ Clock Placement/ Build Placer Device2default:defaultZ18-101h px? 
g
RPhase 1.2 IO Placement/ Clock Placement/ Build Placer Device | Checksum: 8e623b65
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:05 ; elapsed = 00:00:02 . Memory (MB): peak = 4276.902 ; gain = 0.000 ; free physical = 10715 ; free virtual = 173272default:defaulth px? 
}

Phase %s%s
101*constraints2
1.3 2default:default2.
Build Placer Netlist Model2default:defaultZ18-101h px? 
P
;Phase 1.3 Build Placer Netlist Model | Checksum: 131bf76be
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:21 ; elapsed = 00:00:08 . Memory (MB): peak = 4276.902 ; gain = 0.000 ; free physical = 10656 ; free virtual = 172772default:defaulth px? 
z

Phase %s%s
101*constraints2
1.4 2default:default2+
Constrain Clocks/Macros2default:defaultZ18-101h px? 
M
8Phase 1.4 Constrain Clocks/Macros | Checksum: 131bf76be
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:22 ; elapsed = 00:00:08 . Memory (MB): peak = 4276.902 ; gain = 0.000 ; free physical = 10656 ; free virtual = 172772default:defaulth px? 
I
4Phase 1 Placer Initialization | Checksum: 131bf76be
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:22 ; elapsed = 00:00:08 . Memory (MB): peak = 4276.902 ; gain = 0.000 ; free physical = 10656 ; free virtual = 172772default:defaulth px? 
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
-Phase 2.1 Floorplanning | Checksum: ca111cb2
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:32 ; elapsed = 00:00:10 . Memory (MB): peak = 4276.902 ; gain = 0.000 ; free physical = 10590 ; free virtual = 172032default:defaulth px? 
?

Phase %s%s
101*constraints2
2.2 2default:default25
!Update Timing before SLR Path Opt2default:defaultZ18-101h px? 
W
BPhase 2.2 Update Timing before SLR Path Opt | Checksum: 12450760e
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:39 ; elapsed = 00:00:12 . Memory (MB): peak = 4276.902 ; gain = 0.000 ; free physical = 10593 ; free virtual = 172062default:defaulth px? 
?

Phase %s%s
101*constraints2
2.3 2default:default24
 Post-Processing in Floorplanning2default:defaultZ18-101h px? 
V
APhase 2.3 Post-Processing in Floorplanning | Checksum: 12450760e
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:39 ; elapsed = 00:00:12 . Memory (MB): peak = 4276.902 ; gain = 0.000 ; free physical = 10593 ; free virtual = 172062default:defaulth px? 
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
553*physynth2
7212default:default2
11342default:defaultZ32-1035h px? 
?
YBreak lutnm for timing: one critical %s, two critical %s, total %s, new lutff created %s
561*physynth2
1732default:default2
5482default:default2
7212default:default2
82default:defaultZ32-1044h px? 
?
^End %s Pass. Optimized %s %s. Breaked %s %s, combined %s existing %s and moved %s existing %s
576*physynth2
12default:default2
11822default:default2 
nets or LUTs2default:default2
7212default:default2
LUTs2default:default2
4612default:default2
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
?
=Pass %s. Identified %s candidate %s for fanout optimization.
76*physynth2
12default:default2
12default:default2
net2default:defaultZ32-76h px? 
?
'Processed net %s. Replicated %s times.
81*physynth2?
8design_1_2c_4h_i/rst_ps7_0_100M/U0/peripheral_aresetn[0]8design_1_2c_4h_i/rst_ps7_0_100M/U0/peripheral_aresetn[0]2default:default2
92default:default8Z32-81h px? 
?
$Optimized %s %s. Created %s new %s.
216*physynth2
12default:default2
net2default:default2
92default:default2
	instances2default:defaultZ32-232h px? 
?
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
12default:default2
12default:default2
net or cell2default:default2
92default:default2
cells2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:defaultZ32-775h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:00.182default:default2

00:00:00.22default:default2
4276.9022default:default2
0.0002default:default2
105502default:default2
171642default:defaultZ17-722h px? 
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
00:00:00.012default:default2
4276.9022default:default2
0.0002default:default2
105502default:default2
171642default:defaultZ17-722h px? 
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
00:00:00.012default:default2
00:00:002default:default2
4276.9022default:default2
0.0002default:default2
105582default:default2
171712default:defaultZ17-722h px? 
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
?
?|  LUT Combining                                    |          721  |            461  |                  1182  |           0  |           1  |  00:00:01  |
|  Retime                                           |            0  |              0  |                     0  |           0  |           1  |  00:00:00  |
|  Very High Fanout                                 |            0  |              0  |                     0  |           0  |           1  |  00:00:00  |
|  Fanout                                           |            9  |              0  |                     1  |           0  |           1  |  00:00:00  |
|  DSP Register                                     |            0  |              0  |                     0  |           0  |           1  |  00:00:00  |
|  Shift Register to Pipeline                       |            0  |              0  |                     0  |           0  |           1  |  00:00:00  |
|  Shift Register                                   |            0  |              0  |                     0  |           0  |           1  |  00:00:00  |
|  BRAM Register                                    |            0  |              0  |                     0  |           0  |           1  |  00:00:00  |
|  URAM Register                                    |            0  |              0  |                     0  |           0  |           1  |  00:00:00  |
|  Dynamic/Static Region Interface Net Replication  |            0  |              0  |                     0  |           0  |           1  |  00:00:00  |
|  Total                                            |          730  |            461  |                  1183  |           0  |          10  |  00:00:01  |
-----------------------------------------------------------------------------------------------------------------------------------------------------------
*commonh px? 


*commonh px? 


*commonh px? 
T
?Phase 2.4.1 Physical Synthesis In Placer | Checksum: 22e9e2736
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:02:34 ; elapsed = 00:00:45 . Memory (MB): peak = 4276.902 ; gain = 0.000 ; free physical = 10557 ; free virtual = 171712default:defaulth px? 
K
6Phase 2.4 Global Placement Core | Checksum: 26ff5461a
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:02:48 ; elapsed = 00:00:50 . Memory (MB): peak = 4276.902 ; gain = 0.000 ; free physical = 10552 ; free virtual = 171652default:defaulth px? 
D
/Phase 2 Global Placement | Checksum: 26ff5461a
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:02:48 ; elapsed = 00:00:50 . Memory (MB): peak = 4276.902 ; gain = 0.000 ; free physical = 10580 ; free virtual = 171932default:defaulth px? 
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
;Phase 3.1 Commit Multi Column Macros | Checksum: 2708dd027
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:02:57 ; elapsed = 00:00:52 . Memory (MB): peak = 4276.902 ; gain = 0.000 ; free physical = 10586 ; free virtual = 172002default:defaulth px? 


Phase %s%s
101*constraints2
3.2 2default:default20
Commit Most Macros & LUTRAMs2default:defaultZ18-101h px? 
R
=Phase 3.2 Commit Most Macros & LUTRAMs | Checksum: 135f0f433
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:03:11 ; elapsed = 00:00:55 . Memory (MB): peak = 4276.902 ; gain = 0.000 ; free physical = 10580 ; free virtual = 171942default:defaulth px? 
y

Phase %s%s
101*constraints2
3.3 2default:default2*
Area Swap Optimization2default:defaultZ18-101h px? 
L
7Phase 3.3 Area Swap Optimization | Checksum: 224f63214
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:03:13 ; elapsed = 00:00:56 . Memory (MB): peak = 4276.902 ; gain = 0.000 ; free physical = 10580 ; free virtual = 171942default:defaulth px? 
?

Phase %s%s
101*constraints2
3.4 2default:default22
Pipeline Register Optimization2default:defaultZ18-101h px? 
T
?Phase 3.4 Pipeline Register Optimization | Checksum: 1dbeb850b
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:03:13 ; elapsed = 00:00:56 . Memory (MB): peak = 4276.902 ; gain = 0.000 ; free physical = 10580 ; free virtual = 171942default:defaulth px? 
t

Phase %s%s
101*constraints2
3.5 2default:default2%
Fast Optimization2default:defaultZ18-101h px? 
G
2Phase 3.5 Fast Optimization | Checksum: 21abeab89
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:03:40 ; elapsed = 00:01:09 . Memory (MB): peak = 4276.902 ; gain = 0.000 ; free physical = 10563 ; free virtual = 171762default:defaulth px? 


Phase %s%s
101*constraints2
3.6 2default:default20
Small Shape Detail Placement2default:defaultZ18-101h px? 
R
=Phase 3.6 Small Shape Detail Placement | Checksum: 24a8cbd5b
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:04:06 ; elapsed = 00:01:32 . Memory (MB): peak = 4276.902 ; gain = 0.000 ; free physical = 10528 ; free virtual = 171422default:defaulth px? 
u

Phase %s%s
101*constraints2
3.7 2default:default2&
Re-assign LUT pins2default:defaultZ18-101h px? 
H
3Phase 3.7 Re-assign LUT pins | Checksum: 269a20fa3
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:04:08 ; elapsed = 00:01:34 . Memory (MB): peak = 4276.902 ; gain = 0.000 ; free physical = 10530 ; free virtual = 171442default:defaulth px? 
?

Phase %s%s
101*constraints2
3.8 2default:default22
Pipeline Register Optimization2default:defaultZ18-101h px? 
T
?Phase 3.8 Pipeline Register Optimization | Checksum: 1c93d852d
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:04:08 ; elapsed = 00:01:34 . Memory (MB): peak = 4276.902 ; gain = 0.000 ; free physical = 10530 ; free virtual = 171442default:defaulth px? 
t

Phase %s%s
101*constraints2
3.9 2default:default2%
Fast Optimization2default:defaultZ18-101h px? 
G
2Phase 3.9 Fast Optimization | Checksum: 1bcffba65
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:04:39 ; elapsed = 00:01:46 . Memory (MB): peak = 4276.902 ; gain = 0.000 ; free physical = 10469 ; free virtual = 170902default:defaulth px? 
D
/Phase 3 Detail Placement | Checksum: 1bcffba65
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:04:39 ; elapsed = 00:01:46 . Memory (MB): peak = 4276.902 ; gain = 0.000 ; free physical = 10469 ; free virtual = 170902default:defaulth px? 
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
U
@Post Placement Optimization Initialization | Checksum: cfdb2bdf
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
 2default:default2
-11.7052default:default2
-202475.3922default:defaultZ32-619h px? 
U
@Phase 1 Physical Synthesis Initialization | Checksum: 152fe4044
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:04 ; elapsed = 00:00:00.79 . Memory (MB): peak = 4276.902 ; gain = 0.000 ; free physical = 10497 ; free virtual = 171182default:defaulth px? 
?
PProcessed net %s, BUFG insertion was skipped due to placement/routing conflicts.32*	placeflow2w
cdesign_1_2c_4h_i/multihart_ip_0/inst/gmem_m_axi_U/bus_write/wreq_throttle/req_fifo/U_fifo_srl/SR[0]2default:defaultZ46-33h px? 
?
PProcessed net %s, BUFG insertion was skipped due to placement/routing conflicts.32*	placeflow2w
cdesign_1_2c_4h_i/multihart_ip_1/inst/gmem_m_axi_U/bus_write/wreq_throttle/req_fifo/U_fifo_srl/SR[0]2default:defaultZ46-33h px? 
?
?BUFG insertion identified %s candidate nets. Inserted BUFG: %s, Replicated BUFG Driver: %s, Skipped due to Placement/Routing Conflicts: %s, Skipped due to Timing Degradation: %s, Skipped due to Illegal Netlist: %s.43*	placeflow2
22default:default2
02default:default2
02default:default2
22default:default2
02default:default2
02default:defaultZ46-56h px? 
J
5Ending Physical Synthesis Task | Checksum: 13808e5e8
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:05 ; elapsed = 00:00:01 . Memory (MB): peak = 4276.902 ; gain = 0.000 ; free physical = 10494 ; free virtual = 171152default:defaulth px? 
G
2Phase 4.1.1.1 BUFG Insertion | Checksum: cfdb2bdf
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:05:04 ; elapsed = 00:01:53 . Memory (MB): peak = 4276.902 ; gain = 0.000 ; free physical = 10494 ; free virtual = 171152default:defaulth px? 
?

Phase %s%s
101*constraints2
4.1.1.2 2default:default26
"Post Placement Timing Optimization2default:defaultZ18-101h px? 
?
hPost Placement Timing Summary WNS=%s. For the most accurate timing information please run report_timing.610*place2
-10.1542default:defaultZ30-746h px? 
\
GPhase 4.1.1.2 Post Placement Timing Optimization | Checksum: 1f5c464cf
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:06:02 ; elapsed = 00:02:18 . Memory (MB): peak = 4276.902 ; gain = 0.000 ; free physical = 10474 ; free virtual = 170972default:defaulth px? 
?

%s
*constraints2?
?Time (s): cpu = 00:06:02 ; elapsed = 00:02:18 . Memory (MB): peak = 4276.902 ; gain = 0.000 ; free physical = 10474 ; free virtual = 170972default:defaulth px? 
N
9Phase 4.1 Post Commit Optimization | Checksum: 1f5c464cf
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:06:02 ; elapsed = 00:02:18 . Memory (MB): peak = 4276.902 ; gain = 0.000 ; free physical = 10474 ; free virtual = 170972default:defaulth px? 
y

Phase %s%s
101*constraints2
4.2 2default:default2*
Post Placement Cleanup2default:defaultZ18-101h px? 
L
7Phase 4.2 Post Placement Cleanup | Checksum: 1f5c464cf
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:06:03 ; elapsed = 00:02:19 . Memory (MB): peak = 4276.902 ; gain = 0.000 ; free physical = 10474 ; free virtual = 170972default:defaulth px? 
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
|      North|                4x4|                8x8|
|___________|___________________|___________________|
|      South|                4x4|                8x8|
|___________|___________________|___________________|
|       East|                8x8|                8x8|
|___________|___________________|___________________|
|       West|                4x4|                4x4|
|___________|___________________|___________________|
2default:defaultZ30-612h px? 
R
=Phase 4.3.1 Print Estimated Congestion | Checksum: 1f5c464cf
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:06:03 ; elapsed = 00:02:19 . Memory (MB): peak = 4276.902 ; gain = 0.000 ; free physical = 10474 ; free virtual = 170972default:defaulth px? 
F
1Phase 4.3 Placer Reporting | Checksum: 1f5c464cf
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:06:03 ; elapsed = 00:02:19 . Memory (MB): peak = 4276.902 ; gain = 0.000 ; free physical = 10474 ; free virtual = 170972default:defaulth px? 
z

Phase %s%s
101*constraints2
4.4 2default:default2+
Final Placement Cleanup2default:defaultZ18-101h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:00.012default:default2
00:00:00.012default:default2
4276.9022default:default2
0.0002default:default2
104762default:default2
170992default:defaultZ17-722h px? 
?

%s
*constraints2?
?Time (s): cpu = 00:06:03 ; elapsed = 00:02:19 . Memory (MB): peak = 4276.902 ; gain = 0.000 ; free physical = 10476 ; free virtual = 170992default:defaulth px? 
\
GPhase 4 Post Placement Optimization and Clean-Up | Checksum: 263800634
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:06:03 ; elapsed = 00:02:19 . Memory (MB): peak = 4276.902 ; gain = 0.000 ; free physical = 10476 ; free virtual = 170992default:defaulth px? 
>
)Ending Placer Task | Checksum: 16c7440c7
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:06:04 ; elapsed = 00:02:20 . Memory (MB): peak = 4276.902 ; gain = 0.000 ; free physical = 10476 ; free virtual = 170992default:defaulth px? 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
1052default:default2
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
00:06:062default:default2
00:02:212default:default2
4276.9022default:default2
0.0002default:default2
105522default:default2
171752default:defaultZ17-722h px? 
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
00:00:072default:default2
00:00:022default:default2
4276.9022default:default2
0.0002default:default2
104432default:default2
171532default:defaultZ17-722h px? 
?
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2?
?/home/goossens/book-2022.1/new_book_ip/multicore_multihart_ip/z1_multicore_multihart_2c_4h_ip.runs/impl_1/design_1_2c_4h_wrapper_placed.dcp2default:defaultZ17-1381h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2&
write_checkpoint: 2default:default2
00:00:132default:default2
00:00:062default:default2
4276.9022default:default2
0.0002default:default2
105022default:default2
171442default:defaultZ17-722h px? 
q
%s4*runtcl2U
AExecuting : report_io -file design_1_2c_4h_wrapper_io_placed.rpt
2default:defaulth px? 
?
?report_io: Time (s): cpu = 00:00:00.1 ; elapsed = 00:00:00.17 . Memory (MB): peak = 4276.902 ; gain = 0.000 ; free physical = 10495 ; free virtual = 17137
*commonh px? 
?
%s4*runtcl2?
?Executing : report_utilization -file design_1_2c_4h_wrapper_utilization_placed.rpt -pb design_1_2c_4h_wrapper_utilization_placed.pb
2default:defaulth px? 
?
%s4*runtcl2r
^Executing : report_control_sets -verbose -file design_1_2c_4h_wrapper_control_sets_placed.rpt
2default:defaulth px? 
?
?report_control_sets: Time (s): cpu = 00:00:00.14 ; elapsed = 00:00:00.2 . Memory (MB): peak = 4276.902 ; gain = 0.000 ; free physical = 10505 ; free virtual = 17147
*commonh px? 


End Record