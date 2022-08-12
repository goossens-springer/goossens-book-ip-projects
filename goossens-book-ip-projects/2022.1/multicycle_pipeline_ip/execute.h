#ifndef __EXECUTE_1
#define __EXECUTE_1
#include "multicycle_pipeline_ip.h"
void execute(
  from_i_to_e_t  e_from_i,
#ifndef __SYNTHESIS__
#ifdef DEBUG_PIPELINE
  int           *reg_file,
#endif
#endif
  from_e_to_f_t *e_to_f,
  from_e_to_m_t *e_to_m);
#endif
