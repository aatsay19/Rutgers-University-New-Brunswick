#include <stdbool.h>
#include <stdlib.h>
#include <stdio.h>
#include <math.h>

//Function declerations
bool is_prime(int n);

int main(int argc, char* argv[]) {
    int number = atoi(argv[1]);
    if (number <= 5 || number % 2 != 1) {
        printf("%d is not an odd integer greater than 5.\n", number);
        return 0;
    }
    for (int i = 2; i <= number; i++) {
        if (is_prime(i)) {
            for (int j = 2; j <= number; j++) {
                if (is_prime(j)) {
                    for (int k = 2; k <= number; k++) {
                        if (is_prime(k)) {
                            if ((i + j + k) == number) {
                                printf("%d = %d + %d + %d\n", number, i, j, k);
                                return 0;
                            }
                        }
                    }
                }
            }
        }
    }
    return 0;
}

bool is_prime(int n){
    if (n == 2) {
        return true;
    }
    for (int i = 2; i <= sqrt(n); i++) {
        if (n % i == 0) {
            return false;
        }
    }
    return true;
}