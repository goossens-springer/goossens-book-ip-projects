#ifndef __FETCH_DECODE
#define __FETCH_DECODE
#include "debug_simple_pipeline_ip.h"
#include "simple_pipeline_ip.h"
void fetch_decode(
  from_f_to_f_t  f_from_f,
  from_e_to_f_t  f_from_e,
  unsigned int  *code_mem,
  from_f_to_f_t *f_to_f,
  from_f_to_e_t *f_to_e);
#endif
