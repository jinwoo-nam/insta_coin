import 'package:insta_coin/domain/model/team/team_data.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'team_state.freezed.dart';
part 'team_state.g.dart';

@freezed
class TeamState with _$TeamState {
  factory TeamState({
    @Default([]) List<TeamData> teams,
    @Default([]) List<TeamData> games,
    @Default([]) List<TeamData> o2os,
    @Default([]) List<TeamData> ips,
    @Default([]) List<TeamData> techs,
    @Default([]) List<TeamData> newAdvisor,
  }) = _TeamState;
  factory TeamState.fromJson(Map<String, dynamic> json) => _$TeamStateFromJson(json);
}