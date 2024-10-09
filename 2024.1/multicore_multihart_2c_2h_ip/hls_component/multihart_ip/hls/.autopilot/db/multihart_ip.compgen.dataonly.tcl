# This script segment is generated automatically by AutoPilot

set axilite_register_dict [dict create]
set port_control {
ip_num { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 16
	offset_end 23
}
running_hart_set { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 24
	offset_end 31
}
start_pc { 
	dir I
	width 32
	depth 2
	mode ap_memory
	offset 32
	offset_end 39
	core_op ram_1p
	core_impl auto
	core_latency 1
	byte_write 0
}
data_ram { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 40
	offset_end 51
}
nb_instruction { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 52
	offset_end 59
}
nb_cycle { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 68
	offset_end 75
}
ip_code_ram { 
	dir I
	width 32
	depth 32768
	mode ap_memory
	offset 131072
	offset_end 262143
	core_op ram_1p
	core_impl auto
	core_latency 1
	byte_write 0
}
ap_start { }
ap_done { }
ap_ready { }
ap_idle { }
interrupt {
}
}
dict set axilite_register_dict control $port_control


