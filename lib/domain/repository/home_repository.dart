import 'package:insta_coin/domain/model/home/papps_data.dart';
import 'package:insta_coin/domain/model/home/why_insta_data.dart';

abstract class HomeRepository {
  List<WhyInstaData> getWhyInstaData();
  List<PappsData> getPappsData();
}
