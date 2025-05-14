import 'final.dart';

/// The class 'Vehicle' can't be extended outside of its library because it's a final class.
// class Plane extends Vehicle {}

/// The class 'Vehicle' can't be implemented outside of its library because it's a final class.
// class Plane implements Vehicle {}

base class LuxuryCar extends Car {
  void triggerABS(bool triggered) => print('Is ABS triggered: $triggered');
}

void main() {
  Vehicle vehicle = Vehicle();
  vehicle.moveForward(100);
  LuxuryCar luxuryCar = LuxuryCar();
  luxuryCar.triggerABS(true);
}
