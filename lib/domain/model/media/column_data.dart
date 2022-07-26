import 'package:json_annotation/json_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'column_data.freezed.dart';
part 'column_data.g.dart';

@freezed
class ColumnData with _$ColumnData {
  factory ColumnData({
    @Default('') String title,
    @Default('') String date,
    @Default('') String articleUrl,
  }) = _ColumnData;
  factory ColumnData.fromJson(Map<String, dynamic> json) => _$ColumnDataFromJson(json);
}