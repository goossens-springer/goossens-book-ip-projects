#include "debug_fetching_decoding_ip.h"
#include "fetching_decoding_ip.h"
#include "type.h"
#include "immediate.h"
#ifndef __SYNTHESIS__
#ifdef DEBUG_DECODE
#include "print.h"
#endif
#endif
static void decode_instruction(
  instruction_t          instruction,
  decoded_instruction_t *d_i){
#pragma HLS INLINE
  d_i->opcode     = (instruction >>  2);
  d_i->rd         = (instruction >>  7);
  d_i->func3      = (instruction >> 12);
  d_i->rs1        = (instruction >> 15);
  d_i->rs2        = (instruction >> 20);
  d_i->func7      = (instruction >> 25);
  d_i->type       = type(d_i->opcode);
}
static void decode_immediate(
  instruction_t          instruction,
  decoded_instruction_t *d_i){
#pragma HLS INLINE
  decoded_immediate_t d_imm;
  d_imm.inst_31    = (instruction >> 31);
  d_imm.inst_30_25 = (instruction >> 25);
  d_imm.inst_24_21 = (instruction >> 21);
  d_imm.inst_20    = (instruction >> 20);
  d_imm.inst_19_12 = (instruction >> 12);
  d_imm.inst_11_8  = (instruction >>  8);
  d_imm.inst_7     = (instruction >>  7);
  switch(d_i->type){
    case UNDEFINED_TYPE: d_i->imm = 0; break;
    case R_TYPE:         d_i->imm = 0; break;
    case I_TYPE:         d_i->imm = i_immediate(d_imm); break;
    case S_TYPE:         d_i->imm = s_immediate(d_imm); break;
    case B_TYPE:         d_i->imm = b_immediate(d_imm); break;
    case U_TYPE:         d_i->imm = u_immediate(d_imm); break;
    case J_TYPE:         d_i->imm = j_immediate(d_imm); break;
    case OTHER_TYPE:     d_i->imm = 0; break;
  }
}
void decode(
  instruction_t          instruction,
  decoded_instruction_t *d_i){
#pragma HLS INLINE off
  decode_instruction(instruction, d_i);
  decode_immediate  (instruction, d_i);
#ifndef __SYNTHESIS__
#ifdef DEBUG_DECODE
  print_decode(*d_i);
#endif
#endif
}
