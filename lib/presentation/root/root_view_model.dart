import 'dart:async';

import 'package:flutter/material.dart';
import 'package:insta_coin/presentation/root/root_state.dart';
import 'package:insta_coin/presentation/root/root_ui_event.dart';

class RootViewModel with ChangeNotifier {
  RootState _state = RootState();

  RootState get state => _state;

  final _eventController = StreamController<RootUiEvent>.broadcast();

  Stream<RootUiEvent> get eventStream => _eventController.stream;

  void selectPage(PageSelectType page) {
    _state = state.copyWith(
      curPage: page,
    );
    notifyListeners();
  }

  void removeMenu() {
    _eventController.add(const RootUiEvent.menuTab());
  }
}
