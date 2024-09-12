// ./median_gendata.pl --size 20000 > dataset_20000.h
#include "dataset_2700.h"
#include "median.h"
void main() __attribute__((section(".text.main")));
int results_data[DATA_SIZE];
void main(){
  median(DATA_SIZE, input_data, results_data);
}
