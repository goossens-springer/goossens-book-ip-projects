void main(){
  int a=3, b=5, c=2, delta;
  delta = b*b - 4*a*c;
  if (delta<0) printf("no real solution\n");
  else if (delta==0) printf("one solution\n");
  else printf("two solutions\n");
}
