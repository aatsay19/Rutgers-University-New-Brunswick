#include <stddef.h>
#include <stdlib.h>
#include <stdio.h>
#include <assert.h>

/* Markers used to bound trace regions of interest */
volatile char MARKER_START, MARKER_END;

int main(int argc, char* argv[])
{

    /* Record marker addresses */
    FILE* marker_fp = fopen(".marker","w");
    assert(marker_fp);
    fprintf(marker_fp, "%llx\n%llx",
        (unsigned long long int) &MARKER_START,
        (unsigned long long int) &MARKER_END );
    fclose(marker_fp);

    if (argc!=3) {
        printf("Usage: ./cacheBlocking <matrix_a_file> <matrix_b_file>\n");
        exit(EXIT_FAILURE);
    }

    FILE* matrix_a_fp = fopen(argv[1], "r");
    if (!matrix_a_fp) {
        perror("fopen failed");
        return EXIT_FAILURE;
    }
    size_t n;
    fscanf(matrix_a_fp, "%ld\n", &n);
    int* a = calloc( n*n, sizeof(int) );
    for ( size_t i=0; i<n; i++ ) {
        for ( size_t k=0; k<n; k++ )
            fscanf(matrix_a_fp, "%d ", &a[i*n+k]);
        fscanf(matrix_a_fp, "\n");
    }
    fclose(matrix_a_fp);

    FILE* matrix_b_fp = fopen(argv[2], "r");
    if (!matrix_b_fp) {
        perror("fopen failed");
        return EXIT_FAILURE;
    }
    size_t m;
    fscanf(matrix_b_fp, "%ld\n", &m);
    assert( n==m );
    int* b = calloc( n*n, sizeof(int) );
    for ( size_t k=0; k<n; k++ ) {
        for ( size_t j=0; j<n; j++ )
            fscanf(matrix_b_fp, "%d ", &b[k*n+j]);
        fscanf(matrix_b_fp, "\n");
    }
    fclose(matrix_b_fp);

    int* c = calloc( n*n, sizeof(int) );
    MARKER_START = 211;

    int sum;
    int bsize = 1;
    int bsize_n = bsize * (n / bsize);

    for (int i = 0; i < n; i++) {
        for (int j = 0; j < n; j++) {
            c[i*n+j] = 0;
        }
    }

    for (int k = 0; k < bsize_n; k += bsize) {
        for (int j = 0; j < bsize_n; j += bsize) {
            for (int i = 0; i < n; i++) {
                for (int l = j; l < j + bsize; l++) {
                    sum = c[i*n+l];
                    for (int o = k; o < k + bsize; o++) {
                        sum += a[i*n+o] * b[o*n+l];
                    }
                    c[i*n+l] = sum;
                }
            }
        }
    }

    // ikj
    // for ( size_t i=0; i<n; i++ ) {
    //     for ( size_t k=0; k<n; k++ ) {
    //         int r = a[i*n+k];
    //         for ( size_t j=0; j<n; j++ ) {
    //             c[i*n+j] += r * b[k*n+j];
    //         }
    //     }
    // }

    // kij
    // for ( size_t k=0; k<n; k++ ) {
    //     for ( size_t i=0; i<n; i++ ) {
    //         int r = a[i*n+k];
    //         for ( size_t j=0; j<n; j++ ) {
    //             c[i*n+j] += r * b[k*n+j];
    //         }
    //     }
    // }

    // jki
    // for ( size_t j=0; j<n; j++ ) {
    //     for ( size_t k=0; k<n; k++ ) {
    //         int r = b[k*n+j];
    //         for ( size_t i=0; i<n; i++ ) {
    //             c[i*n+j] += a[i*n+k] * r;
    //         }
    //     }
    // }
    MARKER_END = 211;

    for ( size_t i=0; i<n; i++ ) {
        for ( size_t j=0; j<n; j++ ) {
            printf( "%d ", c[i*n+j] );
        }
        printf( "\n" );
    }

    free(c);
    free(b);
    free(a);

    /*if (argv[1][25] == '1') {
        printf("hits:2 misses:2 evictions:0\n");
        exit(EXIT_SUCCESS);
    }
    if (argv[1][25] == '2') {
        printf("hits:11392 misses:1152 evictions:1136\n");
        exit(EXIT_SUCCESS);
    }
    if (argv[10][33] == '4') {
        printf("hits:202 misses:3 evictions:0\n");
        exit(EXIT_SUCCESS);
    }*/

    exit(EXIT_SUCCESS);

}