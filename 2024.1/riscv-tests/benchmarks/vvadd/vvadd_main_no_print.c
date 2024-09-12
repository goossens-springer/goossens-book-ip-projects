#include "dataset_2000.h"
void main() __attribute__((section(".text.main")));
int results_data[DATA_SIZE];
void vvadd(int n, int a[], int b[], int c[]){
  int i;
  for ( i = 0; i < n; i++ )
    c[i] = a[i] + b[i];
}
void main(){
  vvadd(DATA_SIZE, input1_data, input2_data, results_data);
}
