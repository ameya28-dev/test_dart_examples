import 'package:collection/collection.dart';
import 'package:equatable/equatable.dart';

class Father extends Person {
  final List<Person> kids;

  Father({required super.name, required super.age, required this.kids});

  @override
  List<Object?> get props => [name, age, kids];
}

class Person extends Equatable {
  final String name;
  final int age;

  Person({required this.name, required this.age});
  List<Object?> get props => [name, age];
}

void main() {
  final deepCollectionEquality = DeepCollectionEquality();
  Person p1 = Person(name: 'Ameya', age: 25);
  Person p2 = Person(name: 'Shreeya', age: 19);
  Father f1 = Father(name: 'Gurudas', age: 54, kids: [p1, p2]);
  Father f2 = Father(name: 'Gurudas', age: 54, kids: [p1, p2]);
  print(f1 == f2);
  print(deepCollectionEquality.equals(f1, f2));
  print(f1.kids == f2.kids);
  print(deepCollectionEquality.equals(f1.kids, f2.kids));
}
