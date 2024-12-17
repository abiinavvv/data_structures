class TrieNode {
  Map<String, TrieNode> children = {};
  bool isEndOfWord = false;
}

class Trie {
  TrieNode root = TrieNode();

  // Insert a word into the Trie
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

  // Find all words with a given prefix
  List<String> autocomplete(String prefix) {
    TrieNode node = root;
    List<String> results = [];

    // Traverse the Trie for the prefix
    for (int i = 0; i < prefix.length; i++) {
      String char = prefix[i];
      if (!node.children.containsKey(char)) {
        return results; // No words start with the given prefix
      }
      node = node.children[char]!;
    }

    // Collect all words starting from the current node
    _findWords(node, prefix, results);
    return results;
  }

  // Helper method to collect all words from a given node
  void _findWords(TrieNode node, String currentPrefix, List<String> results) {
    if (node.isEndOfWord) {
      results.add(currentPrefix);
    }
    node.children.forEach((char, childNode) {
      _findWords(childNode, currentPrefix + char, results);
    });
  }
}

void main() {
  Trie trie = Trie();

  trie.insert("cat");
  trie.insert("car");
  trie.insert("bat");
  trie.insert("ball");

  print(trie.autocomplete("ca")); // Output: [cat, car]
  print(trie.autocomplete("ba")); // Output: [bat, ball]
  print(trie.autocomplete("b"));  // Output: [bat, ball]
}
