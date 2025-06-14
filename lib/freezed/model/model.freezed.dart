// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
Model _$ModelFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'first':
      return First.fromJson(json);
    case 'second':
      return Second.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'Model',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$Model {
  /// Serializes this Model to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Model);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'Model()';
  }
}

/// @nodoc
class $ModelCopyWith<$Res> {
  $ModelCopyWith(Model _, $Res Function(Model) __);
}

/// @nodoc
@JsonSerializable()
class First implements Model {
  First(this.a, {final String? $type}) : $type = $type ?? 'first';
  factory First.fromJson(Map<String, dynamic> json) => _$FirstFromJson(json);

  final String a;

  @JsonKey(name: 'runtimeType')
  final String $type;

  /// Create a copy of Model
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $FirstCopyWith<First> get copyWith =>
      _$FirstCopyWithImpl<First>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$FirstToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is First &&
            (identical(other.a, a) || other.a == a));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, a);

  @override
  String toString() {
    return 'Model.first(a: $a)';
  }
}

/// @nodoc
abstract mixin class $FirstCopyWith<$Res> implements $ModelCopyWith<$Res> {
  factory $FirstCopyWith(First value, $Res Function(First) _then) =
      _$FirstCopyWithImpl;
  @useResult
  $Res call({String a});
}

/// @nodoc
class _$FirstCopyWithImpl<$Res> implements $FirstCopyWith<$Res> {
  _$FirstCopyWithImpl(this._self, this._then);

  final First _self;
  final $Res Function(First) _then;

  /// Create a copy of Model
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? a = null,
  }) {
    return _then(First(
      null == a
          ? _self.a
          : a // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class Second implements Model {
  Second(this.b, this.c, {final String? $type}) : $type = $type ?? 'second';
  factory Second.fromJson(Map<String, dynamic> json) => _$SecondFromJson(json);

  final int b;
  final bool c;

  @JsonKey(name: 'runtimeType')
  final String $type;

  /// Create a copy of Model
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SecondCopyWith<Second> get copyWith =>
      _$SecondCopyWithImpl<Second>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SecondToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Second &&
            (identical(other.b, b) || other.b == b) &&
            (identical(other.c, c) || other.c == c));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, b, c);

  @override
  String toString() {
    return 'Model.second(b: $b, c: $c)';
  }
}

/// @nodoc
abstract mixin class $SecondCopyWith<$Res> implements $ModelCopyWith<$Res> {
  factory $SecondCopyWith(Second value, $Res Function(Second) _then) =
      _$SecondCopyWithImpl;
  @useResult
  $Res call({int b, bool c});
}

/// @nodoc
class _$SecondCopyWithImpl<$Res> implements $SecondCopyWith<$Res> {
  _$SecondCopyWithImpl(this._self, this._then);

  final Second _self;
  final $Res Function(Second) _then;

  /// Create a copy of Model
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? b = null,
    Object? c = null,
  }) {
    return _then(Second(
      null == b
          ? _self.b
          : b // ignore: cast_nullable_to_non_nullable
              as int,
      null == c
          ? _self.c
          : c // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

// dart format on
