import 'package:insta_coin/domain/model/home/papps_data.dart';
import 'package:insta_coin/domain/repository/papps_repository.dart';

class GetPappsUseCase {
  PappsRepository repository;

  GetPappsUseCase(this.repository);

  List<PappsData> call() {
    return repository.getPappsData();
  }
}
