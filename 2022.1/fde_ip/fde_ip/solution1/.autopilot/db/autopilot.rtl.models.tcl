set SynModuleInfo {
  {SRCNAME fde_ip_Pipeline_VITIS_LOOP_41_1 MODELNAME fde_ip_Pipeline_VITIS_LOOP_41_1 RTLNAME fde_ip_fde_ip_Pipeline_VITIS_LOOP_41_1
    SUBMODULES {
      {MODELNAME fde_ip_flow_control_loop_pipe_sequential_init RTLNAME fde_ip_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME fde_ip_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME fetch MODELNAME fetch RTLNAME fde_ip_fetch}
  {SRCNAME decode MODELNAME decode RTLNAME fde_ip_decode}
  {SRCNAME execute MODELNAME execute RTLNAME fde_ip_execute
    SUBMODULES {
      {MODELNAME fde_ip_mux_325_32_1_1 RTLNAME fde_ip_mux_325_32_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME statistic_update MODELNAME statistic_update RTLNAME fde_ip_statistic_update}
  {SRCNAME running_cond_update MODELNAME running_cond_update RTLNAME fde_ip_running_cond_update}
  {SRCNAME fde_ip_Pipeline_VITIS_LOOP_44_2 MODELNAME fde_ip_Pipeline_VITIS_LOOP_44_2 RTLNAME fde_ip_fde_ip_Pipeline_VITIS_LOOP_44_2}
  {SRCNAME fde_ip MODELNAME fde_ip RTLNAME fde_ip IS_TOP 1
    SUBMODULES {
      {MODELNAME fde_ip_control_s_axi RTLNAME fde_ip_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
