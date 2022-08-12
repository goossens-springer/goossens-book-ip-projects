set moduleName rv32i_pp_ip
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {rv32i_pp_ip}
set C_modelType { void 0 }
set C_modelArgList {
	{ start_pc int 32 regular {axi_slave 0}  }
	{ code_ram int 32 regular {axi_slave 0}  }
	{ data_ram int 32 regular {axi_slave 2}  }
	{ nb_instruction int 32 regular {axi_slave 1}  }
	{ nb_cycle int 32 regular {axi_slave 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "start_pc", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":16}, "offset_end" : {"in":23}} , 
 	{ "Name" : "code_ram", "interface" : "axi_slave", "bundle":"control","type":"ap_memory","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":262144}, "offset_end" : {"in":524287}} , 
 	{ "Name" : "data_ram", "interface" : "axi_slave", "bundle":"control","type":"ap_memory","bitwidth" : 32, "direction" : "READWRITE", "offset" : {"in":524288, "out":524288}, "offset_end" : {"in":786431, "out":786431}} , 
 	{ "Name" : "nb_instruction", "interface" : "axi_slave", "bundle":"control","type":"ap_vld","bitwidth" : 32, "direction" : "WRITEONLY", "offset" : {"out":24}, "offset_end" : {"out":31}} , 
 	{ "Name" : "nb_cycle", "interface" : "axi_slave", "bundle":"control","type":"ap_vld","bitwidth" : 32, "direction" : "WRITEONLY", "offset" : {"out":40}, "offset_end" : {"out":47}} ]}
