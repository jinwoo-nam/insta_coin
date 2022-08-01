import 'package:insta_coin/domain/model/get_coin/get_coin_user_info.dart';

abstract class GetCoinRepository {
  Future<void> saveUserInfo(String email, String ethereumAddress);

  Future<GetCoinUserInfo> getUserInfo();

  Future<void> deleteUserInfo();
}
