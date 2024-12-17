int countVowels(String input) {
  final vowels = ['a', 'e', 'i', 'o', 'u'];
  int count = 0;

  for (int i = 0; i < input.length; i++) {
    if (vowels.contains(input[i])) {
      count++;
    }
  }
  return count;
}

void main() {
  String input = 'vowels';
  print(countVowels(input));
}
