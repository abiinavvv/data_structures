import 'dart:collection';

void main() {
  HashMap<String, int> names = HashMap<String, int>();

  names['a'] = 25;
  names['b'] = 35;

  print(names['b']);

  names['a'] = 256;

  print(names['a']);

  if (names.containsKey('c')) {
    print(true);
  } else {
    print(false);
  }

  for (var key in names.values) {
    print(key.hashCode);
  }
}
