// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'operation_nested.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OperationNested {
  int get val;

  /// Create a copy of OperationNested
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $OperationNestedCopyWith<OperationNested> get copyWith =>
      _$OperationNestedCopyWithImpl<OperationNested>(
          this as OperationNested, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is OperationNested &&
            (identical(other.val, val) || other.val == val));
  }

  @override
  int get hashCode => Object.hash(runtimeType, val);

  @override
  String toString() {
    return 'OperationNested(val: $val)';
  }
}

/// @nodoc
abstract mixin class $OperationNestedCopyWith<$Res> {
  factory $OperationNestedCopyWith(
          OperationNested value, $Res Function(OperationNested) _then) =
      _$OperationNestedCopyWithImpl;
  @useResult
  $Res call({int val});
}

/// @nodoc
class _$OperationNestedCopyWithImpl<$Res>
    implements $OperationNestedCopyWith<$Res> {
  _$OperationNestedCopyWithImpl(this._self, this._then);

  final OperationNested _self;
  final $Res Function(OperationNested) _then;

  /// Create a copy of OperationNested
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? val = null,
  }) {
    return _then(_self.copyWith(
      val: null == val
          ? _self.val
          : val // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class Add implements OperationNested {
  Add(this.val);

  @override
  final int val;

  /// Create a copy of OperationNested
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AddCopyWith<Add> get copyWith => _$AddCopyWithImpl<Add>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Add &&
            (identical(other.val, val) || other.val == val));
  }

  @override
  int get hashCode => Object.hash(runtimeType, val);

  @override
  String toString() {
    return 'OperationNested.add(val: $val)';
  }
}

/// @nodoc
abstract mixin class $AddCopyWith<$Res>
    implements $OperationNestedCopyWith<$Res> {
  factory $AddCopyWith(Add value, $Res Function(Add) _then) = _$AddCopyWithImpl;
  @override
  @useResult
  $Res call({int val});
}

/// @nodoc
class _$AddCopyWithImpl<$Res> implements $AddCopyWith<$Res> {
  _$AddCopyWithImpl(this._self, this._then);

  final Add _self;
  final $Res Function(Add) _then;

  /// Create a copy of OperationNested
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? val = null,
  }) {
    return _then(Add(
      null == val
          ? _self.val
          : val // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class Subtract implements OperationNested {
  Subtract(this.val);

  @override
  final int val;

  /// Create a copy of OperationNested
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SubtractCopyWith<Subtract> get copyWith =>
      _$SubtractCopyWithImpl<Subtract>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Subtract &&
            (identical(other.val, val) || other.val == val));
  }

  @override
  int get hashCode => Object.hash(runtimeType, val);

  @override
  String toString() {
    return 'OperationNested.subtract(val: $val)';
  }
}

/// @nodoc
abstract mixin class $SubtractCopyWith<$Res>
    implements $OperationNestedCopyWith<$Res> {
  factory $SubtractCopyWith(Subtract value, $Res Function(Subtract) _then) =
      _$SubtractCopyWithImpl;
  @override
  @useResult
  $Res call({int val});
}

/// @nodoc
class _$SubtractCopyWithImpl<$Res> implements $SubtractCopyWith<$Res> {
  _$SubtractCopyWithImpl(this._self, this._then);

  final Subtract _self;
  final $Res Function(Subtract) _then;

  /// Create a copy of OperationNested
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? val = null,
  }) {
    return _then(Subtract(
      null == val
          ? _self.val
          : val // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

// dart format on
