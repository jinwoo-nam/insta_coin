import 'package:flutter/material.dart';
import 'package:insta_coin/presentation/team/components/team_loader.dart';
import 'package:insta_coin/responsive/responsive.dart';
import 'package:insta_coin/util/util.dart';

class TeamOverlayWidget extends StatefulWidget {
  const TeamOverlayWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<TeamOverlayWidget> createState() => _TeamOverlayWidgetState();
}

class _TeamOverlayWidgetState extends State<TeamOverlayWidget> {
  ScrollController controller = ScrollController();

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
      valueListenable: TeamLoader.appLoader.loaderShowingNotifier,
      builder: (context, value, child) {
        if (value) {
          return Center(
            child: Container(
              decoration: BoxDecoration(color: Colors.black.withOpacity(0.8)),
              alignment: Alignment.center,
              child: Material(
                type: MaterialType.transparency,
                child: Container(
                  padding: EdgeInsets.all(20),
                  width: (Responsive.isDesktop(context))
                      ? (MediaQuery.of(context).size.width / 3) + 40
                      : MediaQuery.of(context).size.width * 0.8,
                  height: 500,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(244, 249, 249, 1.00),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Stack(
                    children: [
                      SingleChildScrollView(
                        controller: controller,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.transparent,
                              radius: 70,
                              backgroundImage: ExactAssetImage(
                                TeamLoader.appLoader.teamData.imageUrl,
                              ),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Text(
                              TeamLoader.appLoader.teamData.name,
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 22,
                              ),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Text(
                              TeamLoader.appLoader.teamData.content,
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w300,
                                height: 1.5,
                                wordSpacing: 1.5,
                              ),
                            ),
                            if (TeamLoader.appLoader.teamData.name ==
                                'Jaekwang Bae')
                              Row(
                                children: [
                                  Text(
                                    'See Jaekwang Bae’s profile ',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w300,
                                      height: 1.5,
                                      wordSpacing: 1.5,
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      launchURL(
                                          'https://www.instacoins.io/wp-content/uploads/2018/08/Jaekwang-Bae-ProfileKOR.pdf');
                                    },
                                    child: Text(
                                      'here.',
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w300,
                                        decoration: TextDecoration.underline,
                                        color: Color.fromRGBO(48, 191, 193, 0.79),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                          ],
                        ),
                      ),
                      Positioned(
                        right: 0,
                        child: InkWell(
                          onTap: () {
                            TeamLoader.appLoader.hideLoader();
                          },
                          child: const Icon(
                            Icons.close,
                            size: 50,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        } else {
          return Container();
        }
      },
    );
  }
}
