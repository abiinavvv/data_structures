class Node {
  int value;
  Node? left, right;
  Node(this.value);
}

Node? insert(Node? root, int value) {
  if (root == null) {
    return Node(value);
  }
  if (value < root.value) {
    root.left = insert(root.left, value);
  } else if (value > root.value) {
    root.right = insert(root.right, value);
  }
  return root;
}

void preorder(Node? root) {
  if (root == null) return;
  print(root.value);
  preorder(root.left);
  preorder(root.right);
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

void main() {
  Node? root1;
  root1 = insert(root1, 20);
  insert(root1, 10);
  insert(root1, 40);

  preorder(root1);

  Node? root2;
  root2 = insert(root2, 20);
  insert(root2, 10);
  insert(root2, 42);

  print(isIdentical(root1, root2));
}
