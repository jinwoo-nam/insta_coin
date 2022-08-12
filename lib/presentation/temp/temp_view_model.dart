import 'package:flutter/material.dart';
import 'package:insta_coin/domain/use_case/temp/get_temp_data_use_case.dart';
import 'package:insta_coin/presentation/temp/temp_state.dart';

class TempViewModel with ChangeNotifier {
  final GetTempDataUseCase getTemp;

  TempViewModel({
    required this.getTemp,
  }) {
    fetchData();
  }

  TempState _state = TempState();

  TempState get state => _state;

  void fetchData() {
    final data = getTemp();

    _state = state.copyWith(
      tempData: data,
    );

    notifyListeners();
  }
}
