import 'package:insta_coin/domain/model/home/papps_data.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'papps_state.freezed.dart';

part 'papps_state.g.dart';

@freezed
class PappsState with _$PappsState {
  factory PappsState({
    @Default([]) List<PappsData> papps,
  }) = _PappsState;

  factory PappsState.fromJson(Map<String, dynamic> json) =>
      _$PappsStateFromJson(json);
}
