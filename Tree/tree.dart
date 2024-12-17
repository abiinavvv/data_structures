class Node {
  int value;
  Node? left, right;

  Node(this.value);
}

void preorder(Node? root) {
  if (root == null) return;
  print(root.value);
  preorder(root.left);
  preorder(root.right);
}

void inorder(Node? root) {
  if (root == null) return;
  inorder(root.left);
  print(root.value);
  inorder(root.right);
}

void postorder(Node? root) {
  if (root == null) return;
  postorder(root.left);
  postorder(root.right);
  print(root.value);
}

void main() {
  Node root = Node(20);
  root.left = Node(10);
  root.right = Node(40);
  root.left!.left = Node(41);
  root.left!.right = Node(70);

  print("preorder :");
  preorder(root);
  print("inorder :");
  inorder(root);
}
