set moduleName rv32i_npp_ip_Pipeline_VITIS_LOOP_42_1
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
set C_modelName {rv32i_npp_ip_Pipeline_VITIS_LOOP_42_1}
set C_modelType { void 0 }
set C_modelArgList {
	{ reg_file_31_out int 32 regular {pointer 1}  }
	{ reg_file_30_out int 32 regular {pointer 1}  }
	{ reg_file_29_out int 32 regular {pointer 1}  }
	{ reg_file_28_out int 32 regular {pointer 1}  }
	{ reg_file_27_out int 32 regular {pointer 1}  }
	{ reg_file_26_out int 32 regular {pointer 1}  }
	{ reg_file_25_out int 32 regular {pointer 1}  }
	{ reg_file_24_out int 32 regular {pointer 1}  }
	{ reg_file_23_out int 32 regular {pointer 1}  }
	{ reg_file_22_out int 32 regular {pointer 1}  }
	{ reg_file_21_out int 32 regular {pointer 1}  }
	{ reg_file_20_out int 32 regular {pointer 1}  }
	{ reg_file_19_out int 32 regular {pointer 1}  }
	{ reg_file_18_out int 32 regular {pointer 1}  }
	{ reg_file_17_out int 32 regular {pointer 1}  }
	{ reg_file_16_out int 32 regular {pointer 1}  }
	{ reg_file_15_out int 32 regular {pointer 1}  }
	{ reg_file_14_out int 32 regular {pointer 1}  }
	{ reg_file_13_out int 32 regular {pointer 1}  }
	{ reg_file_12_out int 32 regular {pointer 1}  }
	{ reg_file_11_out int 32 regular {pointer 1}  }
	{ reg_file_10_out int 32 regular {pointer 1}  }
	{ reg_file_9_out int 32 regular {pointer 1}  }
	{ reg_file_8_out int 32 regular {pointer 1}  }
	{ reg_file_7_out int 32 regular {pointer 1}  }
	{ reg_file_6_out int 32 regular {pointer 1}  }
	{ reg_file_5_out int 32 regular {pointer 1}  }
	{ reg_file_4_out int 32 regular {pointer 1}  }
	{ reg_file_3_out int 32 regular {pointer 1}  }
	{ reg_file_2_out int 32 regular {pointer 1}  }
	{ reg_file_1_out int 32 regular {pointer 1}  }
	{ reg_file_out int 32 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "reg_file_31_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "reg_file_30_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "reg_file_29_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "reg_file_28_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "reg_file_27_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "reg_file_26_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "reg_file_25_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "reg_file_24_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "reg_file_23_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "reg_file_22_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "reg_file_21_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "reg_file_20_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "reg_file_19_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "reg_file_18_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "reg_file_17_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "reg_file_16_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "reg_file_15_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "reg_file_14_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "reg_file_13_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "reg_file_12_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "reg_file_11_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "reg_file_10_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "reg_file_9_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "reg_file_8_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "reg_file_7_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "reg_file_6_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "reg_file_5_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "reg_file_4_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "reg_file_3_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "reg_file_2_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "reg_file_1_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "reg_file_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 70
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ reg_file_31_out sc_out sc_lv 32 signal 0 } 
	{ reg_file_31_out_ap_vld sc_out sc_logic 1 outvld 0 } 
	{ reg_file_30_out sc_out sc_lv 32 signal 1 } 
	{ reg_file_30_out_ap_vld sc_out sc_logic 1 outvld 1 } 
	{ reg_file_29_out sc_out sc_lv 32 signal 2 } 
	{ reg_file_29_out_ap_vld sc_out sc_logic 1 outvld 2 } 
	{ reg_file_28_out sc_out sc_lv 32 signal 3 } 
	{ reg_file_28_out_ap_vld sc_out sc_logic 1 outvld 3 } 
	{ reg_file_27_out sc_out sc_lv 32 signal 4 } 
	{ reg_file_27_out_ap_vld sc_out sc_logic 1 outvld 4 } 
	{ reg_file_26_out sc_out sc_lv 32 signal 5 } 
	{ reg_file_26_out_ap_vld sc_out sc_logic 1 outvld 5 } 
	{ reg_file_25_out sc_out sc_lv 32 signal 6 } 
	{ reg_file_25_out_ap_vld sc_out sc_logic 1 outvld 6 } 
	{ reg_file_24_out sc_out sc_lv 32 signal 7 } 
	{ reg_file_24_out_ap_vld sc_out sc_logic 1 outvld 7 } 
	{ reg_file_23_out sc_out sc_lv 32 signal 8 } 
	{ reg_file_23_out_ap_vld sc_out sc_logic 1 outvld 8 } 
	{ reg_file_22_out sc_out sc_lv 32 signal 9 } 
	{ reg_file_22_out_ap_vld sc_out sc_logic 1 outvld 9 } 
	{ reg_file_21_out sc_out sc_lv 32 signal 10 } 
	{ reg_file_21_out_ap_vld sc_out sc_logic 1 outvld 10 } 
	{ reg_file_20_out sc_out sc_lv 32 signal 11 } 
	{ reg_file_20_out_ap_vld sc_out sc_logic 1 outvld 11 } 
	{ reg_file_19_out sc_out sc_lv 32 signal 12 } 
	{ reg_file_19_out_ap_vld sc_out sc_logic 1 outvld 12 } 
	{ reg_file_18_out sc_out sc_lv 32 signal 13 } 
	{ reg_file_18_out_ap_vld sc_out sc_logic 1 outvld 13 } 
	{ reg_file_17_out sc_out sc_lv 32 signal 14 } 
	{ reg_file_17_out_ap_vld sc_out sc_logic 1 outvld 14 } 
	{ reg_file_16_out sc_out sc_lv 32 signal 15 } 
	{ reg_file_16_out_ap_vld sc_out sc_logic 1 outvld 15 } 
	{ reg_file_15_out sc_out sc_lv 32 signal 16 } 
	{ reg_file_15_out_ap_vld sc_out sc_logic 1 outvld 16 } 
	{ reg_file_14_out sc_out sc_lv 32 signal 17 } 
	{ reg_file_14_out_ap_vld sc_out sc_logic 1 outvld 17 } 
	{ reg_file_13_out sc_out sc_lv 32 signal 18 } 
	{ reg_file_13_out_ap_vld sc_out sc_logic 1 outvld 18 } 
	{ reg_file_12_out sc_out sc_lv 32 signal 19 } 
	{ reg_file_12_out_ap_vld sc_out sc_logic 1 outvld 19 } 
	{ reg_file_11_out sc_out sc_lv 32 signal 20 } 
	{ reg_file_11_out_ap_vld sc_out sc_logic 1 outvld 20 } 
	{ reg_file_10_out sc_out sc_lv 32 signal 21 } 
	{ reg_file_10_out_ap_vld sc_out sc_logic 1 outvld 21 } 
	{ reg_file_9_out sc_out sc_lv 32 signal 22 } 
	{ reg_file_9_out_ap_vld sc_out sc_logic 1 outvld 22 } 
	{ reg_file_8_out sc_out sc_lv 32 signal 23 } 
	{ reg_file_8_out_ap_vld sc_out sc_logic 1 outvld 23 } 
	{ reg_file_7_out sc_out sc_lv 32 signal 24 } 
	{ reg_file_7_out_ap_vld sc_out sc_logic 1 outvld 24 } 
	{ reg_file_6_out sc_out sc_lv 32 signal 25 } 
	{ reg_file_6_out_ap_vld sc_out sc_logic 1 outvld 25 } 
	{ reg_file_5_out sc_out sc_lv 32 signal 26 } 
	{ reg_file_5_out_ap_vld sc_out sc_logic 1 outvld 26 } 
	{ reg_file_4_out sc_out sc_lv 32 signal 27 } 
	{ reg_file_4_out_ap_vld sc_out sc_logic 1 outvld 27 } 
	{ reg_file_3_out sc_out sc_lv 32 signal 28 } 
	{ reg_file_3_out_ap_vld sc_out sc_logic 1 outvld 28 } 
	{ reg_file_2_out sc_out sc_lv 32 signal 29 } 
	{ reg_file_2_out_ap_vld sc_out sc_logic 1 outvld 29 } 
	{ reg_file_1_out sc_out sc_lv 32 signal 30 } 
	{ reg_file_1_out_ap_vld sc_out sc_logic 1 outvld 30 } 
	{ reg_file_out sc_out sc_lv 32 signal 31 } 
	{ reg_file_out_ap_vld sc_out sc_logic 1 outvld 31 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "reg_file_31_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "reg_file_31_out", "role": "default" }} , 
 	{ "name": "reg_file_31_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "reg_file_31_out", "role": "ap_vld" }} , 
 	{ "name": "reg_file_30_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "reg_file_30_out", "role": "default" }} , 
 	{ "name": "reg_file_30_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "reg_file_30_out", "role": "ap_vld" }} , 
 	{ "name": "reg_file_29_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "reg_file_29_out", "role": "default" }} , 
 	{ "name": "reg_file_29_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "reg_file_29_out", "role": "ap_vld" }} , 
 	{ "name": "reg_file_28_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "reg_file_28_out", "role": "default" }} , 
 	{ "name": "reg_file_28_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "reg_file_28_out", "role": "ap_vld" }} , 
 	{ "name": "reg_file_27_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "reg_file_27_out", "role": "default" }} , 
 	{ "name": "reg_file_27_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "reg_file_27_out", "role": "ap_vld" }} , 
 	{ "name": "reg_file_26_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "reg_file_26_out", "role": "default" }} , 
 	{ "name": "reg_file_26_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "reg_file_26_out", "role": "ap_vld" }} , 
 	{ "name": "reg_file_25_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "reg_file_25_out", "role": "default" }} , 
 	{ "name": "reg_file_25_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "reg_file_25_out", "role": "ap_vld" }} , 
 	{ "name": "reg_file_24_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "reg_file_24_out", "role": "default" }} , 
 	{ "name": "reg_file_24_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "reg_file_24_out", "role": "ap_vld" }} , 
 	{ "name": "reg_file_23_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "reg_file_23_out", "role": "default" }} , 
 	{ "name": "reg_file_23_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "reg_file_23_out", "role": "ap_vld" }} , 
 	{ "name": "reg_file_22_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "reg_file_22_out", "role": "default" }} , 
 	{ "name": "reg_file_22_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "reg_file_22_out", "role": "ap_vld" }} , 
 	{ "name": "reg_file_21_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "reg_file_21_out", "role": "default" }} , 
 	{ "name": "reg_file_21_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "reg_file_21_out", "role": "ap_vld" }} , 
 	{ "name": "reg_file_20_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "reg_file_20_out", "role": "default" }} , 
 	{ "name": "reg_file_20_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "reg_file_20_out", "role": "ap_vld" }} , 
 	{ "name": "reg_file_19_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "reg_file_19_out", "role": "default" }} , 
 	{ "name": "reg_file_19_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "reg_file_19_out", "role": "ap_vld" }} , 
 	{ "name": "reg_file_18_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "reg_file_18_out", "role": "default" }} , 
 	{ "name": "reg_file_18_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "reg_file_18_out", "role": "ap_vld" }} , 
 	{ "name": "reg_file_17_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "reg_file_17_out", "role": "default" }} , 
 	{ "name": "reg_file_17_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "reg_file_17_out", "role": "ap_vld" }} , 
 	{ "name": "reg_file_16_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "reg_file_16_out", "role": "default" }} , 
 	{ "name": "reg_file_16_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "reg_file_16_out", "role": "ap_vld" }} , 
 	{ "name": "reg_file_15_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "reg_file_15_out", "role": "default" }} , 
 	{ "name": "reg_file_15_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "reg_file_15_out", "role": "ap_vld" }} , 
 	{ "name": "reg_file_14_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "reg_file_14_out", "role": "default" }} , 
 	{ "name": "reg_file_14_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "reg_file_14_out", "role": "ap_vld" }} , 
 	{ "name": "reg_file_13_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "reg_file_13_out", "role": "default" }} , 
 	{ "name": "reg_file_13_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "reg_file_13_out", "role": "ap_vld" }} , 
 	{ "name": "reg_file_12_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "reg_file_12_out", "role": "default" }} , 
 	{ "name": "reg_file_12_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "reg_file_12_out", "role": "ap_vld" }} , 
 	{ "name": "reg_file_11_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "reg_file_11_out", "role": "default" }} , 
 	{ "name": "reg_file_11_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "reg_file_11_out", "role": "ap_vld" }} , 
 	{ "name": "reg_file_10_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "reg_file_10_out", "role": "default" }} , 
 	{ "name": "reg_file_10_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "reg_file_10_out", "role": "ap_vld" }} , 
 	{ "name": "reg_file_9_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "reg_file_9_out", "role": "default" }} , 
 	{ "name": "reg_file_9_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "reg_file_9_out", "role": "ap_vld" }} , 
 	{ "name": "reg_file_8_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "reg_file_8_out", "role": "default" }} , 
 	{ "name": "reg_file_8_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "reg_file_8_out", "role": "ap_vld" }} , 
 	{ "name": "reg_file_7_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "reg_file_7_out", "role": "default" }} , 
 	{ "name": "reg_file_7_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "reg_file_7_out", "role": "ap_vld" }} , 
 	{ "name": "reg_file_6_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "reg_file_6_out", "role": "default" }} , 
 	{ "name": "reg_file_6_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "reg_file_6_out", "role": "ap_vld" }} , 
 	{ "name": "reg_file_5_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "reg_file_5_out", "role": "default" }} , 
 	{ "name": "reg_file_5_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "reg_file_5_out", "role": "ap_vld" }} , 
 	{ "name": "reg_file_4_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "reg_file_4_out", "role": "default" }} , 
 	{ "name": "reg_file_4_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "reg_file_4_out", "role": "ap_vld" }} , 
 	{ "name": "reg_file_3_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "reg_file_3_out", "role": "default" }} , 
 	{ "name": "reg_file_3_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "reg_file_3_out", "role": "ap_vld" }} , 
 	{ "name": "reg_file_2_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "reg_file_2_out", "role": "default" }} , 
 	{ "name": "reg_file_2_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "reg_file_2_out", "role": "ap_vld" }} , 
 	{ "name": "reg_file_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "reg_file_1_out", "role": "default" }} , 
 	{ "name": "reg_file_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "reg_file_1_out", "role": "ap_vld" }} , 
 	{ "name": "reg_file_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "reg_file_out", "role": "default" }} , 
 	{ "name": "reg_file_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "reg_file_out", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "rv32i_npp_ip_Pipeline_VITIS_LOOP_42_1",
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
			{"Name" : "VITIS_LOOP_42_1", "PipelineType" : "NotSupport"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	rv32i_npp_ip_Pipeline_VITIS_LOOP_42_1 {
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
		reg_file_out {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "34", "Max" : "34"}
	, {"Name" : "Interval", "Min" : "34", "Max" : "34"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	reg_file_31_out { ap_vld {  { reg_file_31_out out_data 1 32 }  { reg_file_31_out_ap_vld out_vld 1 1 } } }
	reg_file_30_out { ap_vld {  { reg_file_30_out out_data 1 32 }  { reg_file_30_out_ap_vld out_vld 1 1 } } }
	reg_file_29_out { ap_vld {  { reg_file_29_out out_data 1 32 }  { reg_file_29_out_ap_vld out_vld 1 1 } } }
	reg_file_28_out { ap_vld {  { reg_file_28_out out_data 1 32 }  { reg_file_28_out_ap_vld out_vld 1 1 } } }
	reg_file_27_out { ap_vld {  { reg_file_27_out out_data 1 32 }  { reg_file_27_out_ap_vld out_vld 1 1 } } }
	reg_file_26_out { ap_vld {  { reg_file_26_out out_data 1 32 }  { reg_file_26_out_ap_vld out_vld 1 1 } } }
	reg_file_25_out { ap_vld {  { reg_file_25_out out_data 1 32 }  { reg_file_25_out_ap_vld out_vld 1 1 } } }
	reg_file_24_out { ap_vld {  { reg_file_24_out out_data 1 32 }  { reg_file_24_out_ap_vld out_vld 1 1 } } }
	reg_file_23_out { ap_vld {  { reg_file_23_out out_data 1 32 }  { reg_file_23_out_ap_vld out_vld 1 1 } } }
	reg_file_22_out { ap_vld {  { reg_file_22_out out_data 1 32 }  { reg_file_22_out_ap_vld out_vld 1 1 } } }
	reg_file_21_out { ap_vld {  { reg_file_21_out out_data 1 32 }  { reg_file_21_out_ap_vld out_vld 1 1 } } }
	reg_file_20_out { ap_vld {  { reg_file_20_out out_data 1 32 }  { reg_file_20_out_ap_vld out_vld 1 1 } } }
	reg_file_19_out { ap_vld {  { reg_file_19_out out_data 1 32 }  { reg_file_19_out_ap_vld out_vld 1 1 } } }
	reg_file_18_out { ap_vld {  { reg_file_18_out out_data 1 32 }  { reg_file_18_out_ap_vld out_vld 1 1 } } }
	reg_file_17_out { ap_vld {  { reg_file_17_out out_data 1 32 }  { reg_file_17_out_ap_vld out_vld 1 1 } } }
	reg_file_16_out { ap_vld {  { reg_file_16_out out_data 1 32 }  { reg_file_16_out_ap_vld out_vld 1 1 } } }
	reg_file_15_out { ap_vld {  { reg_file_15_out out_data 1 32 }  { reg_file_15_out_ap_vld out_vld 1 1 } } }
	reg_file_14_out { ap_vld {  { reg_file_14_out out_data 1 32 }  { reg_file_14_out_ap_vld out_vld 1 1 } } }
	reg_file_13_out { ap_vld {  { reg_file_13_out out_data 1 32 }  { reg_file_13_out_ap_vld out_vld 1 1 } } }
	reg_file_12_out { ap_vld {  { reg_file_12_out out_data 1 32 }  { reg_file_12_out_ap_vld out_vld 1 1 } } }
	reg_file_11_out { ap_vld {  { reg_file_11_out out_data 1 32 }  { reg_file_11_out_ap_vld out_vld 1 1 } } }
	reg_file_10_out { ap_vld {  { reg_file_10_out out_data 1 32 }  { reg_file_10_out_ap_vld out_vld 1 1 } } }
	reg_file_9_out { ap_vld {  { reg_file_9_out out_data 1 32 }  { reg_file_9_out_ap_vld out_vld 1 1 } } }
	reg_file_8_out { ap_vld {  { reg_file_8_out out_data 1 32 }  { reg_file_8_out_ap_vld out_vld 1 1 } } }
	reg_file_7_out { ap_vld {  { reg_file_7_out out_data 1 32 }  { reg_file_7_out_ap_vld out_vld 1 1 } } }
	reg_file_6_out { ap_vld {  { reg_file_6_out out_data 1 32 }  { reg_file_6_out_ap_vld out_vld 1 1 } } }
	reg_file_5_out { ap_vld {  { reg_file_5_out out_data 1 32 }  { reg_file_5_out_ap_vld out_vld 1 1 } } }
	reg_file_4_out { ap_vld {  { reg_file_4_out out_data 1 32 }  { reg_file_4_out_ap_vld out_vld 1 1 } } }
	reg_file_3_out { ap_vld {  { reg_file_3_out out_data 1 32 }  { reg_file_3_out_ap_vld out_vld 1 1 } } }
	reg_file_2_out { ap_vld {  { reg_file_2_out out_data 1 32 }  { reg_file_2_out_ap_vld out_vld 1 1 } } }
	reg_file_1_out { ap_vld {  { reg_file_1_out out_data 1 32 }  { reg_file_1_out_ap_vld out_vld 1 1 } } }
	reg_file_out { ap_vld {  { reg_file_out out_data 1 32 }  { reg_file_out_ap_vld out_vld 1 1 } } }
}
