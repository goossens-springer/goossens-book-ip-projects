
O
Command: %s
53*	vivadotcl2

opt_design2default:defaultZ4-113h px? 
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
n
,Running DRC as a precondition to command %s
22*	vivadotcl2

opt_design2default:defaultZ4-22h px? 
R

Starting %s Task
103*constraints2
DRC2default:defaultZ18-103h px? 
P
Running DRC with %s threads
24*drc2
82default:defaultZ23-27h px? 
U
DRC finished with %s
272*project2
0 Errors2default:defaultZ1-461h px? 
d
BPlease refer to the DRC report (report_drc) for more information.
274*projectZ1-462h px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:00.98 ; elapsed = 00:00:00.63 . Memory (MB): peak = 3070.969 ; gain = 0.000 ; free physical = 8442 ; free virtual = 184512default:defaulth px? 
g

Starting %s Task
103*constraints2,
Cache Timing Information2default:defaultZ18-103h px? 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px? 
P
;Ending Cache Timing Information Task | Checksum: 11058d959
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:06 ; elapsed = 00:00:06 . Memory (MB): peak = 3070.969 ; gain = 0.000 ; free physical = 8036 ; free virtual = 180682default:defaulth px? 
a

Starting %s Task
103*constraints2&
Logic Optimization2default:defaultZ18-103h px? 
i

Phase %s%s
101*constraints2
1 2default:default2
Retarget2default:defaultZ18-101h px? 
?
VPulled Inverter %s into driver instance %s, which resulted in an inversion of %s pins
597*opt2?
udesign_1_i/simple_pipeline_ip_0/inst/grp_simple_pipeline_ip_Pipeline_VITIS_LOOP_47_2_fu_239/result_23_reg_6702[0]_i_1	udesign_1_i/simple_pipeline_ip_0/inst/grp_simple_pipeline_ip_Pipeline_VITIS_LOOP_47_2_fu_239/result_23_reg_6702[0]_i_12default:default2?
udesign_1_i/simple_pipeline_ip_0/inst/grp_simple_pipeline_ip_Pipeline_VITIS_LOOP_47_2_fu_239/result_23_reg_6702[0]_i_2	udesign_1_i/simple_pipeline_ip_0/inst/grp_simple_pipeline_ip_Pipeline_VITIS_LOOP_47_2_fu_239/result_23_reg_6702[0]_i_22default:default2
62default:default8Z31-1287h px? 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px? 
K
Retargeted %s cell(s).
49*opt2
02default:defaultZ31-49h px? 
;
&Phase 1 Retarget | Checksum: c58d2d59
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:00.61 ; elapsed = 00:00:00.28 . Memory (MB): peak = 3311.840 ; gain = 0.000 ; free physical = 7794 ; free virtual = 178242default:defaulth px? 
?
.Phase %s created %s cells and removed %s cells267*opt2
Retarget2default:default2
42default:default2
302default:defaultZ31-389h px? 
u

