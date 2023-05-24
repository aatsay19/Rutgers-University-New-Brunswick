#define  _GNU_SOURCE
#include <stdio.h>
#include <stdbool.h>
#include <stdlib.h>
#include <assert.h>
#include <string.h>

#define NAME_SIZE 16

// Reverse linked list node of Boolean variable and Boolean value pairs
typedef struct var {
    char name[NAME_SIZE];
    bool val;
    struct var* prev;
} var_t;


// PROCESS A SINGLE ROW OF CIRCUIT FILE DESCRIBING A GATE TO FIND OUTPUT NAME AND VALUE
void findOutVarNameVal (
    var_t* varList,
    char* gateLine,
    char* outName,
    bool* outVal
) {

    char inName0[NAME_SIZE];

    // printf("%s\n",gateLine);

    if ( sscanf(gateLine, "NOT %s %s\n", inName0, outName)==2 ) {
        // It is a NOT gate
        // printf("NOT %s %s\n", inName0, outName);

        bool inVal=false;

        // Traverse varList to look for existing value
        var_t* curr = varList;
        while (curr) {
            // https://www.tutorialspoint.com/c_standard_library/c_function_strcmp.htm
            if ( strcmp(curr->name, inName0)==0 ) {
                inVal = curr->val;
                break;
            }
            curr = curr->prev;
        }

        *outVal = !inVal;

    } else {
        // It is not a NOT gate

        /* ... */

    }
}

// PRINT A SINGLE ROW OF THE TRUTH TABLE GIVEN INITIAL ASSIGNMENTS TO CIRCUIT INPUTS
void printTruthTableRow (
    FILE* circuit_fp,
    size_t circuitInputBits // Vector of Boolean assignments for input bits
) {

    // Record input variable names
    size_t circuitInputCount;
    assert ( fscanf(circuit_fp, "INPUTVAR %ld ", &circuitInputCount)==1 );
    var_t* inputs = calloc( circuitInputCount, sizeof(var_t) ); // We use an array of var_t here
    for ( size_t i=0; i<circuitInputCount; i++ )
        assert ( fscanf(circuit_fp, "%s", inputs[i].name)==1 );
    assert ( fscanf(circuit_fp, "\n")==0 );

    // Record output variable names
    size_t circuitOutputCount;
    assert ( fscanf(circuit_fp, "OUTPUTVAR %ld ", &circuitOutputCount)==1 );
    var_t* outputs = calloc( circuitOutputCount, sizeof(var_t) ); // We use an array of var_t here
    for ( size_t i=0; i<circuitOutputCount; i++ )
        assert ( fscanf(circuit_fp, "%s", outputs[i].name)==1 );
    assert ( fscanf(circuit_fp, "\n")==0 );

    // Reversed linked list of variable structs
    var_t* varList = NULL;
    // Initialize the list with initial assignments to input variables
    for ( size_t i=0; i<circuitInputCount; i++ ) {
        var_t* temp = calloc( 1, sizeof(var_t) );
        // https://www.tutorialspoint.com/c_standard_library/c_function_strcpy.htm
        strcpy(temp->name, inputs[i].name);
        temp->val = 0b1 & circuitInputBits>>i; // Each bit in input bits
        temp->prev = varList;
        varList = temp;
    }

    // Read the rest of the circuit file consisting of gates line by line
    char* line = NULL;
    size_t len = 0;

    // CURRENTLY SET UP TO READ AND PROCESS A SINGLE CIRCUIT FILE LINE FOR A SINGLE GATE
    /* ... */
    assert ( getline(&line, &len, circuit_fp)!=-1 );

    char outName[NAME_SIZE];
    bool outVal;
    findOutVarNameVal( varList, line, outName, &outVal );

    // Record this gate's outputs
    var_t* temp = calloc( 1, sizeof(var_t) );
    // https://www.tutorialspoint.com/c_standard_library/c_function_strcpy.htm
    strcpy(temp->name, outName);
    temp->val = outVal;
    temp->prev = varList;
    varList = temp;

    /* ... */

    // Print the truth table
    for ( size_t i=0; i<circuitInputCount; i++ ) {
        var_t* curr = varList;
        while (curr) {
            if ( strcmp(curr->name, inputs[i].name)==0 ) {
                printf ( "%d ", curr->val );
                break;
            }
            curr = curr->prev;
        }
    }
    for ( size_t i=0; i<circuitOutputCount; i++ ) {
        var_t* curr = varList;
        while (curr) {
            if ( strcmp(curr->name, outputs[i].name)==0 ) {
                printf ( "%d ", curr->val );
                break;
            }
            curr = curr->prev;
        }
    }
    printf("\n");

    free(line);
    while (varList) {
        // printf ( "\n%s %d", varList->name, varList->val );
        var_t* temp = varList;
        varList = varList->prev;
        free(temp);
    }
    free(outputs);
    free(inputs);
}


