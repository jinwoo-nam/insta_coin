import 'package:flutter/material.dart';
import 'package:insta_coin/domain/model/team/team_data.dart';
import 'package:insta_coin/presentation/team/components/team_card_widget.dart';
import 'package:insta_coin/presentation/team/components/team_you_widget.dart';
import 'package:insta_coin/ui/on_hover_detect.dart';

class TeamGridWidget extends StatelessWidget {
  final List<TeamData> teamDataList;
  final int crossAxisCount;
  final double childAspectRatio;
  final double? sizedWidth;

  const TeamGridWidget({
    Key? key,
    required this.teamDataList,
    required this.crossAxisCount,
    required this.childAspectRatio,
    required this.sizedWidth,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: sizedWidth,
      child: GridView.builder(
          shrinkWrap: true,
          itemCount: teamDataList.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: crossAxisCount,
            childAspectRatio: childAspectRatio,
            mainAxisSpacing: 50,
            crossAxisSpacing: 10,
          ),
          itemBuilder: (BuildContext context, int index) {
            return OnHoverDetect(
              builder: (isHover) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 25,
                      vertical: 45,
                    ),
                    decoration: isHover
                        ? BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.white.withOpacity(0.5),
                                spreadRadius: 8,
                                blurRadius: 7,
                                offset: const Offset(0, 3),
                              )
                            ],
                            borderRadius:
                                const BorderRadius.all(Radius.circular(15)),
                          )
                        : const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                          ),
                    child: (teamDataList[index].name != 'You?')
                        ? TeamCardWidget(
                            data: teamDataList[index],
                            maxLine: 5,
                          )
                        : const TeamYouWidget(),
                  ),
                );
              },
            );
          }),
    );
  }
}
