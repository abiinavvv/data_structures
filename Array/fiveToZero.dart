List<int> fiveToZero(List<int> input) {
  for (int i = 0; i < input.length; i++) {
    if (input[i] == 5) {
      input[i] = 0;
    }
  }
  return input;
}

void main() {
  List<int> numbers = [
    1,
    4,
    5,
    5,
    5,
  ];
  List<int> result = fiveToZero(numbers);
  print(result);
}
