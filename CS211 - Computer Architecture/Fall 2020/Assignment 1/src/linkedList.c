#include <stdio.h>
#include <stdlib.h>

typedef struct node {
    int nodeVal;
    struct node *next;
}

Node;

void helper1(Node* front){
    Node* ptr;
    if (front == NULL){
        free(front);
    }
    while (front != NULL){
        ptr = front;
        front = front -> next;
        free(ptr);
    }
}

int main(int argc, char* argv[]) {
    FILE* ptrFile;

    if ((ptrFile = fopen(argv[1], "r")) == NULL) {
        printf("Error");
        exit(0);
    }

    Node* front = NULL; 
    front = (Node*)malloc(sizeof(struct node));

    if (front == NULL) { 
        return 1;
    }

    char a;
    int val, center = 0;
    front -> nodeVal = -1;
    front -> next = NULL;
    Node* newFront;

    while (!feof(ptrFile)) {
        fscanf(ptrFile, "%c\t%d\n" , &a, &val);
        if (a =='i') {
            Node* newNode = NULL; 
            newNode = malloc(sizeof(struct node));
            newNode -> nodeVal = val;
            newNode -> next = NULL;

            if (front -> next == NULL) { 
                front -> next = newNode;
            }
            else {
                Node* prev, ptr;
                prev = front;
                ptr = front -> next;
                while (ptr != NULL) {
                    if (ptr -> nodeVal >= newNode -> nodeVal) {
                        prev -> next = newNode;
                        newNode -> next = ptr;
                        break;
                    }
                    prev = ptr;
                    ptr = ptr -> next;
                }
                prev -> next = newNode;
            }
        }
	
	if (a == 'd') {
            Node* ptr, prev;
            prev = front;
            ptr = front -> next;
            while (ptr != NULL) {
                if (ptr -> nodeVal == val){
                    prev -> next = ptr->next;
                    ptr -> next = NULL;
                    free(ptr);
                    break;
                }
                prev = ptr;
                ptr = ptr -> next;
            }
        }
    }

    if (front -> next == NULL) {
        free(front);
        fclose(ptrFile);
        printf("%d", 0);
        return 0;
    }

    newFront = front -> next;
    free(front);
    Node* curr = newFront;

    while (curr != NULL) {
        curr = curr -> next;
        center++;
    }

    curr = newFront;
    printf("%d\n", center);

    if (center == 0) {
        return 0;
    }

    int repeat;
    printf("%d\t", curr -> nodeVal);
    repeat = curr -> nodeVal;
    curr = curr -> next;
  
    while (curr != NULL) {
        if (repeat != curr -> nodeVal) {
            printf("%d\t", curr -> nodeVal);
        }
    repeat = curr -> nodeVal;
    curr = curr -> next;
    }

    helper1(newFront);
    fclose(ptrFile);
    return 0;
}