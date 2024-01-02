#include <stdio.h>
#include <limits.h>

void binToAction(int num, int size) {
    int n = num;
    int temp1 = 1;
    int temp2 = 1;
    int i = sizeof(num) * 8 - 1;
    for (; i >= 0; i--) { // Loop through all bits
      if (num & (1 << i)) { // Check if current bit is 1
        i--;
        break; // Stop loop when first 1 found
      }
    }
    for (; i >= 0; i--) { // Print remaining bits
        int leftmost_bit = (num >> i) & 1;
        printf("%d", leftmost_bit);
        if (leftmost_bit == 0) {
          temp2+=temp1;
        } else {
          temp1+=temp2;
        }

    }
    // Print the fraction
    printf("\nF%d = %d/%d\n", n , temp1, temp2);
}



int main() {
    int decimalNumber = 2023; // Change this number

    binToAction(decimalNumber, CHAR_BIT * sizeof(int));

    return 0;
}
