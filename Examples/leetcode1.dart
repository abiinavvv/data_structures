class Solution {
  int mostWordsFound(List<String> sentences) {
    int maxWords = 0;
    for (var sentence in sentences) {
      int wordCount = sentence.split(' ').length;
      if (wordCount > maxWords) {
        maxWords = wordCount;
      }
    }
    return maxWords;
  }
}

void main() {
  Solution sol = Solution();
  int result = sol.mostWordsFound([
    "alice and bob love leetcode",
    "i think so too",
    "this is great thanks very much"
  ]);
  print(result); // Output should be 6
}