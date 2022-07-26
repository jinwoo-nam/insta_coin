import 'package:insta_coin/domain/model/media/article_data.dart';
import 'package:insta_coin/domain/model/media/column_data.dart';
import 'package:insta_coin/domain/model/media/events_data.dart';

abstract class ArticleRepository {
  List<ArticleData> getArticle();

  List<ArticleData> getColumn();

  List<EventsData> getEvents();

  List<ColumnData> getCoinColumns();

  List<ColumnData> getCoinArticles();
}
