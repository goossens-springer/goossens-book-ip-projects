
Q
Command: %s
53*	vivadotcl2 
route_design2default:defaultZ4-113h px? 
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
p
,Running DRC as a precondition to command %s
22*	vivadotcl2 
route_design2default:defaultZ4-22h px? 
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
V

Starting %s Task
103*constraints2
Routing2default:defaultZ18-103h px? 
}
BMultithreading enabled for route_design using a maximum of %s CPUs17*	routeflow2
82default:defaultZ35-254h px? 
p

Phase %s%s
101*constraints2
1 2default:default2#
Build RT Design2default:defaultZ18-101h px? 
C
.Phase 1 Build RT Design | Checksum: 1a53281ce
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:22 ; elapsed = 00:00:17 . Memory (MB): peak = 3715.332 ; gain = 0.000 ; free physical = 7419 ; free virtual = 145492default:defaulth px? 
v

Phase %s%s
101*constraints2
2 2default:default2)
Router Initialization2default:defaultZ18-101h px? 
{

Phase %s%s
101*constraints2
2.1 2default:default2,
Fix Topology Constraints2default:defaultZ18-101h px? 
N
9Phase 2.1 Fix Topology Constraints | Checksum: 1a53281ce
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:22 ; elapsed = 00:00:18 . Memory (MB): peak = 3715.332 ; gain = 0.000 ; free physical = 7385 ; free virtual = 145142default:defaulth px? 
t

Phase %s%s
101*constraints2
2.2 2default:default2%
Pre Route Cleanup2default:defaultZ18-101h px? 
G
2Phase 2.2 Pre Route Cleanup | Checksum: 1a53281ce
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:22 ; elapsed = 00:00:18 . Memory (MB): peak = 3715.332 ; gain = 0.000 ; free physical = 7385 ; free virtual = 145142default:defaulth px? 
p

Phase %s%s
101*constraints2
2.3 2default:default2!
Update Timing2default:defaultZ18-101h px? 
B
-Phase 2.3 Update Timing | Checksum: 988c40dc
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:26 ; elapsed = 00:00:19 . Memory (MB): peak = 3715.332 ; gain = 0.000 ; free physical = 7366 ; free virtual = 144962default:defaulth px? 
?
Intermediate Timing Summary %s164*route2J
6| WNS=0.622  | TNS=0.000  | WHS=-0.173 | THS=-17.114|
2default:defaultZ35-416h px? 
I
4Phase 2 Router Initialization | Checksum: 14f6f4af5
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:28 ; elapsed = 00:00:20 . Memory (MB): peak = 3715.332 ; gain = 0.000 ; free physical = 7363 ; free virtual = 144932default:defaulth px? 
p

Phase %s%s
101*constraints2
3 2default:default2#
Initial Routing2default:defaultZ18-101h px? 
q

Phase %s%s
101*constraints2
3.1 2default:default2"
Global Routing2default:defaultZ18-101h px? 
D
/Phase 3.1 Global Routing | Checksum: 14f6f4af5
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:28 ; elapsed = 00:00:20 . Memory (MB): peak = 3715.332 ; gain = 0.000 ; free physical = 7363 ; free virtual = 144932default:defaulth px? 
B
-Phase 3 Initial Routing | Checksum: f08199fb
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:49 ; elapsed = 00:00:23 . Memory (MB): peak = 3717.297 ; gain = 1.965 ; free physical = 7355 ; free virtual = 144852default:defaulth px? 
s

Phase %s%s
101*constraints2
4 2default:default2&
Rip-up And Reroute2default:defaultZ18-101h px? 
u

Phase %s%s
101*constraints2
4.1 2default:default2&
Global Iteration 02default:defaultZ18-101h px? 
?
Intermediate Timing Summary %s164*route2J
6| WNS=0.373  | TNS=0.000  | WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px? 
H
3Phase 4.1 Global Iteration 0 | Checksum: 1ad82a7ab
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:01:04 ; elapsed = 00:00:30 . Memory (MB): peak = 3717.297 ; gain = 1.965 ; free physical = 7359 ; free virtual = 144892default:defaulth px? 
u

Phase %s%s
101*constraints2
4.2 2default:default2&
Global Iteration 12default:defaultZ18-101h px? 
?
Intermediate Timing Summary %s164*route2J
6| WNS=0.373  | TNS=0.000  | WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px? 
H
3Phase 4.2 Global Iteration 1 | Checksum: 1a022402d
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:01:04 ; elapsed = 00:00:31 . Memory (MB): peak = 3717.297 ; gain = 1.965 ; free physical = 7359 ; free virtual = 144892default:defaulth px? 
F
1Phase 4 Rip-up And Reroute | Checksum: 1a022402d
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:01:04 ; elapsed = 00:00:31 . Memory (MB): peak = 3717.297 ; gain = 1.965 ; free physical = 7359 ; free virtual = 144892default:defaulth px? 
|

Phase %s%s
101*constraints2
5 2default:default2/
Delay and Skew Optimization2default:defaultZ18-101h px? 
p

Phase %s%s
101*constraints2
5.1 2default:default2!
Delay CleanUp2default:defaultZ18-101h px? 
C
.Phase 5.1 Delay CleanUp | Checksum: 1a022402d
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:01:04 ; elapsed = 00:00:31 . Memory (MB): peak = 3717.297 ; gain = 1.965 ; free physical = 7359 ; free virtual = 144892default:defaulth px? 
z

Phase %s%s
101*constraints2
5.2 2default:default2+
Clock Skew Optimization2default:defaultZ18-101h px? 
M
8Phase 5.2 Clock Skew Optimization | Checksum: 1a022402d
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:01:04 ; elapsed = 00:00:31 . Memory (MB): peak = 3717.297 ; gain = 1.965 ; free physical = 7359 ; free virtual = 144892default:defaulth px? 
O
:Phase 5 Delay and Skew Optimization | Checksum: 1a022402d
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:01:04 ; elapsed = 00:00:31 . Memory (MB): peak = 3717.297 ; gain = 1.965 ; free physical = 7359 ; free virtual = 144892default:defaulth px? 
n

Phase %s%s
101*constraints2
6 2default:default2!
Post Hold Fix2default:defaultZ18-101h px? 
p

Phase %s%s
101*constraints2
6.1 2default:default2!
Hold Fix Iter2default:defaultZ18-101h px? 
r

Phase %s%s
101*constraints2
6.1.1 2default:default2!
Update Timing2default:defaultZ18-101h px? 
E
0Phase 6.1.1 Update Timing | Checksum: 214fb79ee
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:01:06 ; elapsed = 00:00:31 . Memory (MB): peak = 3717.297 ; gain = 1.965 ; free physical = 7359 ; free virtual = 144892default:defaulth px? 
?
Intermediate Timing Summary %s164*route2J
6| WNS=0.387  | TNS=0.000  | WHS=0.043  | THS=0.000  |
2default:defaultZ35-416h px? 
C
.Phase 6.1 Hold Fix Iter | Checksum: 1f28b0f18
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:01:06 ; elapsed = 00:00:31 . Memory (MB): peak = 3717.297 ; gain = 1.965 ; free physical = 7359 ; free virtual = 144892default:defaulth px? 
A
,Phase 6 Post Hold Fix | Checksum: 1f28b0f18
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:01:06 ; elapsed = 00:00:31 . Memory (MB): peak = 3717.297 ; gain = 1.965 ; free physical = 7359 ; free virtual = 144892default:defaulth px? 
o

Phase %s%s
101*constraints2
7 2default:default2"
Route finalize2default:defaultZ18-101h px? 
B
-Phase 7 Route finalize | Checksum: 23b2a81eb
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:01:06 ; elapsed = 00:00:31 . Memory (MB): peak = 3717.297 ; gain = 1.965 ; free physical = 7359 ; free virtual = 144892default:defaulth px? 
v

Phase %s%s
101*constraints2
8 2default:default2)
Verifying routed nets2default:defaultZ18-101h px? 
I
4Phase 8 Verifying routed nets | Checksum: 23b2a81eb
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:01:06 ; elapsed = 00:00:31 . Memory (MB): peak = 3717.297 ; gain = 1.965 ; free physical = 7359 ; free virtual = 144892default:defaulth px? 
r

