import 'package:insta_coin/data/data_source/get_coin_data_source.dart';
import 'package:insta_coin/domain/model/get_coin/get_coin_user_info.dart';
import 'package:insta_coin/domain/repository/get_coin_repository.dart';

class GetCoinRepositoryImpl implements GetCoinRepository {
  final dataSource = GetCoinDataSource();

  @override
  Future<GetCoinUserInfo> getUserInfo() async {
    String email = await dataSource.loadUserEmail();
    String address = await dataSource.loadUserEthereumAddress();

    return GetCoinUserInfo(
      email: email,
      ethereumAddress: address,
    );
  }

  @override
  Future<void> saveUserInfo(String email, String ethereumAddress) async {
    await dataSource.saveUserEmail(email);
    await dataSource.saveUserEthereumAddress(ethereumAddress);
  }

  @override
  Future<void> deleteUserInfo() async {
    await dataSource.deleteUserEmail();
    await dataSource.deleteUserEthereumAddress();
  }
}
