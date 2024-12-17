void insertionSort(List<int> arr) {
  int n = arr.length;
  for (int i = 0; i < n; i++) {
    int j = i;
    while (j > 0 && arr[j - 1] > arr[j]) {
      // Swap the elements
      int temp = arr[j - 1];
      arr[j - 1] = arr[j];
      arr[j] = temp;
      j--;
    }
  }

  print("After using insertion sort:");
  print(arr);
}

void main() {
  List<int> arr = [13, 46, 24, 52, 20, 9];

  print("Before using insertion sort:");
  print(arr);

  insertionSort(arr);
}
