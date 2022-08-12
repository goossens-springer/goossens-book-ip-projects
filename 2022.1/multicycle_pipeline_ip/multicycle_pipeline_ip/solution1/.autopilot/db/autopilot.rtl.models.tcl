set SynModuleInfo {
  {SRCNAME multicycle_pipeline_ip_Pipeline_VITIS_LOOP_23_1 MODELNAME multicycle_pipeline_ip_Pipeline_VITIS_LOOP_23_1 RTLNAME multicycle_pipeline_ip_multicycle_pipeline_ip_Pipeline_VITIS_LOOP_23_1
    SUBMODULES {
      {MODELNAME multicycle_pipeline_ip_flow_control_loop_pipe_sequential_init RTLNAME multicycle_pipeline_ip_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME multicycle_pipeline_ip_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME multicycle_pipeline_ip_Pipeline_VITIS_LOOP_87_1 MODELNAME multicycle_pipeline_ip_Pipeline_VITIS_LOOP_87_1 RTLNAME multicycle_pipeline_ip_multicycle_pipeline_ip_Pipeline_VITIS_LOOP_87_1
    SUBMODULES {
      {MODELNAME multicycle_pipeline_ip_mux_325_1_1_1 RTLNAME multicycle_pipeline_ip_mux_325_1_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME multicycle_pipeline_ip_mux_325_32_1_1 RTLNAME multicycle_pipeline_ip_mux_325_32_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME multicycle_pipeline_ip MODELNAME multicycle_pipeline_ip RTLNAME multicycle_pipeline_ip IS_TOP 1
    SUBMODULES {
      {MODELNAME multicycle_pipeline_ip_control_s_axi RTLNAME multicycle_pipeline_ip_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
