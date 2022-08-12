#include "fetching_decoding_ip.h"
code_address_t compute_next_pc(
  code_address_t        pc,
  decoded_instruction_t d_i){
#pragma HLS INLINE
  code_address_t next_pc;
  switch(d_i.type){
    case R_TYPE:
      next_pc = pc + 1;
      break;
    case I_TYPE:
      next_pc = pc + 1;
      break;
    case S_TYPE:
      next_pc = pc + 1;
      break;
    case B_TYPE:
      next_pc = pc + 1;
      break;
    case U_TYPE:
      next_pc = pc + 1;
      break;
    case J_TYPE:
      next_pc = pc + (d_i.imm>>1);
      break;
    default:
      next_pc = pc + 1;
      break;
  }
  return next_pc;
}
void execute(
  code_address_t        pc,
  decoded_instruction_t d_i,
  code_address_t       *next_pc){
#pragma HLS INLINE off
  *next_pc = compute_next_pc(pc, d_i);
}
