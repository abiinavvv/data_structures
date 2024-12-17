List<int> multipleOfFive(List<int> input) {
  for (int i = 0; i < input.length; i++) {
    if (input[i] % 5 == 0) {
      input[i] = 0;
    }
  }
  return input;
}

void main() {
  List<int> numbers = [
    1,
    5,
    10,
    14,
    20,
    25,
    40,
  ];
  List<int> result = multipleOfFive(numbers);
  print(result);
}
