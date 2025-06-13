// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'container.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Container {
  List<int> get list;
  Map<String, int> get dict;

  /// Create a copy of Container
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ContainerCopyWith<Container> get copyWith =>
      _$ContainerCopyWithImpl<Container>(this as Container, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Container &&
            const DeepCollectionEquality().equals(other.list, list) &&
            const DeepCollectionEquality().equals(other.dict, dict));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(list),
      const DeepCollectionEquality().hash(dict));

  @override
  String toString() {
    return 'Container(list: $list, dict: $dict)';
  }
}

/// @nodoc
abstract mixin class $ContainerCopyWith<$Res> {
  factory $ContainerCopyWith(Container value, $Res Function(Container) _then) =
      _$ContainerCopyWithImpl;
  @useResult
  $Res call({List<int> list, Map<String, int> dict});
}

/// @nodoc
class _$ContainerCopyWithImpl<$Res> implements $ContainerCopyWith<$Res> {
  _$ContainerCopyWithImpl(this._self, this._then);

  final Container _self;
  final $Res Function(Container) _then;

  /// Create a copy of Container
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = null,
    Object? dict = null,
  }) {
    return _then(_self.copyWith(
      list: null == list
          ? _self.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<int>,
      dict: null == dict
          ? _self.dict
          : dict // ignore: cast_nullable_to_non_nullable
              as Map<String, int>,
    ));
  }
}

/// @nodoc

class _Container implements Container {
  _Container(this.list, [this.dict = const <String, int>{}]);

  @override
  final List<int> list;
  @override
  @JsonKey()
  final Map<String, int> dict;

  /// Create a copy of Container
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ContainerCopyWith<_Container> get copyWith =>
      __$ContainerCopyWithImpl<_Container>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Container &&
            const DeepCollectionEquality().equals(other.list, list) &&
            const DeepCollectionEquality().equals(other.dict, dict));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(list),
      const DeepCollectionEquality().hash(dict));

  @override
  String toString() {
    return 'Container(list: $list, dict: $dict)';
  }
}

/// @nodoc
abstract mixin class _$ContainerCopyWith<$Res>
    implements $ContainerCopyWith<$Res> {
  factory _$ContainerCopyWith(
          _Container value, $Res Function(_Container) _then) =
      __$ContainerCopyWithImpl;
  @override
  @useResult
  $Res call({List<int> list, Map<String, int> dict});
}

/// @nodoc
class __$ContainerCopyWithImpl<$Res> implements _$ContainerCopyWith<$Res> {
  __$ContainerCopyWithImpl(this._self, this._then);

  final _Container _self;
  final $Res Function(_Container) _then;

  /// Create a copy of Container
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? list = null,
    Object? dict = null,
  }) {
    return _then(_Container(
      null == list
          ? _self.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<int>,
      null == dict
          ? _self.dict
          : dict // ignore: cast_nullable_to_non_nullable
              as Map<String, int>,
    ));
  }
}

// dart format on
