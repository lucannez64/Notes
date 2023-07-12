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

int main() {
  fraction f = F(406);
  printf("%d/%d\n", f.num, f.den);

  f = (fraction){31, 43};
  int n = find_n(f, 1);
  printf("%d\n", n);

  return 0;
}
