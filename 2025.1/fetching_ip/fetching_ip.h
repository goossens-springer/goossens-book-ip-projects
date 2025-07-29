#ifndef __FETCHING_IP
#define __FETCHING_IP
#include "ap_int.h"
#define LOG_CODE_RAM_SIZE 15
//size in words
#define CODE_RAM_SIZE     (1<<LOG_CODE_RAM_SIZE)
#define RET               0x8067
typedef unsigned int               instruction_t;
typedef ap_uint<LOG_CODE_RAM_SIZE> code_address_t;
typedef ap_uint<1>                 bit_t;
void fetching_ip(
  unsigned int start_pc,
  unsigned int code_ram[CODE_RAM_SIZE]);
#endif
