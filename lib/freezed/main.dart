import 'dart:math';

import 'package:test_dart_example/freezed/classic/classic.dart';
import 'package:test_dart_example/freezed/container/container.dart';
import 'package:test_dart_example/freezed/example/example.dart' as ex;
import 'package:test_dart_example/freezed/operation/operation_nested.dart';
import 'package:test_dart_example/freezed/optional_person/optional_person.dart';
import 'package:test_dart_example/freezed/organization/assistant/assistant.dart';
import 'package:test_dart_example/freezed/organization/company/company.dart';
import 'package:test_dart_example/freezed/organization/director/director.dart';
import 'package:test_dart_example/freezed/person/person.dart';
import 'package:test_dart_example/freezed/team/team.dart';
import 'package:test_dart_example/freezed/union/union.dart';

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

  Classic classic = Classic(firstName: 'Sneha', lastName: 'Mahale', age: 40);
  print(classic);
  print(classic.toJson());
  final classic1 = Classic.fromJson({'FirstName': 'Vaidehi', 'LastName': 'Mishra', 'Age': 25});
  final classic2 = Classic(firstName: 'Vaidehi', lastName: 'Mishra', age: 25);
  print(classic1 == classic2);

  final example = ex.Example.person('Mihir', 26);
  print(example.name);

  if (example is ex.Person) {
    final example2 = example.copyWith(age: 27);
    print(example2);
  }

  /// Not possible as example2 can be Person or City
  // print(example2.copyWith(age: 21));

  getUnion()
      .map((value) => switch (value) { Loading() => 'Loading', Data(:int value) => 'Data: $value', Error(:var message) => message })
      .forEach(print);
}

int performOperation(int operand, OperationNested operationNested) {
  return switch (operationNested) { Add(:int val) => operand + val, Subtract(:int val) => operand - val };
}

Stream<Union> getUnion() {
  Random random = Random();

  return Stream.periodic(
    const Duration(milliseconds: 100),
    (time) {
      final number = random.nextInt(30);
      return switch (number) {
        <= 10 => Loading(),
        > 10 && <= 20 => Data(time),
        > 20 => Error('Error at $time due to $number'),
        (_) => Error('Not found'),
      };
    },
  ).take(10);
}
