set SynModuleInfo {
  {SRCNAME multi_core_multi_ram_ip MODELNAME multi_core_multi_ram_ip RTLNAME multi_core_multi_ram_ip IS_TOP 1
    SUBMODULES {
      {MODELNAME multi_core_multi_ram_ip_gmem_m_axi RTLNAME multi_core_multi_ram_ip_gmem_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME multi_core_multi_ram_ip_control_s_axi RTLNAME multi_core_multi_ram_ip_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
      {MODELNAME multi_core_multi_ram_ip_flow_control_loop_pipe RTLNAME multi_core_multi_ram_ip_flow_control_loop_pipe BINDTYPE interface TYPE internal_upc_flow_control INSTNAME multi_core_multi_ram_ip_flow_control_loop_pipe_U}
    }
  }
}
