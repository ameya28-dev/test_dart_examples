const double xOrigin = 0.0;
const double yOrigin = 0.0;

class Point {
  double x, y;

  Point(this.x, this.y);

  Point.origin()
      : x = xOrigin,
        y = yOrigin;

  Point.alongXAxis(double x) : this(x, 0);

  Point.zero() : this.origin();
}

class Vertex extends Point {
  Vertex(super.x, super.y);
}

class ImmutablePoint {
  static const ImmutablePoint origin = ImmutablePoint(0, 0);

  final double x, y;
  const ImmutablePoint(this.x, this.y);
}

void main() {
  Point(1, 2);

  Point.origin();

  Vertex(2, 4);
}
