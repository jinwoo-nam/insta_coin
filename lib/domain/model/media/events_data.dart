import 'package:json_annotation/json_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'events_data.freezed.dart';
part 'events_data.g.dart';

@freezed
class EventsData with _$EventsData {
  factory EventsData({
    required String title,
    required String imageUrl,
    required String articleUrl,
    required String date,
    required List<String> logos,
    String? sponsor,
  }) = _EventsData;
  factory EventsData.fromJson(Map<String, dynamic> json) => _$EventsDataFromJson(json);
}