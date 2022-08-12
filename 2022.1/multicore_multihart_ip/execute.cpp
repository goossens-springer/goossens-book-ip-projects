#include "ap_int.h"
#include "debug_multihart_ip.h"
#include "multihart_ip.h"
#include "compute.h"
#ifndef __SYNTHESIS__
#ifdef DEBUG_PIPELINE
#include "stdio.h"
#include "emulate.h"
#endif
#endif
void init_e_state(bit_t *e_state_is_full){
  hart_num_p1_t h1;
  hart_num_t    h;
  for (h1=0; h1<NB_HART; h1++){
#pragma HLS UNROLL
    h                  = h1;
    e_state_is_full[h] = 0;
  }
}
static void save_input_from_i(
  from_i_to_e_t e_from_i,
  e_state_t    *e_state){
  hart_num_t hart;
  hart                        = e_from_i.hart;
  e_state[hart].fetch_pc      = e_from_i.fetch_pc;
  e_state[hart].d_i           = e_from_i.d_i;
  e_state[hart].relative_pc   = e_from_i.relative_pc;
  e_state[hart].rv1           = e_from_i.rv1;
  e_state[hart].rv2           = e_from_i.rv2;
#ifndef __SYNTHESIS__
  e_state[hart].instruction = e_from_i.instruction;
#endif
}
static void compute(
  hart_num_t         hart,
  e_state_t         *e_state,
  bit_t             *bcond,
  int               *result1,
  int               *result2,
  ip_code_address_t *computed_pc){
  *bcond       = compute_branch_result(
    e_state[hart].rv1,
    e_state[hart].rv2,
    e_state[hart].d_i.func3);
  *result1     = compute_op_result(
    e_state[hart].rv1,
    e_state[hart].rv2,
    e_state[hart].d_i);
  *result2     = compute_result(
    e_state[hart].rv1,
    e_state[hart].fetch_pc,
    e_state[hart].d_i);
  *computed_pc = compute_next_pc(
    e_state[hart].fetch_pc,
    e_state[hart].d_i,
    e_state[hart].rv1);
}
static void stage_job(
  hart_num_t        hart,
  e_state_t        *e_state,
  bit_t             bcond,
  ip_code_address_t computed_pc){
  e_state[hart].target_pc =
   ((e_state[hart].d_i.is_branch && bcond) ||
     e_state[hart].d_i.is_jalr)?computed_pc:
                                e_state[hart].relative_pc;
  e_state[hart].is_target =
    (e_state[hart].d_i.is_branch ||
    (e_state[hart].d_i.is_jalr   &&
   (!e_state[hart].d_i.is_ret    ||
    (computed_pc != 0))));
}
static void set_output_to_f(
  hart_num_t     hart,
  e_state_t     *e_state,
  from_e_to_f_t *e_to_f){
  e_to_f->hart      = hart;
  e_to_f->target_pc = e_state[hart].target_pc;
}
static void set_output_to_m(
  hart_num_t        hart,
  int               result1,
  int               result2,
  ip_code_address_t computed_pc,
  e_state_t        *e_state,
  from_e_to_m_t    *e_to_m){
  e_to_m->hart        = hart;
  e_to_m->rd          = e_state[hart].d_i.rd;
  e_to_m->has_no_dest = e_state[hart].d_i.has_no_dest;
  e_to_m->is_load     = e_state[hart].d_i.is_load;
  e_to_m->is_store    = e_state[hart].d_i.is_store;
  e_to_m->func3       = e_state[hart].d_i.func3;
  //is_ret is used by wb to set is_exited
  e_to_m->is_ret      = e_state[hart].d_i.is_ret;
  e_to_m->address     = result2;
  e_to_m->value       =
    (e_state[hart].d_i.is_ret)?(int)computed_pc:
    (e_state[hart].d_i.is_jal || e_state[hart].d_i.is_jalr ||
    (e_state[hart].d_i.type == U_TYPE))?result2:
    (e_state[hart].d_i.is_store)?
      e_state[hart].rv2:result1;
#ifndef __SYNTHESIS__
  e_to_m->fetch_pc    = e_state[hart].fetch_pc;
  e_to_m->instruction = e_state[hart].instruction;
  e_to_m->d_i         = e_state[hart].d_i;
  e_to_m->target_pc   = e_state[hart].target_pc;
#endif
}
static void select_hart(
  bit_t     *e_state_is_full,
  bit_t     *m_state_is_full,
  bit_t     *is_selected,
  hart_num_t*selected_hart){
  bit_t c[NB_HART];
  c[0] =(e_state_is_full[0] && !m_state_is_full[0]);
#if (NB_HART>1)
  c[1] =(e_state_is_full[1] && !m_state_is_full[1]);
#endif
#if (NB_HART>2)
  c[2] =(e_state_is_full[2] && !m_state_is_full[2]);
  c[3] =(e_state_is_full[3] && !m_state_is_full[3]);
#endif
#if (NB_HART>4)
  c[4] =(e_state_is_full[4] && !m_state_is_full[4]);
  c[5] =(e_state_is_full[5] && !m_state_is_full[5]);
  c[6] =(e_state_is_full[6] && !m_state_is_full[6]);
  c[7] =(e_state_is_full[7] && !m_state_is_full[7]);
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
void execute(
#ifndef __SYNTHESIS__
  ip_num_t       ip_num,
#endif
  from_i_to_e_t  e_from_i,
  bit_t         *m_state_is_full,
#ifndef __SYNTHESIS__
  int            reg_file[][NB_REGISTER],
#endif
  e_state_t     *e_state,
  from_e_to_f_t *e_to_f,
  from_e_to_m_t *e_to_m,
  bit_t         *e_state_is_full){
  bit_t             is_selected;
  hart_num_t        selected_hart;
  bit_t             is_executing;
  hart_num_t        executing_hart;
  bit_t             bcond;
  int               result1;
  int               result2;
  ip_code_address_t computed_pc;
  select_hart(e_state_is_full, m_state_is_full,
             &is_selected, &selected_hart);
  if (e_from_i.is_valid){
    e_state_is_full[e_from_i.hart] = 1;
    save_input_from_i(e_from_i, e_state);
  }
  is_executing   =
    is_selected ||
   (e_from_i.is_valid && !m_state_is_full[e_from_i.hart]);
  executing_hart =
   (is_selected)?selected_hart:e_from_i.hart;
  if (is_executing){
    e_state_is_full[executing_hart] = 0;
    compute  (executing_hart, e_state, &bcond, &result1,
             &result2, &computed_pc);
    stage_job(executing_hart, e_state,  bcond, computed_pc);
#ifndef __SYNTHESIS__
#ifdef DEBUG_PIPELINE
    printf("hart %d: execute  ", (int)executing_hart);
    printf("%04d\n", (int)(e_state[executing_hart].fetch_pc<<2));
    if (e_state[executing_hart].d_i.is_branch ||
        e_state[executing_hart].d_i.is_jalr)
       emulate(ip_num, executing_hart, reg_file,
               e_state[executing_hart].d_i,
               e_state[executing_hart].target_pc);
#endif
#endif
    set_output_to_f(executing_hart, e_state, e_to_f);
    set_output_to_m(executing_hart, result1, result2, computed_pc, e_state, e_to_m);
  }
  //block fetch after last RET
  //(i.e. RET with 0 return address)
  e_to_f->is_valid =
    is_executing && e_state[executing_hart].is_target;
  e_to_m->is_valid = is_executing;
}
