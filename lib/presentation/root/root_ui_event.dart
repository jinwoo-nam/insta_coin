import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:insta_coin/presentation/root/root_state.dart';

part 'root_ui_event.freezed.dart';

@freezed
class RootUiEvent with _$RootUiEvent {
  const factory RootUiEvent.menuTab() = MenuTab;
  const factory RootUiEvent.selectScreen(PageSelectType type) = SelectScreen;
}
