set moduleName multihart_ip_Pipeline_VITIS_LOOP_189_1
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
set C_modelName {multihart_ip_Pipeline_VITIS_LOOP_189_1}
set C_modelType { void 0 }
set C_modelArgList {
	{ has_exited_V int 1 regular  }
	{ has_exited_V_1 int 1 regular  }
	{ has_exited_V_2 int 1 regular  }
	{ has_exited_V_3 int 1 regular  }
	{ has_exited_V_4 int 1 regular  }
	{ has_exited_V_5 int 1 regular  }
	{ has_exited_V_6 int 1 regular  }
	{ has_exited_V_7 int 1 regular  }
	{ f_state_fetch_pc_V_1 int 16 regular  }
	{ f_state_fetch_pc_V int 16 regular  }
	{ h_running_V_14 int 1 regular  }
	{ h_running_V_13 int 1 regular  }
	{ h_running_V_12 int 1 regular  }
	{ h_running_V_11 int 1 regular  }
	{ h_running_V_10 int 1 regular  }
	{ h_running_V_9 int 1 regular  }
	{ h_running_V_8 int 1 regular  }
	{ h_running_V int 1 regular  }
	{ f_state_fetch_pc_V_2 int 16 regular  }
	{ f_state_fetch_pc_V_3 int 16 regular  }
	{ f_state_fetch_pc_V_4 int 16 regular  }
	{ f_state_fetch_pc_V_5 int 16 regular  }
	{ f_state_fetch_pc_V_6 int 16 regular  }
	{ f_state_fetch_pc_V_7 int 16 regular  }
	{ code_ram int 32 regular {array 65536 { 1 } 1 1 }  }
	{ data_ram int 32 regular {array 65536 { 2 } 1 1 }  }
	{ nbi_V_1_out int 32 regular {pointer 1}  }
	{ nbc_V_1_out int 32 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "has_exited_V", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "has_exited_V_1", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "has_exited_V_2", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "has_exited_V_3", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "has_exited_V_4", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "has_exited_V_5", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "has_exited_V_6", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "has_exited_V_7", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "f_state_fetch_pc_V_1", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "f_state_fetch_pc_V", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "h_running_V_14", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "h_running_V_13", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "h_running_V_12", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "h_running_V_11", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "h_running_V_10", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "h_running_V_9", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "h_running_V_8", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "h_running_V", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "f_state_fetch_pc_V_2", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "f_state_fetch_pc_V_3", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "f_state_fetch_pc_V_4", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "f_state_fetch_pc_V_5", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "f_state_fetch_pc_V_6", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "f_state_fetch_pc_V_7", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "code_ram", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "data_ram", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "nbi_V_1_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "nbc_V_1_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 42
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ has_exited_V sc_in sc_lv 1 signal 0 } 
	{ has_exited_V_1 sc_in sc_lv 1 signal 1 } 
	{ has_exited_V_2 sc_in sc_lv 1 signal 2 } 
	{ has_exited_V_3 sc_in sc_lv 1 signal 3 } 
	{ has_exited_V_4 sc_in sc_lv 1 signal 4 } 
	{ has_exited_V_5 sc_in sc_lv 1 signal 5 } 
	{ has_exited_V_6 sc_in sc_lv 1 signal 6 } 
	{ has_exited_V_7 sc_in sc_lv 1 signal 7 } 
	{ f_state_fetch_pc_V_1 sc_in sc_lv 16 signal 8 } 
	{ f_state_fetch_pc_V sc_in sc_lv 16 signal 9 } 
	{ h_running_V_14 sc_in sc_lv 1 signal 10 } 
	{ h_running_V_13 sc_in sc_lv 1 signal 11 } 
	{ h_running_V_12 sc_in sc_lv 1 signal 12 } 
	{ h_running_V_11 sc_in sc_lv 1 signal 13 } 
	{ h_running_V_10 sc_in sc_lv 1 signal 14 } 
	{ h_running_V_9 sc_in sc_lv 1 signal 15 } 
	{ h_running_V_8 sc_in sc_lv 1 signal 16 } 
	{ h_running_V sc_in sc_lv 1 signal 17 } 
	{ f_state_fetch_pc_V_2 sc_in sc_lv 16 signal 18 } 
	{ f_state_fetch_pc_V_3 sc_in sc_lv 16 signal 19 } 
	{ f_state_fetch_pc_V_4 sc_in sc_lv 16 signal 20 } 
	{ f_state_fetch_pc_V_5 sc_in sc_lv 16 signal 21 } 
	{ f_state_fetch_pc_V_6 sc_in sc_lv 16 signal 22 } 
	{ f_state_fetch_pc_V_7 sc_in sc_lv 16 signal 23 } 
	{ code_ram_address0 sc_out sc_lv 16 signal 24 } 
	{ code_ram_ce0 sc_out sc_logic 1 signal 24 } 
	{ code_ram_q0 sc_in sc_lv 32 signal 24 } 
	{ data_ram_address0 sc_out sc_lv 16 signal 25 } 
	{ data_ram_ce0 sc_out sc_logic 1 signal 25 } 
	{ data_ram_we0 sc_out sc_lv 4 signal 25 } 
	{ data_ram_d0 sc_out sc_lv 32 signal 25 } 
	{ data_ram_q0 sc_in sc_lv 32 signal 25 } 
	{ nbi_V_1_out sc_out sc_lv 32 signal 26 } 
	{ nbi_V_1_out_ap_vld sc_out sc_logic 1 outvld 26 } 
	{ nbc_V_1_out sc_out sc_lv 32 signal 27 } 
	{ nbc_V_1_out_ap_vld sc_out sc_logic 1 outvld 27 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "has_exited_V", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "has_exited_V", "role": "default" }} , 
 	{ "name": "has_exited_V_1", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "has_exited_V_1", "role": "default" }} , 
 	{ "name": "has_exited_V_2", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "has_exited_V_2", "role": "default" }} , 
 	{ "name": "has_exited_V_3", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "has_exited_V_3", "role": "default" }} , 
 	{ "name": "has_exited_V_4", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "has_exited_V_4", "role": "default" }} , 
 	{ "name": "has_exited_V_5", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "has_exited_V_5", "role": "default" }} , 
 	{ "name": "has_exited_V_6", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "has_exited_V_6", "role": "default" }} , 
 	{ "name": "has_exited_V_7", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "has_exited_V_7", "role": "default" }} , 
 	{ "name": "f_state_fetch_pc_V_1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "f_state_fetch_pc_V_1", "role": "default" }} , 
 	{ "name": "f_state_fetch_pc_V", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "f_state_fetch_pc_V", "role": "default" }} , 
 	{ "name": "h_running_V_14", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "h_running_V_14", "role": "default" }} , 
 	{ "name": "h_running_V_13", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "h_running_V_13", "role": "default" }} , 
 	{ "name": "h_running_V_12", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "h_running_V_12", "role": "default" }} , 
 	{ "name": "h_running_V_11", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "h_running_V_11", "role": "default" }} , 
 	{ "name": "h_running_V_10", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "h_running_V_10", "role": "default" }} , 
 	{ "name": "h_running_V_9", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "h_running_V_9", "role": "default" }} , 
 	{ "name": "h_running_V_8", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "h_running_V_8", "role": "default" }} , 
 	{ "name": "h_running_V", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "h_running_V", "role": "default" }} , 
 	{ "name": "f_state_fetch_pc_V_2", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "f_state_fetch_pc_V_2", "role": "default" }} , 
 	{ "name": "f_state_fetch_pc_V_3", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "f_state_fetch_pc_V_3", "role": "default" }} , 
 	{ "name": "f_state_fetch_pc_V_4", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "f_state_fetch_pc_V_4", "role": "default" }} , 
 	{ "name": "f_state_fetch_pc_V_5", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "f_state_fetch_pc_V_5", "role": "default" }} , 
 	{ "name": "f_state_fetch_pc_V_6", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "f_state_fetch_pc_V_6", "role": "default" }} , 
 	{ "name": "f_state_fetch_pc_V_7", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "f_state_fetch_pc_V_7", "role": "default" }} , 
 	{ "name": "code_ram_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "code_ram", "role": "address0" }} , 
 	{ "name": "code_ram_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "code_ram", "role": "ce0" }} , 
 	{ "name": "code_ram_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "code_ram", "role": "q0" }} , 
 	{ "name": "data_ram_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "data_ram", "role": "address0" }} , 
 	{ "name": "data_ram_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_ram", "role": "ce0" }} , 
 	{ "name": "data_ram_we0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "data_ram", "role": "we0" }} , 
 	{ "name": "data_ram_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "data_ram", "role": "d0" }} , 
 	{ "name": "data_ram_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "data_ram", "role": "q0" }} , 
 	{ "name": "nbi_V_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "nbi_V_1_out", "role": "default" }} , 
 	{ "name": "nbi_V_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "nbi_V_1_out", "role": "ap_vld" }} , 
 	{ "name": "nbc_V_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "nbc_V_1_out", "role": "default" }} , 
 	{ "name": "nbc_V_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "nbc_V_1_out", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79", "80", "81", "82", "83", "84", "85", "86", "87", "88", "89", "90", "91", "92", "93", "94", "95", "96", "97", "98", "99", "100", "101", "102", "103", "104", "105", "106", "107", "108", "109", "110", "111", "112", "113", "114", "115", "116", "117"],
		"CDFG" : "multihart_ip_Pipeline_VITIS_LOOP_189_1",
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
			{"Name" : "has_exited_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "has_exited_V_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "has_exited_V_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "has_exited_V_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "has_exited_V_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "has_exited_V_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "has_exited_V_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "has_exited_V_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_state_fetch_pc_V_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_state_fetch_pc_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "h_running_V_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "h_running_V_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "h_running_V_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "h_running_V_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "h_running_V_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "h_running_V_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "h_running_V_8", "Type" : "None", "Direction" : "I"},
			{"Name" : "h_running_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_state_fetch_pc_V_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_state_fetch_pc_V_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_state_fetch_pc_V_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_state_fetch_pc_V_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_state_fetch_pc_V_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_state_fetch_pc_V_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "code_ram", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "data_ram", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "nbi_V_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "nbc_V_1_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_189_1", "PipelineType" : "NotSupport"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_83_1_1_1_U1", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_83_1_1_1_U2", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_83_16_1_1_U3", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_325_1_1_1_U4", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_325_1_1_1_U5", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_325_1_1_1_U6", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_325_1_1_1_U7", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_325_1_1_1_U8", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_325_1_1_1_U9", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_325_1_1_1_U10", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_325_1_1_1_U11", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_325_1_1_1_U12", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_325_1_1_1_U13", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_325_1_1_1_U14", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_325_1_1_1_U15", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_325_1_1_1_U16", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_325_1_1_1_U17", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_325_1_1_1_U18", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_325_1_1_1_U19", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_325_1_1_1_U20", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_325_1_1_1_U21", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_325_1_1_1_U22", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_325_1_1_1_U23", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_325_1_1_1_U24", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_325_1_1_1_U25", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_325_1_1_1_U26", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_325_1_1_1_U27", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_83_1_1_1_U28", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_325_1_1_1_U29", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_325_1_1_1_U30", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_325_1_1_1_U31", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_325_1_1_1_U32", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_325_1_1_1_U33", "Parent" : "0"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_325_1_1_1_U34", "Parent" : "0"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_325_1_1_1_U35", "Parent" : "0"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_325_1_1_1_U36", "Parent" : "0"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_83_1_1_1_U37", "Parent" : "0"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_83_1_1_1_U38", "Parent" : "0"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_83_1_1_1_U39", "Parent" : "0"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_83_1_1_1_U40", "Parent" : "0"},
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_83_32_1_1_U41", "Parent" : "0"},
	{"ID" : "42", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_83_32_1_1_U42", "Parent" : "0"},
	{"ID" : "43", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_83_3_1_1_U43", "Parent" : "0"},
	{"ID" : "44", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_83_5_1_1_U44", "Parent" : "0"},
	{"ID" : "45", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_83_7_1_1_U45", "Parent" : "0"},
	{"ID" : "46", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_83_20_1_1_U46", "Parent" : "0"},
	{"ID" : "47", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_83_1_1_1_U47", "Parent" : "0"},
	{"ID" : "48", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_83_1_1_1_U48", "Parent" : "0"},
	{"ID" : "49", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_83_16_1_1_U49", "Parent" : "0"},
	{"ID" : "50", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_83_1_1_1_U50", "Parent" : "0"},
	{"ID" : "51", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_83_3_1_1_U51", "Parent" : "0"},
	{"ID" : "52", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_83_1_1_1_U52", "Parent" : "0"},
	{"ID" : "53", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_83_1_1_1_U53", "Parent" : "0"},
	{"ID" : "54", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_83_18_1_1_U54", "Parent" : "0"},
	{"ID" : "55", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_83_3_1_1_U55", "Parent" : "0"},
	{"ID" : "56", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_83_32_1_1_U56", "Parent" : "0"},
	{"ID" : "57", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_83_1_1_1_U57", "Parent" : "0"},
	{"ID" : "58", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_83_32_1_1_U58", "Parent" : "0"},
	{"ID" : "59", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_83_16_1_1_U59", "Parent" : "0"},
	{"ID" : "60", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_83_1_1_1_U60", "Parent" : "0"},
	{"ID" : "61", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_83_1_1_1_U61", "Parent" : "0"},
	{"ID" : "62", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_83_5_1_1_U62", "Parent" : "0"},
	{"ID" : "63", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_83_5_1_1_U63", "Parent" : "0"},
	{"ID" : "64", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_83_5_1_1_U64", "Parent" : "0"},
	{"ID" : "65", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_325_32_1_1_U65", "Parent" : "0"},
	{"ID" : "66", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_325_32_1_1_U66", "Parent" : "0"},
	{"ID" : "67", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_325_32_1_1_U67", "Parent" : "0"},
	{"ID" : "68", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_325_32_1_1_U68", "Parent" : "0"},
	{"ID" : "69", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_325_32_1_1_U69", "Parent" : "0"},
	{"ID" : "70", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_325_32_1_1_U70", "Parent" : "0"},
	{"ID" : "71", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_325_32_1_1_U71", "Parent" : "0"},
	{"ID" : "72", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_325_32_1_1_U72", "Parent" : "0"},
	{"ID" : "73", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_83_32_1_1_U73", "Parent" : "0"},
	{"ID" : "74", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_83_5_1_1_U74", "Parent" : "0"},
	{"ID" : "75", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_325_32_1_1_U75", "Parent" : "0"},
	{"ID" : "76", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_325_32_1_1_U76", "Parent" : "0"},
	{"ID" : "77", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_325_32_1_1_U77", "Parent" : "0"},
	{"ID" : "78", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_325_32_1_1_U78", "Parent" : "0"},
	{"ID" : "79", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_325_32_1_1_U79", "Parent" : "0"},
	{"ID" : "80", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_325_32_1_1_U80", "Parent" : "0"},
	{"ID" : "81", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_325_32_1_1_U81", "Parent" : "0"},
	{"ID" : "82", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_325_32_1_1_U82", "Parent" : "0"},
	{"ID" : "83", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_83_32_1_1_U83", "Parent" : "0"},
	{"ID" : "84", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_83_16_1_1_U84", "Parent" : "0"},
	{"ID" : "85", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_83_3_1_1_U85", "Parent" : "0"},
	{"ID" : "86", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_83_7_1_1_U86", "Parent" : "0"},
	{"ID" : "87", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_83_3_1_1_U87", "Parent" : "0"},
	{"ID" : "88", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_83_20_1_1_U88", "Parent" : "0"},
	{"ID" : "89", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_83_1_1_1_U89", "Parent" : "0"},
	{"ID" : "90", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_83_1_1_1_U90", "Parent" : "0"},
	{"ID" : "91", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_83_1_1_1_U91", "Parent" : "0"},
	{"ID" : "92", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_83_1_1_1_U92", "Parent" : "0"},
	{"ID" : "93", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_83_1_1_1_U93", "Parent" : "0"},
	{"ID" : "94", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_83_1_1_1_U94", "Parent" : "0"},
	{"ID" : "95", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_83_1_1_1_U95", "Parent" : "0"},
	{"ID" : "96", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_83_1_1_1_U96", "Parent" : "0"},
	{"ID" : "97", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_83_16_1_1_U97", "Parent" : "0"},
	{"ID" : "98", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_83_3_1_1_U98", "Parent" : "0"},
	{"ID" : "99", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_83_1_1_1_U99", "Parent" : "0"},
	{"ID" : "100", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_83_1_1_1_U100", "Parent" : "0"},
	{"ID" : "101", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_83_1_1_1_U101", "Parent" : "0"},
	{"ID" : "102", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_83_16_1_1_U102", "Parent" : "0"},
	{"ID" : "103", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_83_1_1_1_U103", "Parent" : "0"},
	{"ID" : "104", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_83_5_1_1_U104", "Parent" : "0"},
	{"ID" : "105", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_83_1_1_1_U105", "Parent" : "0"},
	{"ID" : "106", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_83_1_1_1_U106", "Parent" : "0"},
	{"ID" : "107", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_83_1_1_1_U107", "Parent" : "0"},
	{"ID" : "108", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_83_5_1_1_U108", "Parent" : "0"},
	{"ID" : "109", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_83_1_1_1_U109", "Parent" : "0"},
	{"ID" : "110", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_83_1_1_1_U110", "Parent" : "0"},
	{"ID" : "111", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_83_32_1_1_U111", "Parent" : "0"},
	{"ID" : "112", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_83_1_1_1_U112", "Parent" : "0"},
	{"ID" : "113", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_83_5_1_1_U113", "Parent" : "0"},
	{"ID" : "114", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_83_32_1_1_U114", "Parent" : "0"},
	{"ID" : "115", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_83_1_1_1_U115", "Parent" : "0"},
	{"ID" : "116", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_83_32_1_1_U116", "Parent" : "0"},
	{"ID" : "117", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	multihart_ip_Pipeline_VITIS_LOOP_189_1 {
		has_exited_V {Type I LastRead 0 FirstWrite -1}
		has_exited_V_1 {Type I LastRead 0 FirstWrite -1}
		has_exited_V_2 {Type I LastRead 0 FirstWrite -1}
		has_exited_V_3 {Type I LastRead 0 FirstWrite -1}
		has_exited_V_4 {Type I LastRead 0 FirstWrite -1}
		has_exited_V_5 {Type I LastRead 0 FirstWrite -1}
		has_exited_V_6 {Type I LastRead 0 FirstWrite -1}
		has_exited_V_7 {Type I LastRead 0 FirstWrite -1}
		f_state_fetch_pc_V_1 {Type I LastRead 0 FirstWrite -1}
		f_state_fetch_pc_V {Type I LastRead 0 FirstWrite -1}
		h_running_V_14 {Type I LastRead 0 FirstWrite -1}
		h_running_V_13 {Type I LastRead 0 FirstWrite -1}
		h_running_V_12 {Type I LastRead 0 FirstWrite -1}
		h_running_V_11 {Type I LastRead 0 FirstWrite -1}
		h_running_V_10 {Type I LastRead 0 FirstWrite -1}
		h_running_V_9 {Type I LastRead 0 FirstWrite -1}
		h_running_V_8 {Type I LastRead 0 FirstWrite -1}
		h_running_V {Type I LastRead 0 FirstWrite -1}
		f_state_fetch_pc_V_2 {Type I LastRead 0 FirstWrite -1}
		f_state_fetch_pc_V_3 {Type I LastRead 0 FirstWrite -1}
		f_state_fetch_pc_V_4 {Type I LastRead 0 FirstWrite -1}
		f_state_fetch_pc_V_5 {Type I LastRead 0 FirstWrite -1}
		f_state_fetch_pc_V_6 {Type I LastRead 0 FirstWrite -1}
		f_state_fetch_pc_V_7 {Type I LastRead 0 FirstWrite -1}
		code_ram {Type I LastRead 0 FirstWrite -1}
		data_ram {Type IO LastRead 0 FirstWrite 0}
		nbi_V_1_out {Type O LastRead -1 FirstWrite 1}
		nbc_V_1_out {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	has_exited_V { ap_none {  { has_exited_V in_data 0 1 } } }
	has_exited_V_1 { ap_none {  { has_exited_V_1 in_data 0 1 } } }
	has_exited_V_2 { ap_none {  { has_exited_V_2 in_data 0 1 } } }
	has_exited_V_3 { ap_none {  { has_exited_V_3 in_data 0 1 } } }
	has_exited_V_4 { ap_none {  { has_exited_V_4 in_data 0 1 } } }
	has_exited_V_5 { ap_none {  { has_exited_V_5 in_data 0 1 } } }
	has_exited_V_6 { ap_none {  { has_exited_V_6 in_data 0 1 } } }
	has_exited_V_7 { ap_none {  { has_exited_V_7 in_data 0 1 } } }
	f_state_fetch_pc_V_1 { ap_none {  { f_state_fetch_pc_V_1 in_data 0 16 } } }
	f_state_fetch_pc_V { ap_none {  { f_state_fetch_pc_V in_data 0 16 } } }
	h_running_V_14 { ap_none {  { h_running_V_14 in_data 0 1 } } }
	h_running_V_13 { ap_none {  { h_running_V_13 in_data 0 1 } } }
	h_running_V_12 { ap_none {  { h_running_V_12 in_data 0 1 } } }
	h_running_V_11 { ap_none {  { h_running_V_11 in_data 0 1 } } }
	h_running_V_10 { ap_none {  { h_running_V_10 in_data 0 1 } } }
	h_running_V_9 { ap_none {  { h_running_V_9 in_data 0 1 } } }
	h_running_V_8 { ap_none {  { h_running_V_8 in_data 0 1 } } }
	h_running_V { ap_none {  { h_running_V in_data 0 1 } } }
	f_state_fetch_pc_V_2 { ap_none {  { f_state_fetch_pc_V_2 in_data 0 16 } } }
	f_state_fetch_pc_V_3 { ap_none {  { f_state_fetch_pc_V_3 in_data 0 16 } } }
	f_state_fetch_pc_V_4 { ap_none {  { f_state_fetch_pc_V_4 in_data 0 16 } } }
	f_state_fetch_pc_V_5 { ap_none {  { f_state_fetch_pc_V_5 in_data 0 16 } } }
	f_state_fetch_pc_V_6 { ap_none {  { f_state_fetch_pc_V_6 in_data 0 16 } } }
	f_state_fetch_pc_V_7 { ap_none {  { f_state_fetch_pc_V_7 in_data 0 16 } } }
	code_ram { ap_memory {  { code_ram_address0 mem_address 1 16 }  { code_ram_ce0 mem_ce 1 1 }  { code_ram_q0 in_data 0 32 } } }
	data_ram { ap_memory {  { data_ram_address0 mem_address 1 16 }  { data_ram_ce0 mem_ce 1 1 }  { data_ram_we0 mem_we 1 4 }  { data_ram_d0 mem_din 1 32 }  { data_ram_q0 in_data 0 32 } } }
	nbi_V_1_out { ap_vld {  { nbi_V_1_out out_data 1 32 }  { nbi_V_1_out_ap_vld out_vld 1 1 } } }
	nbc_V_1_out { ap_vld {  { nbc_V_1_out out_data 1 32 }  { nbc_V_1_out_ap_vld out_vld 1 1 } } }
}
