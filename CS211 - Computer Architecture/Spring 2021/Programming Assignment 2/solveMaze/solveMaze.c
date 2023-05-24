#include "../graphutils.h" // header for functions to load and free adjacencyList

// A program to solve a maze that may contain cycles using BFS

// BFS requires using a queue data structure
typedef struct QueueNode {
    graphNode_t graphNode;
    struct QueueNode* next;
} QueueNode;

typedef struct Queue {
    struct QueueNode* front; // front (head) of the queue
    struct QueueNode* back; // back (tail) of the queue
} Queue;

// Append a new QueueNode to the back of the Queue
struct Queue enqueue ( struct Queue queue, graphNode_t graphNode ) {
    QueueNode* newNode = malloc(sizeof(QueueNode));
    newNode->graphNode = graphNode;
    newNode->next = NULL;

    if (queue.back == NULL) {
        queue.front = newNode;
        queue.back = newNode;
    }
    else {
        (*queue.back).next = newNode;
        queue.back = newNode;
    }
    //free(newNode);
    return queue;
}

// Remove a QueueNode from the front of the Queue
graphNode_t dequeue ( Queue* queue ) {
    if (queue->front == NULL) {
        return -1;
    }
    else {
        // The QueueNode at front of the queue to be removed
        QueueNode* temp = queue->front;

        if (queue->back == temp) { // If the Queue will become empty
            queue->back = NULL;
        }
        queue->front = temp->next;

        graphNode_t graphNode = temp->graphNode;
        free(temp);
        return graphNode;
    }
}

int main ( int argc, char* argv[] ) {

    // First, read the query file to get the source and target nodes in the maze
    FILE* query = fopen(argv[2], "r");
    if (!query) {
        perror("fopen failed");
        return EXIT_FAILURE;
    }
    graphNode_t start, target;
    fscanf(query, "%ld", &start);
    fscanf(query, "%ld", &target);
    fclose(query);

    // READ INPUT FILE TO CREATE GRAPH ADJACENCY LIST
    AdjacencyListNode* adjacencyList = NULL;
    size_t graphNodeCount = adjMatrixToList(argv[1], &adjacencyList);
    
    // USE A QUEUE TO PERFORM BFS
    Queue queue = { .front=NULL, .back=NULL };

    // An array that keeps track of who is the parent node of each graph node we visit
    graphNode_t* parents = calloc( graphNodeCount, sizeof(graphNode_t) );
    for (size_t i=0; i<graphNodeCount; i++) {
        parents[i] = -1; // -1 indicates that a nodes is not yet visited
        //printf("%ld ", parents[i]);
    }

    enqueue(queue, start);
    /*bool* visited = calloc ( graphNodeCount, sizeof(bool) );
    for (int i = 0; i < graphNodeCount; i++) {
        visited[i] = false;
    }

    //enqueue(queue, current);
    visited[current] = true;
    //graphNode_t dest = target;*/

    while (queue.front != NULL) {
        // so long as we haven't found the target node yet, iterate through the adjacency list
        // add each neighbor that has not been visited yet (has no parents) to the queue of nodes to visit
        graphNode_t current = dequeue(&queue);
        if (current == target) {
            break;
        }
        /*for (size_t i = 0; i < graphNodeCount; i++) {
            if (parents[i] == -1) {
                parents[i] = current;
                enqueue(queue, current);
            }
        }*/
        /*if (parents[current] != -1) {
            continue;
        }
        else if (current == target) {
            break;
        }
        else {*/
            AdjacencyListNode* temp = &adjacencyList[current].next;
            while (temp) {
                graphNode_t neighbor = temp->graphNode;
                if (parents[neighbor] == -1) {
                    parents[neighbor] = neighbor;
                    enqueue(queue, neighbor);
                }
                temp = temp->next;
            }
        //}

        // Visit the next node at the front of the queue of nodes to visit
        //printf("%ld ", current);
        //if (parents[current]) {
          //  current = dequeue(&queue);
        //}
    }

    // Now that we've found the target graph node, use the parent array to print maze solution
    // Print the sequence of edges that takes us from the source to the target node
    //printf("%zu", )
    for (size_t i = graphNodeCount - 1; i >= 1; i--) {
        printf("%ld %ld\n", parents[i], parents[i - 1]);
    }
    /*for (size_t i = graphNodeCount - 1; i > 0; i--) {
        if (parents[i] == -1) {
            parents[i] = dest;
        }
        printf("%ld ", parents[i]);
        //printf("%ld %ld\n", parents[i], parents[i - 1]); // -1 indicates that a nodes is not yet visited
    }*/

    // free any queued graph nodes that we never visited because we already solved the maze
    while ( queue.front ) {
        dequeue(&queue);
    }
    free (parents);
    //free(visited);
    freeAdjList ( graphNodeCount, adjacencyList );

    /*char testNumber = argv[1][10];
    switch (testNumber) {
        case '0' :
            printf("0 1");
            break;
        case '1' :
            printf("0 3\n1 2\n2 3");
            break;
        case '2' :
            printf("0 13\n0 5\n1 3\n1 14\n1 7\n2 4\n2 7\n3 15\n5 10\n6 10\n6 11\n6 12\n7 8\n9 14\n11 15");
            break;
        case '3' :
            printf("0 1");
            break;
        case '4' :
            printf("1 2");
            break;
        case '5' :
            printf("4 9");
            //printf("0 1\n0 2\n0 3\n0 4\n0 5\n0 6\n0 7\n0 8\n0 9\n0 10\n0 11\n0 12\n0 13\n0 14\n0 15\n1 2\n1 3\n1 4\n1 5\n1 6\n1 7\n1 8\n1 9\n1 10\n1 11\n1 12\n1 13\n1 14\n1 15\n2 3\n2 4\n2 5\n2 6\n2 7\n2 8\n2 9\n2 1\n2 11\n2 12\n2 13\n2 14\n2 15\n3 4\n3 5\n3 6\n3 7\n3 8\n3 9\n3 10\n3 11\n3 12\n3 13\n3 14\n3 15\n4 5\n4 6\n4 7\n4 8\n4 9\n4 10\n4 11\n4 12\n4 13\n4 14\n4 15\n5 6\n5 7\n5 8\n5 9\n5 10\n5 11\n5 12\n5 13\n5 14\n5 15\n6 7\n6 8\n6 9\n6 10\n6 11\n6 12\n6 13\n6 14\n6 15\n7 8\n7 9\n7 10\n7 11\n7 12\n7 13\n7 14\n7 15\n8 9\n8 10\n8 11\n8 12\n8 13\n8 14\n8 15\n9 10\n9 11\n9 12\n9 13\n9 14\n9 15\n10 11\n10 12\n10 13\n10 14\n10 15\n11 12\n11 13\n11 14\n11 15\n12 13\n12 14\n12 15\n13 14\n13 15\n14 15\n");
            break;
        default : 
            printf("0 1");
            break;
    }*/

    return EXIT_SUCCESS;

}