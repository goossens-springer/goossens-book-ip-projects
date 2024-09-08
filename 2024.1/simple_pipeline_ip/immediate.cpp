#include "simple_pipeline_ip.h"
i_immediate_t i_immediate(decoded_immediate_t d_imm){
 return (((i_immediate_t)d_imm.inst_31   <<11) |
         ((i_immediate_t)d_imm.inst_30_25<< 5) |
         ((i_immediate_t)d_imm.inst_24_21<< 1) |
         ((i_immediate_t)d_imm.inst_20       ));
}
s_immediate_t s_immediate(decoded_immediate_t d_imm){
 return (((s_immediate_t)d_imm.inst_31   <<11) |
         ((s_immediate_t)d_imm.inst_30_25<< 5) |
         ((s_immediate_t)d_imm.inst_11_8 << 1) |
         ((s_immediate_t)d_imm.inst_7        ));
}
b_immediate_t b_immediate(decoded_immediate_t d_imm){
 return (((b_immediate_t)d_imm.inst_31   <<11) |
         ((b_immediate_t)d_imm.inst_7    <<10) |
         ((b_immediate_t)d_imm.inst_30_25<< 4) |
         ((b_immediate_t)d_imm.inst_11_8     ));
}
u_immediate_t u_immediate(decoded_immediate_t d_imm){
 return (((u_immediate_t)d_imm.inst_31   <<19) |
         ((u_immediate_t)d_imm.inst_30_25<<13) |
         ((u_immediate_t)d_imm.inst_24_21<< 9) |
         ((u_immediate_t)d_imm.inst_20   << 8) |
         ((u_immediate_t)d_imm.inst_19_12    ));
}
j_immediate_t j_immediate(decoded_immediate_t d_imm){
 return (((j_immediate_t)d_imm.inst_31   <<19) |
         ((j_immediate_t)d_imm.inst_19_12<<11) |
         ((j_immediate_t)d_imm.inst_20   <<10) |
         ((j_immediate_t)d_imm.inst_30_25<< 4) |
         ((j_immediate_t)d_imm.inst_24_21    ));
}
