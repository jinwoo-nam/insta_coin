import 'package:insta_coin/domain/model/media/article_data.dart';
import 'package:insta_coin/domain/repository/article_repository.dart';

class GetColumnUseCase {
  ArticleRepository repository;

  GetColumnUseCase(this.repository);

  List<ArticleData> call() {
    return repository.getColumn();
  }
}
