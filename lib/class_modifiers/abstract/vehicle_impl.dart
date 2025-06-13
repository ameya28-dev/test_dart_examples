import 'vehicle.dart';

// Vehicle vehicle = Vehicle(); Can't construct

class Car extends Vehicle {
  @override
  void moveForward(int meters) {
    print(meters);
  }
}

class MockVehicle implements Vehicle {
  final bool needsEngine;

  MockVehicle(this.needsEngine);

  @override
  bool hasEngine() => needsEngine;

  @override
  void moveForward(int meters) => print(meters);
}

void main() {
  Car car = Car();
  car.moveForward(10);
  print(car.hasEngine());

  MockVehicle mockVehicle = MockVehicle(true);
  mockVehicle.moveForward(20);
  print(mockVehicle.hasEngine());
}
