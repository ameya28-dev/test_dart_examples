import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:test_dart_example/freezed/organization/assistant/assistant.dart';

part 'director.freezed.dart';

@freezed
abstract class Director with _$Director {
  const factory Director({String? name, Assistant? assistant}) = _Director;
}
