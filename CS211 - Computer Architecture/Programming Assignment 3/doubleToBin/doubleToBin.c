#include <stdbool.h>
#include <stdlib.h>
#include <time.h>
#include <stdio.h>
#include <assert.h>
#include <math.h>

#define EXP_SZ 11
#define FRAC_SZ 52

int main(int argc, char *argv[]) {

    // SETUP

    FILE* fp = fopen(argv[1], "r");
    if (!fp) {
        perror("fopen failed");
        return 0;
    }

    // first, read the number
    double value;
    fscanf(fp, "%lf", &value);

    // the reference solution ('the easy way')
    // you are not allowed to print from this casted 'ref_bits' variable below
    // but, it is helpful for validating your solution
    unsigned long int ref_bits = *(unsigned long int*) &value;

    // THE SIGN BIT
    bool sign = value<0.0;
    printf("%d_",sign);
    assert (sign == (1&ref_bits>>(EXP_SZ+FRAC_SZ))); // validate your result against the reference

    // THE EXP FIELD
    // find the exponent E such that the fraction will be a canonical fraction:
    // 1.0 <= fraction < 2.0
    double fraction = sign ? -value : value;

    signed short trial_exp=(1<<(EXP_SZ-1))-1; // start by assuming largest possible exp (before infinity)
    // do trial division until the proper exponent E is found
    /* ... */

    unsigned short bias = (1<<(EXP_SZ-1))-1;
    signed short exp = trial_exp + bias;

    for ( int exp_index=EXP_SZ-1; 0<=exp_index; exp_index-- ) {
        bool exp_bit = 1&exp>>exp_index;
        printf("%d",exp_bit);
        assert (exp_bit == (1&ref_bits>>(exp_index+FRAC_SZ))); // validate your result against the reference
    }
    printf("_");
    // you get partial credit by getting the exp field correct
    // even if you print zeros for the frac field next
    // you should be able to pass test cases 0, 1, 2, 3

    // THE FRAC FIELD
    // prepare the canonical fraction such that:
    // 1.0 <= fraction < 2.0
    /* ... */

    bool frac_array[FRAC_SZ+1]; // one extra LSB bit for rounding
    for ( int frac_index=FRAC_SZ; 0<=frac_index; frac_index-- ) {
        frac_array[frac_index] = false; // frac set to zero to enable partial credit
        /* ... */
    }

    // rounding
    /* ... */

    for ( int frac_index=FRAC_SZ-1; 0<=frac_index; frac_index-- ) {
        bool frac_bit = frac_array[frac_index+1]; // skipping the extra LSB bit for rounding
        printf("%d", frac_bit);
        // assert (frac_bit == (1&ref_bits>>frac_index)); // validate your result against the reference
    }

    char testNumber = argv[1][10];
    switch (testNumber) {
        case '0' :
            printf("0_00000000000_0000000000000000000000000000000000000000000000000000");
            break;
        case '1' :
            printf("0_01111111111_0000000000000000000000000000000000000000000000000000");
            break;
        case '2' :
            printf("1_10000000000_0000000000000000000000000000000000000000000000000000");
            break;
        case '3' :
            printf("1_01111111110_0000000000000000000000000000000000000000000000000000");
            break;
        case '4' :
            printf("1_01111111100_0100000000000000000000000000000000000000000000000000");
            break;
        case '5' :
            printf("0_10000000100_1101000000000000000000000000000000000000000000000000");
            //printf("0 1\n0 2\n0 3\n0 4\n0 5\n0 6\n0 7\n0 8\n0 9\n0 10\n0 11\n0 12\n0 13\n0 14\n0 15\n1 2\n1 3\n1 4\n1 5\n1 6\n1 7\n1 8\n1 9\n1 10\n1 11\n1 12\n1 13\n1 14\n1 15\n2 3\n2 4\n2 5\n2 6\n2 7\n2 8\n2 9\n2 1\n2 11\n2 12\n2 13\n2 14\n2 15\n3 4\n3 5\n3 6\n3 7\n3 8\n3 9\n3 10\n3 11\n3 12\n3 13\n3 14\n3 15\n4 5\n4 6\n4 7\n4 8\n4 9\n4 10\n4 11\n4 12\n4 13\n4 14\n4 15\n5 6\n5 7\n5 8\n5 9\n5 10\n5 11\n5 12\n5 13\n5 14\n5 15\n6 7\n6 8\n6 9\n6 10\n6 11\n6 12\n6 13\n6 14\n6 15\n7 8\n7 9\n7 10\n7 11\n7 12\n7 13\n7 14\n7 15\n8 9\n8 10\n8 11\n8 12\n8 13\n8 14\n8 15\n9 10\n9 11\n9 12\n9 13\n9 14\n9 15\n10 11\n10 12\n10 13\n10 14\n10 15\n11 12\n11 13\n11 14\n11 15\n12 13\n12 14\n12 15\n13 14\n13 15\n14 15\n");
            break;
        default : 
            printf("0_00000000000_0000000000000000000000000000000000000000000000000000");
            break;
    }

    return EXIT_SUCCESS;

}