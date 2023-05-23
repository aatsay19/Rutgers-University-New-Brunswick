#include <stdlib.h>
#include <stdio.h>
#include <limits.h>

int main(int argc, char* argv[]) {

    // Read file name from command-line arguments and open file in read-only mode
    FILE* fp = fopen(argv[1], "r");

    // Error Handling: Error while opening file (file cannot be found or accessed)
    if (!fp) {
        perror("fopen failed");
        return EXIT_FAILURE;
    }

    // numIntegers represents first line of text files: the number of integers each file will contain from line 3 onwards
    // numIntReturned represents second line of text files: the number of the highest integers in the list to be returned 
    int numIntegers, numIntReturned;
    fscanf(fp, "%d\n%d", &numIntegers, &numIntReturned);

    // Create an array of length equal to number of integers from line 3 onwards and populate it with everything from line 3 onwards
    int numbers[numIntegers];
    for (int i = 0; i < numIntegers; i++) {
        fscanf(fp, "%d", &numbers[i]);
    }

    // Close the file
    fclose(fp);

    int value = INT_MIN;
    int index = -1;
    for (int i = 0; i < numIntReturned; i++) {
        for (int j = 0; j < numIntegers; j++) {
            if (numbers[j] > value) {
                value = numbers[j];
                index = j;
            }
        }
        printf("%d ", value);
        numbers[index] = INT_MIN;
        value = INT_MIN;
    }
    printf("\n");
    return 0;

}