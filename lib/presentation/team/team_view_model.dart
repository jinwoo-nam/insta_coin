import 'package:flutter/material.dart';
import 'package:insta_coin/domain/use_case/team/get_team_data_use_case.dart';
import 'package:insta_coin/presentation/team/team_state.dart';

class TeamViewModel with ChangeNotifier {
  final GetTeamDataUseCase getTeam;

  TeamViewModel({
    required this.getTeam,
  }) {
    getTeamData();
  }

  TeamState _state = TeamState();

  TeamState get state => _state;

  void getTeamData() {
    _state = state.copyWith(
      teams: getTeam.getTeamData(),
      games: getTeam.getGameData(),
      o2os: getTeam.getO2oData(),
      ips: getTeam.getIpData(),
      techs: getTeam.getTechData(),
    );
    notifyListeners();
  }
}
