import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class GetCoinDataSource {
  final secureStorage = const FlutterSecureStorage();

  Future<String> loadUserEmail() async {
    return await secureStorage.read(key: 'user_email') ?? '';
  }

  Future<void> saveUserEmail(String email) async {
    await secureStorage.write(key: 'user_email', value: email);
  }

  Future<void> deleteUserEmail() async {
    await secureStorage.delete(key: 'user_email');
  }

  Future<String> loadUserEthereumAddress() async {
    return await secureStorage.read(key: 'user_ethereum_address') ?? '';
  }

  Future<void> saveUserEthereumAddress(String address) async {
    await secureStorage.write(key: 'user_ethereum_address', value: address);
  }

  Future<void> deleteUserEthereumAddress() async {
    await secureStorage.delete(key: 'user_ethereum_address');
  }
}
