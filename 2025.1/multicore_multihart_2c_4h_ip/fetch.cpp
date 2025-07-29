#include "debug_multihart_ip.h"
#include "multihart_ip.h"
#ifndef __SYNTHESIS__
#ifdef DEBUG_PIPELINE
#include <stdio.h>
#endif
#endif
void init_f_state(
  hart_set_t    running_hart_set,
  unsigned int *start_pc,
  f_state_t    *f_state,
  bit_t        *f_state_is_full){
  hart_num_p1_t h1;
  hart_num_t    h;
  bit_t         h_running;
  for (h1=0; h1<NB_HART; h1++){
#pragma HLS UNROLL
    h                           = h1;
    h_running                   = (running_hart_set>>h);
    f_state_is_full[h]          = h_running;
    f_state        [h].fetch_pc = start_pc[h];
  }
}
static void save_input_from_d(
  from_d_to_f_t f_from_d,
  f_state_t    *f_state){
  f_state[f_from_d.hart].fetch_pc = f_from_d.relative_pc;
}
static void save_input_from_e(
  from_e_to_f_t f_from_e,
  f_state_t    *f_state){
  f_state[f_from_e.hart].fetch_pc = f_from_e.target_pc;
}
static void stage_job(
  hart_num_t         hart,
  f_state_t         *f_state,
  instruction_t     *code_ram){
  f_state[hart].instruction =
    code_ram[f_state[hart].fetch_pc];
}
static void set_output_to_d(
  hart_num_t        hart,
  f_state_t        *f_state,
  from_f_to_d_t    *f_to_d){
  f_to_d->hart        = hart;
  f_to_d->fetch_pc    = f_state[hart].fetch_pc;
  f_to_d->instruction = f_state[hart].instruction;
}
void select_hart(
  bit_t      *f_state_is_full,
  bit_t      *d_state_is_full,
  bit_t      *is_selected,
  hart_num_t *selected_hart){
  bit_t c[NB_HART];
  c[0] = (f_state_is_full[0] && !d_state_is_full[0]);
#if (NB_HART>1)
  c[1] = (f_state_is_full[1] && !d_state_is_full[1]);
#endif
#if (NB_HART>2)
  c[2] = (f_state_is_full[2] && !d_state_is_full[2]);
  c[3] = (f_state_is_full[3] && !d_state_is_full[3]);
#endif
#if (NB_HART>4)
  c[4] = (f_state_is_full[4] && !d_state_is_full[4]);
  c[5] = (f_state_is_full[5] && !d_state_is_full[5]);
  c[6] = (f_state_is_full[6] && !d_state_is_full[6]);
  c[7] = (f_state_is_full[7] && !d_state_is_full[7]);
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
void fetch(
  from_d_to_f_t  f_from_d,
  from_e_to_f_t  f_from_e,
  bit_t         *d_state_is_full,
  instruction_t *code_ram,
  f_state_t     *f_state,
  from_f_to_d_t *f_to_d,
  bit_t         *f_state_is_full){
  bit_t      is_selected;
  hart_num_t selected_hart;
  bit_t      is_fetching;
  hart_num_t fetching_hart;
  select_hart(f_state_is_full, d_state_is_full,
             &is_selected,  &selected_hart);
  if (f_from_d.is_valid){
    f_state_is_full[f_from_d.hart] = 1;
    save_input_from_d(f_from_d, f_state);
  }
  if (f_from_e.is_valid){
    f_state_is_full[f_from_e.hart] = 1;
    save_input_from_e(f_from_e, f_state);
  }
  is_fetching   =
    is_selected                                           ||
   (f_from_d.is_valid && !d_state_is_full[f_from_d.hart]) ||
   (f_from_e.is_valid && !d_state_is_full[f_from_e.hart]);
  fetching_hart =
   (is_selected)?selected_hart:
   (f_from_d.is_valid && !d_state_is_full[f_from_d.hart])?
    f_from_d.hart:f_from_e.hart;
  if (is_fetching){
    f_state_is_full[fetching_hart] = 0;
    stage_job(fetching_hart, f_state, code_ram);
#ifndef __SYNTHESIS__
#ifdef DEBUG_PIPELINE
    printf("hart %d: fetched  ", (int)fetching_hart);
    printf("%04d: %08x      \n",
      (int)(f_state[fetching_hart].fetch_pc<<2),
            f_state[fetching_hart].instruction);
#endif
#endif
  }
  set_output_to_d(fetching_hart, f_state, f_to_d);
  f_to_d->is_valid = is_fetching;
}
