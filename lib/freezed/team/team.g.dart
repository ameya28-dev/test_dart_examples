// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'team.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Team _$TeamFromJson(Map<String, dynamic> json) => _Team(
      sport: json['sport'] as String,
      name: json['name'] as String,
      rank: (json['rank'] as num).toInt(),
    );

Map<String, dynamic> _$TeamToJson(_Team instance) => <String, dynamic>{
      'sport': instance.sport,
      'name': instance.name,
      'rank': instance.rank,
    };
