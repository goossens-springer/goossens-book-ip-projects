#ifndef __SIMPLE_PIPELINE_IP
#define __SIMPLE_PIPELINE_IP
#include "debug_simple_pipeline_ip.h"
#include "ap_int.h"
#define LOG_CODE_RAM_SIZE 15
#define CODE_RAM_SIZE     (1<<LOG_CODE_RAM_SIZE)
#define LOG_DATA_RAM_SIZE 15
#define DATA_RAM_SIZE     (1<<LOG_DATA_RAM_SIZE)
#define LOG_REG_FILE_SIZE  5
#define NB_REGISTER       (1<<LOG_REG_FILE_SIZE)
#define RET            0x8067
#define NOP            0x13
#define RA             1
#define LOAD           0b00000
#define LOAD_FP        0b00001
#define CUSTOM_0       0b00010
#define MISC_MEM       0b00011
#define OP_IMM         0b00100
#define AUIPC          0b00101
#define OP_IMM_32      0b00110
#define RV48_0         0b00111
#define STORE          0b01000
#define STORE_FP       0b01001
#define CUSTOM_1       0b01010
#define AMO            0b01011
#define OP             0b01100
#define LUI            0b01101
#define OP_32          0b01110
#define RV_64          0b01111
#define MADD           0b10000
#define MSUB           0b10001
#define NMSUB          0b10010
#define NMADD          0b10011
#define OP_FP          0b10100
#define RESERVED_0     0b10101
#define CUSTOM_2_RV128 0b10110
#define RV48_1         0b10111
#define BRANCH         0b11000
#define JALR           0b11001
#define RESERVED_1     0b11010
#define JAL            0b11011
#define SYSTEM         0b11100
#define RESERVED_2     0b11101
#define CUSTOM_3_RV128 0b11110
#define RV80           0b11111
#define UNDEFINED_TYPE 0
#define R_TYPE         1
#define I_TYPE         2
#define S_TYPE         3
#define B_TYPE         4
#define U_TYPE         5
#define J_TYPE         6
#define OTHER_TYPE     7
#define BEQ            0
#define BNE            1
#define BLT            4
#define BGE            5
#define BLTU           6
#define BGEU           7
#define ADD            0
#define SUB            0
#define SLL            1
#define SLT            2
#define SLTU           3
#define XOR            4
#define SRL            5
#define SRA            5
#define OR             6
#define AND            7
#define ADDI           0
#define SLLI           1
#define SLTI           2
#define SLTIU          3
#define XORI           4
#define SRLI           5
#define SRAI           5
#define ORI            6
#define ANDI           7
#define ECALL          0
#define EBREAK         1
#define LB             0
#define LH             1
#define LW             2
#define LBU            4
#define LHU            5
#define SB             0
#define SH             1
#define SW             2
typedef unsigned int                 instruction_t;
typedef ap_uint<LOG_CODE_RAM_SIZE>   code_address_t;
typedef ap_uint<LOG_DATA_RAM_SIZE>   w_data_address_t;
typedef ap_uint<LOG_DATA_RAM_SIZE+1> h_data_address_t;
typedef ap_uint<LOG_DATA_RAM_SIZE+2> b_data_address_t;
typedef ap_uint<3>                   type_t;
typedef ap_int<20>                   immediate_t;
typedef ap_int<12>                   i_immediate_t;
typedef ap_int<12>                   s_immediate_t;
typedef ap_int<12>                   b_immediate_t;
typedef ap_int<20>                   u_immediate_t;
typedef ap_int<20>                   j_immediate_t;
typedef ap_uint<5>                   opcode_t;
typedef ap_uint<LOG_REG_FILE_SIZE+1> reg_num_p1_t;
typedef ap_uint<LOG_REG_FILE_SIZE>   reg_num_t;
typedef ap_uint<3>                   func3_t;
typedef ap_uint<7>                   func7_t;
typedef ap_uint<1>                   bit_t;
typedef struct decoded_instruction_s{
  opcode_t    opcode;
  reg_num_t   rd;
  func3_t     func3;
  reg_num_t   rs1;
  reg_num_t   rs2;
  func7_t     func7;
  type_t      type;
  immediate_t imm;
  bit_t       is_load;
  bit_t       is_store;
  bit_t       is_branch;
  bit_t       is_jalr;
  bit_t       is_jal;
  bit_t       is_op_imm;
  bit_t       is_lui;
  bit_t       is_ret;
  bit_t       is_r_type;
} decoded_instruction_t;
typedef struct decoded_immediate_s{
  bit_t       inst_31;
  ap_uint<6>  inst_30_25;
  ap_uint<4>  inst_24_21;
  bit_t       inst_20;
  ap_uint<8>  inst_19_12;
  ap_uint<4>  inst_11_8;
  bit_t       inst_7;
} decoded_immediate_t;
typedef struct from_f_to_f_s{
  code_address_t next_pc;
} from_f_to_f_t;
typedef struct from_f_to_e_s{
  code_address_t        pc;
  decoded_instruction_t d_i;
#ifndef __SYNTHESIS__
#ifdef DEBUG_DISASSEMBLE
  instruction_t         instruction;
#endif
#endif
} from_f_to_e_t;
typedef struct from_e_to_f_s{
  code_address_t target_pc;
  bit_t          set_pc;
} from_e_to_f_t;
typedef struct from_e_to_e_s{
  bit_t cancel;
} from_e_to_e_t;
void simple_pipeline_ip(
  unsigned int  start_pc,
  unsigned int  code_ram[CODE_RAM_SIZE],
  int           data_ram[DATA_RAM_SIZE],
  unsigned int *nb_instruction);
#endif
