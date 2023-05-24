#include <stdio.h>
#include <stdlib.h>

int main(int argc, char* argv[]){
    FILE* ptrFile = fopen(argv[1], "r");

    if (ptrFile == NULL) {
        return 1;
    }

    int arrsize;
    fscanf(ptrFile, "%d", &arrsize);
    int arr[arrsize];
    int a, even, odd, i;

    if (arrsize == 0) {
        return 1;
    }

    for (a = 0; a < arrsize; a++) {
        fscanf(ptrFile, "%d", &arr[a]);
    }

    for (even = 1; even < arrsize; even++) {
        for (odd = even - 1; odd >= 0; odd--) {
            if (abs(arr[even] % 2) == 0 && abs(arr[odd] % 2) == 1) { 
                i = arr[even];
                arr[even] = arr[odd];
                arr[odd] = i;
                even--;
            }
            else if (abs(arr[even] % 2) == 1 && abs(arr[odd] % 2) == 1) {
                if (arr[even] > arr[odd]) {
                    i = arr[even];
                    arr[even] = arr[odd];
                    arr[odd] = i;
                    even--;
            }
                else {
	           continue;
	        }
            }
            else if (abs(arr[even] % 2) == 0 && abs(arr[odd] % 2) == 0) { 
                if (arr[even] < arr[odd]) {
                    i = arr[even];
                    arr[even] = arr[odd];
                    arr[odd] = i;
                    even--;
                }
                else {
	            continue;
	        }
            }
            else if (abs(arr[even] % 2) == 1 && abs(arr[odd] % 2) == 0) { 
                continue;
            }
        }
    }

    for(a = 0; a < arrsize; a++){
        printf("%d\t",arr[a]);
    }

    fclose(ptrFile);
    return 0;
}