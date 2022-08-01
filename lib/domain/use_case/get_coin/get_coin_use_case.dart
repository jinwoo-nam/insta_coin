import 'package:insta_coin/domain/model/get_coin/get_coin_user_info.dart';
import 'package:insta_coin/domain/repository/get_coin_repository.dart';

class GetCoinUseCase {
  GetCoinRepository repository;

  GetCoinUseCase(this.repository);

  Future<void> saveUserInfo(String email, String ethereumAddress) async {
    await repository.saveUserInfo(email, ethereumAddress);
  }

  Future<GetCoinUserInfo> getUserInfo() async {
    return await repository.getUserInfo();
  }

  Future<void> deleteUserInfo() async {
    await repository.deleteUserInfo();
  }
}
