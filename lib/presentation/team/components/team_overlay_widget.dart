import 'package:flutter/material.dart';
import 'package:insta_coin/presentation/team/components/team_loader.dart';
import 'package:insta_coin/responsive/responsive.dart';

class TeamOverlayWidget extends StatefulWidget {
  const TeamOverlayWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<TeamOverlayWidget> createState() => _TeamOverlayWidgetState();
}

class _TeamOverlayWidgetState extends State<TeamOverlayWidget> {
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
                  width: (!Responsive.isMobile(context))
                      ? MediaQuery.of(context).size.width / 3
                      : MediaQuery.of(context).size.width * 0.9,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(244, 249, 249, 1.00),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Stack(
                    children: [
                      Column(
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
                            ),
                          ),
                        ],
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
