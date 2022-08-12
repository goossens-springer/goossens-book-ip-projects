#ifndef __EMULATE
#define __EMULATE
#include "fde_ip.h"
void emulate(
  int                  *reg_file,
  decoded_instruction_t d_i,
  code_address_t        next_pc);
#endif
