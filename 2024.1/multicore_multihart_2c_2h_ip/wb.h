#ifndef __WB
#define __WB
#include "debug_multihart_ip.h"
#include "multihart_ip.h"
void init_w_state(bit_t *w_state_is_full);
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
  bit_t        *has_exited);
#endif
