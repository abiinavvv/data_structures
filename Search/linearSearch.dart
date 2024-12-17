int linearSearch(List<int> numbers, int target) {
  for (int i = 0; i < numbers.length; i++) {
    if (numbers[i] == target) {
      return i;
    }
  }
  return -1;
}

void main() {
  List<int> numbers = [50, 35, 10, 20, 10];
  int target = 10;

  int result = linearSearch(numbers, target);
  print(result != -1 ?"the index of target is $result":"not found");
}
