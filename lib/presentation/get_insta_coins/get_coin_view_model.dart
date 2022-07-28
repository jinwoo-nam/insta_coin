import 'package:flutter/material.dart';
import 'package:insta_coin/presentation/get_insta_coins/get_coin_state.dart';

class GetCoinViewModel with ChangeNotifier {
  GetCoinState _state = GetCoinState();

  GetCoinState get state => _state;

  void saveUserInfo(String email, String ethereumAddress) {
    _state = state.copyWith(
      userEmail: email,
      userEthereumAdress: ethereumAddress,
    );
  }
}
