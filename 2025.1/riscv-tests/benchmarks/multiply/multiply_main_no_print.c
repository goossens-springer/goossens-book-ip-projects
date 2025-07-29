#include "multiply.h"
#include "dataset_2000.h"
// ./multiply_gendata.pl --size 15000 > dataset_15000.h
void main() __attribute__((section(".text.main")));
int results_data[DATA_SIZE];
void main(){
  int i;
  for (i=0; i<DATA_SIZE; i++)
    results_data[i] = multiply(input_data1[i], input_data2[i]);
}
