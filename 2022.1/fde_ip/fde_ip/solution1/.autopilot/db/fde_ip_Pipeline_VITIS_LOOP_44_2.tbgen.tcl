set moduleName fde_ip_Pipeline_VITIS_LOOP_44_2
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {fde_ip_Pipeline_VITIS_LOOP_44_2}
set C_modelType { void 0 }
set C_modelArgList {
	{ reg_file_31_reload int 32 regular  }
	{ reg_file_reload int 32 regular  }
	{ reg_file_1_reload int 32 regular  }
	{ reg_file_2_reload int 32 regular  }
	{ reg_file_3_reload int 32 regular  }
	{ reg_file_4_reload int 32 regular  }
	{ reg_file_5_reload int 32 regular  }
	{ reg_file_6_reload int 32 regular  }
	{ reg_file_7_reload int 32 regular  }
	{ reg_file_8_reload int 32 regular  }
	{ reg_file_9_reload int 32 regular  }
	{ reg_file_10_reload int 32 regular  }
	{ reg_file_11_reload int 32 regular  }
	{ reg_file_12_reload int 32 regular  }
	{ reg_file_13_reload int 32 regular  }
	{ reg_file_14_reload int 32 regular  }
	{ reg_file_15_reload int 32 regular  }
	{ reg_file_16_reload int 32 regular  }
	{ reg_file_17_reload int 32 regular  }
	{ reg_file_18_reload int 32 regular  }
	{ reg_file_19_reload int 32 regular  }
	{ reg_file_20_reload int 32 regular  }
	{ reg_file_21_reload int 32 regular  }
	{ reg_file_22_reload int 32 regular  }
	{ reg_file_23_reload int 32 regular  }
	{ reg_file_24_reload int 32 regular  }
	{ reg_file_25_reload int 32 regular  }
	{ reg_file_26_reload int 32 regular  }
	{ reg_file_27_reload int 32 regular  }
	{ reg_file_28_reload int 32 regular  }
	{ reg_file_29_reload int 32 regular  }
	{ reg_file_30_reload int 32 regular  }
	{ pc_V int 16 regular  }
	{ code_ram int 32 regular {array 65536 { 1 } 1 1 }  }
	{ nbi_out int 32 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "reg_file_31_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "reg_file_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "reg_file_1_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "reg_file_2_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "reg_file_3_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "reg_file_4_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "reg_file_5_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "reg_file_6_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "reg_file_7_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "reg_file_8_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "reg_file_9_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "reg_file_10_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "reg_file_11_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "reg_file_12_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "reg_file_13_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "reg_file_14_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "reg_file_15_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "reg_file_16_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "reg_file_17_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "reg_file_18_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "reg_file_19_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "reg_file_20_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "reg_file_21_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "reg_file_22_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "reg_file_23_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "reg_file_24_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "reg_file_25_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "reg_file_26_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "reg_file_27_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "reg_file_28_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "reg_file_29_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "reg_file_30_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "pc_V", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "code_ram", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "nbi_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 44
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ reg_file_31_reload sc_in sc_lv 32 signal 0 } 
	{ reg_file_reload sc_in sc_lv 32 signal 1 } 
	{ reg_file_1_reload sc_in sc_lv 32 signal 2 } 
	{ reg_file_2_reload sc_in sc_lv 32 signal 3 } 
	{ reg_file_3_reload sc_in sc_lv 32 signal 4 } 
	{ reg_file_4_reload sc_in sc_lv 32 signal 5 } 
	{ reg_file_5_reload sc_in sc_lv 32 signal 6 } 
	{ reg_file_6_reload sc_in sc_lv 32 signal 7 } 
	{ reg_file_7_reload sc_in sc_lv 32 signal 8 } 
	{ reg_file_8_reload sc_in sc_lv 32 signal 9 } 
	{ reg_file_9_reload sc_in sc_lv 32 signal 10 } 
	{ reg_file_10_reload sc_in sc_lv 32 signal 11 } 
	{ reg_file_11_reload sc_in sc_lv 32 signal 12 } 
	{ reg_file_12_reload sc_in sc_lv 32 signal 13 } 
	{ reg_file_13_reload sc_in sc_lv 32 signal 14 } 
	{ reg_file_14_reload sc_in sc_lv 32 signal 15 } 
	{ reg_file_15_reload sc_in sc_lv 32 signal 16 } 
	{ reg_file_16_reload sc_in sc_lv 32 signal 17 } 
	{ reg_file_17_reload sc_in sc_lv 32 signal 18 } 
	{ reg_file_18_reload sc_in sc_lv 32 signal 19 } 
	{ reg_file_19_reload sc_in sc_lv 32 signal 20 } 
	{ reg_file_20_reload sc_in sc_lv 32 signal 21 } 
	{ reg_file_21_reload sc_in sc_lv 32 signal 22 } 
	{ reg_file_22_reload sc_in sc_lv 32 signal 23 } 
	{ reg_file_23_reload sc_in sc_lv 32 signal 24 } 
	{ reg_file_24_reload sc_in sc_lv 32 signal 25 } 
	{ reg_file_25_reload sc_in sc_lv 32 signal 26 } 
	{ reg_file_26_reload sc_in sc_lv 32 signal 27 } 
	{ reg_file_27_reload sc_in sc_lv 32 signal 28 } 
	{ reg_file_28_reload sc_in sc_lv 32 signal 29 } 
	{ reg_file_29_reload sc_in sc_lv 32 signal 30 } 
	{ reg_file_30_reload sc_in sc_lv 32 signal 31 } 
	{ pc_V sc_in sc_lv 16 signal 32 } 
	{ code_ram_address0 sc_out sc_lv 16 signal 33 } 
	{ code_ram_ce0 sc_out sc_logic 1 signal 33 } 
	{ code_ram_q0 sc_in sc_lv 32 signal 33 } 
	{ nbi_out sc_out sc_lv 32 signal 34 } 
	{ nbi_out_ap_vld sc_out sc_logic 1 outvld 34 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "reg_file_31_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "reg_file_31_reload", "role": "default" }} , 
 	{ "name": "reg_file_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "reg_file_reload", "role": "default" }} , 
 	{ "name": "reg_file_1_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "reg_file_1_reload", "role": "default" }} , 
 	{ "name": "reg_file_2_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "reg_file_2_reload", "role": "default" }} , 
 	{ "name": "reg_file_3_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "reg_file_3_reload", "role": "default" }} , 
 	{ "name": "reg_file_4_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "reg_file_4_reload", "role": "default" }} , 
 	{ "name": "reg_file_5_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "reg_file_5_reload", "role": "default" }} , 
 	{ "name": "reg_file_6_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "reg_file_6_reload", "role": "default" }} , 
 	{ "name": "reg_file_7_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "reg_file_7_reload", "role": "default" }} , 
 	{ "name": "reg_file_8_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "reg_file_8_reload", "role": "default" }} , 
 	{ "name": "reg_file_9_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "reg_file_9_reload", "role": "default" }} , 
 	{ "name": "reg_file_10_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "reg_file_10_reload", "role": "default" }} , 
 	{ "name": "reg_file_11_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "reg_file_11_reload", "role": "default" }} , 
 	{ "name": "reg_file_12_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "reg_file_12_reload", "role": "default" }} , 
 	{ "name": "reg_file_13_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "reg_file_13_reload", "role": "default" }} , 
 	{ "name": "reg_file_14_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "reg_file_14_reload", "role": "default" }} , 
 	{ "name": "reg_file_15_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "reg_file_15_reload", "role": "default" }} , 
 	{ "name": "reg_file_16_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "reg_file_16_reload", "role": "default" }} , 
 	{ "name": "reg_file_17_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "reg_file_17_reload", "role": "default" }} , 
 	{ "name": "reg_file_18_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "reg_file_18_reload", "role": "default" }} , 
 	{ "name": "reg_file_19_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "reg_file_19_reload", "role": "default" }} , 
 	{ "name": "reg_file_20_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "reg_file_20_reload", "role": "default" }} , 
 	{ "name": "reg_file_21_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "reg_file_21_reload", "role": "default" }} , 
 	{ "name": "reg_file_22_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "reg_file_22_reload", "role": "default" }} , 
 	{ "name": "reg_file_23_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "reg_file_23_reload", "role": "default" }} , 
 	{ "name": "reg_file_24_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "reg_file_24_reload", "role": "default" }} , 
 	{ "name": "reg_file_25_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "reg_file_25_reload", "role": "default" }} , 
 	{ "name": "reg_file_26_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "reg_file_26_reload", "role": "default" }} , 
 	{ "name": "reg_file_27_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "reg_file_27_reload", "role": "default" }} , 
 	{ "name": "reg_file_28_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "reg_file_28_reload", "role": "default" }} , 
 	{ "name": "reg_file_29_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "reg_file_29_reload", "role": "default" }} , 
 	{ "name": "reg_file_30_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "reg_file_30_reload", "role": "default" }} , 
 	{ "name": "pc_V", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "pc_V", "role": "default" }} , 
 	{ "name": "code_ram_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "code_ram", "role": "address0" }} , 
 	{ "name": "code_ram_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "code_ram", "role": "ce0" }} , 
 	{ "name": "code_ram_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "code_ram", "role": "q0" }} , 
 	{ "name": "nbi_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "nbi_out", "role": "default" }} , 
 	{ "name": "nbi_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "nbi_out", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "6", "7", "8"],
		"CDFG" : "fde_ip_Pipeline_VITIS_LOOP_44_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "reg_file_31_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "reg_file_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "reg_file_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "reg_file_2_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "reg_file_3_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "reg_file_4_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "reg_file_5_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "reg_file_6_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "reg_file_7_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "reg_file_8_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "reg_file_9_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "reg_file_10_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "reg_file_11_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "reg_file_12_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "reg_file_13_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "reg_file_14_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "reg_file_15_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "reg_file_16_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "reg_file_17_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "reg_file_18_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "reg_file_19_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "reg_file_20_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "reg_file_21_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "reg_file_22_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "reg_file_23_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "reg_file_24_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "reg_file_25_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "reg_file_26_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "reg_file_27_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "reg_file_28_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "reg_file_29_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "reg_file_30_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "pc_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "code_ram", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_fetch_fu_455", "Port" : "code_ram", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "nbi_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_44_2", "PipelineType" : "NotSupport"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fetch_fu_455", "Parent" : "0",
		"CDFG" : "fetch",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "2",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "pc", "Type" : "None", "Direction" : "I"},
			{"Name" : "code_ram", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.decode_ret_decode_fu_462", "Parent" : "0",
		"CDFG" : "decode",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "instruction", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_execute_fu_468", "Parent" : "0", "Child" : ["4", "5"],
		"CDFG" : "execute",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "4",
		"VariableLatency" : "0", "ExactLatency" : "3", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "3",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "pc", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read4", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read5", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read6", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read7", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read8", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read9", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read10", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read11", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read12", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read13", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read14", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read15", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read16", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read17", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read18", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read19", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read20", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read21", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read22", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read23", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read24", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read25", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read26", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read27", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read28", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read29", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read30", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read31", "Type" : "None", "Direction" : "I"},
			{"Name" : "d_i_opcode", "Type" : "None", "Direction" : "I"},
			{"Name" : "d_i_rd", "Type" : "None", "Direction" : "I"},
			{"Name" : "d_i_func3", "Type" : "None", "Direction" : "I"},
			{"Name" : "d_i_rs1", "Type" : "None", "Direction" : "I"},
			{"Name" : "d_i_rs2", "Type" : "None", "Direction" : "I"},
			{"Name" : "d_i_func7", "Type" : "None", "Direction" : "I"},
			{"Name" : "d_i_type", "Type" : "None", "Direction" : "I"},
			{"Name" : "d_i_imm", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_execute_fu_468.mux_325_32_1_1_U36", "Parent" : "3"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_execute_fu_468.mux_325_32_1_1_U37", "Parent" : "3"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.nbi_statistic_update_fu_513", "Parent" : "0",
		"CDFG" : "statistic_update",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "nbi_read", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.is_running_V_running_cond_update_fu_519", "Parent" : "0",
		"CDFG" : "running_cond_update",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "instruction", "Type" : "None", "Direction" : "I"},
			{"Name" : "pc", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	fde_ip_Pipeline_VITIS_LOOP_44_2 {
		reg_file_31_reload {Type I LastRead 0 FirstWrite -1}
		reg_file_reload {Type I LastRead 0 FirstWrite -1}
		reg_file_1_reload {Type I LastRead 0 FirstWrite -1}
		reg_file_2_reload {Type I LastRead 0 FirstWrite -1}
		reg_file_3_reload {Type I LastRead 0 FirstWrite -1}
		reg_file_4_reload {Type I LastRead 0 FirstWrite -1}
		reg_file_5_reload {Type I LastRead 0 FirstWrite -1}
		reg_file_6_reload {Type I LastRead 0 FirstWrite -1}
		reg_file_7_reload {Type I LastRead 0 FirstWrite -1}
		reg_file_8_reload {Type I LastRead 0 FirstWrite -1}
		reg_file_9_reload {Type I LastRead 0 FirstWrite -1}
		reg_file_10_reload {Type I LastRead 0 FirstWrite -1}
		reg_file_11_reload {Type I LastRead 0 FirstWrite -1}
		reg_file_12_reload {Type I LastRead 0 FirstWrite -1}
		reg_file_13_reload {Type I LastRead 0 FirstWrite -1}
		reg_file_14_reload {Type I LastRead 0 FirstWrite -1}
		reg_file_15_reload {Type I LastRead 0 FirstWrite -1}
		reg_file_16_reload {Type I LastRead 0 FirstWrite -1}
		reg_file_17_reload {Type I LastRead 0 FirstWrite -1}
		reg_file_18_reload {Type I LastRead 0 FirstWrite -1}
		reg_file_19_reload {Type I LastRead 0 FirstWrite -1}
		reg_file_20_reload {Type I LastRead 0 FirstWrite -1}
		reg_file_21_reload {Type I LastRead 0 FirstWrite -1}
		reg_file_22_reload {Type I LastRead 0 FirstWrite -1}
		reg_file_23_reload {Type I LastRead 0 FirstWrite -1}
		reg_file_24_reload {Type I LastRead 0 FirstWrite -1}
		reg_file_25_reload {Type I LastRead 0 FirstWrite -1}
		reg_file_26_reload {Type I LastRead 0 FirstWrite -1}
		reg_file_27_reload {Type I LastRead 0 FirstWrite -1}
		reg_file_28_reload {Type I LastRead 0 FirstWrite -1}
		reg_file_29_reload {Type I LastRead 0 FirstWrite -1}
		reg_file_30_reload {Type I LastRead 0 FirstWrite -1}
		pc_V {Type I LastRead 0 FirstWrite -1}
		code_ram {Type I LastRead 0 FirstWrite -1}
		nbi_out {Type O LastRead -1 FirstWrite 5}}
	fetch {
		pc {Type I LastRead 0 FirstWrite -1}
		code_ram {Type I LastRead 0 FirstWrite -1}}
	decode {
		instruction {Type I LastRead 0 FirstWrite -1}}
	execute {
		pc {Type I LastRead 1 FirstWrite -1}
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		p_read2 {Type I LastRead 0 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}
		p_read4 {Type I LastRead 0 FirstWrite -1}
		p_read5 {Type I LastRead 0 FirstWrite -1}
		p_read6 {Type I LastRead 0 FirstWrite -1}
		p_read7 {Type I LastRead 0 FirstWrite -1}
		p_read8 {Type I LastRead 0 FirstWrite -1}
		p_read9 {Type I LastRead 0 FirstWrite -1}
		p_read10 {Type I LastRead 0 FirstWrite -1}
		p_read11 {Type I LastRead 0 FirstWrite -1}
		p_read12 {Type I LastRead 0 FirstWrite -1}
		p_read13 {Type I LastRead 0 FirstWrite -1}
		p_read14 {Type I LastRead 0 FirstWrite -1}
		p_read15 {Type I LastRead 0 FirstWrite -1}
		p_read16 {Type I LastRead 0 FirstWrite -1}
		p_read17 {Type I LastRead 0 FirstWrite -1}
		p_read18 {Type I LastRead 0 FirstWrite -1}
		p_read19 {Type I LastRead 0 FirstWrite -1}
		p_read20 {Type I LastRead 0 FirstWrite -1}
		p_read21 {Type I LastRead 0 FirstWrite -1}
		p_read22 {Type I LastRead 0 FirstWrite -1}
		p_read23 {Type I LastRead 0 FirstWrite -1}
		p_read24 {Type I LastRead 0 FirstWrite -1}
		p_read25 {Type I LastRead 0 FirstWrite -1}
		p_read26 {Type I LastRead 0 FirstWrite -1}
		p_read27 {Type I LastRead 0 FirstWrite -1}
		p_read28 {Type I LastRead 0 FirstWrite -1}
		p_read29 {Type I LastRead 0 FirstWrite -1}
		p_read30 {Type I LastRead 0 FirstWrite -1}
		p_read31 {Type I LastRead 0 FirstWrite -1}
		d_i_opcode {Type I LastRead 1 FirstWrite -1}
		d_i_rd {Type I LastRead 1 FirstWrite -1}
		d_i_func3 {Type I LastRead 1 FirstWrite -1}
		d_i_rs1 {Type I LastRead 0 FirstWrite -1}
		d_i_rs2 {Type I LastRead 0 FirstWrite -1}
		d_i_func7 {Type I LastRead 1 FirstWrite -1}
		d_i_type {Type I LastRead 1 FirstWrite -1}
		d_i_imm {Type I LastRead 1 FirstWrite -1}}
	statistic_update {
		nbi_read {Type I LastRead 0 FirstWrite -1}}
	running_cond_update {
		instruction {Type I LastRead 0 FirstWrite -1}
		pc {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	reg_file_31_reload { ap_none {  { reg_file_31_reload in_data 0 32 } } }
	reg_file_reload { ap_none {  { reg_file_reload in_data 0 32 } } }
	reg_file_1_reload { ap_none {  { reg_file_1_reload in_data 0 32 } } }
	reg_file_2_reload { ap_none {  { reg_file_2_reload in_data 0 32 } } }
	reg_file_3_reload { ap_none {  { reg_file_3_reload in_data 0 32 } } }
	reg_file_4_reload { ap_none {  { reg_file_4_reload in_data 0 32 } } }
	reg_file_5_reload { ap_none {  { reg_file_5_reload in_data 0 32 } } }
	reg_file_6_reload { ap_none {  { reg_file_6_reload in_data 0 32 } } }
	reg_file_7_reload { ap_none {  { reg_file_7_reload in_data 0 32 } } }
	reg_file_8_reload { ap_none {  { reg_file_8_reload in_data 0 32 } } }
	reg_file_9_reload { ap_none {  { reg_file_9_reload in_data 0 32 } } }
	reg_file_10_reload { ap_none {  { reg_file_10_reload in_data 0 32 } } }
	reg_file_11_reload { ap_none {  { reg_file_11_reload in_data 0 32 } } }
	reg_file_12_reload { ap_none {  { reg_file_12_reload in_data 0 32 } } }
	reg_file_13_reload { ap_none {  { reg_file_13_reload in_data 0 32 } } }
	reg_file_14_reload { ap_none {  { reg_file_14_reload in_data 0 32 } } }
	reg_file_15_reload { ap_none {  { reg_file_15_reload in_data 0 32 } } }
	reg_file_16_reload { ap_none {  { reg_file_16_reload in_data 0 32 } } }
	reg_file_17_reload { ap_none {  { reg_file_17_reload in_data 0 32 } } }
	reg_file_18_reload { ap_none {  { reg_file_18_reload in_data 0 32 } } }
	reg_file_19_reload { ap_none {  { reg_file_19_reload in_data 0 32 } } }
	reg_file_20_reload { ap_none {  { reg_file_20_reload in_data 0 32 } } }
	reg_file_21_reload { ap_none {  { reg_file_21_reload in_data 0 32 } } }
	reg_file_22_reload { ap_none {  { reg_file_22_reload in_data 0 32 } } }
	reg_file_23_reload { ap_none {  { reg_file_23_reload in_data 0 32 } } }
	reg_file_24_reload { ap_none {  { reg_file_24_reload in_data 0 32 } } }
	reg_file_25_reload { ap_none {  { reg_file_25_reload in_data 0 32 } } }
	reg_file_26_reload { ap_none {  { reg_file_26_reload in_data 0 32 } } }
	reg_file_27_reload { ap_none {  { reg_file_27_reload in_data 0 32 } } }
	reg_file_28_reload { ap_none {  { reg_file_28_reload in_data 0 32 } } }
	reg_file_29_reload { ap_none {  { reg_file_29_reload in_data 0 32 } } }
	reg_file_30_reload { ap_none {  { reg_file_30_reload in_data 0 32 } } }
	pc_V { ap_none {  { pc_V in_data 0 16 } } }
	code_ram { ap_memory {  { code_ram_address0 mem_address 1 16 }  { code_ram_ce0 mem_ce 1 1 }  { code_ram_q0 mem_dout 0 32 } } }
	nbi_out { ap_vld {  { nbi_out out_data 1 32 }  { nbi_out_ap_vld out_vld 1 1 } } }
}
