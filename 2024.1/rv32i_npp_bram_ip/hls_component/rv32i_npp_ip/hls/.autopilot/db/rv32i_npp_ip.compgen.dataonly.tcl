# This script segment is generated automatically by AutoPilot

set axilite_register_dict [dict create]
set port_control {
start_pc { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 16
	offset_end 23
}
nb_instruction { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 24
	offset_end 31
}
ap_start { }
ap_done { }
ap_ready { }
ap_idle { }
interrupt {
}
}
dict set axilite_register_dict control $port_control


