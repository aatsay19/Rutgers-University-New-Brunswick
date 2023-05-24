#include <stdlib.h>
#include <stdbool.h>
#include <stdio.h>

// Struct to hold the expected close brace character and a pointer to the next element.
typedef struct element element;
struct element {
    char close;
    struct element* next;
};

bool checkForMatchingPair(char token1, char token2);
void push(struct element** stack, char new_token);
char pop(struct element** stack);
char peek(struct element* stack);

int main(int argc, char* argv[]) {
    FILE* fp = fopen(argv[1], "r");
    if (!fp) {
        perror("fopen failed");
        return EXIT_FAILURE;
    }

    bool balanced = true;

    char buff;

    struct element* stack = NULL;

    while ( fscanf(fp, "%c", &buff)==1 ) {
        //struct element* stack_node = (struct element*)malloc(sizeof(element));
        if (buff == '{' || buff == '[' || buff == '(' || buff == '<') {
            push(&stack, buff);
        }
        if (buff == '}' || buff == ']' || buff == ')' || buff == '>') {
            if (stack == NULL) {
                balanced = false;
                break;
            }
            else if (!checkForMatchingPair(pop(&stack), buff)) {
                balanced = false;
                break;
            }
        }
        //free(stack_node);
    }

    if (stack == NULL) {
        balanced = true;
    }
    else {
        balanced = false;
    }

    printf ( balanced ? "yes" : "no" );
    fclose(fp);
    return 0;
}

bool checkForMatchingPair(char token1, char token2) {
    if (token1 == '{' && token2 == '}') {
        return 1;
    }
    else if (token1 == '[' && token2 == ']') {
        return 1;
    }
    else if (token1 == '(' && token2 == ')') {
        return 1;
    }
    else if (token1 == '<' && token2 == '>') {
        return 1;
    }
    else {
        return 0;
    }
}

void push(struct element** stack, char new_token) {
    struct element* stack_node = (struct element*)malloc(sizeof(element));

    if (stack_node == NULL) {
        exit(0);
    }

    stack_node->close = new_token;
    stack_node->next = (*stack);
    (*stack) = stack_node;
}

char pop(struct element** stack) {
    char token;
    struct element* stack_node;

    if (*stack == NULL) {
        getchar();
        exit(0);
    }
    else {
        stack_node = *stack;
        token = stack_node->close;
        *stack = stack_node->next;
        free(stack_node);
        return token;
    }
}

char peek(element* stack) {
    if (stack == NULL) {
        return 0;
    }
    return stack->close;
}