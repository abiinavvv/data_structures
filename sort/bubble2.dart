void bubble(List<int> arr) {
  int n = arr.length;
  for (int i = n - 1; i > 0; i--) {
    for (int j = 0; j < i; j++) {
      if (arr[j] > arr[j + 1]) {
        int temp = arr[j + 1];
        arr[j + 1] = arr[j];
        arr[j] = temp;
      }
    }
  }
}

void main() {
  List<int> arr = [8, 7, 46, 56, 2];

  bubble(arr);
  print(arr);
}
