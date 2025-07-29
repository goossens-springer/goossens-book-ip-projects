#include "debug_multihart_ip.h"
#include "multihart_ip.h"
#include "ap_int.h"
#ifndef __SYNTHESIS__
#ifdef DEBUG_PIPELINE
#include "stdio.h"
#endif
#ifndef DEBUG_PIPELINE
#include "disassemble.h"
#endif
#include "emulate.h"
#endif
void init_w_state(
  bit_t     *w_state_is_full){
  hart_num_p1_t h1;
  hart_num_t    h;
  for (h1=0; h1<NB_HART; h1++){
#pragma HLS UNROLL
    h                  = h1;
    w_state_is_full[h] = 0;
  }
}
static void save_input_from_m(
  from_m_to_w_t w_from_m,
  w_state_t    *w_state){
  hart_num_t hart;
  hart                      = w_from_m.hart;
  w_state[hart].rd          = w_from_m.rd;
  w_state[hart].has_no_dest = w_from_m.has_no_dest;
  w_state[hart].is_load     = w_from_m.is_load;
  w_state[hart].is_ret      = w_from_m.is_ret;
  w_state[hart].value       = w_from_m.value;
  w_state[hart].result      = w_from_m.result;
#ifndef __SYNTHESIS__
  w_state[hart].fetch_pc    = w_from_m.fetch_pc;
  w_state[hart].instruction = w_from_m.instruction;
  w_state[hart].d_i         = w_from_m.d_i;
  w_state[hart].target_pc   = w_from_m.target_pc;
#endif
}
static void stage_job(
  hart_num_t hart,
  w_state_t *w_state,
  int        reg_file[][NB_REGISTER],
  bit_t     *has_exited){
  if (!w_state[hart].has_no_dest){
    if (w_state[hart].is_load)
      reg_file[hart][w_state[hart].rd] = w_state[hart].value;
    else
      reg_file[hart][w_state[hart].rd] = w_state[hart].result;
  }
  if (w_state[hart].is_ret && w_state[hart].result == 0)
    has_exited[hart] = 1;
}
static void select_hart(
  bit_t      *w_state_is_full,
  bit_t      *is_selected,
  hart_num_t *selected_hart){
  bit_t      c[NB_HART];
  c[0] = w_state_is_full[0];
#if (NB_HART>1)
  c[1] = w_state_is_full[1];
#endif
#if (NB_HART>2)
  c[2] = w_state_is_full[2];
  c[3] = w_state_is_full[3];
#endif
#if (NB_HART>4)
  c[4] = w_state_is_full[4];
  c[5] = w_state_is_full[5];
  c[6] = w_state_is_full[6];
  c[7] = w_state_is_full[7];
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
void write_back(
#ifndef __SYNTHESIS__
  ip_num_t      ip_num,
#endif
  from_m_to_w_t w_from_m,
  int           reg_file[][NB_REGISTER],
  w_state_t    *w_state,
  bit_t        *w_state_is_full,
  bit_t        *is_unlock,
  hart_num_t   *w_hart,
  reg_num_t    *w_destination,
  bit_t        *has_exited){
  bit_t      is_selected;
  hart_num_t selected_hart;
  bit_t      is_writing;
  hart_num_t writing_hart;
  select_hart(w_state_is_full,
             &is_selected, &selected_hart);
  if (w_from_m.is_valid){
    w_state_is_full[w_from_m.hart] = 1;
    save_input_from_m(w_from_m, w_state);
  }
  is_writing   =
    is_selected || w_from_m.is_valid;
  writing_hart =
   (is_selected)?selected_hart:w_from_m.hart;
  *is_unlock = is_writing &&
              !w_state[writing_hart].has_no_dest;
  if (!w_state[writing_hart].has_no_dest){
    *w_hart        = writing_hart;
    *w_destination = w_state[writing_hart].rd;
  }
  if (is_writing){
    w_state_is_full[writing_hart] = 0;
    stage_job(writing_hart, w_state, reg_file, has_exited);
#ifndef __SYNTHESIS__
#ifdef DEBUG_PIPELINE
    printf("hart %d: wb       ", (int)writing_hart);
    printf("%04d\n", (int)(w_state[writing_hart].fetch_pc<<2));
    if (!w_state[writing_hart].d_i.is_branch &&
        !w_state[writing_hart].d_i.is_jalr)
      emulate(ip_num, writing_hart, reg_file,
              w_state[writing_hart].d_i,
              w_state[writing_hart].target_pc);
#else
#ifdef DEBUG_FETCH
    printf("hart %d: %04d: %08x      ",
      (int)writing_hart,
      (int)(w_state[writing_hart].fetch_pc<<2),
            w_state[writing_hart].instruction);
#ifndef DEBUG_DISASSEMBLE
    printf("\n");
#endif
#endif
#ifdef DEBUG_DISASSEMBLE
    disassemble(w_state[writing_hart].fetch_pc,
                w_state[writing_hart].instruction,
                w_state[writing_hart].d_i);
#endif
#ifdef DEBUG_EMULATE
    printf("hart %d: ", (int)writing_hart);
    emulate(ip_num, writing_hart, reg_file,
            w_state[writing_hart].d_i,
            w_state[writing_hart].target_pc);
#endif
#endif
#endif
  }
}