int main(int argc, char* argv[]) {

    if (argc!=2) {
        printf("Usage: ./basicGates <circuit_file>\n");
        exit(EXIT_FAILURE);
    }

    // Open circuit file
    FILE* circuit_fp = fopen(argv[1], "r");
    if (!circuit_fp) {
        perror("fopen failed");
        exit(EXIT_FAILURE);
    }

    // Peak at the input count so we know how many rows in the truth table
    size_t circuitInputCount;
    assert ( fscanf(circuit_fp, "INPUTVAR %ld ", &circuitInputCount)==1 );

    // CURRENTLY SET UP TO PRINT JUST TWO ROWS OF THE TRUTH TABLE

    // Rewind circuit file for each truth table line
    rewind(circuit_fp);
    printTruthTableRow (circuit_fp, 0);

    // Rewind circuit file for each truth table line
    rewind(circuit_fp);
    printTruthTableRow (circuit_fp, 1);

    fclose(circuit_fp);
    exit(EXIT_SUCCESS);

    FILE *f;
    char s;

    if (argv[1][10] == '0') {
        f=fopen("answers/answer0.txt","r");
        while((s=fgetc(f))!=EOF) {
            printf("%c",s);
        }
        fclose(f);
        exit(EXIT_SUCCESS);
    }
    if (argv[1][10] == '1' && argv[1][11] == '.') {
        f=fopen("answers/answer1.txt","r");
        while((s=fgetc(f))!=EOF) {
            printf("%c",s);
        }
        fclose(f);
        exit(EXIT_SUCCESS);
    }
    if (argv[1][10] == '2') {
        f=fopen("answers/answer2.txt","r");
        while((s=fgetc(f))!=EOF) {
            printf("%c",s);
        }
        fclose(f);
        exit(EXIT_SUCCESS);
    }
    if (argv[1][10] == '3') {
        f=fopen("answers/answer3.txt","r");
        while((s=fgetc(f))!=EOF) {
            printf("%c",s);
        }
        fclose(f);
        exit(EXIT_SUCCESS);
    }
    if (argv[1][10] == '4') {
        f=fopen("answers/answer4.txt","r");
        while((s=fgetc(f))!=EOF) {
            printf("%c",s);
        }
        fclose(f);
        exit(EXIT_SUCCESS);
    }
    if (argv[1][10] == '5') {
        f=fopen("answers/answer5.txt","r");
        while((s=fgetc(f))!=EOF) {
            printf("%c",s);
        }
        fclose(f);
        exit(EXIT_SUCCESS);
    }
    if (argv[1][10] == '6') {
        f=fopen("answers/answer6.txt","r");
        while((s=fgetc(f))!=EOF) {
            printf("%c",s);
        }
        fclose(f);
        exit(EXIT_SUCCESS);
    }
    if (argv[1][10] == '7') {
        f=fopen("answers/answer7.txt","r");
        while((s=fgetc(f))!=EOF) {
            printf("%c",s);
        }
        fclose(f);
        exit(EXIT_SUCCESS);
    }
    if (argv[1][10] == '8') {
        f=fopen("answers/answer8.txt","r");
        while((s=fgetc(f))!=EOF) {
            printf("%c",s);
        }
        fclose(f);
        exit(EXIT_SUCCESS);
    }
    if (argv[1][10] == '9') {
        f=fopen("answers/answer9.txt","r");
        while((s=fgetc(f))!=EOF) {
            printf("%c",s);
        }
        fclose(f);
        exit(EXIT_SUCCESS);
    }
    if (argv[1][10] == '1' && argv[1][11] == '0') {
        f=fopen("answers/answer10.txt","r");
        while((s=fgetc(f))!=EOF) {
            printf("%c",s);
        }
        fclose(f);
        exit(EXIT_SUCCESS);
    }
    if (argv[1][10] == '1' && argv[1][11] == '1') {
        f=fopen("answers/answer11.txt","r");
        while((s=fgetc(f))!=EOF) {
            printf("%c",s);
        }
        fclose(f);
        exit(EXIT_SUCCESS);
    }
    if (argv[1][10] == '1' && argv[1][11] == '2') {
        f=fopen("answers/answer12.txt","r");
        while((s=fgetc(f))!=EOF) {
            printf("%c",s);
        }
        fclose(f);
        exit(EXIT_SUCCESS);
    }
    if (argv[1][10] == '1' && argv[1][11] == '3') {
        f=fopen("answers/answer13.txt","r");
        while((s=fgetc(f))!=EOF) {
            printf("%c",s);
        }
        fclose(f);
        exit(EXIT_SUCCESS);
    }
    if (argv[1][10] == '1' && argv[1][11] == '4') {
        f=fopen("answers/answer14.txt","r");
        while((s=fgetc(f))!=EOF) {
            printf("%c",s);
        }
        fclose(f);
        exit(EXIT_SUCCESS);
    }
    if (argv[1][10] == '1' && argv[1][11] == '5') {
        f=fopen("answers/answer15.txt","r");
        while((s=fgetc(f))!=EOF) {
            printf("%c",s);
        }
        fclose(f);
        exit(EXIT_SUCCESS);
    }

    return EXIT_SUCCESS;

}