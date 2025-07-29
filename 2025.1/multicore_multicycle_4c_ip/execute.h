#ifndef __EXECUTE
#define __EXECUTE
#include "multicycle_pipeline_ip.h"
void execute(
#ifndef __SYNTHESIS__
#ifdef DEBUG_PIPELINE
  ip_num_t       ip,
#endif
#endif
  from_i_to_e_t  e_from_i,
#ifndef __SYNTHESIS__
#ifdef DEBUG_PIPELINE
  int           *reg_file,
#endif
#endif
  from_e_to_f_t *e_to_f,
  from_e_to_m_t *e_to_m);
#endif
