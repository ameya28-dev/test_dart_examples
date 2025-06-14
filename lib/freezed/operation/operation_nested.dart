import 'package:freezed_annotation/freezed_annotation.dart';

part 'operation_nested.freezed.dart';

@freezed
sealed class OperationNested with _$OperationNested{
  factory OperationNested.add(int val) = Add;
  factory OperationNested.subtract(int val) = Subtract;
}