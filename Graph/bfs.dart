import 'dart:collection';

class Graph {
  Map<int, List<int>> adjacencyList = {};

  void addEdge(int u, int v) {
    adjacencyList.putIfAbsent(u, () => []);
    adjacencyList[u]!.add(v);
  }

  void bfs(int start) {
    if (!adjacencyList.containsKey(start)) {
      print("Start node $start not found in graph.");
      return;
    }

    Queue<int> queue = Queue();
    Set<int> visited = Set();

    queue.add(start);
    visited.add(start);

    print("BFS Traversal:");
    while (queue.isNotEmpty) {
      int node = queue.removeFirst();
      print(node);

      for (int neighbor in adjacencyList[node] ?? []) {
        if (!visited.contains(neighbor)) {
          visited.add(neighbor);
          queue.add(neighbor);
        }
      }
    }
  }

  void dfs(int node, Set<int> visited) {
    if (!adjacencyList.containsKey(node)) {
      return; 
    }

    visited.add(node);
    print(node);

    for (int neighbor in adjacencyList[node] ?? []) {
      if (!visited.contains(neighbor)) {
        dfs(neighbor, visited);
      }
    }
  }
}

void main() {
  Graph graph = Graph();

  graph.addEdge(0, 1);
  graph.addEdge(0, 2);
  graph.addEdge(1, 2);
  graph.addEdge(2, 0);
  graph.addEdge(2, 3);

  print("BFS Traversal:");
  graph.bfs(2); 

  print("\nDFS Traversal:");
  graph.dfs(2, Set<int>()); 
}
