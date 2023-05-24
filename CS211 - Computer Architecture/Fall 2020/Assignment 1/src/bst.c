#include <stdio.h>
#include <stdlib.h>

typedef struct node {
    int val;
    struct node *left;
    struct node* right;
}

Node;

void helper1(Node* node) {
    if (node != NULL) {
        helper1(node -> left);
        printf("%d\t", node -> val);
        helper1(node -> right);
    }
}

void helper2(Node* node) {
    if (node == NULL) {
        return;
    }
    helper2(node -> left);
    helper2(node -> right);
    free(node);
    return;
}

Node* helper3(Node* node, Node* newnode) {
    if (node == NULL) {
        return newnode;
    }
    if (node -> val > newnode -> val) {
        node -> left = helper3(node -> left, newnode);
    }
    else if(node -> val < newnode -> val) {
        node -> right = helper3(node -> right, newnode);
    }
    else {
        free(newnode);
    }
    return node;
}

Node* helper4(int a) {
    Node* newnode = NULL; 
    newnode = (struct node*)malloc(sizeof(struct node));
    newnode -> right = NULL;
    newnode -> left = NULL;
    newnode -> val = a;
    return newnode;
}

int main(int argc, char* argv[]) {
    FILE* ptrFile;
    if ((ptrFile = fopen(argv[1], "r")) == NULL) {
        printf("Error");
        exit(0);
    }
    else {
        int a;
        char b;
        Node* node = NULL;
        while (!feof(ptrFile)) {
            fscanf(ptrFile, "%c\t%d\n", &b, &a);
            if (b == 'i') {
                Node* newnode = helper4(a);
                node = helper3(node, newnode);
            }
        }
        helper1(node);
        helper2(node);
    }
    fclose(ptrFile);
    return 0;
}