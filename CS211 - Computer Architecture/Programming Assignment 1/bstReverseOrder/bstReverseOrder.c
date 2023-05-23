#include <stdlib.h>
#include <stdbool.h>
#include <stdio.h>

typedef struct bstNode {
    int val;
    struct bstNode* l_child;
    struct bstNode* r_child;
} bstNode;

// LINKED LIST IMPLEMENTATION OF QUEUE

// queue needed for level order traversal
typedef struct QueueNode QueueNode;
struct QueueNode {
    bstNode* data;
    QueueNode* next; // pointer to next node in linked list
};
typedef struct Queue {
    QueueNode* front; // front (head) of the queue
    QueueNode* back; // back (tail) of the queue
} Queue;

bstNode* firstNode(int val);
bstNode* newBST(int val);
void reverseOrder(bstNode* root);
bstNode* insert(bstNode* root, int val);
void delete (bstNode* root);
Queue enqueue(Queue queue, bstNode* data);
bstNode* dequeue(Queue* queue);

int main(int argc, char* argv[]) {
    FILE* fp = fopen(argv[1], "r");
    if (!fp) {
        perror("fopen failed");
        return EXIT_FAILURE;
    }

    // struct bstNode* root = NULL;

    // char buff[256];
    // while ( fscanf(fp, "%s", buff)!=EOF ) {
    // }

    // fclose(fp);
    // return 0;

    bstNode* root = NULL;
    int key;
    fscanf(fp, "%d", &key);
    while ( fscanf(fp, "%d", &key)!=EOF ) {
        root = insert(root, key);
    }
    reverseOrder(root);
    fclose(fp);

/*  Queue queue = { .front = NULL, .back = NULL};
    bstNode* currBSTNode = root;
    do {
        if (currBSTNode->l_child != NULL) {
            queue = enqueue(queue, currBSTNode->l_child);
        }
        if (currBSTNode->r_child != NULL) {
            queue = enqueue(queue, currBSTNode->r_child);
        }
        if (currBSTNode != NULL) {
            printf("%d ", currBSTNode->val);
        }
        currBSTNode = dequeue(&queue);
    } while (currBSTNode != NULL);                      */

    delete(root);
    return 0;
}

bstNode* firstNode(int val) {
    bstNode *root;
    root = malloc(sizeof(bstNode));
    root->val = val;
    root->l_child = NULL;
    root->r_child = NULL;
    return root;
}

// Add new data to the BST using recursion
bstNode* insert(bstNode* root, int val) {
    // If the BSTNode doesn't yet exist
    if (root == NULL) {
        root = malloc(sizeof(bstNode));
        root->l_child = NULL;
        root->r_child = NULL;
        root->val = val;
    }

    // If the BSTNode already exists, then insert key in correct subtree
    if (val < root->val) {
        root->l_child = insert(root->l_child, val);
    }
    else if(val == root->val) {

    }
    else {
        root->r_child = insert(root->r_child, val);
    }
    return root;
}

// Delete the BST using recursion
void delete (bstNode* root) {
    if (root->r_child != NULL) {
        delete(root->r_child);
    }
    if (root->l_child != NULL) {
        delete(root->l_child);
    }
    free(root);
}

// Append a new QueueNode to the back of the Queue
Queue enqueue(Queue queue, bstNode* data) {
    QueueNode* queueNode = malloc(sizeof(QueueNode));
    queueNode->data = data;
    queueNode->next = NULL; // At back of the queue, there is no next node.

    if (queue.back==NULL) { // If the Queue is currently empty
        queue.front = queueNode;
        queue.back = queueNode;
    } 
    else {
        (*queue.back).next = queueNode;
        queue.back = queueNode;    
    }
    return queue;
}

// Remove a QueueNode from the front of the Queue
bstNode* dequeue(Queue* queue) {
    if (queue->front == NULL) { // If the Queue is currently empty
        return NULL;
    }
    else {
        // The QueueNode at front of the queue to be removed
        QueueNode* temp = queue->front;

        if (queue->back==temp) { // If the Queue will become empty
            queue->back = NULL;
        }
        queue->front = temp->next;

        bstNode* bstNode = temp->data;
        free(temp);
        return bstNode;
    }
}

bstNode* newBST(int val) {
    // Allocate memory for new node
    bstNode* root = (bstNode*)malloc(sizeof(bstNode));

    // Assign data to this node val
    root->val = val;

    // Initialize left and right children as NULL
    root->l_child = NULL;
    root->r_child = NULL;
    return root;
}

void reverseOrder(bstNode* root) {
    //base case
    if (root == NULL) {
        return;
    }

    //secondly traverse right sub tree
    reverseOrder(root->r_child);

    //finally traverse current node
    printf("%d ", root->val);

    // first traverse left sub tree
    reverseOrder(root->l_child);
}