
set TopModule "multicycle_pipeline_ip"
set ClockPeriod 10
set ClockList ap_clk
set HasVivadoClockPeriod 0
set CombLogicFlag 0
set PipelineFlag 0
set DataflowTaskPipelineFlag 1
set TrivialPipelineFlag 0
set noPortSwitchingFlag 1
set FloatingPointFlag 0
set FftOrFirFlag 0
set NbRWValue 0
set intNbAccess 0
set NewDSPMapping 1
set HasDSPModule 0
set ResetLevelFlag 0
set ResetStyle control
set ResetSyncFlag 1
set ResetRegisterFlag 0
set ResetVariableFlag 0
set ResetRegisterNum 0
set FsmEncStyle onehot
set MaxFanout 0
set RtlPrefix {}
set RtlSubPrefix multicycle_pipeline_ip_
set ExtraCCFlags {}
set ExtraCLdFlags {}
set SynCheckOptions {}
set PresynOptions {}
set PreprocOptions {}
set SchedOptions {}
set BindOptions {}
set RtlGenOptions {}
set RtlWriterOptions {}
set CbcGenFlag {}
set CasGenFlag {}
set CasMonitorFlag {}
set AutoSimOptions {}
set ExportMCPathFlag 0
set SCTraceFileName mytrace
set SCTraceFileFormat vcd
set SCTraceOption all
set TargetInfo xc7z020:-clg400:-1
set SourceFiles {sc {} c {../../../../wb.cpp ../../../../type.cpp ../../../../print.cpp ../../../../new_cycle.cpp ../../../../multicycle_pipeline_ip.cpp ../../../../mem_access.cpp ../../../../mem.cpp ../../../../issue.cpp ../../../../immediate.cpp ../../../../fetch.cpp ../../../../execute.cpp ../../../../emulate.cpp ../../../../disassemble.cpp ../../../../decode.cpp ../../../../compute.cpp}}
set SourceFlags {sc {} c {{} {} {} {} {} {} {} {} {} {} {} {} {} {} {}}}
set DirectiveFile {}
set TBFiles {verilog ../../../../testbench_seq_multicore_multicycle_ip.cpp bc ../../../../testbench_seq_multicore_multicycle_ip.cpp sc ../../../../testbench_seq_multicore_multicycle_ip.cpp vhdl ../../../../testbench_seq_multicore_multicycle_ip.cpp c {} cas ../../../../testbench_seq_multicore_multicycle_ip.cpp}
set SpecLanguage C
set TVInFiles {bc {} c {} sc {} cas {} vhdl {} verilog {}}
set TVOutFiles {bc {} c {} sc {} cas {} vhdl {} verilog {}}
set TBTops {verilog {} bc {} sc {} vhdl {} c {} cas {}}
set TBInstNames {verilog {} bc {} sc {} vhdl {} c {} cas {}}
set XDCFiles {}
set ExtraGlobalOptions {"area_timing" 1 "clock_gate" 1 "impl_flow" map "power_gate" 0}
set TBTVFileNotFound ../../../../../../../../bgoossens/goossens-book-ip-projects/2024.1/multicore_multicycle_2c_ip/testbench_seq_multicore_multicycle_ip.cpp
set AppFile {}
set ApsFile hls.aps
set AvePath ../../.
set DefaultPlatform DefaultPlatform
set multiClockList {}
set SCPortClockMap {}
set intNbAccess 0
set PlatformFiles {{DefaultPlatform {xilinx/zynq/zynq}}}
set HPFPO 0
