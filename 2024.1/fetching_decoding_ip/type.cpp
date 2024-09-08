#include "ap_int.h"
#include "fetching_decoding_ip.h"
static type_t type_00(ap_uint<3> opcl){
#pragma HLS INLINE
  switch(opcl){
    case 0b000: return I_TYPE;     //LOAD
    case 0b001: return OTHER_TYPE; //LOAD-FP
    case 0b010: return OTHER_TYPE; //CUSTOM-0
    case 0b011: return OTHER_TYPE; //MISC-MEM
    case 0b100: return I_TYPE;     //OP-IMM
    case 0b101: return U_TYPE;     //AUIPC
    case 0b110: return OTHER_TYPE; //OP-IMM-32
    case 0b111: return OTHER_TYPE; //RV48-0
  }
  return UNDEFINED_TYPE;
}
static type_t type_01(ap_uint<3> opcl){
#pragma HLS INLINE
  switch(opcl){
    case 0b000: return S_TYPE;     //STORE
    case 0b001: return OTHER_TYPE; //STORE-FP
    case 0b010: return OTHER_TYPE; //CUSTOM-1
    case 0b011: return OTHER_TYPE; //AMO
    case 0b100: return R_TYPE;     //OP
    case 0b101: return U_TYPE;     //LUI
    case 0b110: return OTHER_TYPE; //OP-32
    case 0b111: return OTHER_TYPE; //RV64
  }
  return UNDEFINED_TYPE;
}
static type_t type_10(ap_uint<3> opcl){
#pragma HLS INLINE
  switch(opcl){
    case 0b000: return OTHER_TYPE; //MADD
    case 0b001: return OTHER_TYPE; //MSUB
    case 0b010: return OTHER_TYPE; //NMSUB
    case 0b011: return OTHER_TYPE; //NMADD
    case 0b100: return OTHER_TYPE; //OP-FP
    case 0b101: return OTHER_TYPE; //RESERVED-0
    case 0b110: return OTHER_TYPE; //CUSTOM-2-RV128
    case 0b111: return OTHER_TYPE; //RV48-1
  }
  return UNDEFINED_TYPE;
}
static type_t type_11(ap_uint<3> opcl){
#pragma HLS INLINE
  switch(opcl){
    case 0b000: return B_TYPE;     //BRANCH
    case 0b001: return I_TYPE;     //JALR
    case 0b010: return OTHER_TYPE; //RESERVED-1
    case 0b011: return J_TYPE;     //JAL
    case 0b100: return OTHER_TYPE; //SYSTEM
    case 0b101: return OTHER_TYPE; //RESERVED-2
    case 0b110: return OTHER_TYPE; //CUSTOM-3-RV128
    case 0b111: return OTHER_TYPE; //RV80
  }
  return UNDEFINED_TYPE;
}
type_t type(opcode_t opcode){
#pragma HLS INLINE
  ap_uint<2> opch;
  ap_uint<3> opcl;
  opch = opcode>>3;
  opcl = opcode;
  switch(opch){
    case 0b00: return type_00(opcl);
    case 0b01: return type_01(opcl);
    case 0b10: return type_10(opcl);
    case 0b11: return type_11(opcl);
  }
  return UNDEFINED_TYPE;
}
