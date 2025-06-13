import 'package:freezed_annotation/freezed_annotation.dart';

part 'response.freezed.dart';

@freezed
sealed class Response<T> with _$Response<T> {
  Response._({DateTime? time}) : time = time ?? DateTime.now();

  factory Response.data(T value, {DateTime? time}) = ResponseData;
  factory Response.errpr(Object error) = ResponseError;

  @override
  final DateTime time;
}
