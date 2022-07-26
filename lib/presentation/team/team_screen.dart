import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:insta_coin/presentation/common_widget/app_bar_widget.dart';
import 'package:insta_coin/presentation/common_widget/floating_action_button_widget.dart';
import 'package:insta_coin/presentation/common_widget/footer_widget.dart';
import 'package:insta_coin/presentation/common_widget/overlay_menu.dart';
import 'package:insta_coin/presentation/team/components/advisor_card_widget.dart';
import 'package:insta_coin/presentation/team/components/new_advisor_card_widget.dart';
import 'package:insta_coin/presentation/team/components/team_card_widget.dart';
import 'package:insta_coin/presentation/team/team_state.dart';
import 'package:insta_coin/presentation/team/team_view_model.dart';
import 'package:insta_coin/responsive/responsive.dart';
import 'package:provider/provider.dart';

class TeamScreen extends StatefulWidget {
  const TeamScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<TeamScreen> createState() => _TeamScreenState();
}

class _TeamScreenState extends State<TeamScreen> {
  final OverlayMenu menu = OverlayMenu(
    type: PageSelectType.team,
  );

  @override
  void initState() {
    _setCurScreenToAnalytics();
    menu.context = context;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<TeamViewModel>();
    final state = viewModel.state;

    return GestureDetector(
      onTap: () {
        if (menu.isActive) {
          menu.removeMenu();
        }
      },
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(75),
          child: AppbarWidget(
            type: PageSelectType.team,
            menu: menu,
          ),
        ),
        floatingActionButton: FloatingActionButtonWidget(),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(0xff253444),
                        Color.fromRGBO(24, 61, 96, 0.65)
                      ],
                    ),
                  ),
                  alignment: Alignment.center,
                  child: SizedBox(
                    width: 1550,
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 80.0,
                        horizontal: Responsive.isMobile(context) ? 20 : 40,
                      ),
                      child: Center(
                        child: Column(
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(bottom: 70.0),
                              child: Text(
                                'TEAM',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 45,
                                ),
                              ),
                            ),
                            buildTeam(context, state),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 80.0),
                              child: Text(
                                'ADVISOR',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 45,
                                ),
                              ),
                            ),
                            buildNewAdvisor(context, state),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                FooterWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildTeam(BuildContext context, TeamState state) {
    return Column(
      children: [
        if (Responsive.isDesktop(context))
          Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ...state.teams.where((element) => element.index < 4).map((e) {
                    return Expanded(
                      child: TeamCardWidget(
                        data: e,
                      ),
                    );
                  }).toList(),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ...state.teams.where((element) => element.index > 3).map((e) {
                    return Expanded(
                      child: TeamCardWidget(
                        data: e,
                      ),
                    );
                  }).toList(),
                ],
              ),
            ],
          ),
        if (Responsive.isTablet(context))
          Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ...state.teams.where((element) => element.index < 2).map((e) {
                    return Expanded(
                      child: TeamCardWidget(
                        data: e,
                      ),
                    );
                  }).toList(),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ...state.teams
                      .where(
                          (element) => element.index > 1 && element.index < 4)
                      .map((e) {
                    return Expanded(
                      child: TeamCardWidget(
                        data: e,
                      ),
                    );
                  }).toList(),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ...state.teams
                      .where(
                          (element) => element.index > 3 && element.index < 6)
                      .map((e) {
                    return Expanded(
                      child: TeamCardWidget(
                        data: e,
                      ),
                    );
                  }).toList(),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ...state.teams.where((element) => element.index > 5).map((e) {
                    return Expanded(
                      child: TeamCardWidget(
                        data: e,
                      ),
                    );
                  }).toList(),
                ],
              ),
            ],
          ),
        if (Responsive.isMobile(context))
          SizedBox(
            width: 400,
            child: Column(
              children: [
                ...state.teams.map((e) {
                  return TeamCardWidget(
                    data: e,
                  );
                }).toList(),
              ],
            ),
          ),
      ],
    );
  }

  Widget buildGame(BuildContext context, TeamState state) {
    return Column(
      children: [
        if (Responsive.isDesktop(context))
          Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ...state.games.map((e) {
                    return Expanded(
                      child: AdvisorCardWidget(
                        data: e,
                      ),
                    );
                  }).toList(),
                  Expanded(
                    child: Container(),
                  ),
                  Expanded(
                    child: Container(),
                  ),
                ],
              ),
            ],
          ),
        if (Responsive.isTablet(context))
          Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ...state.games.map((e) {
                    return Expanded(
                      child: AdvisorCardWidget(
                        data: e,
                      ),
                    );
                  }).toList(),
                ],
              ),
            ],
          ),
        if (Responsive.isMobile(context))
          SizedBox(
            width: 400,
            child: Column(
              children: [
                ...state.games.map((e) {
                  return AdvisorCardWidget(
                    data: e,
                  );
                }).toList(),
              ],
            ),
          ),
      ],
    );
  }

  Widget buildO2o(BuildContext context, TeamState state) {
    return Column(
      children: [
        if (Responsive.isDesktop(context))
          Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ...state.o2os.map((e) {
                    return Expanded(
                      child: AdvisorCardWidget(
                        data: e,
                      ),
                    );
                  }).toList(),
                ],
              ),
            ],
          ),
        if (Responsive.isTablet(context))
          Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ...state.o2os.where((element) => element.index < 2).map((e) {
                    return Expanded(
                      child: AdvisorCardWidget(
                        data: e,
                      ),
                    );
                  }).toList(),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ...state.o2os
                      .where(
                          (element) => element.index > 1 && element.index < 4)
                      .map((e) {
                    return Expanded(
                      child: AdvisorCardWidget(
                        data: e,
                      ),
                    );
                  }).toList(),
                ],
              ),
            ],
          ),
        if (Responsive.isMobile(context))
          SizedBox(
            width: 400,
            child: Column(
              children: [
                ...state.o2os.map((e) {
                  return AdvisorCardWidget(
                    data: e,
                  );
                }).toList(),
              ],
            ),
          ),
      ],
    );
  }

  Widget buildIp(BuildContext context, TeamState state) {
    return Column(
      children: [
        if (Responsive.isDesktop(context))
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ...state.ips.map((e) {
                return Expanded(
                  child: AdvisorCardWidget(
                    data: e,
                  ),
                );
              }).toList(),
              Expanded(child: Container()),
              Expanded(child: Container()),
              Expanded(child: Container()),
            ],
          ),
        if (Responsive.isTablet(context))
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ...state.ips.map((e) {
                return Expanded(
                  child: AdvisorCardWidget(
                    data: e,
                  ),
                );
              }).toList(),
              Expanded(child: Container()),
            ],
          ),
        if (Responsive.isMobile(context))
          SizedBox(
            width: 400,
            child: Column(
              children: [
                ...state.ips.map((e) {
                  return AdvisorCardWidget(
                    data: e,
                  );
                }).toList(),
              ],
            ),
          ),
      ],
    );
  }

  Widget buildTech(BuildContext context, TeamState state) {
    return Column(
      children: [
        if (Responsive.isDesktop(context))
          Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ...state.techs.map((e) {
                    return Expanded(
                      child: AdvisorCardWidget(
                        data: e,
                      ),
                    );
                  }).toList(),
                  Expanded(child: Container()),
                  Expanded(child: Container()),
                ],
              ),
            ],
          ),
        if (Responsive.isTablet(context))
          Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ...state.techs.map((e) {
                    return Expanded(
                      child: AdvisorCardWidget(
                        data: e,
                      ),
                    );
                  }).toList(),
                ],
              ),
            ],
          ),
        if (Responsive.isMobile(context))
          SizedBox(
            width: 400,
            child: Column(
              children: [
                ...state.techs.map((e) {
                  return AdvisorCardWidget(
                    data: e,
                  );
                }).toList(),
              ],
            ),
          ),
      ],
    );
  }

  Widget buildNewAdvisor(BuildContext context, TeamState state) {
    return Column(
      children: [
        if (Responsive.isDesktop(context))
          Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ...state.newAdvisor
                      .where((element) => element.index < 4)
                      .map((e) {
                    return Expanded(
                      child: NewAdvisorCardWidget(
                        data: e,
                      ),
                    );
                  }).toList(),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ...state.newAdvisor
                      .where((element) => element.index > 3)
                      .map((e) {
                    return Expanded(
                      child: NewAdvisorCardWidget(
                        data: e,
                      ),
                    );
                  }).toList(),
                  Expanded(child: Container()),
                  Expanded(child: Container()),
                ],
              ),
            ],
          ),
        if (Responsive.isTablet(context))
          Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ...state.newAdvisor
                      .where((element) => element.index < 2)
                      .map((e) {
                    return Expanded(
                      child: NewAdvisorCardWidget(
                        data: e,
                      ),
                    );
                  }).toList(),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ...state.newAdvisor
                      .where(
                          (element) => element.index > 1 && element.index < 4)
                      .map((e) {
                    return Expanded(
                      child: NewAdvisorCardWidget(
                        data: e,
                      ),
                    );
                  }).toList(),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ...state.newAdvisor
                      .where(
                          (element) => element.index > 3 && element.index < 6)
                      .map((e) {
                    return Expanded(
                      child: NewAdvisorCardWidget(
                        data: e,
                      ),
                    );
                  }).toList(),
                ],
              ),
            ],
          ),
        if (Responsive.isMobile(context))
          SizedBox(
            width: 400,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ...state.newAdvisor.map((e) {
                  return NewAdvisorCardWidget(
                    data: e,
                  );
                }).toList(),
              ],
            ),
          ),
      ],
    );
  }

  void _setCurScreenToAnalytics() async {
    await FirebaseAnalytics.instance.logEvent(
      name: 'Team_Screen_view',
    );
  }
}
