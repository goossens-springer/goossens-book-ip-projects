#ifndef __EXECUTE
#define __EXECUTE
#include "rv32i_npp_ip.h"
void execute(
  code_address_t        pc,
  int                  *reg_file,
  int                  *data_ram,
  decoded_instruction_t d_i,
  code_address_t       *next_pc);
#endif
