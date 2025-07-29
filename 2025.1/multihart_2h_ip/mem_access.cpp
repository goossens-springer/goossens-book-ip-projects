#include "ap_int.h"
#include "debug_multihart_ip.h"
#include "multihart_ip.h"
#include "mem.h"
#ifndef __SYNTHESIS__
#ifdef DEBUG_PIPELINE
#include "stdio.h"
#endif
#endif
void init_m_state(bit_t *m_state_is_full){
  hart_num_p1_t h1;
  hart_num_t    h;
  for (h1=0; h1<NB_HART; h1++){
#pragma HLS UNROLL
    h                  = h1;
    m_state_is_full[h] = 0;
  }
}
static void save_input_from_e(
  from_e_to_m_t m_from_e,
  m_state_t    *m_state){
  hart_num_t hart;
  hart                      = m_from_e.hart;
  m_state[hart].rd          = m_from_e.rd;
  m_state[hart].has_no_dest = m_from_e.has_no_dest;
  m_state[hart].is_load     = m_from_e.is_load;
  m_state[hart].is_store    = m_from_e.is_store;
  m_state[hart].func3       = m_from_e.func3;
  m_state[hart].is_ret      = m_from_e.is_ret;
  m_state[hart].address     = m_from_e.address;
  m_state[hart].value       = m_from_e.value;
  m_state[hart].accessed_h  =
    (m_from_e.address>>(LOG_HART_DATA_RAM_SIZE+2)) + hart;
  m_state[hart].is_local    = (hart == m_state[hart].accessed_h);
#ifndef __SYNTHESIS__
  m_state[hart].fetch_pc    = m_from_e.fetch_pc;
  m_state[hart].instruction = m_from_e.instruction;
  m_state[hart].d_i         = m_from_e.d_i;
  m_state[hart].target_pc   = m_from_e.target_pc;
#endif
}
static void stage_job(
  hart_num_t       hart,
  bit_t            is_load,
  bit_t            is_store,
  b_data_address_t address,
  func3_t          func3,
  int              data_ram[][HART_DATA_RAM_SIZE],
  int             *value){
  if (is_load)
    *value = mem_load(hart, data_ram, address, func3);
  else if (is_store)
    mem_store(hart, data_ram, address, *value,
             (ap_uint<2>)func3);
}
static void set_output_to_w(
  hart_num_t     hart,
  m_state_t     *m_state,
  from_m_to_w_t *m_to_w){
  m_to_w->hart        = hart;
  m_to_w->rd          = m_state[hart].rd;
  m_to_w->has_no_dest = m_state[hart].has_no_dest;
  m_to_w->is_ret      = m_state[hart].is_ret;
  m_to_w->value       = m_state[hart].value;
#ifndef __SYNTHESIS__
  m_to_w->fetch_pc    = m_state[hart].fetch_pc;
  m_to_w->instruction = m_state[hart].instruction;
  m_to_w->d_i         = m_state[hart].d_i;
  m_to_w->target_pc   = m_state[hart].target_pc;
#endif
}
static void select_hart(
  bit_t      *m_state_is_full,
  bit_t      *w_state_is_full,
  bit_t      *is_selected,
  hart_num_t *selected_hart){
  bit_t c[NB_HART];
  c[0] = (m_state_is_full[0] && !w_state_is_full[0]);
#if (NB_HART>1)
  c[1] = (m_state_is_full[1] && !w_state_is_full[1]);
#endif
#if (NB_HART>2)
  c[2] = (m_state_is_full[2] && !w_state_is_full[2]);
  c[3] = (m_state_is_full[3] && !w_state_is_full[3]);
#endif
#if (NB_HART>4)
  c[4] = (m_state_is_full[4] && !w_state_is_full[4]);
  c[5] = (m_state_is_full[5] && !w_state_is_full[5]);
  c[6] = (m_state_is_full[6] && !w_state_is_full[6]);
  c[7] = (m_state_is_full[7] && !w_state_is_full[7]);
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
void mem_access(
  from_e_to_m_t  m_from_e,
  bit_t         *w_state_is_full,
  int            data_ram[][HART_DATA_RAM_SIZE],
  m_state_t     *m_state,
  from_m_to_w_t *m_to_w,
  bit_t         *m_state_is_full){
  bit_t      is_selected;
  hart_num_t selected_hart;
  bit_t      is_accessing;
  hart_num_t accessing_hart;
  select_hart(m_state_is_full, w_state_is_full,
             &is_selected, &selected_hart);
  if (m_from_e.is_valid){
    m_state_is_full[m_from_e.hart] = 1;
    save_input_from_e(m_from_e, m_state);
  }
  is_accessing   =
    is_selected ||
   (m_from_e.is_valid && !w_state_is_full[m_from_e.hart]);
  accessing_hart =
   (is_selected)?selected_hart:m_from_e.hart;
  if (is_accessing){
    m_state_is_full[accessing_hart] = 0;
    stage_job(m_state[accessing_hart].accessed_h,
              m_state[accessing_hart].is_load,
              m_state[accessing_hart].is_store,
              m_state[accessing_hart].address,
              m_state[accessing_hart].func3, data_ram,
             &m_state[accessing_hart].value);
#ifndef __SYNTHESIS__
#ifdef DEBUG_PIPELINE
    printf("hart %d: mem      ", (int)accessing_hart);
    printf("%04d\n",
          (int)(m_state[accessing_hart].fetch_pc<<2));
#endif
#endif
    set_output_to_w(accessing_hart, m_state, m_to_w);
  }
  m_to_w->is_valid = is_accessing;
}
