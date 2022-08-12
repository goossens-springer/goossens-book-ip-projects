#include "debug_multihart_ip.h"
#include "multihart_ip.h"
#ifndef __SYNTHESIS__
#ifdef DEBUG_PIPELINE
#include "stdio.h"
#endif
#endif
void init_i_state(bit_t *i_state_is_full){
  hart_num_p1_t h1;
  hart_num_t    h;
  for (h1=0; h1<NB_HART; h1++){
#pragma HLS UNROLL
    h                  = h1;
    i_state_is_full[h] = 0;
  }
}
static void save_input_from_d(
  from_d_to_i_t i_from_d,
  bit_t         is_reg_computed[][NB_REGISTER],
  i_state_t    *i_state){
  hart_num_t hart;
  bit_t      is_locked_1;
  bit_t      is_locked_2;
  hart                      = i_from_d.hart;
  i_state[hart].fetch_pc    = i_from_d.fetch_pc;
  i_state[hart].d_i         = i_from_d.d_i;
  i_state[hart].relative_pc = i_from_d.relative_pc;
  is_locked_1 =
    i_from_d.d_i.is_rs1_reg   &&
    is_reg_computed[hart][i_from_d.d_i.rs1];
  is_locked_2 =
    i_from_d.d_i.is_rs2_reg   &&
    is_reg_computed[hart][i_from_d.d_i.rs2];
  i_state[hart].wait_12     =
    is_locked_1 || is_locked_2;
#ifndef __SYNTHESIS__
  i_state[hart].instruction = i_from_d.instruction;
#endif
}
static void stage_job(
  hart_num_t hart,
  i_state_t *i_state,
  int        reg_file[][NB_REGISTER]){
  i_state[hart].rv1 = reg_file[hart][i_state[hart].d_i.rs1];
  i_state[hart].rv2 = reg_file[hart][i_state[hart].d_i.rs2];
}
static void set_output_to_e(
  hart_num_t     hart,
  i_state_t     *i_state,
  from_i_to_e_t *i_to_e){
  i_to_e->hart        = hart;
  i_to_e->fetch_pc    = i_state[hart].fetch_pc;
  i_to_e->d_i         = i_state[hart].d_i;
  i_to_e->relative_pc = i_state[hart].relative_pc;
  i_to_e->rv1         = i_state[hart].rv1;
  i_to_e->rv2         = i_state[hart].rv2;
#ifndef __SYNTHESIS__
  i_to_e->instruction = i_state[hart].instruction;
#endif
}
static void select_hart(
  i_state_t  *i_state,
  bit_t      *i_state_is_full,
  bit_t      *e_state_is_full,
  bit_t       is_reg_computed[][NB_REGISTER],
  bit_t      *is_selected,
  hart_num_t *selected_hart){
  bit_t c          [NB_HART];
  bit_t is_locked_1[NB_HART];
  bit_t is_locked_2[NB_HART];
  bit_t wait_12    [NB_HART];
  is_locked_1      [0] =
    i_state        [0].d_i.is_rs1_reg   &&
    is_reg_computed[0][i_state[0].d_i.rs1];
  is_locked_2      [0] =
    i_state        [0].d_i.is_rs2_reg   &&
    is_reg_computed[0][i_state[0].d_i.rs2];
  wait_12          [0] =
    is_locked_1[0] || is_locked_2[0];
  c[0] = (i_state_is_full[0] && !e_state_is_full[0] &&
         !wait_12[0]);
#if (NB_HART>1)
  is_locked_1      [1] =
    i_state        [1].d_i.is_rs1_reg &&
    is_reg_computed[1][i_state[1].d_i.rs1];
  is_locked_2      [1] =
    i_state        [1].d_i.is_rs2_reg &&
    is_reg_computed[1][i_state[1].d_i.rs2];
  wait_12          [1] =
    is_locked_1[1] || is_locked_2[1];
  c[1] = (i_state_is_full[1] && !e_state_is_full[1] &&
         !wait_12[1]);
#endif
#if (NB_HART>2)
  is_locked_1      [2] =
    i_state        [2].d_i.is_rs1_reg &&
    is_reg_computed[2] [i_state[2].d_i.rs1];
  is_locked_2      [2] =
    i_state        [2].d_i.is_rs2_reg &&
    is_reg_computed[2] [i_state[2].d_i.rs2];
  wait_12          [2] =
    is_locked_1[2] || is_locked_2[2];
  is_locked_1      [3] =
    i_state        [3].d_i.is_rs1_reg &&
    is_reg_computed[3] [i_state[3].d_i.rs1];
  is_locked_2      [3] =
    i_state        [3].d_i.is_rs2_reg &&
    is_reg_computed[3] [i_state[3].d_i.rs2];
  wait_12          [3] =
    is_locked_1[3] || is_locked_2[3];
  c[2] = (i_state_is_full[2] && !e_state_is_full[2] &&
         !wait_12[2]);
  c[3] = (i_state_is_full[3] && !e_state_is_full[3] &&
         !wait_12[3]);
#endif
#if (NB_HART>4)
  is_locked_1      [4] =
    i_state        [4].d_i.is_rs1_reg &&
    is_reg_computed[4] [i_state[4].d_i.rs1];
  is_locked_2      [4] =
    i_state        [4].d_i.is_rs2_reg &&
    is_reg_computed[4] [i_state[4].d_i.rs2];
  wait_12          [4] =
    is_locked_1[4] || is_locked_2[4];
  is_locked_1      [5] =
    i_state        [5].d_i.is_rs1_reg &&
    is_reg_computed[5] [i_state[5].d_i.rs1];
  is_locked_2      [5] =
    i_state        [5].d_i.is_rs2_reg &&
    is_reg_computed[5] [i_state[5].d_i.rs2];
  wait_12          [5] =
    is_locked_1[5] || is_locked_2[5];
  is_locked_1      [6] =
    i_state        [6].d_i.is_rs1_reg &&
    is_reg_computed[6] [i_state[6].d_i.rs1];
  is_locked_2      [6] =
    i_state        [6].d_i.is_rs2_reg &&
    is_reg_computed[6] [i_state[6].d_i.rs2];
  wait_12          [6] =
    is_locked_1[6] || is_locked_2[6];
  is_locked_1      [7] =
    i_state        [7].d_i.is_rs1_reg &&
    is_reg_computed[7] [i_state[7].d_i.rs1];
  is_locked_2      [7] =
    i_state        [7].d_i.is_rs2_reg &&
    is_reg_computed[7] [i_state[7].d_i.rs2];
  wait_12          [7] =
    is_locked_1[7] || is_locked_2[7];
  c[4] = (i_state_is_full[4] && !e_state_is_full[4] &&
         !wait_12[4]);
  c[5] = (i_state_is_full[5] && !e_state_is_full[5] &&
         !wait_12[5]);
  c[6] = (i_state_is_full[6] && !e_state_is_full[6] &&
         !wait_12[6]);
  c[7] = (i_state_is_full[7] && !e_state_is_full[7] &&
         !wait_12[7]);
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
void issue(
  from_d_to_i_t  i_from_d,
  bit_t         *e_state_is_full,
  int            reg_file       [][NB_REGISTER],
  bit_t          is_reg_computed[][NB_REGISTER],
  i_state_t     *i_state,
  from_i_to_e_t *i_to_e,
  bit_t         *i_state_is_full,
  bit_t         *is_lock,
  hart_num_t    *i_hart,
  reg_num_t     *i_destination){
  bit_t      is_selected;
  hart_num_t selected_hart;
  bit_t      is_issuing;
  hart_num_t issuing_hart;
  select_hart(i_state, i_state_is_full, e_state_is_full,
              is_reg_computed, &is_selected, &selected_hart);
  if (i_from_d.is_valid){
    i_state_is_full[i_from_d.hart] = 1;
    save_input_from_d(i_from_d, is_reg_computed, i_state);
  }
  is_issuing   =
    is_selected ||
   (i_from_d.is_valid && !e_state_is_full[i_from_d.hart] &&
   !i_state[i_from_d.hart].wait_12);
  issuing_hart =
   (is_selected)?selected_hart:i_from_d.hart;
  *is_lock =
    is_issuing && !i_state[issuing_hart].d_i.has_no_dest;
  if (!i_state[issuing_hart].d_i.has_no_dest){
    *i_hart        = issuing_hart;
    *i_destination = i_state[issuing_hart].d_i.rd;
  }
  if (is_issuing){
    i_state_is_full[issuing_hart] = 0;
    stage_job(issuing_hart, i_state, reg_file);
#ifndef __SYNTHESIS__
#ifdef DEBUG_PIPELINE
    printf("hart %d: issued   ", (int)issuing_hart);
    printf("%04d\n",
            (int)(i_state[issuing_hart].fetch_pc<<2));
#endif
#endif
    set_output_to_e(issuing_hart, i_state, i_to_e);
  }
  i_to_e->is_valid = is_issuing;
}
