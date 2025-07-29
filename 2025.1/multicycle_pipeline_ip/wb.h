#ifndef __WB
#define __WB
#include "multicycle_pipeline_ip.h"
void write_back(
  from_m_to_w_t w_from_m,
  int          *reg_file,
  bit_t        *is_reg_computed);
#endif
