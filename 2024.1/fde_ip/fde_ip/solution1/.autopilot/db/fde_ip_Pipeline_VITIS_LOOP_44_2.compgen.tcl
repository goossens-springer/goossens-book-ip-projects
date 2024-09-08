# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 116 \
    name code_ram \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename code_ram \
    op interface \
    ports { code_ram_address0 { O 16 vector } code_ram_ce0 { O 1 bit } code_ram_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'code_ram'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 83 \
    name reg_file_31_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_reg_file_31_reload \
    op interface \
    ports { reg_file_31_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 84 \
    name reg_file_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_reg_file_reload \
    op interface \
    ports { reg_file_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 85 \
    name reg_file_1_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_reg_file_1_reload \
    op interface \
    ports { reg_file_1_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 86 \
    name reg_file_2_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_reg_file_2_reload \
    op interface \
    ports { reg_file_2_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 87 \
    name reg_file_3_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_reg_file_3_reload \
    op interface \
    ports { reg_file_3_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 88 \
    name reg_file_4_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_reg_file_4_reload \
    op interface \
    ports { reg_file_4_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 89 \
    name reg_file_5_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_reg_file_5_reload \
    op interface \
    ports { reg_file_5_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 90 \
    name reg_file_6_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_reg_file_6_reload \
    op interface \
    ports { reg_file_6_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 91 \
    name reg_file_7_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_reg_file_7_reload \
    op interface \
    ports { reg_file_7_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 92 \
    name reg_file_8_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_reg_file_8_reload \
    op interface \
    ports { reg_file_8_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 93 \
    name reg_file_9_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_reg_file_9_reload \
    op interface \
    ports { reg_file_9_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 94 \
    name reg_file_10_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_reg_file_10_reload \
    op interface \
    ports { reg_file_10_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 95 \
    name reg_file_11_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_reg_file_11_reload \
    op interface \
    ports { reg_file_11_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 96 \
    name reg_file_12_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_reg_file_12_reload \
    op interface \
    ports { reg_file_12_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 97 \
    name reg_file_13_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_reg_file_13_reload \
    op interface \
    ports { reg_file_13_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 98 \
    name reg_file_14_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_reg_file_14_reload \
    op interface \
    ports { reg_file_14_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 99 \
    name reg_file_15_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_reg_file_15_reload \
    op interface \
    ports { reg_file_15_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 100 \
    name reg_file_16_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_reg_file_16_reload \
    op interface \
    ports { reg_file_16_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 101 \
    name reg_file_17_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_reg_file_17_reload \
    op interface \
    ports { reg_file_17_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 102 \
    name reg_file_18_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_reg_file_18_reload \
    op interface \
    ports { reg_file_18_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 103 \
    name reg_file_19_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_reg_file_19_reload \
    op interface \
    ports { reg_file_19_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 104 \
    name reg_file_20_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_reg_file_20_reload \
    op interface \
    ports { reg_file_20_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 105 \
    name reg_file_21_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_reg_file_21_reload \
    op interface \
    ports { reg_file_21_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 106 \
    name reg_file_22_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_reg_file_22_reload \
    op interface \
    ports { reg_file_22_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 107 \
    name reg_file_23_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_reg_file_23_reload \
    op interface \
    ports { reg_file_23_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 108 \
    name reg_file_24_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_reg_file_24_reload \
    op interface \
    ports { reg_file_24_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 109 \
    name reg_file_25_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_reg_file_25_reload \
    op interface \
    ports { reg_file_25_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 110 \
    name reg_file_26_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_reg_file_26_reload \
    op interface \
    ports { reg_file_26_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 111 \
    name reg_file_27_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_reg_file_27_reload \
    op interface \
    ports { reg_file_27_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 112 \
    name reg_file_28_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_reg_file_28_reload \
    op interface \
    ports { reg_file_28_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 113 \
    name reg_file_29_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_reg_file_29_reload \
    op interface \
    ports { reg_file_29_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 114 \
    name reg_file_30_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_reg_file_30_reload \
    op interface \
    ports { reg_file_30_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 115 \
    name pc_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_pc_V \
    op interface \
    ports { pc_V { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 117 \
    name nbi_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_nbi_out \
    op interface \
    ports { nbi_out { O 32 vector } nbi_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


# flow_control definition:
set InstName fde_ip_flow_control_loop_pipe_sequential_init_U
set CompName fde_ip_flow_control_loop_pipe_sequential_init
set name flow_control_loop_pipe_sequential_init
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control] == "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control"} {
eval "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control { \
    name ${name} \
    prefix fde_ip_ \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $CompName BINDTYPE interface TYPE internal_upc_flow_control INSTNAME $InstName
}


