import 'package:flutter/material.dart';
import 'package:insta_coin/domain/use_case/media/get_article_use_case.dart';
import 'package:insta_coin/domain/use_case/media/get_column_use_case.dart';
import 'package:insta_coin/domain/use_case/media/get_events_use_case.dart';
import 'package:insta_coin/presentation/media/media_state.dart';

class MediaViewModel with ChangeNotifier {
  final GetArticleUseCase getArticle;
  final GetColumnUseCase getColumn;
  final GetEventsUseCase getEvents;

  MediaViewModel({
    required this.getArticle,
    required this.getColumn,
    required this.getEvents,
  }) {
    getMediaData();
  }

  MediaState _state = MediaState();

  MediaState get state => _state;

  void getMediaData() {
    final articles = getArticle();
    final columns = getColumn();
    final events = getEvents();

    _state = state.copyWith(
      articles: articles,
      columns: columns,
      events: events,
    );

    notifyListeners();
  }
}
