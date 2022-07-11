import 'package:json_annotation/json_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'root_state.freezed.dart';
part 'root_state.g.dart';

enum PageSelectType {
  home,
  papps,
  team,
  media,
  faq,
}

@freezed
class RootState with _$RootState {
  factory RootState({
    @Default(PageSelectType.home) PageSelectType curPage,
  }) = _RootState;
  factory RootState.fromJson(Map<String, dynamic> json) => _$RootStateFromJson(json);
}