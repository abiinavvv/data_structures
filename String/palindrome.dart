bool isPalindrome(String input) {
  int left = 0;
  int right = input.length - 1;

  while (left < right) {
    if (input[left] != input[right]) {
      return false;
    }
    left++;
    right--;
  }
  return true;
}

void main() {
  String input = 'radacar';
  bool? result = isPalindrome(input);
  print(result);
}
