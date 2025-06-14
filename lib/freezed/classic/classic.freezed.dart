// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'classic.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Classic {
  String get firstName;
  set firstName(String value);
  String get lastName;
  set lastName(String value);
  int get age;
  set age(int value);

  /// Create a copy of Classic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ClassicCopyWith<Classic> get copyWith =>
      _$ClassicCopyWithImpl<Classic>(this as Classic, _$identity);
}

/// @nodoc
abstract mixin class $ClassicCopyWith<$Res> {
  factory $ClassicCopyWith(Classic value, $Res Function(Classic) _then) =
      _$ClassicCopyWithImpl;
  @useResult
  $Res call({String firstName, String lastName, int age});
}

/// @nodoc
class _$ClassicCopyWithImpl<$Res> implements $ClassicCopyWith<$Res> {
  _$ClassicCopyWithImpl(this._self, this._then);

  final Classic _self;
  final $Res Function(Classic) _then;

  /// Create a copy of Classic
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = null,
    Object? lastName = null,
    Object? age = null,
  }) {
    return _then(Classic(
      firstName: null == firstName
          ? _self.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _self.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      age: null == age
          ? _self.age
          : age // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

// dart format on
