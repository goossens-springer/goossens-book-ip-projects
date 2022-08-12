// ./median_gendata.pl --size 20000 > dataset_20000.h
#include <stdio.h>
#include "dataset_2700.h"
#include "median.h"
int results_data[DATA_SIZE];
void main(){
  int i, j;
  median(DATA_SIZE, input_data, results_data);
  for (i=0; i<DATA_SIZE/20; i++){
    for (j=0; j<20; j++)
      printf("%3d ", results_data[i*20+j]);
    printf("\n");
  }
}
