// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'optional_person.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OptionalPerson {
  String get name;
  int? get age;
  int? get id;

  /// Create a copy of OptionalPerson
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $OptionalPersonCopyWith<OptionalPerson> get copyWith =>
      _$OptionalPersonCopyWithImpl<OptionalPerson>(
          this as OptionalPerson, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is OptionalPerson &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, age, id);

  @override
  String toString() {
    return 'OptionalPerson(name: $name, age: $age, id: $id)';
  }
}

/// @nodoc
abstract mixin class $OptionalPersonCopyWith<$Res> {
  factory $OptionalPersonCopyWith(
          OptionalPerson value, $Res Function(OptionalPerson) _then) =
      _$OptionalPersonCopyWithImpl;
  @useResult
  $Res call({String name, int? age, int? id});
}

/// @nodoc
class _$OptionalPersonCopyWithImpl<$Res>
    implements $OptionalPersonCopyWith<$Res> {
  _$OptionalPersonCopyWithImpl(this._self, this._then);

  final OptionalPerson _self;
  final $Res Function(OptionalPerson) _then;

  /// Create a copy of OptionalPerson
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? age = freezed,
    Object? id = freezed,
  }) {
    return _then(_self.copyWith(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      age: freezed == age
          ? _self.age
          : age // ignore: cast_nullable_to_non_nullable
              as int?,
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _OptionalPerson extends OptionalPerson {
  _OptionalPerson(this.name, {this.age, this.id = 313})
      : assert(name.isNotEmpty, 'name cannot be empty'),
        super._();

  @override
  final String name;
  @override
  final int? age;
  @override
  @JsonKey()
  final int? id;

  /// Create a copy of OptionalPerson
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$OptionalPersonCopyWith<_OptionalPerson> get copyWith =>
      __$OptionalPersonCopyWithImpl<_OptionalPerson>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OptionalPerson &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, age, id);

  @override
  String toString() {
    return 'OptionalPerson(name: $name, age: $age, id: $id)';
  }
}

/// @nodoc
abstract mixin class _$OptionalPersonCopyWith<$Res>
    implements $OptionalPersonCopyWith<$Res> {
  factory _$OptionalPersonCopyWith(
          _OptionalPerson value, $Res Function(_OptionalPerson) _then) =
      __$OptionalPersonCopyWithImpl;
  @override
  @useResult
  $Res call({String name, int? age, int? id});
}

/// @nodoc
class __$OptionalPersonCopyWithImpl<$Res>
    implements _$OptionalPersonCopyWith<$Res> {
  __$OptionalPersonCopyWithImpl(this._self, this._then);

  final _OptionalPerson _self;
  final $Res Function(_OptionalPerson) _then;

  /// Create a copy of OptionalPerson
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = null,
    Object? age = freezed,
    Object? id = freezed,
  }) {
    return _then(_OptionalPerson(
      null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      age: freezed == age
          ? _self.age
          : age // ignore: cast_nullable_to_non_nullable
              as int?,
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

// dart format on
