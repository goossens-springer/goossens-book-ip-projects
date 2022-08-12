#ifndef __EMULATE
#define __EMULATE
#include "multihart_ip.h"
void emulate(
  ip_num_t              ip_num,
  hart_num_t            hart,
  int                   reg_file[][NB_REGISTER],
  decoded_instruction_t d_i,
  ip_code_address_t     next_pc);
#endif
