Map<String, int> vowelsAndcons(String input) {
  int vowels = 0;
  int consonants = 0;
  String lowerInput = input.toLowerCase();

  for (int i = 0; i < lowerInput.length; i++) {
    if (lowerInput[i].contains(RegExp(r'[a-z]'))) {
      if ('aeiou'.contains(lowerInput[i])) {
        vowels++;
      } else {
        consonants++;
      }
    }
  }
  return {"vowels": vowels, "consonants": consonants};
}

void main() {
  String input = 'Hello World';
  print(vowelsAndcons(input));
}
