import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:insta_coin/domain/use_case/get_coin/get_coin_use_case.dart';
import 'package:insta_coin/presentation/get_insta_coins/get_coin_state.dart';

class GetCoinViewModel with ChangeNotifier {
  final GetCoinUseCase getCoin;

  GetCoinViewModel({
    required this.getCoin,
  });

  GetCoinState _state = GetCoinState();

  GetCoinState get state => _state;

  Future<void> saveUserInfo(String email, String ethereumAddress) async {
    await getCoin.saveUserInfo(email, ethereumAddress);
  }

  Future<void> getUserInfo() async {
    final info = await getCoin.getUserInfo();

    _state = state.copyWith(
      userEmail: info.email,
      userEthereumAdress: info.ethereumAddress,
    );
    notifyListeners();
  }

  Future<void> deleteUserInfo() async {
    await getCoin.deleteUserInfo();
  }

  Future<DocumentReference> saveUserInfoToFireStore() async {
    return FirebaseFirestore.instance
        .collection('get_coin_user_info')
        .add(<String, dynamic>{
      'email': state.userEmail,
      'ethereumAddress': state.userEthereumAdress,
      'timestamp': DateTime.now().millisecondsSinceEpoch,
    });
  }
}
