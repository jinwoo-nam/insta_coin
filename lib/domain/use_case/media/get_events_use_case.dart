import 'package:insta_coin/domain/model/media/events_data.dart';
import 'package:insta_coin/domain/repository/article_repository.dart';

class GetEventsUseCase {
  ArticleRepository repository;

  GetEventsUseCase(this.repository);

  List<EventsData> call() {
    return repository.getEvents();
  }
}
