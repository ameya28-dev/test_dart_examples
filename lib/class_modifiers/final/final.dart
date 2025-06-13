final class Vehicle {
  void moveForward(int meters) => print(meters);
}

base class Car extends Vehicle {
  int wheels = 4;
}
