import 'package:insta_coin/domain/model/inc/inc_data.dart';
import 'package:insta_coin/domain/repository/inc_repository.dart';

class GetIncDataUseCase {
  IncRepository repository;

  GetIncDataUseCase(this.repository);

  List<IncData> call() {
    return repository.getIncData();
  }
}