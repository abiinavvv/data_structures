class Queue {
  List<int> _queue = [];

  void enqueue(int value) {
    _queue.add(value);
    print("$value added to queue");
  }

  int? dequeue() {
    if (_queue.isEmpty) {
      print("Queue is empty");
      return null;
    }
    return _queue.removeAt(0);
  }

  void display() {
    if (_queue.isEmpty) {
      print("Queue is empty");
    } else {
      print("Queue elements: $_queue");
    }
  }
}

void main() {
  Queue queue = Queue();
  queue.enqueue(5);
  queue.enqueue(10);
  queue.display();
  print("${queue.dequeue()} removed from queue");
  queue.display();
}
