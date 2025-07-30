#include "ap_int.h"
#define N 16
const ap_int<8> h[N] = {
   2,  4,  8, 12, 16, 18, 20, 22,
  22, 20, 18, 16, 12,  8,  4,  2
};
void fir(
  ap_int<8>   x,
  ap_int<20> *y){
#pragma HLS INTERFACE s_axilite port=return
#pragma HLS INTERFACE s_axilite port=x
#pragma HLS INTERFACE s_axilite port=y
#pragma HLS PIPELINE II=1
#pragma HLS LATENCY max=1
  static ap_int<8> shift_reg[N] = {0};
#pragma HLS ARRAY_PARTITION variable=shift_reg complete
  SHIFT_LOOP: for (int i = N-1; i > 0; i--)
    shift_reg[i] = shift_reg[i-1];
  shift_reg[0] = x;
  ap_int<20> p;
#pragma HLS BIND_OP variable=p op=mul impl=fabric
  ap_int<20> acc = 0;
  MAC_LOOP: for (int i = 0; i < N; i++) {
    p = shift_reg[i] * h[i];
    acc += p;
  }
  *y = acc;
}
