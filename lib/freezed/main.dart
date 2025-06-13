import 'package:test_dart_example/freezed/models/person.dart';

Future<void> main() async {
  Person person = Person(firstName: 'Ameya', lastName: 'Mahale', age: 12);
  print(person);

  await Future.delayed(const Duration(seconds: 1));

  person = person.copyWith(age: 13);

  print(person);
}
