#ifndef __MEM_ACCESS
#define __MEM_ACCESS
#include "multihart_ip.h"
void init_m_state(bit_t *m_state_is_full);
void mem_access(
  ip_num_t       ip_num,
  from_e_to_m_t  m_from_e,
  bit_t         *w_state_is_full,
  int            ip_data_ram[][HART_DATA_RAM_SIZE],
  int            data_ram[][NB_HART][HART_DATA_RAM_SIZE],
  m_state_t     *m_state,
  from_m_to_w_t *m_to_w,
  bit_t         *m_state_is_full);
#endif
