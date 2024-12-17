void minAndMax(List<int> arr) {
  int min = arr[0];
  int max = arr[0];

  for (int num in arr) {
    if (num > max) {
      max = num;
    }
    if (num < min) {
      min = num;
    }
  }
  print("the maximum number is $max");
  print("the min number is $min");
}

void main() {
  List<int> numbers = [10, 20, 32, 40];
  minAndMax(numbers);
}
