#include "ap_int.h"
#include "multi_core_multi_ram_ip.h"
void multi_core_multi_ram_ip(
  int ip_num,
  int local_ram[LOCAL_RAM_SIZE],
  int data_ram [RAM_SIZE]){
#pragma HLS INTERFACE s_axilite port=ip_num
#pragma HLS INTERFACE bram      port=local_ram
#pragma HLS INTERFACE m_axi     port=data_ram offset=slave
#pragma HLS INTERFACE s_axilite port=return
  ip_num_t              ip;
  ip_num_p1_t           next_ip;
  int                   local_value  = 18;
  int                   global_value = 19;
  ap_uint<5>            i;
  ap_uint<1>            i0;
  ap_uint<LOG_RAM_SIZE> offset, i_div_2;
  unsigned int          global_address, local_address;
  ip      = ip_num;
  next_ip = (ip_num_p1_t)ip + 1;
  offset  =
   (((ap_uint<LOG_RAM_SIZE>)next_ip)<<LOG_LOCAL_RAM_SIZE) + 8;
  for (i=0; i<16; i++){
#pragma HLS PIPELINE II=10
    i0             = i;
    i_div_2        = i >> 1;
    global_address = (unsigned int)(offset + i_div_2);
    local_address  = (unsigned int)(i_div_2);
    if (i0 == 0){
      local_ram[local_address]  = local_value;
      data_ram [global_address] = global_value;
    }
    else{
      local_value  = local_ram[local_address];
      global_value = data_ram [global_address];
    }
  }
}
