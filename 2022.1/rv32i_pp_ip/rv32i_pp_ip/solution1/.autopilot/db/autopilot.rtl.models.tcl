set SynModuleInfo {
  {SRCNAME rv32i_pp_ip_Pipeline_VITIS_LOOP_50_1 MODELNAME rv32i_pp_ip_Pipeline_VITIS_LOOP_50_1 RTLNAME rv32i_pp_ip_rv32i_pp_ip_Pipeline_VITIS_LOOP_50_1
    SUBMODULES {
      {MODELNAME rv32i_pp_ip_flow_control_loop_pipe_sequential_init RTLNAME rv32i_pp_ip_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME rv32i_pp_ip_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME rv32i_pp_ip_Pipeline_VITIS_LOOP_58_2 MODELNAME rv32i_pp_ip_Pipeline_VITIS_LOOP_58_2 RTLNAME rv32i_pp_ip_rv32i_pp_ip_Pipeline_VITIS_LOOP_58_2
    SUBMODULES {
      {MODELNAME rv32i_pp_ip_mux_325_32_1_1 RTLNAME rv32i_pp_ip_mux_325_32_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME rv32i_pp_ip MODELNAME rv32i_pp_ip RTLNAME rv32i_pp_ip IS_TOP 1
    SUBMODULES {
      {MODELNAME rv32i_pp_ip_control_s_axi RTLNAME rv32i_pp_ip_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
