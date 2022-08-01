import 'package:json_annotation/json_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'get_coin_user_info.freezed.dart';
part 'get_coin_user_info.g.dart';

@freezed
class GetCoinUserInfo with _$GetCoinUserInfo {
  factory GetCoinUserInfo({
    @Default('') String email,
    @Default('') String ethereumAddress,
  }) = _GetCoinUserInfo;
  factory GetCoinUserInfo.fromJson(Map<String, dynamic> json) => _$GetCoinUserInfoFromJson(json);
}