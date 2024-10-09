dict set slaves control {ports {ip_num {type i_ap_none width 32} running_hart_set {type i_ap_none width 32} start_pc {type i_ap_memory width 32} data_ram {type i_ap_none width 64} nb_instruction {type o_ap_vld width 32} nb_cycle {type o_ap_vld width 32} ip_code_ram {type i_ap_memory width 32} ap_start {type ap_ctrl width 1} ap_done {type ap_ctrl width 1} ap_ready {type ap_ctrl width 1} ap_idle {type ap_ctrl width 1}} mems {start_pc {width 32} ip_code_ram {width 32}} has_ctrl 1}
set datawidth 32
set addrwidth 64
set intr_clr_mode TOW
