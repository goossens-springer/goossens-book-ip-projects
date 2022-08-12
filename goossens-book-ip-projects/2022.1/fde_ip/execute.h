#ifndef __EXECUTE
#define __EXECUTE
#include "fde_ip.h"
void execute(
  code_address_t        pc,
  int                  *reg_file,
  decoded_instruction_t d_i,
  code_address_t       *next_pc);
#endif
