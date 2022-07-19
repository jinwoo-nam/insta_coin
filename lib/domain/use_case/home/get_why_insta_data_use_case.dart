import 'package:insta_coin/domain/model/home/why_insta_data.dart';
import 'package:insta_coin/domain/repository/home_repository.dart';

class GetWhyInstaDataUseCase {
  HomeRepository repository;

  GetWhyInstaDataUseCase(this.repository);

  List<WhyInstaData> call() {
    return repository.getWhyInstaData();
  }
}
