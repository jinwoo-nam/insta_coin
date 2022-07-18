import 'package:insta_coin/data/data_source/team_data_source.dart';
import 'package:insta_coin/domain/model/team/team_data.dart';
import 'package:insta_coin/domain/repository/team_repository.dart';

class TeamRepositoryImpl implements TeamRepository {
  final dataSource = TeamDataSource();

  @override
  List<TeamData> getTeamData() {
    return dataSource.getTeamData();
  }

  @override
  List<TeamData> getGameData() {
    return dataSource.getGameData();
  }

  @override
  List<TeamData> getO2oData() {
    return dataSource.getO2oData();
  }

  @override
  List<TeamData> getIpData() {
    return dataSource.getIpData();
  }

  @override
  List<TeamData> getTechData() {
    return dataSource.getTechData();
  }
}
