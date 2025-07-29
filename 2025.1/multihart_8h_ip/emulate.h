#ifndef __EMULATE
#define __EMULATE
#include "multihart_ip.h"
void emulate(
  hart_num_t            hart,
  int                   reg_file[][NB_REGISTER],
  decoded_instruction_t d_i,
  code_address_t        next_pc);
#endif
