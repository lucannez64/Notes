#include <stdio.h>
#include <stdlib.h>
#include <limits.h>

#define MAX_NODES 100
#define MAX_EDGES 1000

// Define INFINITY as a large integer value
#define INFINITY INT_MAX

typedef struct {
    int v;
    int w;
} Edge;

typedef struct {
    int degree;
    Edge *edges;
} Node;

typedef struct {
    int numNodes;
    int numEdges;
    Node nodes[MAX_NODES];
    Edge edges[MAX_EDGES];
} Graph;

// Function to calculate the degree of a node
int degree(Node node) {
    return node.degree;
}

// Function to add an edge to the graph
void addEdge(Graph *graph, int v, int w) {
    graph->edges[graph->numEdges].v = v;
    graph->edges[graph->numEdges].w = w;
    graph->nodes[v].edges = &(graph->edges[graph->numEdges]);
    graph->nodes[v].degree++;
    graph->nodes[w].edges = &(graph->edges[graph->numEdges]);
    graph->nodes[w].degree++;
    graph->numEdges++;
}

// Function to calculate the shortest path between two nodes using Dijkstra's algorithm
int shortestPath(Graph graph, int start, int end) {
    int distances[MAX_NODES];
    int visited[MAX_NODES];

    for (int i = 0; i < MAX_NODES; i++) {
        distances[i] = INFINITY;
        visited[i] = 0;
    }

    distances[start] = 0;

    for (int i = 0; i < MAX_NODES; i++) {
        int min = INFINITY;
        int idx = -1;

        for (int j = 0; j < MAX_NODES; j++) {
            if (!visited[j] && distances[j] < min) {
                min = distances[j];
                idx = j;
            }
        }

        if (idx == -1) break;

        visited[idx] = 1;

        for (int j = 0; j < graph.nodes[idx].degree; j++) {
            int w = graph.nodes[idx].edges[j].w;
            if (!visited[w] && distances[idx] + 1 < distances[w]) {
                distances[w] = distances[idx] + 1;
            }
        }
    }

    return distances[end];
}

// Function to find the root of a set
int find(int parent[], int i) {
    if (parent[i] == i) return i;
    return find(parent, parent[i]);
}

// Function to union two sets
void union_set(int parent[], int x, int y) {
    int x_root = find(parent, x);
    int y_root = find(parent, y);
    parent[x_root] = y_root;
}

// Function to calculate the minimum spanning tree using Kruskal's algorithm
void minimumSpanningTree(Graph graph) {
    Edge mst[MAX_EDGES];
    int mst_size = 0;

    // Sort edges by weight
    for (int i = 0; i < graph.numEdges; i++) {
        for (int j = i + 1; j < graph.numEdges; j++) {
            if (graph.edges[i].v > graph.edges[j].v) {
                Edge temp = graph.edges[i];
                graph.edges[i] = graph.edges[j];
                graph.edges[j] = temp;
            }
        }
    }

    // Use disjoint set data structure
    int parent[MAX_NODES];
    for (int i = 0; i < MAX_NODES; i++) {
        parent[i] = i;
    }

    for (int i = 0; i < graph.numEdges; i++) {
        int v = graph.edges[i].v;
        int w = graph.edges[i].w;
        if (find(parent, v) != find(parent, w)) {
            mst[mst_size] = graph.edges[i];
            mst_size++;
            union_set(parent, v, w);
        }
    }

    // Print minimum spanning tree
    for (int i = 0; i < mst_size; i++) {
        printf("(%d, %d)\n", mst[i].v, mst[i].w);
    }
}

int main() {
    Graph graph;
    graph.numNodes = 5;
    graph.numEdges = 0;

    // Initialize nodes array
    for (int i = 0; i < graph.numNodes; i++) {
        graph.nodes[i].degree = 0;
        graph.nodes[i].edges = NULL;
    }

    addEdge(&graph, 0, 1);
    addEdge(&graph, 0, 2);
    addEdge(&graph, 1, 2);
    addEdge(&graph, 1, 3);
    addEdge(&graph, 2, 3);
    addEdge(&graph, 3, 4);

    for (int i = 0; i < graph.numNodes; i++) {
        printf("Degree of node %d: %d\n", i, degree(graph.nodes[i]));
    }

    printf("Shortest path between 0 and 4: %d\n", shortestPath(graph, 0, 4));

    minimumSpanningTree(graph);

    return 0;
}
