import 'package:insta_coin/domain/model/temp/temp_data.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'temp_state.freezed.dart';

part 'temp_state.g.dart';

@freezed
class TempState with _$TempState {
  factory TempState({
    @Default([]) List<TempData> tempData,
  }) = _TempState;

  factory TempState.fromJson(Map<String, dynamic> json) =>
      _$TempStateFromJson(json);
}
