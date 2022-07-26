import 'package:insta_coin/data/data_source/media_data_source.dart';
import 'package:insta_coin/domain/model/media/article_data.dart';
import 'package:insta_coin/domain/model/media/column_data.dart';
import 'package:insta_coin/domain/model/media/events_data.dart';
import 'package:insta_coin/domain/repository/article_repository.dart';

class ArticleRepositoryImpl implements ArticleRepository {
  final dataSource = MediaDataSource();

  @override
  List<ArticleData> getArticle() {
    return dataSource.getArticle();
  }

  @override
  List<ArticleData> getColumn() {
    return dataSource.getColumn();
  }

  @override
  List<EventsData> getEvents() {
    return dataSource.getEvents();
  }

  @override
  List<ColumnData> getCoinArticles() {
   return dataSource.getCoinArticles();
  }

  @override
  List<ColumnData> getCoinColumns() {
    return dataSource.getCoinColumns();
  }
}
