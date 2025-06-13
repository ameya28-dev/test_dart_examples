import 'package:freezed_annotation/freezed_annotation.dart';

part 'team.freezed.dart';
part 'team.g.dart';

@unfreezed
abstract class Team with _$Team {
  factory Team({required final String sport, required String name, required int rank}) = _Team;

  factory Team.fromJson(Map<String, Object?> json) => _$TeamFromJson(json);
}
