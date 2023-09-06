#include <stdio.h>

typedef struct {
  int num;
  int den;
} fraction;



fraction F(int n) {
  if (n == 1) {
    return (fraction){1, 1}; 
  } else {
    fraction x = F(n/2);
    if (n % 2 == 0) {
      return (fraction){x.num, x.num + x.den};
    } else {
      return (fraction){x.num + x.den, x.den};
    }
  }
}

int find_n(fraction f, int n) {
  fraction x = F(n);
  while (x.num != f.num || x.den != f.den) {
    n++;
    x = F(n);
  }
  return n;
}
void print_tree(int n) {
  if (n == 1) {
    printf("graph TD\n"); 
    printf("  1-->1\n");
    return;
  }

  print_tree(n/2);

  fraction x = F(n/2);

  if (n%2 == 0) {
    printf("  %d/%d-->%d/%d\n", x.num, x.den, x.num, x.num+x.den); 
  } else {
    printf("  %d/%d-->%d/%d\n", x.num, x.den, x.num+x.den, x.den);
  }
}
int main() {
  fraction f = F(2023);
  printf("%d/%d\n", f.num, f.den);
  f = (fraction){5, 7};
  int n = find_n(f, 1);
  printf("%d\n", n);
  print_tree(2023);
  return 0;
}
