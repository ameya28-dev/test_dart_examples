enum Vehicle implements Comparable<Vehicle> {
  car(tires: 4, passengers: 5, carbonPerKilometer: 400),
  bus(tires: 6, passengers: 50, carbonPerKilometer: 1000),
  bicycle(tires: 2, passengers: 1, carbonPerKilometer: 0);

  const Vehicle({required this.tires, required this.passengers, required this.carbonPerKilometer});

  final int tires;
  final int passengers;
  final int carbonPerKilometer;

  int get carbonFootPrint => (carbonPerKilometer / passengers).round();

  bool get isTwoWheeled => this.tires == 2;

  @override
  int compareTo(Vehicle other) => carbonFootPrint - other.carbonFootPrint;
}

enum Decision { yes, no }

void main() {
  final car = Vehicle.car;
  final bus = Vehicle.bus;

  print(car.compareTo(bus));
}
