import 'package:insta_coin/domain/model/inc/inc_data.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'inc_state.freezed.dart';

part 'inc_state.g.dart';

@freezed
class IncState with _$IncState {
  factory IncState({
    @Default([]) List<IncData> incData,
  }) = _IncState;

  factory IncState.fromJson(Map<String, dynamic> json) =>
      _$IncStateFromJson(json);
}