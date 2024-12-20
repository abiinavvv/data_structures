class Node {
  int? value;
  Node? left, right;
  Node(this.value);
}

bool isIdentical(Node? root1, Node? root2) {
  if (root1 == null && root2 == null) {
    return true;
  }

  if (root1 == null || root2 == null) {
    return false;
  }
  return (root1.value == root2.value) &&
      isIdentical(root1.left, root2.left) &&
      isIdentical(root1.right, root2.right);
}

void inorder(Node? root) {
  if (root == null) return;
  inorder(root.left);
  print(root.value);
  inorder(root.right);
}

void main() {
  Node root1 = Node(20);
  root1.right = Node(15);
  root1.left = Node(10);

  Node root2 = Node(20);
  root2.right = Node(15);
  root2.left = Node(15);

  print(isIdentical(root1, root2));
  inorder(root1);
}
