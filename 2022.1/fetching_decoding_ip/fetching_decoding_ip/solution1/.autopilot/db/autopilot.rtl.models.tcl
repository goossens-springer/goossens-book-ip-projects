set SynModuleInfo {
  {SRCNAME fetch MODELNAME fetch RTLNAME fetching_decoding_ip_fetch}
  {SRCNAME decode MODELNAME decode RTLNAME fetching_decoding_ip_decode}
  {SRCNAME execute MODELNAME execute RTLNAME fetching_decoding_ip_execute}
  {SRCNAME statistic_update MODELNAME statistic_update RTLNAME fetching_decoding_ip_statistic_update}
  {SRCNAME running_cond_update MODELNAME running_cond_update RTLNAME fetching_decoding_ip_running_cond_update}
  {SRCNAME fetching_decoding_ip MODELNAME fetching_decoding_ip RTLNAME fetching_decoding_ip IS_TOP 1
    SUBMODULES {
      {MODELNAME fetching_decoding_ip_control_s_axi RTLNAME fetching_decoding_ip_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
