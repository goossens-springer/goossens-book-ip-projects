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
  bit_t            is_load,
  bit_t            is_store,
  b_data_address_t address,
  func3_t          func3,
  int             *data_ram,
  int             *value){
  if (is_load)
    *value = mem_load(data_ram, address, func3);
  else if (is_store)
    mem_store(data_ram, address, *value, (ap_uint<2>)func3);
}
static void set_output_to_w(
  reg_num_t             rd,
  bit_t                 has_no_dest,
  bit_t                 is_ret,
  int                   value,
#ifndef __SYNTHESIS__
  code_address_t        pc,
  instruction_t         instruction,
  decoded_instruction_t d_i,
  code_address_t        target_pc,
#endif
  from_m_to_w_t        *m_to_w){
  m_to_w->rd          = rd;
  m_to_w->has_no_dest = has_no_dest;
  m_to_w->is_ret      = is_ret;
  m_to_w->value       = value;
#ifndef __SYNTHESIS__
  m_to_w->pc          = pc;
  m_to_w->instruction = instruction;
  m_to_w->d_i         = d_i;
  m_to_w->target_pc   = target_pc;
#endif
}
void mem_access(
  from_e_to_m_t  m_from_e,
  int           *data_ram,
  from_m_to_w_t *m_to_w){
  int value;
  if (m_from_e.is_valid){
    value = m_from_e.value;
    stage_job(m_from_e.is_load, m_from_e.is_store,
              m_from_e.address, m_from_e.func3, data_ram,
             &value);
#ifndef __SYNTHESIS__
#ifdef DEBUG_PIPELINE
    printf("mem      ");
    printf("%04d\n", (int)(m_from_e.pc<<2));
#endif
#endif
    set_output_to_w(m_from_e.rd, m_from_e.has_no_dest,
                    m_from_e.is_ret, value,
#ifndef __SYNTHESIS__
                    m_from_e.pc,  m_from_e.instruction,
                    m_from_e.d_i, m_from_e.target_pc,
#endif
                    m_to_w);
  }
  m_to_w->is_valid = m_from_e.is_valid;
}
