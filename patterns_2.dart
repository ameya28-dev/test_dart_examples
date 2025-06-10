import 'dart:math';

sealed class Shape {}

class Rectangle extends Shape {
  final double width;
  final double height;

  Rectangle({required this.width, required this.height});
}

class Square extends Shape {
  final double side;

  Square({required this.side});
}

class Circle extends Shape {
  final double radius;

  Circle({required this.radius});
}

class Point extends Shape {}

double area(Shape shape) => switch (shape) {
      Point() => 0.0,
      Square(:double side) => pow(side, 2).toDouble(),
      Rectangle(:double width, :double height) => height * width,
      Circle(:double radius) => pi * pow(radius, 2),
    };

void main() {
  Point point = Point();
  var square = Square(side: 10);
  var rectangle = Rectangle(width: 10, height: 20);
  var circle = Circle(radius: 10);
  print(area(point));
  print(area(square));
  print(area(rectangle));
  print(area(circle));
}
