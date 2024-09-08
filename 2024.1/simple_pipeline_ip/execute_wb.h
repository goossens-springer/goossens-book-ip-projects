#ifndef __EXECUTE_WB
#define __EXECUTE_WB
#include "debug_simple_pipeline_ip.h"
#include "simple_pipeline_ip.h"
void execute_wb(
  from_f_to_e_t  e_from_f,
  from_e_to_e_t  e_from_e,
  int           *reg_file,
  int           *data_ram,
  from_e_to_f_t *e_to_f,
  from_e_to_e_t *e_to_e);
#endif
