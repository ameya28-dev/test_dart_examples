import 'package:freezed_annotation/freezed_annotation.dart';

part 'union.freezed.dart';

@freezed
sealed class Union with _$Union {
  const factory Union.data(int value) = Data;
  const factory Union.loading() = Loading;
  const factory Union.error([String? message]) = Error;
}
