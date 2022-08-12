set moduleName fde_ip
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
set C_modelName {fde_ip}
set C_modelType { void 0 }
set C_modelArgList {
	{ start_pc int 32 regular {axi_slave 0}  }
	{ code_ram int 32 regular {axi_slave 0}  }
	{ nb_instruction int 32 regular {axi_slave 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "start_pc", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":16}, "offset_end" : {"in":23}} , 
 	{ "Name" : "code_ram", "interface" : "axi_slave", "bundle":"control","type":"ap_memory","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":262144}, "offset_end" : {"in":524287}} , 
 	{ "Name" : "nb_instruction", "interface" : "axi_slave", "bundle":"control","type":"ap_vld","bitwidth" : 32, "direction" : "WRITEONLY", "offset" : {"out":24}, "offset_end" : {"out":31}} ]}
# RTL Port declarations: 
set portNum 20
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ s_axi_control_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_AWADDR sc_in sc_lv 19 signal -1 } 
	{ s_axi_control_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_control_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_control_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_ARADDR sc_in sc_lv 19 signal -1 } 
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
	{ "name": "s_axi_control_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "control", "role": "AWADDR" },"address":[{"name":"fde_ip","role":"start","value":"0","valid_bit":"0"},{"name":"fde_ip","role":"continue","value":"0","valid_bit":"4"},{"name":"fde_ip","role":"auto_start","value":"0","valid_bit":"7"},{"name":"start_pc","role":"data","value":"16"},{"name":"code_ram","role":"data","value":"262144"}] },
	{ "name": "s_axi_control_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWVALID" } },
	{ "name": "s_axi_control_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWREADY" } },
	{ "name": "s_axi_control_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WVALID" } },
	{ "name": "s_axi_control_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WREADY" } },
	{ "name": "s_axi_control_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "WDATA" } },
	{ "name": "s_axi_control_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "control", "role": "WSTRB" } },
	{ "name": "s_axi_control_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "control", "role": "ARADDR" },"address":[{"name":"fde_ip","role":"start","value":"0","valid_bit":"0"},{"name":"fde_ip","role":"done","value":"0","valid_bit":"1"},{"name":"fde_ip","role":"idle","value":"0","valid_bit":"2"},{"name":"fde_ip","role":"ready","value":"0","valid_bit":"3"},{"name":"fde_ip","role":"auto_start","value":"0","valid_bit":"7"},{"name":"nb_instruction","role":"data","value":"24"}, {"name":"nb_instruction","role":"valid","value":"28","valid_bit":"0"}] },
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
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "3", "12"],
		"CDFG" : "fde_ip",
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
					{"ID" : "3", "SubInstance" : "grp_fde_ip_Pipeline_VITIS_LOOP_44_2_fu_233", "Port" : "code_ram", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "nb_instruction", "Type" : "Vld", "Direction" : "O"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fde_ip_Pipeline_VITIS_LOOP_41_1_fu_197", "Parent" : "0", "Child" : ["2"],
		"CDFG" : "fde_ip_Pipeline_VITIS_LOOP_41_1",
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
			{"Name" : "VITIS_LOOP_41_1", "PipelineType" : "NotSupport"}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fde_ip_Pipeline_VITIS_LOOP_41_1_fu_197.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fde_ip_Pipeline_VITIS_LOOP_44_2_fu_233", "Parent" : "0", "Child" : ["4", "5", "6", "9", "10", "11"],
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
					{"ID" : "4", "SubInstance" : "grp_fetch_fu_455", "Port" : "code_ram", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "nbi_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_44_2", "PipelineType" : "NotSupport"}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fde_ip_Pipeline_VITIS_LOOP_44_2_fu_233.grp_fetch_fu_455", "Parent" : "3",
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
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fde_ip_Pipeline_VITIS_LOOP_44_2_fu_233.decode_ret_decode_fu_462", "Parent" : "3",
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
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fde_ip_Pipeline_VITIS_LOOP_44_2_fu_233.grp_execute_fu_468", "Parent" : "3", "Child" : ["7", "8"],
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
	{"ID" : "7", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fde_ip_Pipeline_VITIS_LOOP_44_2_fu_233.grp_execute_fu_468.mux_325_32_1_1_U36", "Parent" : "6"},
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fde_ip_Pipeline_VITIS_LOOP_44_2_fu_233.grp_execute_fu_468.mux_325_32_1_1_U37", "Parent" : "6"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fde_ip_Pipeline_VITIS_LOOP_44_2_fu_233.nbi_statistic_update_fu_513", "Parent" : "3",
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
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fde_ip_Pipeline_VITIS_LOOP_44_2_fu_233.is_running_V_running_cond_update_fu_519", "Parent" : "3",
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
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fde_ip_Pipeline_VITIS_LOOP_44_2_fu_233.flow_control_loop_pipe_sequential_init_U", "Parent" : "3"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.control_s_axi_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	fde_ip {
		start_pc {Type I LastRead 2 FirstWrite -1}
		code_ram {Type I LastRead 0 FirstWrite -1}
		nb_instruction {Type O LastRead -1 FirstWrite 4}}
	fde_ip_Pipeline_VITIS_LOOP_41_1 {
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
