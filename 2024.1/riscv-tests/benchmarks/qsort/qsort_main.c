// ./qsort_gendata.pl --size 32768 > dataset_32768.h
#include <stdio.h>
#include <stddef.h>
#include "dataset_4096.h"
#define INSERTION_THRESHOLD 10
// NSTACK is the required auxiliary storage.
// It must be at least 2*lg(DATA_SIZE)
#define NSTACK 50
#define SWAP(a,b) do { int temp=(a);(a)=(b);(b)=temp; } while (0)
#define SWAP_IF_GREATER(a, b) do { if ((a) > (b)) SWAP(a, b); } while (0)
static void insertion_sort(int n, int arr[]){
  int *i, *j;
  int value;
  for (i = arr+1; i < arr+n; i++){
    value = *i;
    j = i;
    while (value < *(j-1)){
      *j = *(j-1);
      if (--j == arr)
        break;
    }
    *j = value;
  }
}
static void selection_sort(int n, int arr[]){
  for (int* i = arr; i < arr+n-1; i++)
    for (int* j = i+1; j < arr+n; j++)
      SWAP_IF_GREATER(*i, *j);
}
void sort(int n, int arr[]){
  int*  ir = arr+n;
  int*  l  = arr+1;
  int*  stack[NSTACK];
  int** stackp = stack;
  for (;;){
    // Insertion sort when subarray small enough.
    if (ir-l < INSERTION_THRESHOLD){
      insertion_sort(ir - l + 1, l - 1);
      if ( stackp == stack ) break;
      // Pop stack and begin a new round of partitioning.
      ir = *stackp--;
      l = *stackp--;
    }
    else{
      // Choose median of left, center, and right elements as
      // partitioning element a. Also rearrange so that a[l-1] <= a[l] <= a[ir-].
      SWAP(arr[((l-arr) + (ir-arr))/2-1], l[0]);
      SWAP_IF_GREATER(l[-1], ir[-1]);
      SWAP_IF_GREATER(l[0], ir[-1]);
      SWAP_IF_GREATER(l[-1], l[0]);
      // Initialize pointers for partitioning.
      int* i = l+1;
      int* j = ir;
      // Partitioning element.
      int a = l[0];
      for (;;){                     // Beginning of innermost loop.
        while (*i++ < a);           // Scan up to find element > a.
        while (*(j-- - 2) > a);     // Scan down to find element < a.
        if (j < i) break;           // Pointers crossed. Partitioning complete.
        SWAP(i[-1], j[-1]);         // Exchange elements.
      }                             // End of innermost loop.
      // Insert partitioning element.
      l[0] = j[-1];
      j[-1] = a;
      stackp += 2;
      // Push pointers to larger subarray on stack,
      // process smaller subarray immediately.
      if (ir-i+1 >= j-l){
        stackp[0] = ir;
        stackp[-1] = i;
        ir = j-1;
      }
      else{
        stackp[0] = j-1;
        stackp[-1] = l;
        l = i;
      }
    }
  }
}
void main(){
  int i;
  sort(DATA_SIZE, input_data);
  for (i=0; i<DATA_SIZE; i++)
    printf("%8d\n", input_data[i]);
}
