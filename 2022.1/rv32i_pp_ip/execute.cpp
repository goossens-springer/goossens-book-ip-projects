#include "debug_rv32i_pp_ip.h"
#include "rv32i_pp_ip.h"
#include "compute.h"
static int bypass(
  bit_t     m_bp,
  int       mem_result,
  int       wb_result){
  if (m_bp) return mem_result;
  else      return wb_result;
}
static void get_source(
  int           r1,
  int           r2,
  from_f_to_e_t e_from_f,
  bit_t         m_cancel,
  bit_t         m_has_no_dest,
  reg_num_t     m_rd,
  int           m_result,
  bit_t         w_cancel,
  bit_t         w_has_no_dest,
  reg_num_t     w_rd,
  int           w_result,
  int          *rv1,
  int          *rv2){
  bit_t     m_bp_1, m_bp_2, w_bp_1, w_bp_2;
  bit_t     bypass_rs1, bypass_rs2;
  reg_num_t rs1, rs2;
  rs1 = e_from_f.d_i.rs1;
  rs2 = e_from_f.d_i.rs2;
  m_bp_1 = (!m_cancel && !m_has_no_dest &&
            rs1!=0    && rs1==m_rd);
  w_bp_1 = (!w_cancel && !w_has_no_dest &&
            rs1!=0    && rs1==w_rd);
  bypass_rs1 = m_bp_1 || w_bp_1;
  m_bp_2 = (!m_cancel && !m_has_no_dest &&
            rs2!=0    && rs2==m_rd);
  w_bp_2 = (!w_cancel && !w_has_no_dest &&
            rs2!=0    && rs2==w_rd);
  bypass_rs2 = m_bp_2 || w_bp_2;
  *rv1 = (bypass_rs1)?bypass(m_bp_1, m_result, w_result):r1;
  *rv2 = (bypass_rs2)?bypass(m_bp_2, m_result, w_result):r2;
}
void execute(
  from_f_to_e_t  f_to_e,
  from_f_to_e_t  e_from_f,
  bit_t          e_cancel,
  bit_t          m_cancel,
  bit_t          m_has_no_dest,
  reg_num_t      m_rd,
  int            m_result,
  bit_t          w_cancel,
  bit_t          w_has_no_dest,
  reg_num_t      w_rd,
  int            w_result,
  int           *reg_file,
  from_e_to_f_t *e_to_f,
  from_e_to_e_t *e_to_e,
  from_e_to_m_t *e_to_m){
  int       r1, r2, rv1, rv2, rs;
  int       c_op_result, c_result, result;
  reg_num_t rs1, rs2;
  bit_t     bcond, taken_branch, load_delay, is_rs1_reg, is_rs2_reg;
  opcode_t  opcode;
  rs1 = e_from_f.d_i.rs1;
  rs2 = e_from_f.d_i.rs2;
  r1  = read_reg(reg_file, rs1);
  r2  = read_reg(reg_file, rs2);
  get_source(r1, r2,
             e_from_f,
             m_cancel,
             m_has_no_dest,
             m_rd,
             m_result,
             w_cancel,
             w_has_no_dest,
             w_rd,
             w_result,
            &rv1, &rv2);
  bcond = compute_branch_result(rv1, rv2, e_from_f.d_i.func3);
  taken_branch = e_from_f.d_i.is_branch && bcond;
  rs = (e_from_f.d_i.is_r_type)?
       rv2:(int)e_from_f.d_i.imm;
  c_op_result = compute_op_result(e_from_f.d_i, rv1, rs);
  c_result    = compute_result(e_from_f.pc, e_from_f.d_i, rv1);
  result      = (e_from_f.d_i.is_r_type ||
                 e_from_f.d_i.is_op_imm)?
                 c_op_result:c_result;
  e_to_f->target_pc =
           compute_next_pc(e_from_f.pc, e_from_f.d_i, rv1,
                           bcond);
  opcode     = f_to_e.d_i.opcode;
  is_rs1_reg = ((opcode != JAL)    && (opcode != LUI)   &&
                (opcode != AUIPC)  && (f_to_e.d_i.rs1 != 0));
  is_rs2_reg = ((opcode != OP_IMM) && (opcode != LOAD)  &&
                (opcode != JAL)    && (opcode != JALR)  &&
                (opcode != LUI)    && (opcode != AUIPC) &&
                (f_to_e.d_i.rs2 != 0));
  load_delay = !e_cancel  &&  e_from_f.d_i.is_load &&
             ((is_rs1_reg && (e_from_f.d_i.rd == f_to_e.d_i.rs1)) ||
              (is_rs2_reg && (e_from_f.d_i.rd == f_to_e.d_i.rs2)));
  if (load_delay) e_to_f->target_pc = e_from_f.pc + 1;
  e_to_f->set_pc =(e_from_f.d_i.is_jalr ||
                   e_from_f.d_i.is_jal  ||
                   taken_branch         ||
                   load_delay)          &&
                  !e_cancel;
  e_to_e->cancel      = e_to_f->set_pc;
  e_to_m->cancel      = e_cancel;
  e_to_m->result      =(e_from_f.d_i.is_ret)?
                   (int)e_to_f->target_pc:result;
  e_to_m->rv2         = rv2;
  e_to_m->d_i         = e_from_f.d_i;
#ifndef __SYNTHESIS__
#ifdef DEBUG_DISASSEMBLE
  e_to_m->pc          = e_from_f.pc;
  e_to_m->instruction = e_from_f.instruction;
#endif
#ifdef DEBUG_EMULATE
  e_to_m->next_pc     = e_to_f->target_pc;
#endif
#endif
}
