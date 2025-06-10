import 'dart:convert';

class Person {
  final String _name;

  Person(this._name);

  String greet(String who) => 'Hello $who. I am $_name';
}

class Location {
  final String _latitude, _longitude;

  Location(this._latitude, this._longitude);

  @override
  String toString() {
    return jsonEncode({'Latitude': _latitude, 'Longitude': _longitude});
  }
}

class Impersonator implements Person, Location {
  @override
  String get _name => '';

  @override
  String greet(String who) {
    return 'Hi, $who. Do you know who I am?';
  }

  @override
  String get _latitude => '';

  @override
  String toString() {
    return jsonEncode({'Latitude': _latitude, 'Longitude': _longitude});
  }

  @override
  String get _longitude => '';
}

String greetBob(Person person) => person.greet('Bob');

void main() {
  Person person = Person('Salman');
  print(person._name);
  print(greetBob(Person('Kathy')));
  print(greetBob(Impersonator()));

  Impersonator impersonator = Impersonator();
  print(impersonator);
}
