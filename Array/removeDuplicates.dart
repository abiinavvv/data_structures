List<int> removeDuplicates(List<int> input) {
  List<int> uniqueList = [];

  for (var num in input) {
    if (!uniqueList.contains(num)) {
      uniqueList.add(num);
    }
  }
  return uniqueList;
}

void main() {
  List<int> numbers = [10, 10, 40, 50, 60, 60];
  print(removeDuplicates(numbers));
}
