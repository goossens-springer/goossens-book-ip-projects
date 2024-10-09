#ifndef __MEM
#define __MEM
#include "ap_int.h"
#include "multihart_ip.h"
int mem_load(
  ip_num_t         ip,
  bit_t            is_local,
  hart_num_t       hart,
  int              ip_data_ram[][HART_DATA_RAM_SIZE],
  int              data_ram   [][NB_HART][HART_DATA_RAM_SIZE],
  b_data_address_t address,
  func3_t          msize);
void mem_store(
  ip_num_t         ip,
  bit_t            is_local,
  hart_num_t       hart,
  int              ip_data_ram[][HART_DATA_RAM_SIZE],
  int              data_ram   [][NB_HART][HART_DATA_RAM_SIZE],
  b_data_address_t address,
  int              rv2,
  ap_uint<2>       msize);
#endif
