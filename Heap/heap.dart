class MaxHeap {
  List<int> heap = [];

  void insert(int value) {
    heap.add(value); // Add to the end
    int index = heap.length - 1;
    // Bubble up
    while (index > 0) {
      int parentIndex = (index - 1) ~/ 2;
      if (heap[index] > heap[parentIndex]) {
        _swap(index, parentIndex);
        index = parentIndex;
      } else {
        break;
      }
    }
  }

  int remove() {
    if (heap.isEmpty) throw Exception("Heap is empty");
    int root = heap.first;
    heap[0] = heap.removeLast(); // Replace root with last element
    int index = 0;
    // Bubble down
    while (true) {
      int left = 2 * index + 1;
      int right = 2 * index + 2;
      int largest = index;

      if (left < heap.length && heap[left] > heap[largest]) largest = left;
      if (right < heap.length && heap[right] > heap[largest]) largest = right;

      if (largest != index) {
        _swap(index, largest);
        index = largest;
      } else {
        break;
      }
    }
    return root;
  }

  void _swap(int i, int j) {
    int temp = heap[i];
    heap[i] = heap[j];
    heap[j] = temp;
  }
}

void main() {
  MaxHeap maxHeap = MaxHeap();
  
  maxHeap.insert(18);
  maxHeap.insert(15);
  maxHeap.insert(10);
  maxHeap.insert(12);
  maxHeap.insert(7);
  maxHeap.insert(5);
  maxHeap.insert(3);

  print("Heap after insertion: ${maxHeap.heap}");
  
  print("Removed root: ${maxHeap.remove()}");
  print("Heap after removal: ${maxHeap.heap}");
}
