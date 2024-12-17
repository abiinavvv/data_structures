class Node {
  int? data;
  Node? next;
  Node(this.data);
}

class SinglyLinkedList {
  Node? head;

  void addAtEnd(int data) {
    Node newNode = Node(data);
    if (head == null) {
      head = newNode;
      return;
    }
    Node? temp = head;
    while (temp?.next != null) {
      temp = temp?.next;
    }
    temp?.next = newNode;
  }

  void printList() {
    Node? temp = head;
    while (temp != null) {
      print(temp.data);
      temp = temp.next;
    }
  }

  static SinglyLinkedList convertArrayToList(List<int> arr) {
    SinglyLinkedList list = SinglyLinkedList();
    for (int value in arr) {
      list.addAtEnd(value);
    }
    return list;
  }
}

void main() {
  List<int> arr = [1, 2, 3, 4, 5];
  SinglyLinkedList list = SinglyLinkedList.convertArrayToList(arr);
  list.printList();
}
