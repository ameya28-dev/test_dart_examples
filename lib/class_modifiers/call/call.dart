class WannabeFunction {
  final String a, b, c;

  WannabeFunction(this.a, this.b, this.c);

  String call(String a, String b, String c) => '$a $b $c';
}

void main() {
  var wf = WannabeFunction('Ameya', 'Shreeya', 'Gurudas');
  print(wf('Hi', 'there,', 'gang'));
}
