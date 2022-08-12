#ifndef __MEM_ACCESS
#define __MEM_ACCESS
#include "multicycle_pipeline_ip.h"
void mem_access(
  ip_num_t       ip_num,
  from_e_to_m_t  m_from_e,
  int           *ip_data_ram,
  int            data_ram[][IP_DATA_RAM_SIZE],
  from_m_to_w_t *m_to_w);
#endif
