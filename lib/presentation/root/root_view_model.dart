import 'package:flutter/material.dart';
import 'package:insta_coin/presentation/root/root_state.dart';

class RootViewModel with ChangeNotifier {
  RootState _state = RootState();

  RootState get state => _state;

  void selectPage(PageSelectType page) {
    _state = state.copyWith(
      curPage: page,
    );
    notifyListeners();
  }
}
