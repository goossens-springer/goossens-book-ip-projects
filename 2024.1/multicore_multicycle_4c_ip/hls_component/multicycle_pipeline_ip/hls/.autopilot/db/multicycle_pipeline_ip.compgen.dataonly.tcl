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
start_pc { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 24
	offset_end 31
}
data_ram { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 32
	offset_end 43
}
nb_instruction { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 44
	offset_end 51
}
nb_cycle { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 60
	offset_end 67
}
ip_code_ram { 
	dir I
	width 32
	depth 8192
	mode ap_memory
	offset 32768
	offset_end 65535
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


