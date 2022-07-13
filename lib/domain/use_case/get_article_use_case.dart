import 'package:insta_coin/domain/model/media/article_data.dart';
import 'package:insta_coin/domain/repository/article_repository.dart';

class GetArticleUseCase {
  ArticleRepository repository;

  GetArticleUseCase(this.repository);

  List<ArticleData> call() {
    return repository.getArticle();
  }
}
