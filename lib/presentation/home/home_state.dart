import 'package:insta_coin/domain/model/home/papps_data.dart';
import 'package:insta_coin/domain/model/home/why_insta_data.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'home_state.freezed.dart';
part 'home_state.g.dart';

@freezed
class HomeState with _$HomeState {
  factory HomeState({
    @Default([]) List<WhyInstaData> whyInsta,
    @Default([]) List<PappsData> papps,
  }) = _HomeState;
  factory HomeState.fromJson(Map<String, dynamic> json) => _$HomeStateFromJson(json);
}