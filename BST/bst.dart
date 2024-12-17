class BSTNode {
  int value;
  BSTNode? left, right;

  BSTNode(this.value);
}

class binarySearchTree {
  BSTNode? root;

  void insert(int value) {
    root = _insertRec(root, value);
  }

  BSTNode _insertRec(BSTNode? node, int value) {
    if (node == null) return BSTNode(value);
    if (value < node.value) {
      node.left = _insertRec(node.left, value);
    } else {
      node.right = _insertRec(node.right, value);
    }
    return node;
  }

  bool contains(int value) {
    return _containsRec(root, value);
  }

  bool _containsRec(BSTNode? node, int value) {
    if (node == null) return false;
    if (value == node.value) return true;
    return value < node.value
        ? _containsRec(node.left, value)
        : _containsRec(node.right, value);
  }

  void _inorder(BSTNode? node) {
    if (node == null) return;
    _inorder(node.left);
    print(node.value);
    _inorder(node.right);
  }

  void inorder() {
    _inorder(root);
  }
}

void main() {
  binarySearchTree bst = binarySearchTree();
  bst.insert(15);
  bst.insert(17);
  bst.insert(20);
  bst.insert(8);
  bst.insert(12);

  print("inorder");
  bst.inorder();
  print("contains 10? ${bst.contains(10)}");
  print("contains 40? ${bst.contains(40)}");
}
