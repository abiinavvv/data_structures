class TrieNode {
  Map<String, TrieNode> children = {};
  bool isEndOfWord = false;
}

class Trie {
  TrieNode root = TrieNode();
  void insert(String word) {
    TrieNode node = root;
    for (int i = 0; i < word.length; i++) {
      String char = word[i];
      if (!node.children.containsKey(char)) {
        node.children[char] = TrieNode();
      }
      node = node.children[char]!;
    }
    node.isEndOfWord = true;
  }

  bool search(String word) {
    TrieNode node = root;
    for (int i = 0; i < word.length; i++) {
      String char = word[i];
      if (!node.children.containsKey(char)) {
        return false;
      }
      node = node.children[char]!;
    }
    return node.isEndOfWord;
  }

  bool startsWith(String prefix) {
    TrieNode node = root;
    for (int i = 0; i < prefix.length; i++) {
      String char = prefix[i];
      if (!node.children.containsKey(char)) {
        return false;
      }
      node = node.children[char]!;
    }
    return true;
  }
}

void main() {
  Trie trie = Trie();
  
  trie.insert("cat");
  trie.insert("bat");
  trie.insert("ball");

  print(trie.search("cat")); 
  print(trie.search("ball")); 
  print(trie.search("bat")); 
  print(trie.search("bats")); 
  print(trie.startsWith("ba")); 
  print(trie.startsWith("ca")); 
  print(trie.startsWith("caa")); 
}
