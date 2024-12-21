// class Node {
//   int? value;
//   Node? left, right;
//   Node(this.value);
// }

// void inorder(Node? root) {
//   if (root == null) return;
//   inorder(root.left);
//   print(root.value);
//   inorder(root.right);
// }

// void main() {
//   Node? root = Node(20);
//   root.left = Node(10);
//   root.right = Node(40);

//   inorder(root);
// }
// class Node {
//   int? value;
//   Node? left, right;

//   Node(this.value);
// }

// int closest(Node? root, int target) {
//   int closestVal = root!.value!;
//   while(root != null){
//     if((root.value! - target)))
//   }
// }
// class trieNode {
//   Map<String, trieNode> child = {};
//   bool endofWord = false;
// }
// class Trie{
//   trieNode root = trieNode();
//   void insert(String word){
//     trieNode curr = root;
//     for(int i = 0; i < word.length; i++){
//       if(!curr.child.containsKey(word[i])){
//         curr.child[word[i]] = trieNode();
//       }
//       curr = curr.child[word[i]]!;
//     }
//     curr.endofWord = true;
//   }
//   bool search(String word){
//     trieNode curr = root;
//     for(int i = 0; i < word.length; i++){
//       if(!curr.child.containsKey(word[i])){
//         return false;
//       }
//       curr = curr.child[word[i]]!;
//     }
//     return curr.endofWord;
//   }
//   bool startsWith(String prefix){
//     trieNode curr = root;
//     for(int i = 0; i < prefix.length; i++){
//       if(!curr.child.containsKey(prefix[i])){
//         return false;
//       }
//       curr = curr.child[prefix[i]]!;
//     }
//     return true;
//   }
// }
// void main(){
//   Trie trie = Trie();
//   trie.insert("apple");
//   print(trie.search("apple"));
//   print(trie.search("app"));
//   print(trie.startsWith("app"));
//   trie.insert("app");
//   print(trie.search("app"));
// }
