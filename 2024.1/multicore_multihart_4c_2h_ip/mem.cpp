#include "ap_int.h"
#include "multihart_ip.h"
int mem_load(
  ip_num_t         ip,
  bit_t            is_local,
  hart_num_t       hart,
  int              ip_data_ram[][HART_DATA_RAM_SIZE],
  int              data_ram   [][NB_HART][HART_DATA_RAM_SIZE],
  b_data_address_t address,
  func3_t          msize){
  ap_uint<2>            a01 =  address;
  bit_t                 a1  = (address >> 1);
  w_hart_data_address_t a2  = (address >> 2);
  int                   result;
  char                  b, b0, b1, b2, b3;
  unsigned char         ub, ub0, ub1, ub2, ub3;
  short                 h, h0, h1;
  unsigned short        uh, uh0, uh1;
  int                   w, ib, ih;
  unsigned int          iub, iuh;
  if (is_local)
    w =  ip_data_ram[hart][a2];
  else
    w = data_ram[ip][hart][a2];
  b0  = w;
  ub0 = b0;
  b1  = w>>8;
  ub1 = b1;
  h0  = ((ap_uint<16>)ub1 <<  8) | (ap_uint<16>)ub0;
  uh0 = h0;
  b2  = w>>16;
  ub2 = b2;
  b3  = w>>24;
  ub3 = b3;
  h1  = ((ap_uint<16>)ub3 <<  8) | (ap_uint<16>)ub2;
  uh1 = h1;
  switch(a01){
    case 0b00: b = b0; break;
    case 0b01: b = b1; break;
    case 0b10: b = b2; break;
    case 0b11: b = b3; break;
  }
  ub  = b;
  ib  = (int)b;
  iub = (unsigned int)ub;
  h   = (a1)?h1:h0;
  uh  = h;
  ih  = (int)h;
  iuh = (unsigned int)uh;
  switch(msize){
    case LB:
      result = ib;  break;
    case LH:
      result = ih;  break;
    case LW:
      result = w;   break;
    case 3:
      result = 0;   break;
    case LBU:
      result = iub; break;
    case LHU:
      result = iuh; break;
    case 6:
    case 7:
      result = 0;   break;
  }
  return result;
}
void mem_store(
  ip_num_t         ip,
  bit_t            is_local,
  hart_num_t       hart,
  int              ip_data_ram[][HART_DATA_RAM_SIZE],
  int              data_ram   [][NB_HART][HART_DATA_RAM_SIZE],
  b_data_address_t address,
  int              rv2,
  ap_uint<2>       msize){
  b_hart_data_address_t a      = address;
  h_hart_data_address_t a1     = address>>1;
  w_hart_data_address_t a2     = address>>2;
  char                  rv2_0  = rv2;
  short                 rv2_01 = rv2;
  switch(msize){
  case SB:
    if (is_local)
     *((char*) (ip_data_ram) +
               ((((b_ip_data_address_t)hart)<<
               (LOG_HART_DATA_RAM_SIZE+2)) | a))
      = rv2_0;
    else
     *((char*) (data_ram) +
             ((((b_data_address_t)ip)<<
              (LOG_IP_DATA_RAM_SIZE+2))   |
              (((b_ip_data_address_t)hart)<<
              (LOG_HART_DATA_RAM_SIZE+2)) | a))  = rv2_0;
    break;
  case SH:
    if (is_local)
     *((short*)(ip_data_ram) +
           ((((h_ip_data_address_t)hart)<<
           (LOG_HART_DATA_RAM_SIZE+1)) | a1))
      = rv2_01;
    else
     *((short*)(data_ram) +
             ((((h_data_address_t)ip)<<
              (LOG_IP_DATA_RAM_SIZE+1))   |
              (((h_ip_data_address_t)hart)<<
              (LOG_HART_DATA_RAM_SIZE+1)) | a1)) = rv2_01;
    break;
  case SW:
    if (is_local)
      ip_data_ram [hart][a2] = rv2;
    else
      data_ram[ip][hart][a2] = rv2;
    break;
  case 3:
    break;
  }
}
