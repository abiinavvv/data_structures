// class Hashmap3<K, V> {
//   final List<List<MapEntry>> _bucket;
//   final int _size;

//   Hashmap3(this._size) : _bucket = List.generate(_size, (_) => []);

//   int _hash(K key) => key.hashCode % _size;

//   void put(K key, V value) {
//     int index = _hash(key);

//     for (int i = 0; i < _bucket[index].length; i++) {
//       if (_bucket[index][i].key == key) {
//         _bucket[index][i] = MapEntry(key, value);
//         return;
//       }
//     }
//     _bucket[index].add(MapEntry(key, value));
//   }

//   V? get(K key) {
//     int index = _hash(key);
//     for (var entry in _bucket[index]) {
//       if (entry.key == key) return entry.value;
//     }
//     return null;
//   }

//   void remove(K key) {
//     int index = _hash(key);
//     _bucket[index].removeWhere((entry) => entry.key == key);
//   }

//   void display() {
//     for (int i = 0; i < _size; i++) {
//       print("Bucket $i : ${_bucket[i]}");
//     }
//   }
// }

// void main() {
//   var map = Hashmap3(3);

//   map.put("apple", 5);
//   map.put("banana", 10);
//   map.display();
//   map.remove("apple");
//   map.display();
//   print(map.get("banana"));
//   map.put("banana", 20);
//   map.display();
// }
class Hashmap3<K, V> {
  final List<List<MapEntry>> _buckets;
  final int _size;

  Hashmap3(this._size) : _buckets = List.generate(_size, (_) => []);

  int _hash(K key) => key.hashCode % _size;

  void put(K key, V value) {
    int index = _hash(key);

    for (int i = 0; i < _buckets[index].length; i++) {
      if (_buckets[index][i].key == key) {
        _buckets[index][i] = MapEntry(key, value);
        return;
      }
    }
    _buckets[index].add(MapEntry(key, value));
  }

  V? get(K key) {
    int index = _hash(key);
    for (var entry in _buckets[index]) {
      if (entry.key == key) return entry.value;
    }
    return null;
  }

  void remove(K key) {
    int index = _hash(key);
    _buckets[index].removeWhere((entry) => entry.key == key);
  }

  void display() {
    for (int i = 0; i < _size; i++) {
      print("Bucket $i : ${_buckets[i]}");
    }
  }
}

void main() {
  var map = Hashmap3(3);
  map.put("apple", 5);
  map.put("banana", 10);
  map.display();
}
