import 'base.dart';

base class Car extends Vehicle {
  int passengers = 4;
}

base class LuxuryCar extends Car {
  void triggerABS(bool triggered) => print('Is ABS triggered: $triggered');
}

/// Can't implement a base class outside of its library
// base class Plane implements Vehicle {
//   @override
//   void moveForward(int meters) {
//     // TODO: implement moveForward
//   }
//
// }

void main() {
  Vehicle vehicle = Vehicle();
  vehicle.moveForward(10);

  Car car = Car();
  print(car.passengers);

  LuxuryCar luxuryCar = LuxuryCar();
  print(luxuryCar.passengers);
  luxuryCar.triggerABS(false);

  Plane plane = Plane();
  plane.moveForward(2000);
}
