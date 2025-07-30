#include "ap_int.h"
#define N 16
void fir(
  ap_int<8>   x,
  ap_int<16> *y){
#pragma HLS INTERFACE s_axilite port=return
#pragma HLS INTERFACE s_axilite port=x
#pragma HLS INTERFACE s_axilite port=y
#pragma HLS PIPELINE
#pragma HLS LATENCY MAX=1
  static ap_int<8> shift_reg[N] = {0};
#pragma HLS ARRAY_PARTITION variable=shift_reg complete
  ap_int< 9> srh0;
  ap_int<10> srh1;
  ap_int<11> srh2;
  ap_int<12> srh3;
  ap_int<10> srh3a;
  ap_int<11> srh3b;
  ap_int<12> srh4;
  ap_int<13> srh5;
  ap_int< 9> srh5a;
  ap_int<12> srh5b;
  ap_int<13> srh6;
  ap_int<10> srh6a;
  ap_int<12> srh6b;
  ap_int<13> srh7;
  ap_int< 9> srh7a;
  ap_int<10> srh7b;
  ap_int<12> srh7c;
  ap_int<11> srh7ab;
  ap_int<13> srh8;
  ap_int< 9> srh8a;
  ap_int<10> srh8b;
  ap_int<12> srh8c;
  ap_int<11> srh8ab;
  ap_int<13> srh9;
  ap_int<10> srh9a;
  ap_int<12> srh9b;
  ap_int<13> srh10;
  ap_int< 9> srh10a;
  ap_int<12> srh10b;
  ap_int<12> srh11;
  ap_int<12> srh12;
  ap_int<10> srh12a;
  ap_int<11> srh12b;
  ap_int<11> srh13;
  ap_int<10> srh14;
  ap_int< 9> srh15;
  //----------------
  ap_int<11> srh0_1;
  ap_int<13> srh2_4;
  ap_int<13> srh3_12;
  ap_int<14> srh5_6;
  ap_int<14> srh7_8;
  ap_int<14> srh9_10;
  ap_int<13> srh11_13;
  ap_int<11> srh14_15;
  //-----------------
  ap_int<13> srh0_1_2_4;
  ap_int<13> srh11_13_14_15;
  ap_int<15> srh5_6_9_10;
  ap_int<15> srh3_7_8_12;
  //-----------------
  ap_int<14> srh0_1_2_4_11_13_14_15;
  ap_int<16> srh3_5_6_7_8_9_10_12;
  //-----------------
  srh0    = ((ap_int< 9>)x)<<1;//2x0
  srh1    = ((ap_int<10>)(shift_reg[ 0]))<<2;//4x1
  srh2    = ((ap_int<11>)(shift_reg[ 1]))<<3;//8x2
  srh3a   = ((ap_int<10>)(shift_reg[ 2]))<<2;//4x3
  srh3b   = ((ap_int<11>)(shift_reg[ 2]))<<3;//8x3
  srh3    =  (ap_int<12>)srh3a + (ap_int<12>)srh3b;//12x3
  srh4    = ((ap_int<12>)(shift_reg[ 3]))<<4;//16x4
  srh5a   = ((ap_int< 9>)(shift_reg[ 4]))<<1;//2x5
  srh5b   = ((ap_int<12>)(shift_reg[ 4]))<<4;//16x5
  srh5    =  (ap_int<13>)srh5a + (ap_int<13>)srh5b;//18x5
  srh6a   = ((ap_int<10>)(shift_reg[ 5]))<<2;//4x6
  srh6b   = ((ap_int<12>)(shift_reg[ 5]))<<4;//16x6
  srh6    =  (ap_int<13>)srh6a + (ap_int<13>)srh6b;//20x6
  srh7a   = ((ap_int< 9>)(shift_reg[ 6]))<<1;//2x7
  srh7b   = ((ap_int<10>)(shift_reg[ 6]))<<2;//4x7
  srh7c   = ((ap_int<12>)(shift_reg[ 6]))<<4;//16x7
  srh7ab  =  (ap_int<11>)srh7a + (ap_int<11>)srh7b;//6x7
  srh7    =  (ap_int<13>)srh7ab + (ap_int<13>)srh7c;//22x7
  srh8a   = ((ap_int< 9>)(shift_reg[ 7]))<<1;//2x8
  srh8b   = ((ap_int<10>)(shift_reg[ 7]))<<2;//4x8
  srh8c   = ((ap_int<12>)(shift_reg[ 7]))<<4;//16x8
  srh8ab  =  (ap_int<11>)srh8a + (ap_int<11>)srh8b;//6x8
  srh8    =  (ap_int<13>)srh8ab + (ap_int<13>)srh8c;//22x8
  srh9a   = ((ap_int<10>)(shift_reg[ 8]))<<2;//4x9
  srh9b   = ((ap_int<12>)(shift_reg[ 8]))<<4;//16x9
  srh9    =  (ap_int<13>)srh9a + (ap_int<13>)srh9b;//20x9
  srh10a  = ((ap_int< 9>)(shift_reg[ 9]))<<1;//2x10
  srh10b  = ((ap_int<12>)(shift_reg[ 9]))<<4;//16x10
  srh10   =  (ap_int<13>)srh10a + (ap_int<13>)srh10b;//18x10
  srh11   = ((ap_int<12>)(shift_reg[10]))<<4;//16x11
  srh12a  = ((ap_int<10>)(shift_reg[11]))<<2;//4x12
  srh12b  = ((ap_int<11>)(shift_reg[11]))<<3;//8x12
  srh12   =  (ap_int<12>)srh12a + (ap_int<12>)srh12b;//12x12
  srh13   = ((ap_int<11>)(shift_reg[12]))<<3;//8x13
  srh14   = ((ap_int<10>)(shift_reg[13]))<<2;//4x14
  srh15   = ((ap_int< 9>)(shift_reg[14]))<<1;//2x15
  //-------------------------
  srh0_1   = (ap_int<11>)srh0  + (ap_int<11>)srh1;
  srh2_4   = (ap_int<13>)srh2  + (ap_int<13>)srh4;
  srh3_12  = (ap_int<13>)srh3  + (ap_int<13>)srh12;
  srh5_6   = (ap_int<14>)srh5  + (ap_int<14>)srh6;
  srh7_8   = (ap_int<14>)srh7  + (ap_int<14>)srh8;
  srh9_10  = (ap_int<14>)srh9  + (ap_int<14>)srh10;
  srh11_13 = (ap_int<13>)srh11 + (ap_int<13>)srh13;
  srh14_15 = (ap_int<11>)srh14 + (ap_int<11>)srh15;
  //-------------------------
  srh0_1_2_4 = (ap_int<13>)srh0_1 + (ap_int<13>)srh2_4;
  srh11_13_14_15 = (ap_int<13>)srh11_13 + (ap_int<13>)srh14_15;
  srh5_6_9_10 = (ap_int<15>)srh5_6 + (ap_int<15>)srh9_10;
  srh3_7_8_12 = (ap_int<15>)srh3_12 + (ap_int<15>)srh7_8;
  //----------------------------
  srh0_1_2_4_11_13_14_15 = (ap_int<14>)srh0_1_2_4 + (ap_int<14>)srh11_13_14_15;
  srh3_5_6_7_8_9_10_12 = (ap_int<16>)srh3_7_8_12 + (ap_int<16>)srh5_6_9_10;
  //-----------------
  *y = (ap_int<16>)srh0_1_2_4_11_13_14_15 + (ap_int<16>)srh3_5_6_7_8_9_10_12;
  shift_reg[15] = shift_reg[14];
  shift_reg[14] = shift_reg[13];
  shift_reg[13] = shift_reg[12];
  shift_reg[12] = shift_reg[11];
  shift_reg[11] = shift_reg[10];
  shift_reg[10] = shift_reg[9];
  shift_reg[9] = shift_reg[8];
  shift_reg[8] = shift_reg[7];
  shift_reg[7] = shift_reg[6];
  shift_reg[6] = shift_reg[5];
  shift_reg[5] = shift_reg[4];
  shift_reg[4] = shift_reg[3];
  shift_reg[3] = shift_reg[2];
  shift_reg[2] = shift_reg[1];
  shift_reg[1] = shift_reg[0];
  shift_reg[0] = x;
}