set SynModuleInfo {
  {SRCNAME simple_pipeline_ip_Pipeline_VITIS_LOOP_42_1 MODELNAME simple_pipeline_ip_Pipeline_VITIS_LOOP_42_1 RTLNAME simple_pipeline_ip_simple_pipeline_ip_Pipeline_VITIS_LOOP_42_1
    SUBMODULES {
      {MODELNAME simple_pipeline_ip_flow_control_loop_pipe_sequential_init RTLNAME simple_pipeline_ip_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME simple_pipeline_ip_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME simple_pipeline_ip_Pipeline_VITIS_LOOP_47_2 MODELNAME simple_pipeline_ip_Pipeline_VITIS_LOOP_47_2 RTLNAME simple_pipeline_ip_simple_pipeline_ip_Pipeline_VITIS_LOOP_47_2
    SUBMODULES {
      {MODELNAME simple_pipeline_ip_mux_325_32_1_1 RTLNAME simple_pipeline_ip_mux_325_32_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME simple_pipeline_ip MODELNAME simple_pipeline_ip RTLNAME simple_pipeline_ip IS_TOP 1
    SUBMODULES {
      {MODELNAME simple_pipeline_ip_control_s_axi RTLNAME simple_pipeline_ip_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
