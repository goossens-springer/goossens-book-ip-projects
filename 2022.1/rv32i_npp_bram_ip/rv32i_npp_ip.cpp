#include "debug_rv32i_npp_ip.h"
#include "rv32i_npp_ip.h"
#include "fetch.h"
#include "decode.h"
#include "execute.h"
#ifndef __SYNTHESIS__
#ifdef DEBUG_DISASSEMBLE
#include "disassemble.h"
#endif
#ifdef DEBUG_REG_FILE
#include "print.h"
#endif
#endif
static void running_cond_update(
  instruction_t  instruction,
  code_address_t pc,
  bit_t         *is_running){
  *is_running = (instruction != RET || pc != 0);
}
static void statistic_update(
  unsigned int *nbi){
  *nbi = *nbi + 1;
}
void rv32i_npp_ip(
  unsigned int  start_pc,
  unsigned int  code_ram[CODE_RAM_SIZE],
  int           data_ram[DATA_RAM_SIZE],
  unsigned int *nb_instruction){
#pragma HLS INTERFACE s_axilite port=start_pc
#pragma HLS INTERFACE bram      port=code_ram
#pragma HLS INTERFACE bram      port=data_ram
#pragma HLS INTERFACE s_axilite port=nb_instruction
#pragma HLS INTERFACE s_axilite port=return
#pragma HLS INLINE recursive
  code_address_t        pc;
  int                   reg_file[NB_REGISTER];
#pragma HLS ARRAY_PARTITION variable=reg_file dim=1 complete
  instruction_t         instruction;
  bit_t                 is_running;
  unsigned int          nbi;
  decoded_instruction_t d_i;
  for (int i=0; i<NB_REGISTER; i++) reg_file[i] = 0;
  pc  = start_pc;
  nbi = 0;
  do{
#pragma HLS PIPELINE II=7
    fetch(pc, code_ram, &instruction);
    decode(instruction, &d_i);
#ifndef __SYNTHESIS__
#ifdef DEBUG_DISASSEMBLE
    disassemble(pc, instruction, d_i);
#endif
#endif
    execute(pc, reg_file, data_ram, d_i, &pc);
    statistic_update(&nbi);
    running_cond_update(instruction, pc, &is_running);
  } while (is_running);
  *nb_instruction = nbi;
#ifndef __SYNTHESIS__
#ifdef DEBUG_REG_FILE
  print_reg(reg_file);
#endif
#endif
}
