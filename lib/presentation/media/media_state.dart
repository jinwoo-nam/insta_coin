import 'package:insta_coin/domain/model/media/article_data.dart';
import 'package:insta_coin/domain/model/media/events_data.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'media_state.freezed.dart';
part 'media_state.g.dart';

@freezed
class MediaState with _$MediaState {
  factory MediaState({
    @Default([]) List<ArticleData> articles,
    @Default([]) List<ArticleData> columns,
    @Default([]) List<EventsData> events,
  }) = _MediaState;
  factory MediaState.fromJson(Map<String, dynamic> json) => _$MediaStateFromJson(json);
}