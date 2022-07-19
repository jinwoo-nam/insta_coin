import 'package:insta_coin/data/data_source/home_data_source.dart';
import 'package:insta_coin/domain/model/home/papps_data.dart';
import 'package:insta_coin/domain/model/home/why_insta_data.dart';
import 'package:insta_coin/domain/repository/home_repository.dart';

class HomeRepositoryImpl implements HomeRepository {
  final dataSource = HomeDataSource();

  @override
  List<WhyInstaData> getWhyInstaData() {
    return dataSource.getWhyInstaData();
  }

  @override
  List<PappsData> getPappsData() {
    return dataSource.getPappsData();
  }
}
