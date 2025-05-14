import 'dart:convert';
import 'dart:math';
import 'dart:typed_data';

import 'interface.dart';

/// The class 'Vehicle' can't be extended outside of its library because it's an interface class.
// class Plane extends Vehicle {}

class Plane implements Vehicle {
  String get engineType => 'Jet Engine';

  @override
  void moveForward(int meters) => print('Plane flew by $meters');
}

class AzureStorage implements Storage {
  @override
  Uint8List encryptData(String data) => base64Decode(data);

  @override
  String get storageLocation => 'Azure Blob Storage';
}

void main() {
  Vehicle vehicle = Vehicle();
  vehicle.moveForward(10);

  Car car = Car();
  car.moveForward(20);
  print(car.wheels);

  Plane plane = Plane();
  plane.moveForward(1000);
  print(plane.engineType);

  storeData(getStorageType());
}

Storage getStorageType() => Random().nextBool() ? AWSStorage() : AzureStorage();

void storeData(Storage storage) => print(storage.storageLocation);
