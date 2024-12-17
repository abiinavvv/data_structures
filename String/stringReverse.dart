String reverseString(String input) {
  List<String> words = input.split(' ');
  List<String> reversedWords = words.reversed.toList();

  return reversedWords.join(' ');
}

void main() {
  String input = 'Hello world';
  print(reverseString(input));
}
