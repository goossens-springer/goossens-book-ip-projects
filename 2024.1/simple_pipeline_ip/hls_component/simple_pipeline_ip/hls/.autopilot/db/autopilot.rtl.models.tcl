set SynModuleInfo {
  {SRCNAME simple_pipeline_ip MODELNAME simple_pipeline_ip RTLNAME simple_pipeline_ip IS_TOP 1
    SUBMODULES {
      {MODELNAME simple_pipeline_ip_sparsemux_65_5_32_1_1 RTLNAME simple_pipeline_ip_sparsemux_65_5_32_1_1 BINDTYPE op TYPE sparsemux IMPL auto}
      {MODELNAME simple_pipeline_ip_sparsemux_15_6_1_1_1 RTLNAME simple_pipeline_ip_sparsemux_15_6_1_1_1 BINDTYPE op TYPE sparsemux IMPL auto}
      {MODELNAME simple_pipeline_ip_sparsemux_17_7_32_1_1 RTLNAME simple_pipeline_ip_sparsemux_17_7_32_1_1 BINDTYPE op TYPE sparsemux IMPL auto}
      {MODELNAME simple_pipeline_ip_sparsemux_9_3_8_1_1 RTLNAME simple_pipeline_ip_sparsemux_9_3_8_1_1 BINDTYPE op TYPE sparsemux IMPL auto}
      {MODELNAME simple_pipeline_ip_control_s_axi RTLNAME simple_pipeline_ip_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
      {MODELNAME simple_pipeline_ip_flow_control_loop_pipe RTLNAME simple_pipeline_ip_flow_control_loop_pipe BINDTYPE interface TYPE internal_upc_flow_control INSTNAME simple_pipeline_ip_flow_control_loop_pipe_U}
    }
  }
}
