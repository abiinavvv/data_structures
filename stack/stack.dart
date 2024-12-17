class Stack {
  List<int> _stack = [];

  void push(int value) {
    _stack.add(value);
    print("$value pushed to stack");
  }

  int? pop() {
    if (_stack.isEmpty) {
      print("Stack is empty");
      return null;
    }
    return _stack.removeLast();
  }

  void display() {
    if (_stack.isEmpty) {
      print("Stack is empty");
    } else {
      print("Stack elements: $_stack");
    }
  }
}

void main() {
  Stack stack = Stack();
  stack.push(10);
  stack.push(20);
  stack.display();
  print("${stack.pop()} popped from stack");
  stack.display();
}
