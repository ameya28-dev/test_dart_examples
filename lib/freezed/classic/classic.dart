import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'classic.freezed.dart';
part 'classic.g.dart';

@unfreezed
@JsonSerializable()
// ignore: must_be_immutable
class Classic with _$Classic, EquatableMixin {
  @override
  @JsonKey(name: 'FirstName')
  String firstName;

  @override
  @JsonKey(name: 'LastName')
  String lastName;

  @override
  @JsonKey(name: 'Age')
  int age;

  Classic({required this.firstName, required this.lastName, required this.age});

  factory Classic.fromJson(Map<String, Object?> json) => _$ClassicFromJson(json);

  Map<String, Object?> toJson() => _$ClassicToJson(this);

  @override
  List<Object?> get props => [firstName, lastName, age];
}
