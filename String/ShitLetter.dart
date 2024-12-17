String shiftLetter(String input, int n) {
  List<String> result = [];
  int shift = n % 26;

  for (int i = 0; i < input.length; i++) {
    if (input[i].contains(RegExp(r'[a-zA-Z]'))) {
      int ascii = input.codeUnitAt(i);
      int base = ascii >= 65 && ascii <= 90 ? 65 : 97;

      int newChar = base + (ascii - base + shift) % 26;
      result.add(String.fromCharCode(newChar));
    } else {
      result.add(input[i]);
    }
  }
  return result.join();
}

void main() {
  String input = 'hello there';
  int shift = 1;

  print(shiftLetter(input, shift));
}
