import 'package:freezed_annotation/freezed_annotation.dart';

part 'root_ui_event.freezed.dart';

@freezed
class RootUiEvent with _$RootUiEvent {
  const factory RootUiEvent.menuTab() = menuTab;
}
