import 'package:insta_coin/domain/model/temp/temp_data.dart';

abstract class TempRepository {
  List<TempData> getTempData();
}