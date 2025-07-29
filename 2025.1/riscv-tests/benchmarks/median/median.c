void median(int n, int input[], int results[]){
  int A, B, C, i;
  results[0]   = 0;
  results[n-1] = 0;
  for (i = 1; i < (n-1); i++){
    A = input[i-1];
    B = input[i];
    C = input[i+1];
    if (A < B){
      if (B < C)
        results[i] = B;
      else if (C < A)
        results[i] = A;
      else
        results[i] = C;
    }
    else{
      if (A < C)
        results[i] = A;
      else if (C < B)
        results[i] = B;
      else
        results[i] = C;
    }
  }
}
