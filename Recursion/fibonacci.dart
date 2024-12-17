int fibonacci(int n) {
  if (n <=1) {
    return n;
  }
  return fibonacci(n - 1) + fibonacci(n - 2);
}

void main() {
  for (int i = 1; i <= 5; i++) {
    print(fibonacci(i));
  }
}