# RTL Port declarations: 
set portNum 20
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ s_axi_control_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_AWADDR sc_in sc_lv 20 signal -1 } 
	{ s_axi_control_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_control_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_control_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_ARADDR sc_in sc_lv 20 signal -1 } 
	{ s_axi_control_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_control_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_control_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_BRESP sc_out sc_lv 2 signal -1 } 
	{ interrupt sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_control_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":20, "type": "signal", "bundle":{"name": "control", "role": "AWADDR" },"address":[{"name":"rv32i_pp_ip","role":"start","value":"0","valid_bit":"0"},{"name":"rv32i_pp_ip","role":"continue","value":"0","valid_bit":"4"},{"name":"rv32i_pp_ip","role":"auto_start","value":"0","valid_bit":"7"},{"name":"start_pc","role":"data","value":"16"},{"name":"code_ram","role":"data","value":"262144"},{"name":"data_ram","role":"data","value":"524288"}] },
	{ "name": "s_axi_control_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWVALID" } },
	{ "name": "s_axi_control_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWREADY" } },
	{ "name": "s_axi_control_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WVALID" } },
	{ "name": "s_axi_control_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WREADY" } },
	{ "name": "s_axi_control_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "WDATA" } },
	{ "name": "s_axi_control_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "control", "role": "WSTRB" } },
	{ "name": "s_axi_control_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":20, "type": "signal", "bundle":{"name": "control", "role": "ARADDR" },"address":[{"name":"rv32i_pp_ip","role":"start","value":"0","valid_bit":"0"},{"name":"rv32i_pp_ip","role":"done","value":"0","valid_bit":"1"},{"name":"rv32i_pp_ip","role":"idle","value":"0","valid_bit":"2"},{"name":"rv32i_pp_ip","role":"ready","value":"0","valid_bit":"3"},{"name":"rv32i_pp_ip","role":"auto_start","value":"0","valid_bit":"7"},{"name":"nb_instruction","role":"data","value":"24"}, {"name":"nb_instruction","role":"valid","value":"28","valid_bit":"0"},{"name":"nb_cycle","role":"data","value":"40"}, {"name":"nb_cycle","role":"valid","value":"44","valid_bit":"0"},{"name":"data_ram","role":"data","value":"524288"}] },
	{ "name": "s_axi_control_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARVALID" } },
	{ "name": "s_axi_control_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARREADY" } },
	{ "name": "s_axi_control_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RVALID" } },
	{ "name": "s_axi_control_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RREADY" } },
	{ "name": "s_axi_control_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "RDATA" } },
	{ "name": "s_axi_control_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "RRESP" } },
	{ "name": "s_axi_control_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BVALID" } },
	{ "name": "s_axi_control_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BREADY" } },
	{ "name": "s_axi_control_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "BRESP" } },
	{ "name": "interrupt", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "interrupt" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "3", "7"],
		"CDFG" : "rv32i_pp_ip",
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
			{"Name" : "start_pc", "Type" : "None", "Direction" : "I"},
			{"Name" : "code_ram", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_rv32i_pp_ip_Pipeline_VITIS_LOOP_58_2_fu_254", "Port" : "code_ram", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "data_ram", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_rv32i_pp_ip_Pipeline_VITIS_LOOP_58_2_fu_254", "Port" : "data_ram", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "nb_instruction", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "nb_cycle", "Type" : "Vld", "Direction" : "O"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_rv32i_pp_ip_Pipeline_VITIS_LOOP_50_1_fu_218", "Parent" : "0", "Child" : ["2"],
		"CDFG" : "rv32i_pp_ip_Pipeline_VITIS_LOOP_50_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "34", "EstimateLatencyMax" : "34",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "reg_file_31_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "reg_file_30_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "reg_file_29_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "reg_file_28_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "reg_file_27_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "reg_file_26_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "reg_file_25_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "reg_file_24_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "reg_file_23_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "reg_file_22_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "reg_file_21_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "reg_file_20_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "reg_file_19_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "reg_file_18_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "reg_file_17_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "reg_file_16_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "reg_file_15_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "reg_file_14_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "reg_file_13_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "reg_file_12_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "reg_file_11_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "reg_file_10_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "reg_file_9_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "reg_file_8_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "reg_file_7_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "reg_file_6_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "reg_file_5_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "reg_file_4_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "reg_file_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "reg_file_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "reg_file_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "reg_file_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_50_1", "PipelineType" : "NotSupport"}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_rv32i_pp_ip_Pipeline_VITIS_LOOP_50_1_fu_218.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_rv32i_pp_ip_Pipeline_VITIS_LOOP_58_2_fu_254", "Parent" : "0", "Child" : ["4", "5", "6"],
		"CDFG" : "rv32i_pp_ip_Pipeline_VITIS_LOOP_58_2",
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
			{"Name" : "reg_file_15_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "reg_file_14_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "reg_file_13_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "reg_file_12_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "reg_file_11_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "reg_file_10_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "reg_file_9_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "reg_file_8_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "reg_file_7_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "reg_file_6_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "reg_file_5_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "reg_file_4_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "reg_file_3_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "reg_file_2_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "reg_file_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "reg_file_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "reg_file_31_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "e_to_f_target_pc_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "code_ram", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "data_ram", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "nbc_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "nbi_1_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_58_2", "PipelineType" : "NotSupport"}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_rv32i_pp_ip_Pipeline_VITIS_LOOP_58_2_fu_254.mux_325_32_1_1_U33", "Parent" : "3"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_rv32i_pp_ip_Pipeline_VITIS_LOOP_58_2_fu_254.mux_325_32_1_1_U34", "Parent" : "3"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_rv32i_pp_ip_Pipeline_VITIS_LOOP_58_2_fu_254.flow_control_loop_pipe_sequential_init_U", "Parent" : "3"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.control_s_axi_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	rv32i_pp_ip {
		start_pc {Type I LastRead 1 FirstWrite -1}
		code_ram {Type I LastRead 0 FirstWrite -1}
		data_ram {Type IO LastRead 0 FirstWrite 1}
		nb_instruction {Type O LastRead -1 FirstWrite 4}
		nb_cycle {Type O LastRead -1 FirstWrite 4}}
	rv32i_pp_ip_Pipeline_VITIS_LOOP_50_1 {
		reg_file_31_out {Type O LastRead -1 FirstWrite 0}
		reg_file_30_out {Type O LastRead -1 FirstWrite 0}
		reg_file_29_out {Type O LastRead -1 FirstWrite 0}
		reg_file_28_out {Type O LastRead -1 FirstWrite 0}
		reg_file_27_out {Type O LastRead -1 FirstWrite 0}
		reg_file_26_out {Type O LastRead -1 FirstWrite 0}
		reg_file_25_out {Type O LastRead -1 FirstWrite 0}
		reg_file_24_out {Type O LastRead -1 FirstWrite 0}
		reg_file_23_out {Type O LastRead -1 FirstWrite 0}
		reg_file_22_out {Type O LastRead -1 FirstWrite 0}
		reg_file_21_out {Type O LastRead -1 FirstWrite 0}
		reg_file_20_out {Type O LastRead -1 FirstWrite 0}
		reg_file_19_out {Type O LastRead -1 FirstWrite 0}
		reg_file_18_out {Type O LastRead -1 FirstWrite 0}
		reg_file_17_out {Type O LastRead -1 FirstWrite 0}
		reg_file_16_out {Type O LastRead -1 FirstWrite 0}
		reg_file_15_out {Type O LastRead -1 FirstWrite 0}
		reg_file_14_out {Type O LastRead -1 FirstWrite 0}
		reg_file_13_out {Type O LastRead -1 FirstWrite 0}
		reg_file_12_out {Type O LastRead -1 FirstWrite 0}
		reg_file_11_out {Type O LastRead -1 FirstWrite 0}
		reg_file_10_out {Type O LastRead -1 FirstWrite 0}
		reg_file_9_out {Type O LastRead -1 FirstWrite 0}
		reg_file_8_out {Type O LastRead -1 FirstWrite 0}
		reg_file_7_out {Type O LastRead -1 FirstWrite 0}
		reg_file_6_out {Type O LastRead -1 FirstWrite 0}
		reg_file_5_out {Type O LastRead -1 FirstWrite 0}
		reg_file_4_out {Type O LastRead -1 FirstWrite 0}
		reg_file_3_out {Type O LastRead -1 FirstWrite 0}
		reg_file_2_out {Type O LastRead -1 FirstWrite 0}
		reg_file_1_out {Type O LastRead -1 FirstWrite 0}
		reg_file_out {Type O LastRead -1 FirstWrite 0}}
	rv32i_pp_ip_Pipeline_VITIS_LOOP_58_2 {
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
		reg_file_15_reload {Type I LastRead 0 FirstWrite -1}
		reg_file_14_reload {Type I LastRead 0 FirstWrite -1}
		reg_file_13_reload {Type I LastRead 0 FirstWrite -1}
		reg_file_12_reload {Type I LastRead 0 FirstWrite -1}
		reg_file_11_reload {Type I LastRead 0 FirstWrite -1}
		reg_file_10_reload {Type I LastRead 0 FirstWrite -1}
		reg_file_9_reload {Type I LastRead 0 FirstWrite -1}
		reg_file_8_reload {Type I LastRead 0 FirstWrite -1}
		reg_file_7_reload {Type I LastRead 0 FirstWrite -1}
		reg_file_6_reload {Type I LastRead 0 FirstWrite -1}
		reg_file_5_reload {Type I LastRead 0 FirstWrite -1}
		reg_file_4_reload {Type I LastRead 0 FirstWrite -1}
		reg_file_3_reload {Type I LastRead 0 FirstWrite -1}
		reg_file_2_reload {Type I LastRead 0 FirstWrite -1}
		reg_file_1_reload {Type I LastRead 0 FirstWrite -1}
		reg_file_reload {Type I LastRead 0 FirstWrite -1}
		reg_file_31_reload {Type I LastRead 0 FirstWrite -1}
		e_to_f_target_pc_V {Type I LastRead 0 FirstWrite -1}
		code_ram {Type I LastRead 0 FirstWrite -1}
		data_ram {Type IO LastRead 0 FirstWrite 1}
		nbc_out {Type O LastRead -1 FirstWrite 2}
		nbi_1_out {Type O LastRead -1 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
}

set maxi_interface_dict [dict create]

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
