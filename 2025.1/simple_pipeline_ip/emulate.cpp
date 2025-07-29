#ifndef __SYNTHESIS__
#include <stdio.h>
#include "simple_pipeline_ip.h"
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
    if ((d_i.is_load       &&
        (d_i.func3  == LBU || d_i.func3 == LHU))  ||
        (d_i.is_op_imm     && d_i.func3 == SLTIU) ||
        (d_i.opcode == OP  && d_i.func3 == SLTU ))
      printf("%16d (%8x)", (unsigned int)reg_file[d_i.rd],
                           (unsigned int)reg_file[d_i.rd]);
    else
      printf("%16d (%8x)", reg_file[d_i.rd],
                           reg_file[d_i.rd]);
  }
}
static void emulate_load(
  int                  *reg_file,
  decoded_instruction_t d_i){
  unsigned int address = reg_file[d_i.rs1] + d_i.imm;
  emulate_op(reg_file, d_i);
  printf("    (m[%5x])", address);
}
static void emulate_store(
  int                  *reg_file,
  decoded_instruction_t d_i){
  unsigned int address = reg_file[d_i.rs1] + d_i.imm;
  printf("m[%5x]", address);
  printf(" = ");
  printf("%16d (%8x)", reg_file[d_i.rs2],
                       reg_file[d_i.rs2]);
}
void emulate(
  int                  *reg_file,
  decoded_instruction_t d_i,
  code_address_t        next_pc){
  printf("      ");
  switch(d_i.type){
    case R_TYPE://OP
      emulate_op(reg_file, d_i);
      break;
    case I_TYPE://JALR || OP_IMM || LOAD || SYSTEM
      if (d_i.is_jalr){
        printf("pc  = %16d (%8x)", (int)(next_pc<<2),
                          (unsigned int)(next_pc<<2));
        if (d_i.rd != 0) printf("\n      ");
        emulate_op(reg_file, d_i);
      }
      else if (d_i.is_op_imm)
        emulate_op(reg_file, d_i);
      else if (d_i.is_load)
        emulate_load(reg_file, d_i);
      break;
    case S_TYPE://STORE
      emulate_store(reg_file, d_i);
      break;
    case B_TYPE://BRANCH
      printf("pc  = %16d (%8x)", (int)(next_pc<<2),
                        (unsigned int)(next_pc<<2));
      break;
    case U_TYPE://LUI || AUIPC
      emulate_op(reg_file, d_i);
      break;
    case J_TYPE://JAL
      printf("pc  = %16d (%8x)", (int)(next_pc<<2),
                        (unsigned int)(next_pc<<2));
      if (d_i.rd != 0) printf("\n      ");
      emulate_op(reg_file, d_i);
      break;
    default:
      break;
  }
  printf("\n");
}
#endif
