import 'package:test_dart_example/freezed/container/container.dart';
import 'package:test_dart_example/freezed/optional_person/optional_person.dart';
import 'package:test_dart_example/freezed/organization/assistant/assistant.dart';
import 'package:test_dart_example/freezed/organization/company/company.dart';
import 'package:test_dart_example/freezed/organization/director/director.dart';
import 'package:test_dart_example/freezed/person/person.dart';
import 'package:test_dart_example/freezed/team/team.dart';

Future<void> main() async {
  Person person = Person(firstName: 'Ameya', lastName: 'Mahale', age: 12);
  print(person);

  person = person.copyWith(age: 13);

  print(person);
  print(person.toJson());

  var optionalPerson = OptionalPerson('Shreeya Mahale');
  print(optionalPerson);

  optionalPerson = optionalPerson.copyWith(age: 18);
  print(optionalPerson);
  optionalPerson.printName();

  OptionalPerson _person = OptionalPerson('A', id: 456);
  print(_person);

  final t1 = Team(sport: 'f1', name: 'Red Bull Aston Martin', rank: 3);
  t1.name = 'Oracle Red Bull Racing';
  t1.rank = 1;

  final t2 = t1.copyWith();

  print(t1 == t2);

  Container container = Container([], {});
  container.list.add(10);
  print(container);
  container.dict.putIfAbsent('Hubli', () => 1);
  container.dict.putIfAbsent('Dharwad', () => 10);
  print(container);

  Company parentCompany = Company(
    name: "L'Oreal",
    director: Director(
      name: 'Francois Pinault',
      // assistant: Assistant(name: 'Salma Hayek', age: 55),
    ),
  );

  print(parentCompany);

  Company newCompany = parentCompany.copyWith.director(assistant: Assistant(name: 'John Smithy', age: 26));

  print(newCompany);
}
