#include "debug_multihart_ip.h"
#include "multihart_ip.h"
#include "type.h"
#include "immediate.h"
#ifndef __SYNTHESIS__
#ifdef DEBUG_PIPELINE
#include <stdio.h>
#include "disassemble.h"
#endif
#endif
void init_d_state(bit_t *d_state_is_full){
  hart_num_p1_t h1;
  hart_num_t    h;
  for (h1=0; h1<NB_HART; h1++){
#pragma HLS UNROLL
    h                  = h1;
    d_state_is_full[h] = 0;
  }
}
static void decode_instruction(
  instruction_t          instruction,
  decoded_instruction_t *d_i){
  opcode_t opcode;
  bit_t    is_lui;
  bit_t    is_branch;
  bit_t    is_jal;
  bit_t    is_jalr;
  bit_t    is_load;
  bit_t    is_store;
  bit_t    is_op_imm;
  bit_t    is_not_auipc;
  bit_t    is_not_jal;
  opcode       = (instruction >> 2);
  is_lui       = (opcode == LUI);
  is_branch    = (opcode == BRANCH);
  is_jal       = (opcode == JAL);
  is_jalr      = (opcode == JALR);
  is_load      = (opcode == LOAD);
  is_store     = (opcode == STORE);
  is_op_imm    = (opcode == OP_IMM);
  is_not_auipc = (opcode != AUIPC);
  is_not_jal   = !is_jal;
  d_i->opcode     =  opcode;
  d_i->rd         = (instruction >>  7);
  d_i->func3      = (instruction >> 12);
  d_i->rs1        = (instruction >> 15);
  d_i->rs2        = (instruction >> 20);
  d_i->func7      = (instruction >> 25);
  d_i->is_rs1_reg = (is_not_jal   && !is_lui      &&
                     is_not_auipc && (d_i->rs1 != 0));
  d_i->is_rs2_reg = (!is_op_imm   && !is_load     &&
                     is_not_jal   && !is_jalr     &&
                     !is_lui      && is_not_auipc &&
                     (d_i->rs2 != 0));
  d_i->is_load    = is_load;
  d_i->is_store   = is_store;
  d_i->is_branch  = is_branch;
  d_i->is_jalr    = is_jalr;
  d_i->is_jal     = is_jal;
  d_i->is_ret     = (instruction == RET);
  d_i->is_lui     = is_lui;
  d_i->is_op_imm  = is_op_imm;
  d_i->has_no_dest= (is_branch || is_store || (d_i->rd == 0));
  d_i->type       = type(d_i->opcode);
  d_i->is_r_type  = (d_i->type   == R_TYPE);
}
static void decode_immediate(
  instruction_t          instruction,
  decoded_instruction_t *d_i){
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
static void save_input_from_f(
  from_f_to_d_t d_from_f,
  d_state_t    *d_state){
  hart_num_t            hart;
  decoded_instruction_t d_i;
  hart                      = d_from_f.hart;
  d_state[hart].fetch_pc    = d_from_f.fetch_pc;
  d_state[hart].instruction = d_from_f.instruction;
}
static void stage_job(
  hart_num_t hart,
  d_state_t *d_state){
#pragma HLS INLINE
  decoded_instruction_t d_i;
  decode_instruction(d_state[hart].instruction, &d_i);
  decode_immediate  (d_state[hart].instruction, &d_i);
  d_state[hart].d_i = d_i;
  d_state[hart].relative_pc =
    (d_i.is_jal)?
      (code_address_t)(d_state[hart].fetch_pc +
      (code_address_t)(d_i.imm >> 1)):
      (code_address_t)(d_state[hart].fetch_pc + 1);
}
static void set_output_to_f(
  hart_num_t     hart,
  d_state_t     *d_state,
  from_d_to_f_t *d_to_f){
  d_to_f->hart        = hart;
  d_to_f->relative_pc = d_state[hart].relative_pc;
}
static void set_output_to_i(
  hart_num_t     hart,
  d_state_t     *d_state,
  from_d_to_i_t *d_to_i){
  d_to_i->hart        = hart;
  d_to_i->fetch_pc    = d_state[hart].fetch_pc;
  d_to_i->d_i         = d_state[hart].d_i;
  d_to_i->relative_pc = d_state[hart].relative_pc;
#ifndef __SYNTHESIS__
  d_to_i->instruction = d_state[hart].instruction;
#endif
}
static void select_hart(
  bit_t      *d_state_is_full,
  bit_t      *i_state_is_full,
  bit_t      *is_selected,
  hart_num_t *selected_hart){
  bit_t c[NB_HART];
  c[0] = (d_state_is_full[0] && !i_state_is_full[0]);
#if (NB_HART>1)
  c[1] = (d_state_is_full[1] && !i_state_is_full[1]);
#endif
#if (NB_HART>2)
  c[2] = (d_state_is_full[2] && !i_state_is_full[2]);
  c[3] = (d_state_is_full[3] && !i_state_is_full[3]);
#endif
#if (NB_HART>4)
  c[4] = (d_state_is_full[4] && !i_state_is_full[4]);
  c[5] = (d_state_is_full[5] && !i_state_is_full[5]);
  c[6] = (d_state_is_full[6] && !i_state_is_full[6]);
  c[7] = (d_state_is_full[7] && !i_state_is_full[7]);
#endif
#if   (NB_HART<2)
  *selected_hart =  0;
  *is_selected   =  c[0];
#elif (NB_HART<3)
  *selected_hart = (c[0])?0:1;
  *is_selected   = (c[0] || c[1]);
#elif (NB_HART<5)
  hart_num_t h01, h23;
  bit_t      c01, c23;
  h01 = (c[0])?0:1;
  c01 = (c[0] || c[1]);
  h23 = (c[2])?2:3;
  c23 = (c[2] || c[3]);
  *selected_hart = (c01)?h01:h23;
  *is_selected   = (c01 || c23);
#elif (NB_HART<9)
  hart_num_t h01, h23, h45, h67, h03, h47;
  bit_t      c01, c23, c45, c67, c03, c47;
  h01 = (c[0])?0:1;
  c01 = (c[0] || c[1]);
  h23 = (c[2])?2:3;
  c23 = (c[2] || c[3]);
  h45 = (c[4])?4:5;
  c45 = (c[4] || c[5]);
  h67 = (c[6])?6:7;
  c67 = (c[6] || c[7]);
  h03 = (c01)?h01:h23;
  h47 = (c45)?h45:h67;
  c03 = (c01 || c23);
  c47 = (c45 || c67);
  *selected_hart = (c03)?h03:h47;
  *is_selected   = (c03 || c47);
#endif
}
void decode(
  from_f_to_d_t  d_from_f,
  bit_t         *i_state_is_full,
  d_state_t     *d_state,
  from_d_to_f_t *d_to_f,
  from_d_to_i_t *d_to_i,
  bit_t         *d_state_is_full){
  bit_t      is_selected;
  hart_num_t selected_hart;
  bit_t      is_decoding;
  hart_num_t decoding_hart;
  select_hart(d_state_is_full, i_state_is_full,
             &is_selected, &selected_hart);
  if (d_from_f.is_valid){
    d_state_is_full[d_from_f.hart] = 1;
    save_input_from_f(d_from_f, d_state);
  }
  is_decoding   =
    is_selected ||
   (d_from_f.is_valid && !i_state_is_full[d_from_f.hart]);
  decoding_hart =
   (is_selected)?selected_hart:d_from_f.hart;
  if (is_decoding){
    d_state_is_full[decoding_hart] = 0;
    stage_job(decoding_hart, d_state);
#ifndef __SYNTHESIS__
#ifdef DEBUG_PIPELINE
    printf("hart %d: decoded  %04d: ",
                (int)decoding_hart,
                (int)(d_state[decoding_hart].fetch_pc<<2));
    disassemble(d_state[decoding_hart].fetch_pc,
                d_state[decoding_hart].instruction,
                d_state[decoding_hart].d_i);
    if (d_state[decoding_hart].d_i.is_jal)
      printf("      pc  = %16d (%8x)\n",
          (int)(d_state[decoding_hart].relative_pc<<2),
 (unsigned int)(d_state[decoding_hart].relative_pc<<2));
#endif
#endif
    set_output_to_f(decoding_hart, d_state, d_to_f);
    set_output_to_i(decoding_hart, d_state, d_to_i);
  }
  d_to_f->is_valid =
    is_decoding                          &&
   !d_state[decoding_hart].d_i.is_branch &&
   !d_state[decoding_hart].d_i.is_jalr;
  d_to_i->is_valid = is_decoding;
}
