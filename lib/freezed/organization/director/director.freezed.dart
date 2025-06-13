// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'director.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Director {
  String? get name;
  Assistant? get assistant;

  /// Create a copy of Director
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DirectorCopyWith<Director> get copyWith =>
      _$DirectorCopyWithImpl<Director>(this as Director, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Director &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.assistant, assistant) ||
                other.assistant == assistant));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, assistant);

  @override
  String toString() {
    return 'Director(name: $name, assistant: $assistant)';
  }
}

/// @nodoc
abstract mixin class $DirectorCopyWith<$Res> {
  factory $DirectorCopyWith(Director value, $Res Function(Director) _then) =
      _$DirectorCopyWithImpl;
  @useResult
  $Res call({String? name, Assistant? assistant});

  $AssistantCopyWith<$Res>? get assistant;
}

/// @nodoc
class _$DirectorCopyWithImpl<$Res> implements $DirectorCopyWith<$Res> {
  _$DirectorCopyWithImpl(this._self, this._then);

  final Director _self;
  final $Res Function(Director) _then;

  /// Create a copy of Director
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? assistant = freezed,
  }) {
    return _then(_self.copyWith(
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      assistant: freezed == assistant
          ? _self.assistant
          : assistant // ignore: cast_nullable_to_non_nullable
              as Assistant?,
    ));
  }

  /// Create a copy of Director
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AssistantCopyWith<$Res>? get assistant {
    if (_self.assistant == null) {
      return null;
    }

    return $AssistantCopyWith<$Res>(_self.assistant!, (value) {
      return _then(_self.copyWith(assistant: value));
    });
  }
}

/// @nodoc

class _Director implements Director {
  const _Director({this.name, this.assistant});

  @override
  final String? name;
  @override
  final Assistant? assistant;

  /// Create a copy of Director
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DirectorCopyWith<_Director> get copyWith =>
      __$DirectorCopyWithImpl<_Director>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Director &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.assistant, assistant) ||
                other.assistant == assistant));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, assistant);

  @override
  String toString() {
    return 'Director(name: $name, assistant: $assistant)';
  }
}

/// @nodoc
abstract mixin class _$DirectorCopyWith<$Res>
    implements $DirectorCopyWith<$Res> {
  factory _$DirectorCopyWith(_Director value, $Res Function(_Director) _then) =
      __$DirectorCopyWithImpl;
  @override
  @useResult
  $Res call({String? name, Assistant? assistant});

  @override
  $AssistantCopyWith<$Res>? get assistant;
}

/// @nodoc
class __$DirectorCopyWithImpl<$Res> implements _$DirectorCopyWith<$Res> {
  __$DirectorCopyWithImpl(this._self, this._then);

  final _Director _self;
  final $Res Function(_Director) _then;

  /// Create a copy of Director
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = freezed,
    Object? assistant = freezed,
  }) {
    return _then(_Director(
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      assistant: freezed == assistant
          ? _self.assistant
          : assistant // ignore: cast_nullable_to_non_nullable
              as Assistant?,
    ));
  }

  /// Create a copy of Director
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AssistantCopyWith<$Res>? get assistant {
    if (_self.assistant == null) {
      return null;
    }

    return $AssistantCopyWith<$Res>(_self.assistant!, (value) {
      return _then(_self.copyWith(assistant: value));
    });
  }
}

// dart format on
