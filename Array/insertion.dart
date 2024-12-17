void insertion(List<int> arr) {
  int n = arr.length;

  for (int i = 0; i < n; i++) {
    int j = i;
    while (j > 0 && arr[j - 1] > arr[j]) {
      int temp = arr[j - 1];
      arr[j - 1] = arr[j];
      arr[j] = temp;
      j--;
    }
  }
}

void main() {
  List<int> arr = [64, 34, 25, 12, 22, 11, 90];
  insertion(arr);
  print(arr);
}
