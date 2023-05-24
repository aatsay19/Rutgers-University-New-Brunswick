#include <stdbool.h>
#include <stdlib.h>
#include <stdio.h>

int main(int argc, char *argv[]) {

    FILE* fp = fopen(argv[1], "r");
    if (!fp) {
        perror("fopen failed");
        return EXIT_FAILURE;
    }

    // SETUP

    // first, read the minuend (number to be subtracted from)
    char buff;
    bool minuend[8]; // suggested that you store bits as array of bools; minuend[0] is the LSB
    for (int i=7; 0<=i; i--) { // read MSB first as that is what comes first in the file
        fscanf(fp, "%c", &buff);
        if (buff == '1')
            minuend[i] = true;
        else 
            minuend[i] = false;
    }

    // notice that you are reading two different lines; caution with reading
    fscanf(fp, "%*c");

    // second, read the subtrahend (number to subtract)
    bool subtrahend[8]; // suggested that you store bits as array of bools; subtrahend[0] is the LSB
    for (int i=7; 0<=i; i--) { // read MSB first as that is what comes first in the file
        fscanf(fp, "%c", &buff);
        if (buff == '1')
            subtrahend[i] = 1;
        else 
            subtrahend[i] = 0;
    }

    // WE WILL DO SUBTRACTION BY NEGATING THE SUBTRAHEND AND ADD THAT TO THE MINUEND

    // Negate the subtrahend
    // flip all bits
    for (int i = 0; i < 8; i++) {
        subtrahend[i] = !subtrahend[i];
    }

    // add one
    bool carry = true; // to implement the 'add one' logic, we do binary addition logic with carry set to true at the beginning
    for (int i=0; i<8; i++) { // iterate from LSB to MSB
        bool temp = (carry + subtrahend[i]) % 2;
        carry = (carry + subtrahend[i]) / 2;
        subtrahend[i] = temp;
    }

    /*for (int i = 0; i < 8; i++) {
        printf("%d", subtrahend[i]);
    }*/

    // Add the minuend and the negated subtrahend
    carry = false;
    bool difference[8];
    for (int i = 0; i < 8; i++) {
        bool temp = (carry + minuend[i] + subtrahend[i]) % 2;
        carry = (carry + minuend[i] + subtrahend[i]) / 2;
        difference[i] = temp;
    }

    // print the difference bit string
    for (int i=7; 0<=i; i--)
        printf("%d",difference[i]);

    return EXIT_SUCCESS;

}