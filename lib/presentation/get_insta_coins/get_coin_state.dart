import 'package:json_annotation/json_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'get_coin_state.freezed.dart';
part 'get_coin_state.g.dart';

@freezed
class GetCoinState with _$GetCoinState {
  factory GetCoinState({
    @Default('') String userEmail,
    @Default('') String userEthereumAdress,
  }) = _GetCoinState;
  factory GetCoinState.fromJson(Map<String, dynamic> json) => _$GetCoinStateFromJson(json);
}