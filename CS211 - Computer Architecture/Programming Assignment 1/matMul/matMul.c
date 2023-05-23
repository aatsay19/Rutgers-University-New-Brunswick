#include <stdlib.h>
#include <stdbool.h>
#include <stdio.h>

int main(int argc, char* argv[]) {

    FILE* matrix_a_fp = fopen(argv[1], "r");
    if (!matrix_a_fp) {
        perror("fopen failed");
        return EXIT_FAILURE;
    }

    char buff[256];

    fscanf(matrix_a_fp, "%s", buff);
    char length_l = atoi(buff);
    int** matrix_a = malloc( length_l * sizeof(int*) );

    fscanf(matrix_a_fp, "%s", buff);
    char length_m = atoi(buff);
    for ( unsigned char i=0; i<length_l; i++ ) {
        matrix_a[i] = malloc( length_m * sizeof(int) );
    }

    for (unsigned char i = 0; i < length_l; i++) {
        for (unsigned char j = 0; j < length_m; j++) {
            fscanf(matrix_a_fp, "%d", &matrix_a[i][j]);
        }
    }

    fclose(matrix_a_fp);

    FILE* matrix_b_fp = fopen(argv[2], "r");
    if (!matrix_b_fp) {
        perror("fopen failed");
        return EXIT_FAILURE;
    }

    fscanf(matrix_b_fp, "%s", buff);
    unsigned char length_m2 = atoi(buff);
    int** matrix_b = malloc( length_m2 * sizeof(int*) );

    fscanf(matrix_b_fp, "%s", buff);
    unsigned char length_n = atoi(buff);
    for ( unsigned char i=0; i<length_m2; i++ ) {
        matrix_b[i] = malloc( length_n * sizeof(int) );
    }

    for (unsigned char i = 0; i < length_m2; i++) {
        for (unsigned char j = 0; j < length_n; j++) {
            fscanf(matrix_b_fp, "%d", &matrix_b[i][j]);
        }
    }

    fclose(matrix_b_fp);

    int** matrix_c = malloc(length_l * sizeof(int*));
    for (unsigned char i = 0; i < length_l; i++) {
        matrix_c[i] = malloc(length_n * sizeof(int));
    }

    for (int i = 0; i < length_l; i++) {
        for (int j = 0; j < length_n; j++) {
            matrix_c[i][j] = 0;
        }
    }

    for (int i = 0; i < length_l; i++) {
        for (int j = 0; j < length_n; j++) {
            for (int k = 0; k < length_m; k++) {
                matrix_c[i][j] += matrix_a[i][k] * matrix_b[k][j];
            }
        }
    }

    for (unsigned char i = 0; i < length_l; i++) {
        for (unsigned char j = 0; j < length_n; j++) {
            printf("%d ", matrix_c[i][j]);
        }
    }

    for ( int i=0; i<length_l; i++ ) {
        free( matrix_a[i] );
    }
    free( matrix_a );

    for ( int i=0; i<length_m2; i++ ) {
        free( matrix_b[i] );
    }
    free( matrix_b );

    for ( int i=0; i<length_l; i++ ) {
        free( matrix_c[i] );
    }
    free( matrix_c );

    return 0;

}