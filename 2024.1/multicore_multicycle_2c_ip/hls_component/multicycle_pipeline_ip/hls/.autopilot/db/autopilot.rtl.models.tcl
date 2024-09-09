set SynModuleInfo {
  {SRCNAME multicycle_pipeline_ip MODELNAME multicycle_pipeline_ip RTLNAME multicycle_pipeline_ip IS_TOP 1
    SUBMODULES {
      {MODELNAME multicycle_pipeline_ip_sparsemux_65_5_1_1_1 RTLNAME multicycle_pipeline_ip_sparsemux_65_5_1_1_1 BINDTYPE op TYPE sparsemux IMPL auto}
      {MODELNAME multicycle_pipeline_ip_sparsemux_13_5_32_1_1 RTLNAME multicycle_pipeline_ip_sparsemux_13_5_32_1_1 BINDTYPE op TYPE sparsemux IMPL auto}
      {MODELNAME multicycle_pipeline_ip_sparsemux_15_6_1_1_1 RTLNAME multicycle_pipeline_ip_sparsemux_15_6_1_1_1 BINDTYPE op TYPE sparsemux IMPL auto}
      {MODELNAME multicycle_pipeline_ip_sparsemux_17_7_32_1_1 RTLNAME multicycle_pipeline_ip_sparsemux_17_7_32_1_1 BINDTYPE op TYPE sparsemux IMPL auto}
      {MODELNAME multicycle_pipeline_ip_sparsemux_65_5_32_1_1 RTLNAME multicycle_pipeline_ip_sparsemux_65_5_32_1_1 BINDTYPE op TYPE sparsemux IMPL auto}
      {MODELNAME multicycle_pipeline_ip_sparsemux_7_2_8_1_1 RTLNAME multicycle_pipeline_ip_sparsemux_7_2_8_1_1 BINDTYPE op TYPE sparsemux IMPL auto}
      {MODELNAME multicycle_pipeline_ip_gmem_m_axi RTLNAME multicycle_pipeline_ip_gmem_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME multicycle_pipeline_ip_control_s_axi RTLNAME multicycle_pipeline_ip_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
      {MODELNAME multicycle_pipeline_ip_flow_control_loop_delay_pipe RTLNAME multicycle_pipeline_ip_flow_control_loop_delay_pipe BINDTYPE interface TYPE internal_upc_flow_control INSTNAME multicycle_pipeline_ip_flow_control_loop_delay_pipe_U}
    }
  }
}
