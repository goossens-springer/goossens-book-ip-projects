set moduleName multicycle_pipeline_ip_Pipeline_VITIS_LOOP_87_1
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
set C_modelName {multicycle_pipeline_ip_Pipeline_VITIS_LOOP_87_1}
set C_modelType { void 0 }
set C_modelArgList {
	{ is_reg_computed_V_reload int 1 regular  }
	{ is_reg_computed_V_1_reload int 1 regular  }
	{ is_reg_computed_V_2_reload int 1 regular  }
	{ is_reg_computed_V_3_reload int 1 regular  }
	{ is_reg_computed_V_4_reload int 1 regular  }
	{ is_reg_computed_V_5_reload int 1 regular  }
	{ is_reg_computed_V_6_reload int 1 regular  }
	{ is_reg_computed_V_7_reload int 1 regular  }
	{ is_reg_computed_V_8_reload int 1 regular  }
	{ is_reg_computed_V_9_reload int 1 regular  }
	{ is_reg_computed_V_10_reload int 1 regular  }
	{ is_reg_computed_V_11_reload int 1 regular  }
	{ is_reg_computed_V_12_reload int 1 regular  }
	{ is_reg_computed_V_13_reload int 1 regular  }
	{ is_reg_computed_V_14_reload int 1 regular  }
	{ is_reg_computed_V_15_reload int 1 regular  }
	{ is_reg_computed_V_16_reload int 1 regular  }
	{ is_reg_computed_V_17_reload int 1 regular  }
	{ is_reg_computed_V_18_reload int 1 regular  }
	{ is_reg_computed_V_19_reload int 1 regular  }
	{ is_reg_computed_V_20_reload int 1 regular  }
	{ is_reg_computed_V_21_reload int 1 regular  }
	{ is_reg_computed_V_22_reload int 1 regular  }
	{ is_reg_computed_V_23_reload int 1 regular  }
	{ is_reg_computed_V_24_reload int 1 regular  }
	{ is_reg_computed_V_25_reload int 1 regular  }
	{ is_reg_computed_V_26_reload int 1 regular  }
	{ is_reg_computed_V_27_reload int 1 regular  }
	{ is_reg_computed_V_28_reload int 1 regular  }
	{ is_reg_computed_V_29_reload int 1 regular  }
	{ is_reg_computed_V_30_reload int 1 regular  }
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
	{ is_reg_computed_V_31_reload int 1 regular  }
	{ f_to_f_next_pc_V int 16 regular  }
	{ code_ram int 32 regular {array 65536 { 1 } 1 1 }  }
	{ data_ram int 32 regular {array 65536 { 2 } 1 1 }  }
	{ nbi_V_1_out int 32 regular {pointer 1}  }
	{ nbc_V_1_out int 32 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "is_reg_computed_V_reload", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "is_reg_computed_V_1_reload", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "is_reg_computed_V_2_reload", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "is_reg_computed_V_3_reload", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "is_reg_computed_V_4_reload", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "is_reg_computed_V_5_reload", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "is_reg_computed_V_6_reload", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "is_reg_computed_V_7_reload", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "is_reg_computed_V_8_reload", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "is_reg_computed_V_9_reload", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "is_reg_computed_V_10_reload", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "is_reg_computed_V_11_reload", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "is_reg_computed_V_12_reload", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "is_reg_computed_V_13_reload", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "is_reg_computed_V_14_reload", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "is_reg_computed_V_15_reload", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "is_reg_computed_V_16_reload", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "is_reg_computed_V_17_reload", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "is_reg_computed_V_18_reload", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "is_reg_computed_V_19_reload", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "is_reg_computed_V_20_reload", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "is_reg_computed_V_21_reload", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "is_reg_computed_V_22_reload", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "is_reg_computed_V_23_reload", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "is_reg_computed_V_24_reload", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "is_reg_computed_V_25_reload", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "is_reg_computed_V_26_reload", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "is_reg_computed_V_27_reload", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "is_reg_computed_V_28_reload", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "is_reg_computed_V_29_reload", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "is_reg_computed_V_30_reload", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
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
 	{ "Name" : "is_reg_computed_V_31_reload", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "f_to_f_next_pc_V", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "code_ram", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "data_ram", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "nbi_V_1_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "nbc_V_1_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 83
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ is_reg_computed_V_reload sc_in sc_lv 1 signal 0 } 
	{ is_reg_computed_V_1_reload sc_in sc_lv 1 signal 1 } 
	{ is_reg_computed_V_2_reload sc_in sc_lv 1 signal 2 } 
	{ is_reg_computed_V_3_reload sc_in sc_lv 1 signal 3 } 
	{ is_reg_computed_V_4_reload sc_in sc_lv 1 signal 4 } 
	{ is_reg_computed_V_5_reload sc_in sc_lv 1 signal 5 } 
	{ is_reg_computed_V_6_reload sc_in sc_lv 1 signal 6 } 
	{ is_reg_computed_V_7_reload sc_in sc_lv 1 signal 7 } 
	{ is_reg_computed_V_8_reload sc_in sc_lv 1 signal 8 } 
	{ is_reg_computed_V_9_reload sc_in sc_lv 1 signal 9 } 
	{ is_reg_computed_V_10_reload sc_in sc_lv 1 signal 10 } 
	{ is_reg_computed_V_11_reload sc_in sc_lv 1 signal 11 } 
	{ is_reg_computed_V_12_reload sc_in sc_lv 1 signal 12 } 
	{ is_reg_computed_V_13_reload sc_in sc_lv 1 signal 13 } 
	{ is_reg_computed_V_14_reload sc_in sc_lv 1 signal 14 } 
	{ is_reg_computed_V_15_reload sc_in sc_lv 1 signal 15 } 
	{ is_reg_computed_V_16_reload sc_in sc_lv 1 signal 16 } 
	{ is_reg_computed_V_17_reload sc_in sc_lv 1 signal 17 } 
	{ is_reg_computed_V_18_reload sc_in sc_lv 1 signal 18 } 
	{ is_reg_computed_V_19_reload sc_in sc_lv 1 signal 19 } 
	{ is_reg_computed_V_20_reload sc_in sc_lv 1 signal 20 } 
	{ is_reg_computed_V_21_reload sc_in sc_lv 1 signal 21 } 
	{ is_reg_computed_V_22_reload sc_in sc_lv 1 signal 22 } 
	{ is_reg_computed_V_23_reload sc_in sc_lv 1 signal 23 } 
	{ is_reg_computed_V_24_reload sc_in sc_lv 1 signal 24 } 
	{ is_reg_computed_V_25_reload sc_in sc_lv 1 signal 25 } 
	{ is_reg_computed_V_26_reload sc_in sc_lv 1 signal 26 } 
	{ is_reg_computed_V_27_reload sc_in sc_lv 1 signal 27 } 
	{ is_reg_computed_V_28_reload sc_in sc_lv 1 signal 28 } 
	{ is_reg_computed_V_29_reload sc_in sc_lv 1 signal 29 } 
	{ is_reg_computed_V_30_reload sc_in sc_lv 1 signal 30 } 
	{ reg_file_31_reload sc_in sc_lv 32 signal 31 } 
	{ reg_file_reload sc_in sc_lv 32 signal 32 } 
	{ reg_file_1_reload sc_in sc_lv 32 signal 33 } 
	{ reg_file_2_reload sc_in sc_lv 32 signal 34 } 
	{ reg_file_3_reload sc_in sc_lv 32 signal 35 } 
	{ reg_file_4_reload sc_in sc_lv 32 signal 36 } 
	{ reg_file_5_reload sc_in sc_lv 32 signal 37 } 
	{ reg_file_6_reload sc_in sc_lv 32 signal 38 } 
	{ reg_file_7_reload sc_in sc_lv 32 signal 39 } 
	{ reg_file_8_reload sc_in sc_lv 32 signal 40 } 
	{ reg_file_9_reload sc_in sc_lv 32 signal 41 } 
	{ reg_file_10_reload sc_in sc_lv 32 signal 42 } 
	{ reg_file_11_reload sc_in sc_lv 32 signal 43 } 
	{ reg_file_12_reload sc_in sc_lv 32 signal 44 } 
	{ reg_file_13_reload sc_in sc_lv 32 signal 45 } 
	{ reg_file_14_reload sc_in sc_lv 32 signal 46 } 
	{ reg_file_15_reload sc_in sc_lv 32 signal 47 } 
	{ reg_file_16_reload sc_in sc_lv 32 signal 48 } 
	{ reg_file_17_reload sc_in sc_lv 32 signal 49 } 
	{ reg_file_18_reload sc_in sc_lv 32 signal 50 } 
	{ reg_file_19_reload sc_in sc_lv 32 signal 51 } 
	{ reg_file_20_reload sc_in sc_lv 32 signal 52 } 
	{ reg_file_21_reload sc_in sc_lv 32 signal 53 } 
	{ reg_file_22_reload sc_in sc_lv 32 signal 54 } 
	{ reg_file_23_reload sc_in sc_lv 32 signal 55 } 
	{ reg_file_24_reload sc_in sc_lv 32 signal 56 } 
	{ reg_file_25_reload sc_in sc_lv 32 signal 57 } 
	{ reg_file_26_reload sc_in sc_lv 32 signal 58 } 
	{ reg_file_27_reload sc_in sc_lv 32 signal 59 } 
	{ reg_file_28_reload sc_in sc_lv 32 signal 60 } 
	{ reg_file_29_reload sc_in sc_lv 32 signal 61 } 
	{ reg_file_30_reload sc_in sc_lv 32 signal 62 } 
	{ is_reg_computed_V_31_reload sc_in sc_lv 1 signal 63 } 
	{ f_to_f_next_pc_V sc_in sc_lv 16 signal 64 } 
	{ code_ram_address0 sc_out sc_lv 16 signal 65 } 
	{ code_ram_ce0 sc_out sc_logic 1 signal 65 } 
	{ code_ram_q0 sc_in sc_lv 32 signal 65 } 
	{ data_ram_address0 sc_out sc_lv 16 signal 66 } 
	{ data_ram_ce0 sc_out sc_logic 1 signal 66 } 
	{ data_ram_we0 sc_out sc_lv 4 signal 66 } 
	{ data_ram_d0 sc_out sc_lv 32 signal 66 } 
	{ data_ram_q0 sc_in sc_lv 32 signal 66 } 
	{ nbi_V_1_out sc_out sc_lv 32 signal 67 } 
	{ nbi_V_1_out_ap_vld sc_out sc_logic 1 outvld 67 } 
	{ nbc_V_1_out sc_out sc_lv 32 signal 68 } 
	{ nbc_V_1_out_ap_vld sc_out sc_logic 1 outvld 68 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "is_reg_computed_V_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "is_reg_computed_V_reload", "role": "default" }} , 
 	{ "name": "is_reg_computed_V_1_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "is_reg_computed_V_1_reload", "role": "default" }} , 
 	{ "name": "is_reg_computed_V_2_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "is_reg_computed_V_2_reload", "role": "default" }} , 
 	{ "name": "is_reg_computed_V_3_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "is_reg_computed_V_3_reload", "role": "default" }} , 
 	{ "name": "is_reg_computed_V_4_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "is_reg_computed_V_4_reload", "role": "default" }} , 
 	{ "name": "is_reg_computed_V_5_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "is_reg_computed_V_5_reload", "role": "default" }} , 
 	{ "name": "is_reg_computed_V_6_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "is_reg_computed_V_6_reload", "role": "default" }} , 
 	{ "name": "is_reg_computed_V_7_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "is_reg_computed_V_7_reload", "role": "default" }} , 
 	{ "name": "is_reg_computed_V_8_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "is_reg_computed_V_8_reload", "role": "default" }} , 
 	{ "name": "is_reg_computed_V_9_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "is_reg_computed_V_9_reload", "role": "default" }} , 
 	{ "name": "is_reg_computed_V_10_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "is_reg_computed_V_10_reload", "role": "default" }} , 
 	{ "name": "is_reg_computed_V_11_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "is_reg_computed_V_11_reload", "role": "default" }} , 
 	{ "name": "is_reg_computed_V_12_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "is_reg_computed_V_12_reload", "role": "default" }} , 
 	{ "name": "is_reg_computed_V_13_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "is_reg_computed_V_13_reload", "role": "default" }} , 
 	{ "name": "is_reg_computed_V_14_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "is_reg_computed_V_14_reload", "role": "default" }} , 
 	{ "name": "is_reg_computed_V_15_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "is_reg_computed_V_15_reload", "role": "default" }} , 
 	{ "name": "is_reg_computed_V_16_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "is_reg_computed_V_16_reload", "role": "default" }} , 
 	{ "name": "is_reg_computed_V_17_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "is_reg_computed_V_17_reload", "role": "default" }} , 
 	{ "name": "is_reg_computed_V_18_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "is_reg_computed_V_18_reload", "role": "default" }} , 
 	{ "name": "is_reg_computed_V_19_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "is_reg_computed_V_19_reload", "role": "default" }} , 
 	{ "name": "is_reg_computed_V_20_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "is_reg_computed_V_20_reload", "role": "default" }} , 
 	{ "name": "is_reg_computed_V_21_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "is_reg_computed_V_21_reload", "role": "default" }} , 
 	{ "name": "is_reg_computed_V_22_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "is_reg_computed_V_22_reload", "role": "default" }} , 
 	{ "name": "is_reg_computed_V_23_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "is_reg_computed_V_23_reload", "role": "default" }} , 
 	{ "name": "is_reg_computed_V_24_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "is_reg_computed_V_24_reload", "role": "default" }} , 
 	{ "name": "is_reg_computed_V_25_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "is_reg_computed_V_25_reload", "role": "default" }} , 
 	{ "name": "is_reg_computed_V_26_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "is_reg_computed_V_26_reload", "role": "default" }} , 
 	{ "name": "is_reg_computed_V_27_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "is_reg_computed_V_27_reload", "role": "default" }} , 
 	{ "name": "is_reg_computed_V_28_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "is_reg_computed_V_28_reload", "role": "default" }} , 
 	{ "name": "is_reg_computed_V_29_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "is_reg_computed_V_29_reload", "role": "default" }} , 
 	{ "name": "is_reg_computed_V_30_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "is_reg_computed_V_30_reload", "role": "default" }} , 
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
 	{ "name": "is_reg_computed_V_31_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "is_reg_computed_V_31_reload", "role": "default" }} , 
 	{ "name": "f_to_f_next_pc_V", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "f_to_f_next_pc_V", "role": "default" }} , 
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
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5"],
		"CDFG" : "multicycle_pipeline_ip_Pipeline_VITIS_LOOP_87_1",
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
			{"Name" : "is_reg_computed_V_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "is_reg_computed_V_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "is_reg_computed_V_2_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "is_reg_computed_V_3_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "is_reg_computed_V_4_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "is_reg_computed_V_5_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "is_reg_computed_V_6_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "is_reg_computed_V_7_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "is_reg_computed_V_8_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "is_reg_computed_V_9_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "is_reg_computed_V_10_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "is_reg_computed_V_11_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "is_reg_computed_V_12_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "is_reg_computed_V_13_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "is_reg_computed_V_14_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "is_reg_computed_V_15_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "is_reg_computed_V_16_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "is_reg_computed_V_17_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "is_reg_computed_V_18_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "is_reg_computed_V_19_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "is_reg_computed_V_20_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "is_reg_computed_V_21_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "is_reg_computed_V_22_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "is_reg_computed_V_23_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "is_reg_computed_V_24_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "is_reg_computed_V_25_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "is_reg_computed_V_26_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "is_reg_computed_V_27_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "is_reg_computed_V_28_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "is_reg_computed_V_29_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "is_reg_computed_V_30_reload", "Type" : "None", "Direction" : "I"},
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
			{"Name" : "is_reg_computed_V_31_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_to_f_next_pc_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "code_ram", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "data_ram", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "nbi_V_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "nbc_V_1_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_87_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage1", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage1_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_325_1_1_1_U65", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_325_1_1_1_U66", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_325_32_1_1_U67", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_325_32_1_1_U68", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	multicycle_pipeline_ip_Pipeline_VITIS_LOOP_87_1 {
		is_reg_computed_V_reload {Type I LastRead 0 FirstWrite -1}
		is_reg_computed_V_1_reload {Type I LastRead 0 FirstWrite -1}
		is_reg_computed_V_2_reload {Type I LastRead 0 FirstWrite -1}
		is_reg_computed_V_3_reload {Type I LastRead 0 FirstWrite -1}
		is_reg_computed_V_4_reload {Type I LastRead 0 FirstWrite -1}
		is_reg_computed_V_5_reload {Type I LastRead 0 FirstWrite -1}
		is_reg_computed_V_6_reload {Type I LastRead 0 FirstWrite -1}
		is_reg_computed_V_7_reload {Type I LastRead 0 FirstWrite -1}
		is_reg_computed_V_8_reload {Type I LastRead 0 FirstWrite -1}
		is_reg_computed_V_9_reload {Type I LastRead 0 FirstWrite -1}
		is_reg_computed_V_10_reload {Type I LastRead 0 FirstWrite -1}
		is_reg_computed_V_11_reload {Type I LastRead 0 FirstWrite -1}
		is_reg_computed_V_12_reload {Type I LastRead 0 FirstWrite -1}
		is_reg_computed_V_13_reload {Type I LastRead 0 FirstWrite -1}
		is_reg_computed_V_14_reload {Type I LastRead 0 FirstWrite -1}
		is_reg_computed_V_15_reload {Type I LastRead 0 FirstWrite -1}
		is_reg_computed_V_16_reload {Type I LastRead 0 FirstWrite -1}
		is_reg_computed_V_17_reload {Type I LastRead 0 FirstWrite -1}
		is_reg_computed_V_18_reload {Type I LastRead 0 FirstWrite -1}
		is_reg_computed_V_19_reload {Type I LastRead 0 FirstWrite -1}
		is_reg_computed_V_20_reload {Type I LastRead 0 FirstWrite -1}
		is_reg_computed_V_21_reload {Type I LastRead 0 FirstWrite -1}
		is_reg_computed_V_22_reload {Type I LastRead 0 FirstWrite -1}
		is_reg_computed_V_23_reload {Type I LastRead 0 FirstWrite -1}
		is_reg_computed_V_24_reload {Type I LastRead 0 FirstWrite -1}
		is_reg_computed_V_25_reload {Type I LastRead 0 FirstWrite -1}
		is_reg_computed_V_26_reload {Type I LastRead 0 FirstWrite -1}
		is_reg_computed_V_27_reload {Type I LastRead 0 FirstWrite -1}
		is_reg_computed_V_28_reload {Type I LastRead 0 FirstWrite -1}
		is_reg_computed_V_29_reload {Type I LastRead 0 FirstWrite -1}
		is_reg_computed_V_30_reload {Type I LastRead 0 FirstWrite -1}
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
		is_reg_computed_V_31_reload {Type I LastRead 0 FirstWrite -1}
		f_to_f_next_pc_V {Type I LastRead 0 FirstWrite -1}
		code_ram {Type I LastRead 1 FirstWrite -1}
		data_ram {Type IO LastRead 1 FirstWrite 1}
		nbi_V_1_out {Type O LastRead -1 FirstWrite 2}
		nbc_V_1_out {Type O LastRead -1 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	is_reg_computed_V_reload { ap_none {  { is_reg_computed_V_reload in_data 0 1 } } }
	is_reg_computed_V_1_reload { ap_none {  { is_reg_computed_V_1_reload in_data 0 1 } } }
	is_reg_computed_V_2_reload { ap_none {  { is_reg_computed_V_2_reload in_data 0 1 } } }
	is_reg_computed_V_3_reload { ap_none {  { is_reg_computed_V_3_reload in_data 0 1 } } }
	is_reg_computed_V_4_reload { ap_none {  { is_reg_computed_V_4_reload in_data 0 1 } } }
	is_reg_computed_V_5_reload { ap_none {  { is_reg_computed_V_5_reload in_data 0 1 } } }
	is_reg_computed_V_6_reload { ap_none {  { is_reg_computed_V_6_reload in_data 0 1 } } }
	is_reg_computed_V_7_reload { ap_none {  { is_reg_computed_V_7_reload in_data 0 1 } } }
	is_reg_computed_V_8_reload { ap_none {  { is_reg_computed_V_8_reload in_data 0 1 } } }
	is_reg_computed_V_9_reload { ap_none {  { is_reg_computed_V_9_reload in_data 0 1 } } }
	is_reg_computed_V_10_reload { ap_none {  { is_reg_computed_V_10_reload in_data 0 1 } } }
	is_reg_computed_V_11_reload { ap_none {  { is_reg_computed_V_11_reload in_data 0 1 } } }
	is_reg_computed_V_12_reload { ap_none {  { is_reg_computed_V_12_reload in_data 0 1 } } }
	is_reg_computed_V_13_reload { ap_none {  { is_reg_computed_V_13_reload in_data 0 1 } } }
	is_reg_computed_V_14_reload { ap_none {  { is_reg_computed_V_14_reload in_data 0 1 } } }
	is_reg_computed_V_15_reload { ap_none {  { is_reg_computed_V_15_reload in_data 0 1 } } }
	is_reg_computed_V_16_reload { ap_none {  { is_reg_computed_V_16_reload in_data 0 1 } } }
	is_reg_computed_V_17_reload { ap_none {  { is_reg_computed_V_17_reload in_data 0 1 } } }
	is_reg_computed_V_18_reload { ap_none {  { is_reg_computed_V_18_reload in_data 0 1 } } }
	is_reg_computed_V_19_reload { ap_none {  { is_reg_computed_V_19_reload in_data 0 1 } } }
	is_reg_computed_V_20_reload { ap_none {  { is_reg_computed_V_20_reload in_data 0 1 } } }
	is_reg_computed_V_21_reload { ap_none {  { is_reg_computed_V_21_reload in_data 0 1 } } }
	is_reg_computed_V_22_reload { ap_none {  { is_reg_computed_V_22_reload in_data 0 1 } } }
	is_reg_computed_V_23_reload { ap_none {  { is_reg_computed_V_23_reload in_data 0 1 } } }
	is_reg_computed_V_24_reload { ap_none {  { is_reg_computed_V_24_reload in_data 0 1 } } }
	is_reg_computed_V_25_reload { ap_none {  { is_reg_computed_V_25_reload in_data 0 1 } } }
	is_reg_computed_V_26_reload { ap_none {  { is_reg_computed_V_26_reload in_data 0 1 } } }
	is_reg_computed_V_27_reload { ap_none {  { is_reg_computed_V_27_reload in_data 0 1 } } }
	is_reg_computed_V_28_reload { ap_none {  { is_reg_computed_V_28_reload in_data 0 1 } } }
	is_reg_computed_V_29_reload { ap_none {  { is_reg_computed_V_29_reload in_data 0 1 } } }
	is_reg_computed_V_30_reload { ap_none {  { is_reg_computed_V_30_reload in_data 0 1 } } }
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
	is_reg_computed_V_31_reload { ap_none {  { is_reg_computed_V_31_reload in_data 0 1 } } }
	f_to_f_next_pc_V { ap_none {  { f_to_f_next_pc_V in_data 0 16 } } }
	code_ram { ap_memory {  { code_ram_address0 mem_address 1 16 }  { code_ram_ce0 mem_ce 1 1 }  { code_ram_q0 in_data 0 32 } } }
	data_ram { ap_memory {  { data_ram_address0 mem_address 1 16 }  { data_ram_ce0 mem_ce 1 1 }  { data_ram_we0 mem_we 1 4 }  { data_ram_d0 mem_din 1 32 }  { data_ram_q0 in_data 0 32 } } }
	nbi_V_1_out { ap_vld {  { nbi_V_1_out out_data 1 32 }  { nbi_V_1_out_ap_vld out_vld 1 1 } } }
	nbc_V_1_out { ap_vld {  { nbc_V_1_out out_data 1 32 }  { nbc_V_1_out_ap_vld out_vld 1 1 } } }
}
