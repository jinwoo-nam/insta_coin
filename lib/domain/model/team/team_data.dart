import 'package:json_annotation/json_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'team_data.freezed.dart';
part 'team_data.g.dart';

@freezed
class TeamData with _$TeamData {
  factory TeamData({
    @Default('') String name,
    @Default('') String imageUrl,
    @Default('') String position,
    @Default('') String content,
    @Default('') String facebookUrl,
    @Default('') String linkedInUrl,
    @Default([]) List<String> desc,
    @Default(0) int index,
  }) = _TeamData;
  factory TeamData.fromJson(Map<String, dynamic> json) => _$TeamDataFromJson(json);
}