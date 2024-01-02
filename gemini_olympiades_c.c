#include <stdio.h>

int fraction(int n) {
  if (n == 1) {
    return 1/1;
  } else {
    return fraction(n - 1) + fraction(n - 2);
  }
}

int main() {
  int n;
  printf("Enter an integer n: ");
  scanf("%d", &n);

  // Calculate F_n
  int result = fraction(n);

  // Print the fraction
  printf("F%d = %d/%d\n", n, result.a, result.b);

  return 0;
}

struct fraction {
  int a;
  int b;
};
