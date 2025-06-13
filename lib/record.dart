import 'dart:math';

(int, double) getNumber() {
  Random random = Random();
  return (random.nextInt(10), 10 * random.nextDouble());
}

({int integer, double float}) get() {
  Random random = Random();
  return (integer: random.nextInt(10), float: 10 * random.nextDouble());
}

void main() {
  (int, double) r = getNumber();
  print(r.$1);
  var (i, d) = getNumber();
  print('$i, $d');

  final res = get();
  print('${res.integer} ${res.float}');
}
