import 'package:insta_coin/domain/model/inc/inc_data.dart';

abstract class IncRepository {
  List<IncData> getIncData();
}