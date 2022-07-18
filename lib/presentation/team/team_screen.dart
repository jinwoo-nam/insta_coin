import 'package:flutter/material.dart';
import 'package:insta_coin/domain/model/team/team_data.dart';
import 'package:insta_coin/presentation/team/components/advisor_grid_widget.dart';
import 'package:insta_coin/presentation/team/components/team_grid_widget.dart';
import 'package:insta_coin/presentation/team/team_state.dart';
import 'package:insta_coin/presentation/team/team_view_model.dart';
import 'package:insta_coin/responsive/responsive.dart';
import 'package:provider/provider.dart';

class TeamScreen extends StatefulWidget {
  const TeamScreen({Key? key}) : super(key: key);

  @override
  State<TeamScreen> createState() => _TeamScreenState();
}

class _TeamScreenState extends State<TeamScreen> {
  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<TeamViewModel>();
    final state = viewModel.state;

    return SafeArea(
      child: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color(0xff253444), Color.fromRGBO(24, 61, 96, 0.65)],
            ),
          ),
          alignment: Alignment.center,
          child: SizedBox(
            width: 1550,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 80.0,
                horizontal: 40,
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
                    buildTeamWidget(context, state),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 80.0),
                      child: RichText(
                        text: const TextSpan(
                          style: TextStyle(
                            fontSize: 45.0,
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            height: 1.4,
                          ),
                          children: [
                            TextSpan(
                              text: 'PLATFORM',
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                color: Color.fromRGBO(153, 238, 239, 0.94),
                              ),
                            ),
                            TextSpan(text: ' ADVISORS'),
                          ],
                        ),
                      ),
                    ),
                    const Text(
                      'Game',
                      style: TextStyle(
                        color: Color.fromRGBO(162, 238, 239, 0.94),
                        fontSize: 25,
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    buildAdvisorWidget(context, state.games),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 40.0),
                      child: Text(
                        'O2O Commerce & Donation',
                        style: TextStyle(
                          color: Color.fromRGBO(162, 238, 239, 0.94),
                          fontSize: 25,
                        ),
                      ),
                    ),
                    buildAdvisorWidget(context, state.o2os),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 40.0),
                      child: Text(
                        'IP & Creative',
                        style: TextStyle(
                          color: Color.fromRGBO(162, 238, 239, 0.94),
                          fontSize: 25,
                        ),
                      ),
                    ),
                    buildAdvisorWidget(context, state.ips),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 80.0),
                      child: RichText(
                        text: const TextSpan(
                          style: TextStyle(
                            fontSize: 45.0,
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            height: 1.4,
                          ),
                          children: [
                            TextSpan(
                              text: 'TECHNICAL & STRATEGIC',
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                color: Color.fromRGBO(153, 238, 239, 0.94),
                              ),
                            ),
                            TextSpan(text: ' ADVISORS'),
                          ],
                        ),
                      ),
                    ),
                    buildAdvisorWidget(context, state.techs),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Column buildAdvisorWidget(BuildContext context, List<TeamData> advisorList) {
    return Column(
      children: [
        if (Responsive.isDesktop(context))
          AdvisorGridWidget(
            teamDataList: advisorList,
            crossAxisCount: 4,
            childAspectRatio: 1 / 2,
            sizedWidth: null,
          ),
        if (Responsive.isTablet(context))
          AdvisorGridWidget(
            teamDataList: advisorList,
            crossAxisCount: 2,
            childAspectRatio: 1 / 1.1,
            sizedWidth: null,
          ),
        if (Responsive.isMobile(context))
          AdvisorGridWidget(
            teamDataList: advisorList,
            crossAxisCount: 1,
            childAspectRatio: 1 / 1.3,
            sizedWidth: 400,
          ),
      ],
    );
  }

  Column buildTeamWidget(BuildContext context, TeamState state) {
    return Column(
      children: [
        if (Responsive.isDesktop(context))
          TeamGridWidget(
            teamDataList: state.teams,
            crossAxisCount: 4,
            childAspectRatio: 1 / 2,
            sizedWidth: null,
          ),
        if (Responsive.isTablet(context))
          TeamGridWidget(
            teamDataList: state.teams,
            crossAxisCount: 2,
            childAspectRatio: 1 / 1.1,
            sizedWidth: null,
          ),
        if (Responsive.isMobile(context))
          TeamGridWidget(
            teamDataList: state.teams,
            crossAxisCount: 1,
            childAspectRatio: 1 / 1.3,
            sizedWidth: 400,
          ),
      ],
    );
  }
}
