class Node {
  int data;
  Node? next;

  Node(this.data);
}

class SinglyLinkedList {
  Node? head;

  void addAtEnd(int data) {
    Node newNode = Node(data);
    if (head == null) {
      head = newNode;
    } else {
      Node current = head!;
      while (current.next != null) {
        current = current.next!;
      }
      current.next = newNode;
    }
  }

  void addAtBeginning(int data) {
    Node newNode = Node(data);
    newNode.next = head;
    head = newNode;
  }

  void printList() {
    Node? current = head;
    while (current != null) {
      print(current.data);
      current = current.next;
    }
  }
}

void main() {
  SinglyLinkedList list = SinglyLinkedList();
  list.addAtEnd(10);
  list.addAtEnd(20);
  list.addAtBeginning(5);
  list.printList();
}
