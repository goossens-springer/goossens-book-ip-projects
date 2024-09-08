#ifndef __IMMEDIATE
#define __IMMEDIATE

#include "rv32i_pp_ip.h"

i_immediate_t i_immediate(decoded_immediate_t d_imm);
s_immediate_t s_immediate(decoded_immediate_t d_imm);
b_immediate_t b_immediate(decoded_immediate_t d_imm);
u_immediate_t u_immediate(decoded_immediate_t d_imm);
j_immediate_t j_immediate(decoded_immediate_t d_imm);

#endif
