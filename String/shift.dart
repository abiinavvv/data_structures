bool shiftLetter(String input, String str2) {
  List<String> result = [];
  int shift = 1 % 26;

  for (int i = 0; i < input.length; i++) {
    if (input[i].contains(RegExp(r'[a-zA-Z]'))) {
      int ascii = input.codeUnitAt(i);
      int base = ascii >= 65 && ascii <= 90 ? 65 : 97;

      int newChar = base + (ascii - base + shift) % 26;
      result.add(String.fromCharCode(newChar));
    } else {
      result.add(input[i]);
    }
    for (int i = 0; i < str2.length; i++) {
      if (result.contains(str2[i])) {
        return true;
      }
    }
  }
  return false;
}

void main() {
  String input = 'ab';
  String str2 = "d";

  print(shiftLetter(input, str2));
}
