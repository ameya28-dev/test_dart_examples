import 'dart:convert';
import 'dart:typed_data';

interface class Vehicle {
  void moveForward(int meters) => print('Vehicle moved forward by $meters');
}

class Car extends Vehicle {
  // @override
  // void moveForward(int meters) => print('Car moved forward by $meters');

  int get wheels => 4;
}

abstract interface class Storage {
  String get storageLocation;

  Uint8List encryptData(String data) => base64Decode(data);
}

class AWSStorage extends Storage {
  @override
  String get storageLocation => 'S3 bucket';
}