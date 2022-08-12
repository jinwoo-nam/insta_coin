import 'package:flutter/material.dart';
import 'package:insta_coin/domain/use_case/inc/get_inc_data_use_case.dart';
import 'package:insta_coin/presentation/inc/inc_state.dart';

class IncViewModel with ChangeNotifier {
  final GetIncDataUseCase getInc;

  IncViewModel({
    required this.getInc,
  }) {
    fetchData();
  }

  IncState _state = IncState();

  IncState get state => _state;

  void fetchData() {
    final data = getInc();

    _state = state.copyWith(
      incData: data,
    );

    notifyListeners();
  }
}
