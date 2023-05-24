#include <stdio.h>
#include <stdlib.h>

typedef struct node {
    int val;
    struct node *next;
}

Node;

int helper1(Node* hashtable[], Node* node) {
    int index = node -> val % 10000; 
    int center = 0;
    if (index < 0) {
        index += 10000;
    }
    if (hashtable[index] == NULL) {
        hashtable[index] = node;
    } 
    else {
        Node* pointer;
        int a = 0;
        pointer = hashtable[index];
        Node* prev = NULL;
        while (pointer != NULL){
            if (pointer -> val != node -> val){
                prev = pointer;
                pointer = pointer -> next;
            }
            else {
                a = 1;
                free(node);
                break;
            }
        }
        if (a == 0) {
            prev -> next = node;
        }
        center++;
    }
    return center;
}

int helper2(Node* hashtable[], int a){
    int index = a % 10000;
    int center = 0;    
    Node* pointer;
    if (index < 0) {
        index += 10000;
    }
    pointer = hashtable[index];
    while (pointer != NULL) {
        if (pointer == NULL) {
            return 0;
        }
        if (pointer -> val == a){
            center++;
            break;
        }
        else {
            pointer = pointer -> next;
        }
    }
    return center;
}

void helper3(Node* ptrIndex) {
    Node* ptr;
    while (ptrIndex != NULL){
        ptr = ptrIndex;
        ptrIndex = ptrIndex -> next;
        free(ptr);
    }
}

Node* helper4(int a){
    Node* node = NULL; 
    node = (struct node*)malloc(sizeof(struct node));
    node -> val = a;
    node -> next = NULL;
    return node;
}

Node* hashtable[10000];

int main(int argc, char* argv[]) { 
    FILE* ptrFile;

    if ((ptrFile = fopen(argv[1], "r")) == NULL){
        printf("error");
        exit(0);
    }

    Node* ptrIndex;
    int index, a, center1 = 0, center2 = 0;
    char b;

    while(!feof(ptrFile)){
        fscanf(ptrFile, "%c\t%d\n", &b, &a);
        if (b == 'i'){
            Node* node = helper4(a);
            center1 = center1 + helper1(hashtable, node);
        }
        if (b == 's') {
            center2 = center2 + helper2(hashtable, a);
        }
    }

    printf("%d\n", center1);
    printf("%d", center2);

    for (index = 0; index < 10000; index++) {
        ptrIndex = hashtable[index];
        helper3(ptrIndex);
    }

    fclose(ptrFile);
    return 0;
}