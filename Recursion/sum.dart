int sum(int n) {
  if (n == 1) {
    return n;
    
  }
  return n + sum(n - 1);
}

void main() {
  print(sum(5));
}
