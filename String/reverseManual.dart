String reverseManual(String input) {
  String reversed = '';
  for (int i = input.length - 1; i >= 0; i--) {
    reversed += input[i];
  }
  return reversed;
}

void main() {
  String input = 'helloworld';
  print(reverseManual(input));
}
