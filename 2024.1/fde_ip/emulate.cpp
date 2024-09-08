#ifndef __SYNTHESIS__
#include <stdio.h>
#include "fde_ip.h"
#include "print.h"
static void emulate_op(
  int                  *reg_file,
  decoded_instruction_t d_i){
  if (d_i.rd != 0){
    print_reg_name(d_i.rd);
#ifdef SYMB_REG
    if (d_i.rd!=26 && d_i.rd!=27)
      printf(" ");
#else
    if (d_i.rd < 10)
      printf(" ");
#endif
    printf(" = ");
    if ((d_i.opcode == OP_IMM && d_i.func3  == SLTIU) ||
        (d_i.opcode == OP     && d_i.func3  == SLTU))
      printf("%16d (%8x)", (unsigned int)reg_file[d_i.rd],
                           (unsigned int)reg_file[d_i.rd]);
    else
      printf("%16d (%8x)", reg_file[d_i.rd],
                           reg_file[d_i.rd]);
  }
}
void emulate(
  int                  *reg_file,
  decoded_instruction_t d_i,
  code_address_t        next_pc){
  printf("     ");
  switch(d_i.type){
    case R_TYPE://OP
      emulate_op(reg_file, d_i);
      break;
    case I_TYPE://JALR || OP_IMM || LOAD || SYSTEM
      if (d_i.opcode == JALR){
        printf("pc  = %16d (%8x)", (int)next_pc*
                                        sizeof(instruction_t),
                          (unsigned int)next_pc*
                                        sizeof(instruction_t));
        if (d_i.rd != 0) printf("\n     ");
        emulate_op(reg_file, d_i);
      }
      else if (d_i.opcode == OP_IMM)
        emulate_op(reg_file, d_i);
      break;
    case S_TYPE://STORE
      break;
    case B_TYPE://BRANCH
      printf("pc  = %16d (%8x)", (int)next_pc*
                                      sizeof(instruction_t),
                        (unsigned int)next_pc*
                                      sizeof(instruction_t));
      break;
    case U_TYPE://LUI || AUIPC
      emulate_op(reg_file, d_i);
      break;
    case J_TYPE://JAL
      printf("pc  = %16d (%8x)", (int)next_pc*
                                      sizeof(instruction_t),
                        (unsigned int)next_pc*
                                      sizeof(instruction_t));
      if (d_i.rd != 0) printf("\n     ");
      emulate_op(reg_file, d_i);
      break;
    default:
      break;
  }
  printf("\n");
}
#endif
