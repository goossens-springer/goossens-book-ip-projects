#include "fetching_ip.h"
#include "fetch.h"
#include "execute.h"
static void running_cond_update(
  instruction_t instruction,
  bit_t        *is_running){
#pragma HLS INLINE off
  *is_running = (instruction != RET);
}
void fetching_ip(
  unsigned int start_pc,
  unsigned int code_ram[CODE_RAM_SIZE]){
#pragma HLS INTERFACE s_axilite port=start_pc
#pragma HLS INTERFACE s_axilite port=code_ram
#pragma HLS INTERFACE s_axilite port=return
  code_address_t pc;
  instruction_t  instruction;
  bit_t          is_running;
  pc = start_pc;
  do{
#pragma HLS PIPELINE off
    fetch(pc, code_ram, &instruction);
    execute(pc, &pc);
    running_cond_update(instruction, &is_running);
  } while (is_running);
}
