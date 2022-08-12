import 'package:json_annotation/json_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'inc_data.freezed.dart';
part 'inc_data.g.dart';

@freezed
class IncData with _$IncData {
  factory IncData({
    @Default('') String imageUrl,
    @Default('') String content,
    @Default(0) int index,
  }) = _IncData;
  factory IncData.fromJson(Map<String, dynamic> json) => _$IncDataFromJson(json);
}