#include <stdbool.h>
#include <stdlib.h>
#include <stdio.h>
#include <math.h>

#define EXP_SZ 8
#define FRAC_SZ 23

int main(int argc, char *argv[]) {

    FILE* fp = fopen(argv[1], "r");
    if (!fp) {
        perror("fopen failed");
        return EXIT_FAILURE;
    }

    // SETUP

    // first, read the binary number representation of float point number
    char buff;
    unsigned int binary = 0;
    for (int i=EXP_SZ+FRAC_SZ; 0<=i; i--) { // read MSB first as that is what comes first in the file
        fscanf(fp, "%c", &buff);
        binary += ((buff == '1') ? (1 << i) : 0);
    }

    printf("%u\n", binary);

    // float number = *(float *)&binary; // you are not allowed to do this.

    bool sign;
    if ((binary & 0x80000000) >> 31 == '1')
        sign = 1;
    else
        sign = 0;

    printf("%d\n", sign);

    // E
    unsigned int e = ((binary & 0b01111111100000000000000000000000) >> 23) - 127;

    // M
    unsigned int m = ((0b00000000011111111111111111111111 & binary)) + 1;

    // https://www.tutorialspoint.com/c_standard_library/c_function_ldexp.htm
    double number = ldexp ( m, e );
    number = sign ? -number : number;
    //number = *(float *)&binary;
    printf("%e\n", number);

    return EXIT_SUCCESS;

}