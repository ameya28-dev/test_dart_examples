import 'package:freezed_annotation/freezed_annotation.dart';

part 'assistant.freezed.dart';

@freezed
abstract class Assistant with _$Assistant{
  const factory Assistant({String? name, int? age}) = _Assistant;
}