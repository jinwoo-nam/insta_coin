import 'package:flutter/material.dart';
import 'package:insta_coin/domain/use_case/papps/get_papps_use_case.dart';
import 'package:insta_coin/presentation/papps/papps_state.dart';

class PappsViewModel with ChangeNotifier {
  GetPappsUseCase getPappsData;

  PappsViewModel({
    required this.getPappsData,
  }) {
    fetchData();
  }

  PappsState _state = PappsState();

  PappsState get state => _state;

  void fetchData() {
    final pappsData = getPappsData();

    _state = state.copyWith(
      papps: pappsData,
    );

    notifyListeners();
  }
}
