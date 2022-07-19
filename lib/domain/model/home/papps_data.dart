import 'package:json_annotation/json_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'papps_data.freezed.dart';
part 'papps_data.g.dart';

@freezed
class PappsData with _$PappsData {
  factory PappsData({
    @Default('') String imageUrl,
    @Default('') String title,
    @Default('') String content,
    @Default(0) int index,
  }) = _PappsData;
  factory PappsData.fromJson(Map<String, dynamic> json) => _$PappsDataFromJson(json);
}