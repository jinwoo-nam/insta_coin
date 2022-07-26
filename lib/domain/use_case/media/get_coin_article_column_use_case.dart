import 'package:insta_coin/domain/model/media/column_data.dart';
import 'package:insta_coin/domain/repository/article_repository.dart';

class GetCoinArticleColumnUseCase {
  ArticleRepository repository;

  GetCoinArticleColumnUseCase(this.repository);

  List<ColumnData> getCoinColumns() {
    return repository.getCoinColumns();
  }

  List<ColumnData> getCoinArticles() {
    return repository.getCoinArticles();
  }
}
