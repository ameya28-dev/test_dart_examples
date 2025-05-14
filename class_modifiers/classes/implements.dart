class Person {
  final String _name;

  Person(this._name);

  String greet(String who) => 'Hello $who. I am $_name';
}

class Location {
  final String _latitude, _longitude;

  Location(this._latitude, this._longitude);
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
  String get _longitude => '';
}

String greetBob(Person person) => person.greet('Bob');

void main() {
  Person person = Person('Salman');
  print(greetBob(Person('Kathy')));
  print(greetBob(Impersonator()));
}
