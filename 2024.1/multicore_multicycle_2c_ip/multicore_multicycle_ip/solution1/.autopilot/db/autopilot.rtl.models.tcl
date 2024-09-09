set SynModuleInfo {
  {SRCNAME multicycle_pipeline_ip MODELNAME multicycle_pipeline_ip RTLNAME multicycle_pipeline_ip IS_TOP 1
    SUBMODULES {
      {MODELNAME multicycle_pipeline_ip_mux_325_1_1_1 RTLNAME multicycle_pipeline_ip_mux_325_1_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME multicycle_pipeline_ip_mux_325_32_1_1 RTLNAME multicycle_pipeline_ip_mux_325_32_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME multicycle_pipeline_ip_gmem_m_axi RTLNAME multicycle_pipeline_ip_gmem_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME multicycle_pipeline_ip_control_s_axi RTLNAME multicycle_pipeline_ip_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
