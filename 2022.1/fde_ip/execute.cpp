#include "ap_int.h"
#include "debug_fde_ip.h"
#include "fde_ip.h"
#ifndef __SYNTHESIS__
#ifdef DEBUG_EMULATE
#include "emulate.h"
#endif
#endif
static void read_reg(
  int      *reg_file,
  reg_num_t rs1,
  reg_num_t rs2,
  int      *rv1,
  int      *rv2){
#pragma HLS INLINE
  *rv1 = reg_file[rs1];
  *rv2 = reg_file[rs2];
}
static void write_reg(
  int                  *reg_file,
  decoded_instruction_t d_i,
  int                   result){
#pragma HLS INLINE
  if (d_i.rd     != 0      &&
      d_i.opcode != BRANCH &&
      d_i.opcode != STORE)
    reg_file[d_i.rd] = result;
}
static bit_t compute_branch_result(
  int                   rv1,
  int                   rv2,
  decoded_instruction_t d_i){
#pragma HLS INLINE
  switch(d_i.func3){
    case BEQ : return (rv1 == rv2);
    case BNE : return (rv1 != rv2);
    case 2   :
    case 3   : return 0;
    case BLT : return (rv1 <  rv2);
    case BGE : return (rv1 >= rv2);
    case BLTU: return (unsigned int)rv1 <  (unsigned int)rv2;
    case BGEU: return (unsigned int)rv1 >= (unsigned int)rv2;
  }
  return 0;
}
static int compute_op_result(
  int                   rv1,
  int                   rv2,
  decoded_instruction_t d_i){
#pragma HLS INLINE
  bit_t      f7_6   = d_i.func7>>5;
  bit_t      r_type = d_i.type == R_TYPE;
  ap_uint<5> shift;
  int        result;
  if (r_type)
    shift = rv2;
  else//I_TYPE
    shift = d_i.rs2;
  switch(d_i.func3){
    case ADD : if (r_type && f7_6)
                 result = rv1 - rv2;//SUB
               else
                 result = rv1 + rv2;
               break;
    case SLL : result = rv1 << shift;
               break;
    case SLT : result = rv1 < rv2;
               break;
    case SLTU: result = (unsigned int)rv1 < (unsigned int)rv2;
               break;
    case XOR : result = rv1 ^ rv2;
               break;
    case SRL : if (f7_6)
                 result = rv1 >> shift;//SRA
               else
                 result = (unsigned int)rv1 >> shift;
               break;
    case OR  : result = rv1 | rv2;
               break;
    case AND : result = rv1 & rv2;
               break;
  }
  return result;
}
static int compute_result(
  int                   rv1,
  int                   rv2,
  decoded_instruction_t d_i,
  code_address_t        pc){
#pragma HLS INLINE
  int            imm12 = ((int)d_i.imm)<<12;
  code_address_t pc4   = pc<<2;
  code_address_t npc4  = pc4 + 4;
  int            result;
  switch(d_i.type){
    case R_TYPE:
      result = compute_op_result(rv1, rv2, d_i);
      break;
    case I_TYPE:
      if (d_i.opcode == JALR)
        result = npc4;
      else if (d_i.opcode == LOAD)
        result = 0;
      else if (d_i.opcode == OP_IMM)
        result = compute_op_result(rv1, (int)d_i.imm, d_i);
      else
        result = 0;//(d_i.opcode == SYSTEM)
      break;
    case S_TYPE:
      result = 0;
      break;
    case B_TYPE:
      result = (unsigned int)
               compute_branch_result(rv1, rv2, d_i);
      break;
    case U_TYPE:
      if (d_i.opcode == LUI)
        result = imm12;
      else//d_i.opcode == AUIPC
        result = pc4 + imm12;
      break;
    case J_TYPE:
      result = npc4;
      break;
    default:
      result = 0;
      break;
  }
  return result;
}
static code_address_t compute_next_pc(
  code_address_t        pc,
  int                   rv1,
  decoded_instruction_t d_i,
  bit_t                 cond){
#pragma HLS INLINE
  code_address_t next_pc;
  switch(d_i.type){
    case R_TYPE:
      next_pc = (code_address_t)(pc+1);
      break;
    case I_TYPE:
      next_pc = (d_i.opcode==JALR)?
                (code_address_t)
                (((rv1 + (int)d_i.imm)&0xfffffffe)>>2):
                (code_address_t)(pc+1);
      break;
    case S_TYPE:
      next_pc = (code_address_t)(pc+1);
      break;
    case B_TYPE:
      next_pc = (cond)?
                (code_address_t)(pc + (d_i.imm>>1)):
                (code_address_t)(pc + 1);
      break;
    case U_TYPE:
      next_pc = (code_address_t)(pc + 1);
      break;
    case J_TYPE:
      next_pc = (code_address_t)(pc + (d_i.imm>>1));
      break;
    default:
      next_pc = (code_address_t)(pc + 1);
      break;
  }
  return next_pc;
}
void execute(
  code_address_t        pc,
  int                  *reg_file,
  decoded_instruction_t d_i,
  code_address_t       *next_pc){
#pragma HLS INLINE off
  int rv1, rv2, result;
  read_reg(reg_file, d_i.rs1, d_i.rs2, &rv1, &rv2);
  result = compute_result(rv1, rv2, d_i, pc);
  write_reg(reg_file, d_i, result);
  *next_pc = compute_next_pc(pc, rv1, d_i, (bit_t)result);
#ifndef __SYNTHESIS__
#ifdef DEBUG_EMULATE
  emulate(reg_file, d_i, *next_pc);
#endif
#endif
}
