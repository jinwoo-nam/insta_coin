import 'package:insta_coin/data/data_source/papps_dadta_source.dart';
import 'package:insta_coin/domain/model/home/papps_data.dart';
import 'package:insta_coin/domain/repository/papps_repository.dart';

class PappsRepositoryImpl implements PappsRepository {
  final dataSource = PappsDataSource();

  @override
  List<PappsData> getPappsData() {
    return dataSource.getPappsData();
  }
}
