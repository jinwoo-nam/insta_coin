import 'package:flutter/material.dart';
import 'package:insta_coin/domain/use_case/home/get_papps_main_use_case.dart';
import 'package:insta_coin/domain/use_case/home/get_why_insta_data_use_case.dart';
import 'package:insta_coin/presentation/home/home_state.dart';

class HomeViewModel with ChangeNotifier {
  GetWhyInstaDataUseCase getWhyInstaData;
  GetPappsMainUseCase getPappsData;

  HomeViewModel({
    required this.getWhyInstaData,
    required this.getPappsData,
  }) {
    fetchData();
  }

  HomeState _state = HomeState();

  HomeState get state => _state;

  void fetchData() {
    final whyInstaData = getWhyInstaData();
    final pappsData = getPappsData();

    _state = state.copyWith(
      whyInsta: whyInstaData,
      papps: pappsData,
    );

    notifyListeners();
  }
}
