bool hasDuplicate(List<int> nums) {
  Map<int, bool> seen = {};
  for (var num in nums) {
    if (seen[num] != null) {
      return true; // Duplicate found
    }
    seen[num] = true;
  }
  return false;
}

void main() {
  List<int> nums = [1, 2, 3, 4, 5, 6, 2];
  print("Has duplicate: ${hasDuplicate(nums)}"); // Output: true
}
