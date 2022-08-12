#ifndef __DECODE
#define __DECODE
#include "multicycle_pipeline_ip.h"
void decode(
  from_f_to_d_t  d_from_f,
  bit_t          i_wait,
  from_d_to_f_t *d_to_f,
  from_d_to_i_t *d_to_i);
#endif
