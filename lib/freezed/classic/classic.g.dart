// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'classic.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Classic _$ClassicFromJson(Map<String, dynamic> json) => Classic(
      firstName: json['FirstName'] as String,
      lastName: json['LastName'] as String,
      age: (json['Age'] as num).toInt(),
    );

Map<String, dynamic> _$ClassicToJson(Classic instance) => <String, dynamic>{
      'FirstName': instance.firstName,
      'LastName': instance.lastName,
      'Age': instance.age,
    };
