void main() {
  print(sum(List.unmodifiable([1, 2, 3, 5])));
  final result = filterMapString(['Dart', 'is', 'awesome']);
  for (var (str, len) in result) {
    print('$str: $len');
  }
}

int sum(List<int> list) {
  return list.fold<int>(0, (p, c) => p + c);
}

Iterable<(String, int)> mapString(List<String> list) => list.map((v) => (v, v.length));

Iterable<(String, int)> filterMapString(List<String> list) => mapString(list).where((v) {
      var (_, length) = v;
      return length > 2;
    });