Phase %s%s
101*constraints2
9 2default:default2%
Depositing Routes2default:defaultZ18-101h px? 
E
0Phase 9 Depositing Routes | Checksum: 205c96f4c
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:01:07 ; elapsed = 00:00:32 . Memory (MB): peak = 3733.305 ; gain = 17.973 ; free physical = 7358 ; free virtual = 144882default:defaulth px? 
t

Phase %s%s
101*constraints2
10 2default:default2&
Post Router Timing2default:defaultZ18-101h px? 
?
Estimated Timing Summary %s
57*route2J
6| WNS=0.387  | TNS=0.000  | WHS=0.043  | THS=0.000  |
2default:defaultZ35-57h px? 
?
?The final timing numbers are based on the router estimated timing analysis. For a complete and accurate timing signoff, please run report_timing_summary.
127*routeZ35-327h px? 
G
2Phase 10 Post Router Timing | Checksum: 205c96f4c
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:01:07 ; elapsed = 00:00:32 . Memory (MB): peak = 3733.305 ; gain = 17.973 ; free physical = 7358 ; free virtual = 144882default:defaulth px? 
@
Router Completed Successfully
2*	routeflowZ35-16h px? 
?

%s
*constraints2?
?Time (s): cpu = 00:01:07 ; elapsed = 00:00:32 . Memory (MB): peak = 3733.305 ; gain = 17.973 ; free physical = 7398 ; free virtual = 145272default:defaulth px? 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
1012default:default2
12default:default2
02default:default2
02default:defaultZ4-41h px? 
^
%s completed successfully
29*	vivadotcl2 
route_design2default:defaultZ4-42h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2"
route_design: 2default:default2
00:01:122default:default2
00:00:332default:default2
3733.3052default:default2
17.9732default:default2
73982default:default2
145272default:defaultZ17-722h px? 
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
00:00:012default:default2

