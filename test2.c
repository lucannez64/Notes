#include <stdio.h>
#include <stdlib.h>
#include <string.h>

char* get_nth_fraction(int n) {

  char* fraction = malloc(100);
  
  if (n == 1) {
    sprintf(fraction, "1/1");
    return fraction;
  }

  int len = sprintf(fraction, "%d", n);
  char* bits = fraction + 2;

  char* numerator = fraction; 
  char* denominator = strchr(fraction, '/');

  while (*bits) {
    if (*bits == '0') {
      int d = atoi(denominator + 1);
      sprintf(denominator + 1, "%d", d + atoi(numerator));
    } else {
      int n = atoi(numerator);
      sprintf(numerator, "%d", n + atoi(denominator + 1));
    }
    bits++;
  }

  char* result = malloc(100);
  strcpy(result, fraction);
  free(fraction);
  return result;
}

int main() {
  char* result = get_nth_fraction(2023);
  printf("%s\n", result);
  free(result);
  return 0; 
}
