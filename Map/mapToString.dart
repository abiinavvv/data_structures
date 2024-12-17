String mapToString(Map<String, dynamic> input) {
  String result = '';
  bool first = true;

  for (var key in input.keys) {
    if (!first) {
      result += '&';
    }
    result += key + '=' + input[key].toString();
    first = false;
  }
  return result;
}

void main() {
  Map<String, dynamic> input = {'name': 'hi', 'age': 21};
  print(mapToString(input));
}
