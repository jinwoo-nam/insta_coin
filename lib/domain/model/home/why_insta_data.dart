import 'package:json_annotation/json_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'why_insta_data.freezed.dart';
part 'why_insta_data.g.dart';

@freezed
class WhyInstaData with _$WhyInstaData {
  factory WhyInstaData({
    @Default('') String imageUrl,
    @Default('') String title,
    @Default('') String content,
  }) = _WhyInstaData;
  factory WhyInstaData.fromJson(Map<String, dynamic> json) => _$WhyInstaDataFromJson(json);
}