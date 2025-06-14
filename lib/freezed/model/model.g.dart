// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

First _$FirstFromJson(Map<String, dynamic> json) => First(
      json['a'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$FirstToJson(First instance) => <String, dynamic>{
      'a': instance.a,
      'runtimeType': instance.$type,
    };

Second _$SecondFromJson(Map<String, dynamic> json) => Second(
      (json['b'] as num).toInt(),
      json['c'] as bool,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$SecondToJson(Second instance) => <String, dynamic>{
      'b': instance.b,
      'c': instance.c,
      'runtimeType': instance.$type,
    };
