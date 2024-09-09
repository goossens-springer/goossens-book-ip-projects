#include "debug_multicycle_pipeline_ip.h"
#include "multicycle_pipeline_ip.h"
#include "ap_int.h"
#include "mem.h"
#ifndef __SYNTHESIS__
#ifdef DEBUG_PIPELINE
#include "stdio.h"
#endif
#endif
static void stage_job(
  ip_num_t         accessed_ip,
  bit_t            is_local,
  bit_t            is_load,
  bit_t            is_store,
  b_data_address_t address,
  func3_t          func3,
  int             *ip_data_ram,
  int              data_ram[][IP_DATA_RAM_SIZE],
  int             *value){
  if (is_load)
    *value =
      mem_load (accessed_ip, is_local,
                ip_data_ram, data_ram, address, func3);
  else if (is_store)
      mem_store(accessed_ip, is_local,
                ip_data_ram, data_ram, address, *value,
               (ap_uint<2>)func3);
}
static void set_output_to_w(
  reg_num_t             rd,
  bit_t                 has_no_dest,
  bit_t                 is_load,
  bit_t                 is_ret,
  int                   result,
  int                   value,
#ifndef __SYNTHESIS__
  ip_code_address_t     pc,
  instruction_t         instruction,
  decoded_instruction_t d_i,
  ip_code_address_t     target_pc,
#endif
  from_m_to_w_t        *m_to_w){
  m_to_w->rd          = rd;
  m_to_w->has_no_dest = has_no_dest;
  m_to_w->is_load     = is_load;
  m_to_w->is_ret      = is_ret;
  m_to_w->value       = value;
  m_to_w->result      = result;
#ifndef __SYNTHESIS__
  m_to_w->pc          = pc;
  m_to_w->instruction = instruction;
  m_to_w->d_i         = d_i;
  m_to_w->target_pc   = target_pc;
#endif
}
void mem_access(
  ip_num_t       ip_num,
  from_e_to_m_t  m_from_e,
  int           *ip_data_ram,
  int            data_ram[][IP_DATA_RAM_SIZE],
  from_m_to_w_t *m_to_w){
  int      value;
  ip_num_t accessed_ip;
  bit_t    is_local;
  if (m_from_e.is_valid){
    value       = m_from_e.value;
    accessed_ip =
      (m_from_e.address>>(LOG_IP_DATA_RAM_SIZE+2)) + ip_num;
    is_local    = (ip_num == accessed_ip);
    stage_job(accessed_ip, is_local, m_from_e.is_load,
              m_from_e.is_store, m_from_e.address,
              m_from_e.func3, ip_data_ram, data_ram, &value);
#ifndef __SYNTHESIS__
#ifdef DEBUG_PIPELINE
    printf("mem      ");
    printf("%04d\n", (int)(m_from_e.pc<<2));
#endif
#endif
    set_output_to_w(m_from_e.rd, m_from_e.has_no_dest,
                    m_from_e.is_load, m_from_e.is_ret,
                    m_from_e.value, value,
#ifndef __SYNTHESIS__
                    m_from_e.pc,  m_from_e.instruction,
                    m_from_e.d_i, m_from_e.target_pc,
#endif
                    m_to_w);
  }
  m_to_w->is_valid = m_from_e.is_valid;
}