00:00:00.52default:default2
3733.3052default:default2
0.0002default:default2
73772default:default2
145232default:defaultZ17-722h px? 
?
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2
k/home/goossens/book-2022.1/new_book_ip/rv32i_npp_ip/z1_rv32i_npp_ip.runs/impl_1/design_1_wrapper_routed.dcp2default:defaultZ17-1381h px? 
?
%s4*runtcl2?
?Executing : report_drc -file design_1_wrapper_drc_routed.rpt -pb design_1_wrapper_drc_routed.pb -rpx design_1_wrapper_drc_routed.rpx
2default:defaulth px? 
?
Command: %s
53*	vivadotcl2?
xreport_drc -file design_1_wrapper_drc_routed.rpt -pb design_1_wrapper_drc_routed.pb -rpx design_1_wrapper_drc_routed.rpx2default:defaultZ4-113h px? 
>
IP Catalog is up to date.1232*coregenZ19-1839h px? 
P
Running DRC with %s threads
24*drc2
82default:defaultZ23-27h px? 
?
#The results of DRC are in file %s.
586*	vivadotcl2?
o/home/goossens/book-2022.1/new_book_ip/rv32i_npp_ip/z1_rv32i_npp_ip.runs/impl_1/design_1_wrapper_drc_routed.rpto/home/goossens/book-2022.1/new_book_ip/rv32i_npp_ip/z1_rv32i_npp_ip.runs/impl_1/design_1_wrapper_drc_routed.rpt2default:default8Z2-168h px? 
\
%s completed successfully
29*	vivadotcl2

