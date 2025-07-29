#ifndef __ISSUE
#define __ISSUE
#include "multicycle_pipeline_ip.h"
void issue(
  from_d_to_i_t  i_from_d,
  int           *reg_file,
  bit_t         *is_reg_computed,
  i_safe_t      *i_safe,
  from_i_to_e_t *i_to_e,
  bit_t         *i_wait);
#endif
