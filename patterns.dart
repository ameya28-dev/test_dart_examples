import 'dart:math';

void main() {
  squared(1).ex == null ? print(squared(1).res) : print(squared(1).ex);
  squared(2.5).ex == null ? print(squared(2.5).res) : print(squared(2.5).ex);
  squared('3.14').ex == null ? print(squared('3.14').res) : print(squared('3.14').ex);
  squared('dhdoo').ex == null ? print(squared('dhdoo').res) : print(squared('dhdoo').ex);
  squared([1, 2, 3]).ex == null ? print(squared([1, 2, 3]).res) : print(squared([1, 2, 3]).ex);
  squared(Complex(3, 4)).ex == null ? print(squared(Complex(3, 4)).res) : print(squared(Complex(3, 4)).ex);
}

({num res, Exception? ex}) squared(dynamic input) {
  return switch (input) {
    int value => (res: pow(value, 2), ex: null),
    double value => (res: pow(value, 2), ex: null),
    String value => newMethod(value),
    Complex() => (res: (input * input).mod(), ex: null),
    _ => (res: 0, ex: FormatException('invalid input'))
  };
}

({num res, FormatException? ex}) newMethod(String value) {
  if ((double.tryParse(value) == null)) {
    return (res: 0, ex: FormatException('invalid string'));
  } else {
    return (res: pow(double.parse(value), 2), ex: null);
  }
}

class Complex {
  final num x, y;
  Complex(this.x, this.y);

  void log() {
    print('x: $x, y: $y');
  }

  Complex operator +(Complex other) {
    return Complex(x + other.x, y + other.y);
  }

  Complex operator *(Complex other) {
    return Complex(x * other.x - y * other.y, x * other.y + y * other.x);
  }

  num mod() {
    return sqrt(x * x + y * y);
  }
}
