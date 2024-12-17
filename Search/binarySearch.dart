int binarySearch(List<int> list, int target) {
  int left = 0;
  int right = list.length - 1;

  while (left <= right) {
    int mid = left + (right - left) ~/ 2;
    if (list[mid] == target) {
      return mid;
    } else if (list[mid] < target) {
      left = mid + 1;
    } else {
      right = mid - 1;
    }
  }
  return -1;
}

void main() {
  List<int> numbers = [10, 20, 30, 40, 50];
  int target = 10;

  int result = binarySearch(numbers, target);
  print(result != -1 ? "the reuslt is $result" : "not found");
}
