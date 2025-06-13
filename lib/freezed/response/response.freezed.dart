// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Response<T> {
  DateTime get time;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Response<T> &&
            (identical(other.time, time) || other.time == time));
  }

  @override
  int get hashCode => Object.hash(runtimeType, time);

  @override
  String toString() {
    return 'Response<$T>(time: $time)';
  }
}

/// @nodoc
class $ResponseCopyWith<T, $Res> {
  $ResponseCopyWith(Response<T> _, $Res Function(Response<T>) __);
}

/// @nodoc

class ResponseData<T> extends Response<T> {
  ResponseData(this.value, {final DateTime? time}) : super._(time: time);

  final T value;

  /// Create a copy of Response
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ResponseDataCopyWith<T, ResponseData<T>> get copyWith =>
      _$ResponseDataCopyWithImpl<T, ResponseData<T>>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ResponseData<T> &&
            const DeepCollectionEquality().equals(other.value, value) &&
            (identical(other.time, time) || other.time == time));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(value), time);

  @override
  String toString() {
    return 'Response<$T>.data(value: $value, time: $time)';
  }
}

/// @nodoc
abstract mixin class $ResponseDataCopyWith<T, $Res>
    implements $ResponseCopyWith<T, $Res> {
  factory $ResponseDataCopyWith(
          ResponseData<T> value, $Res Function(ResponseData<T>) _then) =
      _$ResponseDataCopyWithImpl;
  @useResult
  $Res call({T value, DateTime? time});
}

/// @nodoc
class _$ResponseDataCopyWithImpl<T, $Res>
    implements $ResponseDataCopyWith<T, $Res> {
  _$ResponseDataCopyWithImpl(this._self, this._then);

  final ResponseData<T> _self;
  final $Res Function(ResponseData<T>) _then;

  /// Create a copy of Response
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? value = freezed,
    Object? time = freezed,
  }) {
    return _then(ResponseData<T>(
      freezed == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as T,
      time: freezed == time
          ? _self.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class ResponseError<T> extends Response<T> {
  ResponseError(this.error) : super._();

  final Object error;

  /// Create a copy of Response
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ResponseErrorCopyWith<T, ResponseError<T>> get copyWith =>
      _$ResponseErrorCopyWithImpl<T, ResponseError<T>>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ResponseError<T> &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @override
  String toString() {
    return 'Response<$T>.errpr(error: $error)';
  }
}

/// @nodoc
abstract mixin class $ResponseErrorCopyWith<T, $Res>
    implements $ResponseCopyWith<T, $Res> {
  factory $ResponseErrorCopyWith(
          ResponseError<T> value, $Res Function(ResponseError<T>) _then) =
      _$ResponseErrorCopyWithImpl;
  @useResult
  $Res call({Object error});
}

/// @nodoc
class _$ResponseErrorCopyWithImpl<T, $Res>
    implements $ResponseErrorCopyWith<T, $Res> {
  _$ResponseErrorCopyWithImpl(this._self, this._then);

  final ResponseError<T> _self;
  final $Res Function(ResponseError<T>) _then;

  /// Create a copy of Response
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? error = null,
  }) {
    return _then(ResponseError<T>(
      null == error ? _self.error : error,
    ));
  }
}

// dart format on
