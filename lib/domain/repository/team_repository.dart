import 'package:insta_coin/domain/model/team/team_data.dart';

abstract class TeamRepository {
  List<TeamData> getTeamData();

  List<TeamData> getGameData();

  List<TeamData> getO2oData();

  List<TeamData> getIpData();

  List<TeamData> getTechData();
}
