import 'package:insta_coin/domain/model/team/team_data.dart';
import 'package:insta_coin/domain/repository/team_repository.dart';

class GetTeamDataUseCase {
  TeamRepository repository;

  GetTeamDataUseCase(this.repository);

  List<TeamData> getTeamData() {
    return repository.getTeamData();
  }

  List<TeamData> getGameData() {
    return repository.getGameData();
  }

  List<TeamData> getO2oData() {
    return repository.getO2oData();
  }

  List<TeamData> getIpData() {
    return repository.getIpData();
  }

  List<TeamData> getTechData() {
    return repository.getTechData();
  }
}
