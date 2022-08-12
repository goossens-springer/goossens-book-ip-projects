#ifndef __FETCH
#define __FETCH
#include "multicycle_pipeline_ip.h"
void fetch(
  from_f_to_f_t  f_from_f,
  from_d_to_f_t  f_from_d,
  from_e_to_f_t  f_from_e,
  bit_t          i_wait,
  instruction_t *code_ram,
  from_f_to_f_t *f_to_f,
  from_f_to_d_t *f_to_d);
#endif
