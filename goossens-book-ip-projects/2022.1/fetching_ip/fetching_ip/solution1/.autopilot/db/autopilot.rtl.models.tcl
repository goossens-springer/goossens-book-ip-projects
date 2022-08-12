set SynModuleInfo {
  {SRCNAME fetch MODELNAME fetch RTLNAME fetching_ip_fetch}
  {SRCNAME execute MODELNAME execute RTLNAME fetching_ip_execute}
  {SRCNAME running_cond_update MODELNAME running_cond_update RTLNAME fetching_ip_running_cond_update}
  {SRCNAME fetching_ip MODELNAME fetching_ip RTLNAME fetching_ip IS_TOP 1
    SUBMODULES {
      {MODELNAME fetching_ip_control_s_axi RTLNAME fetching_ip_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
