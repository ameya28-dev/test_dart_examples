import 'package:freezed_annotation/freezed_annotation.dart';

part 'optional_person.freezed.dart';

@freezed
abstract class OptionalPerson with _$OptionalPerson {
  const OptionalPerson._();

  @Assert('name.isNotEmpty', 'name cannot be empty')
  factory OptionalPerson(String name, {int? age, @Default(313) int? id}) = _OptionalPerson;

  void printName() => print(name);
}
