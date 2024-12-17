void main() {
  List<int> numbers = [30, 50, 20, 40];

  int largest = numbers[0];
  int secondLargest = numbers[0];

  for (int num in numbers) {
    if (num > largest) {
      secondLargest = largest;
      largest = num;
    } else if (secondLargest < num && num != largest) {
      secondLargest = num;
    }
  }
  print("Second largest number is $secondLargest");
}
