set SynModuleInfo {
  {SRCNAME multihart_ip_Pipeline_VITIS_LOOP_197_1 MODELNAME multihart_ip_Pipeline_VITIS_LOOP_197_1 RTLNAME multihart_ip_multihart_ip_Pipeline_VITIS_LOOP_197_1
    SUBMODULES {
      {MODELNAME multihart_ip_mux_21_1_1_1 RTLNAME multihart_ip_mux_21_1_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME multihart_ip_mux_21_2_1_1 RTLNAME multihart_ip_mux_21_2_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME multihart_ip_mux_21_18_1_1 RTLNAME multihart_ip_mux_21_18_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME multihart_ip_mux_21_3_1_1 RTLNAME multihart_ip_mux_21_3_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME multihart_ip_mux_21_5_1_1 RTLNAME multihart_ip_mux_21_5_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME multihart_ip_mux_325_1_1_1 RTLNAME multihart_ip_mux_325_1_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME multihart_ip_mux_21_20_1_1 RTLNAME multihart_ip_mux_21_20_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME multihart_ip_mux_21_14_1_1 RTLNAME multihart_ip_mux_21_14_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME multihart_ip_mux_21_32_1_1 RTLNAME multihart_ip_mux_21_32_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME multihart_ip_mux_21_7_1_1 RTLNAME multihart_ip_mux_21_7_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME multihart_ip_mux_325_32_1_1 RTLNAME multihart_ip_mux_325_32_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME multihart_ip_flow_control_loop_pipe_sequential_init RTLNAME multihart_ip_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME multihart_ip_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME multihart_ip MODELNAME multihart_ip RTLNAME multihart_ip IS_TOP 1
    SUBMODULES {
      {MODELNAME multihart_ip_gmem_m_axi RTLNAME multihart_ip_gmem_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME multihart_ip_control_s_axi RTLNAME multihart_ip_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
