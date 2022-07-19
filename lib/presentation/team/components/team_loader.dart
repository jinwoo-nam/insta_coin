import 'package:flutter/material.dart';
import 'package:insta_coin/domain/model/team/team_data.dart';

class TeamLoader {
  static final TeamLoader appLoader = TeamLoader();
  ValueNotifier<bool> loaderShowingNotifier = ValueNotifier(false);
  ValueNotifier<String> loaderTextNotifier = ValueNotifier('error message');
  late TeamData teamData;

  void showLoader(TeamData data) {
    loaderShowingNotifier.value = true;
    teamData = data.copyWith();
  }

  void hideLoader() {
    loaderShowingNotifier.value = false;
  }

  void setImage() {
    // same as that of setText //
  }
}
