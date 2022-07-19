import 'package:insta_coin/domain/model/home/papps_data.dart';

abstract class PappsRepository {
  List<PappsData> getPappsData();
}
