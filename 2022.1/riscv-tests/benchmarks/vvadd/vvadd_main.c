#include <stdio.h>
#include "dataset_10000.h"
int results_data[DATA_SIZE];
void vvadd(int n, int a[], int b[], int c[]){
  int i;
  for ( i = 0; i < n; i++ )
    c[i] = a[i] + b[i];
}
void main(){
  int i, j;
  vvadd(DATA_SIZE, input1_data, input2_data, results_data);
  for (i=0; i<DATA_SIZE/10; i++){
    for (j=0; j<10; j++)
      printf("%8d ", results_data[i*10+j]);
    printf("\n");
  }
}
