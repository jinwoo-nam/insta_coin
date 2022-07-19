import 'package:insta_coin/domain/model/home/papps_data.dart';
import 'package:insta_coin/domain/repository/home_repository.dart';

class GetPappsMainUseCase {
  HomeRepository repository;

  GetPappsMainUseCase(this.repository);

  List<PappsData> call() {
    return repository.getPappsData();
  }
}
