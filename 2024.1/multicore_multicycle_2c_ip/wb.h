#ifndef __WB
#define __WB
#include "debug_multicycle_pipeline_ip.h"
#include "multicycle_pipeline_ip.h"
void write_back(
#ifndef __SYNTHESIS__
  ip_num_t      ip,
#endif
  from_m_to_w_t w_from_m,
  int          *reg_file,
  bit_t        *is_reg_computed);
#endif
