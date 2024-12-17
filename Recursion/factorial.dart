int factorial(int n) {
  if (n == 1) {
    return n;
  }
  return n * factorial(n - 1);
}

void main() {
  print(factorial(4));
}
