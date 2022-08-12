import 'package:json_annotation/json_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'temp_data.freezed.dart';
part 'temp_data.g.dart';

@freezed
class TempData with _$TempData {
  factory TempData({
    @Default('') String imageUrl,
    @Default('') String content,
    @Default(0) int index,
  }) = _TempData;
  factory TempData.fromJson(Map<String, dynamic> json) => _$TempDataFromJson(json);
}