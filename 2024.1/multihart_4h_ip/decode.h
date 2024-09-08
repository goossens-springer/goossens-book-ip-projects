#ifndef __DECODE
#define __DECODE
#include "multihart_ip.h"
void init_d_state(bit_t *d_state_is_full);
void decode(
  from_f_to_d_t  d_from_f,
  bit_t         *i_state_is_full,
  d_state_t     *d_state,
  from_d_to_f_t *d_to_f,
  from_d_to_i_t *d_to_i,
  bit_t         *d_state_is_full);
#endif
