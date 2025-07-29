#include "ap_int.h"
#include "debug_rv32i_pp_ip.h"
#include "rv32i_pp_ip.h"
static int mem_load(
  int             *data_ram,
  b_data_address_t address,
  func3_t          msize){
  ap_uint<2>       a01 =  address;
  bit_t            a1  = (address >> 1);
  w_data_address_t a2  = (address >> 2);
  int              result;
  char             b, b0, b1, b2, b3;
  unsigned char    ub, ub0, ub1, ub2, ub3;
  short            h, h0, h1;
  unsigned short   uh, uh0, uh1;
  int              w, ib, ih;
  unsigned int     iub, iuh;
  w   = data_ram[a2];
  b0  = w;
  ub0 = b0;
  b1  = w>>8;
  ub1 = b1;
  h0  = ((ap_uint<16>)ub1 <<  8) |  (ap_uint<16>)ub0;
  uh0 = h0;
  b2  = w>>16;
  ub2 = b2;
  b3  = w>>24;
  ub3 = b3;
  h1  = ((ap_uint<16>)ub3 <<  8) |  (ap_uint<16>)ub2;
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
static void mem_store(
  int             *data_ram,
  b_data_address_t address,
  int              rv2,
  ap_uint<2>       msize){
  h_data_address_t a1 = (address >> 1);
  w_data_address_t a2 = (address >> 2);
  char             rv2_0;
  short            rv2_01;
  rv2_0  = rv2;
  rv2_01 = rv2;
  switch(msize){
    case SB:
      *((char*) (data_ram) + address) = rv2_0;
      break;
    case SH:
      *((short*)(data_ram) + a1)      = rv2_01;
      break;
    case SW:
      data_ram[a2]                    = rv2;
      break;
    case 3:
      break;
  }
}
void mem_access(
  from_e_to_m_t  m_from_e,
  int           *data_ram,
  from_m_to_w_t *m_to_w){
  b_data_address_t address;
  address        = m_from_e.result;
  m_to_w->cancel = m_from_e.cancel;
  if (!m_from_e.cancel){
    m_to_w->result      =
     (m_from_e.d_i.is_load)                            ?
        mem_load(data_ram, address, m_from_e.d_i.func3):
        m_from_e.result;
    if (m_from_e.d_i.is_store)
      mem_store(data_ram, address, m_from_e.rv2,
               (ap_uint<2>)m_from_e.d_i.func3);
  }
  m_to_w->rd          = m_from_e.d_i.rd;
  m_to_w->is_ret      = m_from_e.d_i.is_ret;
  m_to_w->has_no_dest = m_from_e.d_i.has_no_dest;
#ifndef __SYNTHESIS__
#ifdef DEBUG_DISASSEMBLE
  m_to_w->pc          = m_from_e.pc;
  m_to_w->instruction = m_from_e.instruction;
  m_to_w->d_i         = m_from_e.d_i;
#endif
#ifdef DEBUG_EMULATE
#ifndef DEBUG_DISASSEMBLE
  m_to_w->d_i         = m_from_e.d_i;
#endif
  m_to_w->next_pc     = m_from_e.next_pc;
#endif
#endif
}
