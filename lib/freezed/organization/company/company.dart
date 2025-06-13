import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:test_dart_example/freezed/organization/director/director.dart';

part 'company.freezed.dart';

@freezed
abstract class Company with _$Company {
  const factory Company({String? name, required Director director}) = _Company;
}
