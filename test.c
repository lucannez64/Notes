
#include <stdio.h>

typedef struct {
    unsigned int numerator;
    unsigned int denominator;
} Fraction;

Fraction getNthFraction(unsigned int n) {
    if (n == 1) {
        Fraction result = {1, 1};
        return result;
    }
    
    Fraction fraction = {1, 1};
    unsigned int bit = 0;
    
    while (n > 1) {
        n >>= 1;
        bit = n & 1;
        
        if (bit == 0) {
            fraction.numerator += fraction.denominator;
        } else {
            fraction.denominator += fraction.numerator;
        }
    }
    
    return fraction;
}

int main() {
    unsigned int n = 2023;
    Fraction result = getNthFraction(n);
    printf("Fraction résultante pour n = %u : %u / %u\n", n, result.numerator, result.denominator);
    
    return 0;
}

