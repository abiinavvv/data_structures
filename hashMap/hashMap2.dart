class HashMap<K, V> {
  // Bucket array to store key-value pairs
  List<List<MapEntry<K, V>>> _buckets;
  final int _size;

  HashMap(this._size) : _buckets = List.generate(_size, (_) => []);

  // Hash function to calculate the bucket index
  int _hash(K key) => key.hashCode % _size;

  // Insert or update a key-value pair
  void put(K key, V value) {
    int index = _hash(key);
    for (var entry in _buckets[index]) {
      if (entry.key == key) {
        entry = MapEntry(key, value); // Update value
        return;
      }
    }
    _buckets[index].add(MapEntry(key, value)); // Insert new key-value pair
  }

  // Get the value for a given key
  V? get(K key) {
    int index = _hash(key);
    for (var entry in _buckets[index]) {
      if (entry.key == key) return entry.value;
    }
    return null; // Key not found
  }

  // Delete a key-value pair
  void remove(K key) {
    int index = _hash(key);
    _buckets[index].removeWhere((entry) => entry.key == key);
  }

  // Display the hash map
  void display() {
    for (int i = 0; i < _size; i++) {
      print("Bucket $i: ${_buckets[i]}");
    }
  }
}

void main() {
  var map = HashMap<String, int>(5);
  
  // Inserting key-value pairs
  map.put("apple", 1);
  map.put("banana", 2);
  map.put("grape", 3);
  
  // Displaying the hash map
  map.display();

  // Retrieving a value
  print("Value for 'apple': ${map.get("apple")}");
  
  // Removing a key-value pair
  map.remove("banana");
  map.display();
}

