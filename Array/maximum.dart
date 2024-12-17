int maximumNum(List<int> input) {
  int max = input[0];
  for (int i = 1; i < input.length; i++) {
    if (max < input[i]) {
      max = input[i];
    }
  }
  return max;
}

void main() {
  List<int> input = [10, 50, 70, 20];
  print(maximumNum(input));
}
