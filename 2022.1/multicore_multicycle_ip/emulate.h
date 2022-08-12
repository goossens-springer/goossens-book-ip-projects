#ifndef __EMULATE
#define __EMULATE
#include "multicycle_pipeline_ip.h"
void emulate(
  ip_num_t              ip,
  int                  *reg_file,
  decoded_instruction_t d_i,
  ip_code_address_t     next_pc);
#endif
