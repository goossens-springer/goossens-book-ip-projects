dict set slaves control {ports {start_pc {type i_ap_none width 32} nb_instruction {type o_ap_vld width 32} nb_cycle {type o_ap_vld width 32} code_ram {type i_ap_memory width 32} data_ram {type io_ap_memory width 32} ap_start {type ap_ctrl width 1} ap_done {type ap_ctrl width 1} ap_ready {type ap_ctrl width 1} ap_idle {type ap_ctrl width 1}} mems {code_ram {width 32} data_ram {width 32}} has_ctrl 1}
set datawidth 32
set addrwidth 64
set intr_clr_mode COR