Phase %s%s
101*constraints2
2 2default:default2(
Constant propagation2default:defaultZ18-101h px? 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px? 
G
2Phase 2 Constant propagation | Checksum: c29e3713
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:00.67 ; elapsed = 00:00:00.34 . Memory (MB): peak = 3311.840 ; gain = 0.000 ; free physical = 7794 ; free virtual = 178242default:defaulth px? 
?
.Phase %s created %s cells and removed %s cells267*opt2(
Constant propagation2default:default2
02default:default2
82default:defaultZ31-389h px? 
f

Phase %s%s
101*constraints2
3 2default:default2
Sweep2default:defaultZ18-101h px? 
9
$Phase 3 Sweep | Checksum: 15f2733ff
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:00.87 ; elapsed = 00:00:00.53 . Memory (MB): peak = 3311.840 ; gain = 0.000 ; free physical = 7794 ; free virtual = 178242default:defaulth px? 
?
.Phase %s created %s cells and removed %s cells267*opt2
Sweep2default:default2
02default:default2
1012default:defaultZ31-389h px? 
r

Phase %s%s
101*constraints2
4 2default:default2%
BUFG optimization2default:defaultZ18-101h px? 
E
0Phase 4 BUFG optimization | Checksum: 15f2733ff
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:00.96 ; elapsed = 00:00:00.59 . Memory (MB): peak = 3343.855 ; gain = 32.016 ; free physical = 7794 ; free virtual = 178242default:defaulth px? 
?
EPhase %s created %s cells of which %s are BUFGs and removed %s cells.395*opt2%
BUFG optimization2default:default2
02default:default2
02default:default2
02default:defaultZ31-662h px? 
|

Phase %s%s
101*constraints2
5 2default:default2/
Shift Register Optimization2default:defaultZ18-101h px? 
?
dSRL Remap converted %s SRLs to %s registers and converted %s registers of register chains to %s SRLs546*opt2
02default:default2
02default:default2
02default:default2
02default:defaultZ31-1064h px? 
O
:Phase 5 Shift Register Optimization | Checksum: 15f2733ff
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:00.97 ; elapsed = 00:00:00.6 . Memory (MB): peak = 3343.855 ; gain = 32.016 ; free physical = 7794 ; free virtual = 178242default:defaulth px? 
?
.Phase %s created %s cells and removed %s cells267*opt2/
Shift Register Optimization2default:default2
02default:default2
02default:defaultZ31-389h px? 
x

Phase %s%s
101*constraints2
6 2default:default2+
Post Processing Netlist2default:defaultZ18-101h px? 
K
6Phase 6 Post Processing Netlist | Checksum: 15f2733ff
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:00.99 ; elapsed = 00:00:00.62 . Memory (MB): peak = 3343.855 ; gain = 32.016 ; free physical = 7794 ; free virtual = 178242default:defaulth px? 
?
.Phase %s created %s cells and removed %s cells267*opt2+
Post Processing Netlist2default:default2
02default:default2
02default:defaultZ31-389h px? 
/
Opt_design Change Summary
*commonh px? 
/
=========================
*commonh px? 


*commonh px? 


*commonh px? 
?
z-------------------------------------------------------------------------------------------------------------------------
*commonh px? 
?
?|  Phase                        |  #Cells created  |  #Cells Removed  |  #Constrained objects preventing optimizations  |
-------------------------------------------------------------------------------------------------------------------------
*commonh px? 
?
?|  Retarget                     |               4  |              30  |                                              0  |
|  Constant propagation         |               0  |               8  |                                              0  |
|  Sweep                        |               0  |             101  |                                              0  |
|  BUFG optimization            |               0  |               0  |                                              0  |
|  Shift Register Optimization  |               0  |               0  |                                              0  |
|  Post Processing Netlist      |               0  |               0  |                                              0  |
-------------------------------------------------------------------------------------------------------------------------
*commonh px? 


*commonh px? 


*commonh px? 
a

Starting %s Task
103*constraints2&
Connectivity Check2default:defaultZ18-103h px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:00.02 ; elapsed = 00:00:00.01 . Memory (MB): peak = 3343.855 ; gain = 0.000 ; free physical = 7793 ; free virtual = 178242default:defaulth px? 
J
5Ending Logic Optimization Task | Checksum: 188f4da4f
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:01 ; elapsed = 00:00:00.73 . Memory (MB): peak = 3343.855 ; gain = 32.016 ; free physical = 7793 ; free virtual = 178242default:defaulth px? 
a

Starting %s Task
103*constraints2&
Power Optimization2default:defaultZ18-103h px? 
s
7Will skip clock gating for clocks with period < %s ns.
114*pwropt2
2.002default:defaultZ34-132h px? 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px? 
K
,Running Vector-less Activity Propagation...
51*powerZ33-51h px? 
P
3
Finished Running Vector-less Activity Propagation
1*powerZ33-1h px? 
=
Applying IDT optimizations ...
9*pwroptZ34-9h px? 
?
Applying ODC optimizations ...
10*pwroptZ34-10h px? 


*pwropth px? 
e

Starting %s Task
103*constraints2*
PowerOpt Patch Enables2default:defaultZ18-103h px? 
?
?WRITE_MODE attribute of %s BRAM(s) out of a total of %s has been updated to save power.
    Run report_power_opt to get a complete listing of the BRAMs updated.
129*pwropt2
02default:default2
1282default:defaultZ34-162h px? 
d
+Structural ODC has moved %s WE to EN ports
155*pwropt2
02default:defaultZ34-201h px? 
?
CNumber of BRAM Ports augmented: %s newly gated: %s Total Ports: %s
65*pwropt2
982default:default2
02default:default2
2562default:defaultZ34-65h px? 
i
1Number of Flops added for Enable Generation: %s

23*pwropt2
672default:defaultZ34-23h px? 
N
9Ending PowerOpt Patch Enables Task | Checksum: 18aef81aa
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:00.38 ; elapsed = 00:00:00.38 . Memory (MB): peak = 3717.801 ; gain = 0.000 ; free physical = 7740 ; free virtual = 177792default:defaulth px? 
J
5Ending Power Optimization Task | Checksum: 18aef81aa
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:10 ; elapsed = 00:00:09 . Memory (MB): peak = 3717.801 ; gain = 373.945 ; free physical = 7756 ; free virtual = 177952default:defaulth px? 
\

Starting %s Task
103*constraints2!
Final Cleanup2default:defaultZ18-103h px? 
a

Starting %s Task
103*constraints2&
Logic Optimization2default:defaultZ18-103h px? 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px? 
J
5Ending Logic Optimization Task | Checksum: 14de6a64e
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:01 ; elapsed = 00:00:00.47 . Memory (MB): peak = 3717.801 ; gain = 0.000 ; free physical = 7659 ; free virtual = 177532default:defaulth px? 
E
0Ending Final Cleanup Task | Checksum: 14de6a64e
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:03 ; elapsed = 00:00:03 . Memory (MB): peak = 3717.801 ; gain = 0.000 ; free physical = 7649 ; free virtual = 177482default:defaulth px? 
b

Starting %s Task
103*constraints2'
Netlist Obfuscation2default:defaultZ18-103h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
3717.8012default:default2
0.0002default:default2
76492default:default2
177482default:defaultZ17-722h px? 
K
6Ending Netlist Obfuscation Task | Checksum: 14de6a64e
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:00 ; elapsed = 00:00:00 . Memory (MB): peak = 3717.801 ; gain = 0.000 ; free physical = 7657 ; free virtual = 177502default:defaulth px? 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
382default:default2
12default:default2
02default:default2
02default:defaultZ4-41h px? 
\
%s completed successfully
29*	vivadotcl2

opt_design2default:defaultZ4-42h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2 
opt_design: 2default:default2
00:00:232default:default2
00:00:202default:default2
3717.8012default:default2
646.8322default:default2
76592default:default2
177492default:defaultZ17-722h px? 
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
00:00:00.282default:default2
00:00:00.062default:default2
3717.8012default:default2
0.0002default:default2
76402default:default2
177382default:defaultZ17-722h px? 
?
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2?
?/home/goossens/goossens-springer-book/2022.1/book_experiments/simple_pipeline_ip/z1_simple_pipeline_ip.runs/impl_1/design_1_wrapper_opt.dcp2default:defaultZ17-1381h px? 
?
%s4*runtcl2?
?Executing : report_drc -file design_1_wrapper_drc_opted.rpt -pb design_1_wrapper_drc_opted.pb -rpx design_1_wrapper_drc_opted.rpx
2default:defaulth px? 
?
Command: %s
53*	vivadotcl2?
ureport_drc -file design_1_wrapper_drc_opted.rpt -pb design_1_wrapper_drc_opted.pb -rpx design_1_wrapper_drc_opted.rpx2default:defaultZ4-113h px? 
>
IP Catalog is up to date.1232*coregenZ19-1839h px? 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px? 
P
Running DRC with %s threads
24*drc2
82default:defaultZ23-27h px? 
?
#The results of DRC are in file %s.
586*	vivadotcl2?
?/home/goossens/goossens-springer-book/2022.1/book_experiments/simple_pipeline_ip/z1_simple_pipeline_ip.runs/impl_1/design_1_wrapper_drc_opted.rpt?/home/goossens/goossens-springer-book/2022.1/book_experiments/simple_pipeline_ip/z1_simple_pipeline_ip.runs/impl_1/design_1_wrapper_drc_opted.rpt2default:default8Z2-168h px? 
\
%s completed successfully
29*	vivadotcl2

report_drc2default:defaultZ4-42h px? 


End Record