report_drc2default:defaultZ4-42h px? 
?
%s4*runtcl2?
?Executing : report_methodology -file design_1_wrapper_methodology_drc_routed.rpt -pb design_1_wrapper_methodology_drc_routed.pb -rpx design_1_wrapper_methodology_drc_routed.rpx
2default:defaulth px? 
?
Command: %s
53*	vivadotcl2?
?report_methodology -file design_1_wrapper_methodology_drc_routed.rpt -pb design_1_wrapper_methodology_drc_routed.pb -rpx design_1_wrapper_methodology_drc_routed.rpx2default:defaultZ4-113h px? 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px? 
Y
$Running Methodology with %s threads
74*drc2
82default:defaultZ23-133h px? 
?
2The results of Report Methodology are in file %s.
609*	vivadotcl2?
{/home/goossens/book-2022.1/new_book_ip/rv32i_npp_ip/z1_rv32i_npp_ip.runs/impl_1/design_1_wrapper_methodology_drc_routed.rpt{/home/goossens/book-2022.1/new_book_ip/rv32i_npp_ip/z1_rv32i_npp_ip.runs/impl_1/design_1_wrapper_methodology_drc_routed.rpt2default:default8Z2-1520h px? 
d
%s completed successfully
29*	vivadotcl2&
report_methodology2default:defaultZ4-42h px? 
?
%s4*runtcl2?
?Executing : report_power -file design_1_wrapper_power_routed.rpt -pb design_1_wrapper_power_summary_routed.pb -rpx design_1_wrapper_power_routed.rpx
2default:defaulth px? 
?
Command: %s
53*	vivadotcl2?
?report_power -file design_1_wrapper_power_routed.rpt -pb design_1_wrapper_power_summary_routed.pb -rpx design_1_wrapper_power_routed.rpx2default:defaultZ4-113h px? 
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
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
1132default:default2
12default:default2
02default:default2
02default:defaultZ4-41h px? 
^
%s completed successfully
29*	vivadotcl2 
report_power2default:defaultZ4-42h px? 
?
%s4*runtcl2?
mExecuting : report_route_status -file design_1_wrapper_route_status.rpt -pb design_1_wrapper_route_status.pb
2default:defaulth px? 
?
%s4*runtcl2?
?Executing : report_timing_summary -max_paths 10 -report_unconstrained -file design_1_wrapper_timing_summary_routed.rpt -pb design_1_wrapper_timing_summary_routed.pb -rpx design_1_wrapper_timing_summary_routed.rpx -warn_on_violation 
2default:defaulth px? 
r
UpdateTimingParams:%s.
91*timing29
% Speed grade: -1, Delay Type: min_max2default:defaultZ38-91h px? 
|
CMultithreading enabled for timing update using a maximum of %s CPUs155*timing2
82default:defaultZ38-191h px? 
?
%s4*runtcl2m
YExecuting : report_incremental_reuse -file design_1_wrapper_incremental_reuse_routed.rpt
2default:defaulth px? 
g
BIncremental flow is disabled. No incremental reuse Info to report.423*	vivadotclZ4-1062h px? 
?
%s4*runtcl2m
YExecuting : report_clock_utilization -file design_1_wrapper_clock_utilization_routed.rpt
2default:defaulth px? 
?
%s4*runtcl2?
?Executing : report_bus_skew -warn_on_violation -file design_1_wrapper_bus_skew_routed.rpt -pb design_1_wrapper_bus_skew_routed.pb -rpx design_1_wrapper_bus_skew_routed.rpx
2default:defaulth px? 
r
UpdateTimingParams:%s.
91*timing29
% Speed grade: -1, Delay Type: min_max2default:defaultZ38-91h px? 
|
CMultithreading enabled for timing update using a maximum of %s CPUs155*timing2
82default:defaultZ38-191h px? 


End Record