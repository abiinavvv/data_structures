void insertionSort(List<int> arr) {
  for (int i = 1; i < arr.length; i++) {
    int key = arr[i];
    int j = i - 1;

    while (j >= 0 && arr[j] > key) {
      arr[j + 1] = arr[j];
      j--;
    }
    arr[j + 1] = key;
  }
}

void main() {
  List<int> arr = [64,34,25,12,22,11,90];
  insertionSort(arr);
  print("Sorted array: $arr");
}
