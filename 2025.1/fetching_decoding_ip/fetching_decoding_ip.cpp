#include "fetching_decoding_ip.h"
#include "fetch.h"
#include "decode.h"
#include "execute.h"
static void running_cond_update(
  instruction_t instruction,
  bit_t        *is_running){
#pragma HLS INLINE off
  *is_running = (instruction != RET);
}
static unsigned int statistic_update(
  unsigned int nbi){
#pragma HLS INLINE off
  return nbi + 1;
}
void fetching_decoding_ip(
  unsigned int  start_pc,
  unsigned int  code_ram[CODE_RAM_SIZE],
  unsigned int *nb_instruction){
#pragma HLS INTERFACE s_axilite port=start_pc
#pragma HLS INTERFACE s_axilite port=code_ram
#pragma HLS INTERFACE s_axilite port=nb_instruction
#pragma HLS INTERFACE s_axilite port=return
  code_address_t        pc;
  instruction_t         instruction;
  bit_t                 is_running;
  decoded_instruction_t d_i;
  unsigned int          nbi;
  nbi = 0;
  pc  = start_pc;
  do{
#pragma HLS PIPELINE II=3
    fetch(pc, code_ram, &instruction);
    decode(instruction, &d_i);
    execute(pc, d_i, &pc);
    nbi = statistic_update(nbi);
    running_cond_update(instruction, &is_running);
  } while (is_running);
  *nb_instruction = nbi;
}
