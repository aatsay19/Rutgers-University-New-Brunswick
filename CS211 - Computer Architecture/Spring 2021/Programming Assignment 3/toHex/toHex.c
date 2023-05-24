#include <stdbool.h>
#include <stdlib.h>
#include <stdio.h>

int main(int argc, char *argv[]) {

    FILE* fp = fopen(argv[1], "r");
    if (!fp) {
        perror("fopen failed");
        return EXIT_FAILURE;
    }

    // first, read the number
    signed short int input;
    fscanf(fp, "%hd", &input); // note how the 'h' modifier shortens the %d to half size

    // print bits; you will see this kind of for loop often in this assignment
    for ( int digit=16; 0<=digit; digit-- ) {
        char char_val = 0xF & input >> (digit - 4); // shift and mask
        if (char_val >= 0 && char_val <= 9)
            printf("%c", '0' + char_val);
        else
            printf("%c", '0' + 7 + char_val);
    }
    printf("\n");

    // useful hints for printing uppercase hexadecimal
    // printf("The character value of '0' = %d\n",'0');
    // printf("The character value of 'A' = %d\n",'A');

    return EXIT_SUCCESS;

}