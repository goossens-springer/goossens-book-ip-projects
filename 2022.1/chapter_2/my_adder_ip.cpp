void my_adder_ip(unsigned int  a,
                 unsigned int  b,
                 unsigned int *c){
#pragma HLS INTERFACE s_axilite port=a
#pragma HLS INTERFACE s_axilite port=b
#pragma HLS INTERFACE s_axilite port=c
#pragma HLS INTERFACE s_axilite port=return
  *c = a + b;
}
