import 'package:flutter/material.dart';
import 'package:insta_coin/domain/use_case/media/get_article_use_case.dart';
import 'package:insta_coin/domain/use_case/media/get_coin_article_column_use_case.dart';
import 'package:insta_coin/domain/use_case/media/get_column_use_case.dart';
import 'package:insta_coin/domain/use_case/media/get_events_use_case.dart';
import 'package:insta_coin/presentation/media/media_state.dart';

class MediaViewModel with ChangeNotifier {
  final GetArticleUseCase getArticle;
  final GetColumnUseCase getColumn;
  final GetEventsUseCase getEvents;
  final GetCoinArticleColumnUseCase getArticleColumn;

  MediaViewModel({
    required this.getArticle,
    required this.getColumn,
    required this.getEvents,
    required this.getArticleColumn,
  }) {
    getMediaData();
  }

  MediaState _state = MediaState();

  MediaState get state => _state;

  void getMediaData() {
    final articles = getArticle();
    final columns = getColumn();
    final events = getEvents();
    final coinColumn = getArticleColumn.getCoinColumns();
    final coinArticle = getArticleColumn.getCoinArticles();

    _state = state.copyWith(
      articles: articles,
      columns: columns,
      events: events,
      coinColumns: coinColumn,
      coinArticles: coinArticle,
    );

    notifyListeners();
  }
}
