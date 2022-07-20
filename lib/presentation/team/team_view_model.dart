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
      newAdvisor: getTeam.getNewAdvisor(),
    );
    notifyListeners();
  }
}
