#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main(int argc, char** argv) {
    char* input;
    int a;
    for (a = 1 ; a < argc; a++){
        int b;
        input = argv[a];
        int length;
        length = strlen(input);
        for (b = 0; b < length; b++) {
            if (input[b] == 'A' || input[b] == 'a' || 
		input[b] == 'E' || input[b] == 'e' ||
                input[b] == 'I' || input[b] == 'i' ||
                input[b] == 'O' || input[b] == 'o' ||
                input[b] == 'U' || input[b] == 'u') {
                printf("%c", input[b]);
            }
        }
    }
    return 0;
}