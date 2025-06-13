Map<int, String> map = {3: 'Fizz', 5: 'Buzz', 7 : 'Baz'};

void main() {
  List<String> res = List.filled(105, '', growable: false);

  for (int i = 1; i <= 105; i++) {
    res[i-1] = getCode(i); 
  }

  print(res);
}

String getCode(int i) {
  String res = '';
  for(int key in map.keys) {
    if(i % key == 0) res += map[key]!;
  }
  if(res.isEmpty) return '$i';
  return res;
}