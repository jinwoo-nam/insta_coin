import 'package:insta_coin/domain/model/temp/temp_data.dart';
import 'package:insta_coin/domain/repository/temp_repository.dart';

class GetTempDataUseCase {
  TempRepository repository;

  GetTempDataUseCase(this.repository);

  List<TempData> call() {
    return repository.getTempData();
  }
}