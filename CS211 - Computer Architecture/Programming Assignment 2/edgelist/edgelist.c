#include "../graphutils.h" // header for functions to load and free adjacencyList

// A program to print the edge list of a graph given the adjacency matrix
int main ( int argc, char* argv[] ) {

    // FIRST, READ THE ADJACENCY MATRIX FILE
    AdjacencyListNode* adjacencyList = NULL;
    size_t graphNodeCount = adjMatrixToList(argv[1], &adjacencyList);

    // NEXT, TRAVERSE THE ADJACENCY LIST AND PRINT EACH EDGE, REPRESENTED AS A PAIR OF NODES
    // Example of traversing the adjacency list is in the freeAdjList() function in graphutils.h
    for (size_t source = 0; source < graphNodeCount; source++) {
        AdjacencyListNode* dest = adjacencyList[source].next;
        while (dest) {
            AdjacencyListNode* temp = dest;
            //for (int i = source + 1; i < graphNodeCount; i++) {
                if (temp->graphNode > source) {
                printf("%zu %zu\n", source, temp->graphNode);
                }
            //}
            dest = dest->next;
            free(temp);
        }
    }

    // NOW, BE SURE TO FREE THE ADJACENCY LIST
    free(adjacencyList);

    return EXIT_SUCCESS;

}