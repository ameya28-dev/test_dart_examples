base class Vehicle {
  void moveForward(int meters) => print(meters);
}

base class Plane implements Vehicle {
  @override
  void moveForward(int meters) {
    print('Plane flew ahead by $meters');
  }
}
