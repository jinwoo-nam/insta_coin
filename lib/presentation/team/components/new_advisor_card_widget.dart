import 'package:flutter/material.dart';
import 'package:insta_coin/domain/model/team/team_data.dart';
import 'package:insta_coin/ui/on_hover_detect.dart';

class NewAdvisorCardWidget extends StatelessWidget {
  final TeamData data;

  const NewAdvisorCardWidget({
    Key? key,
    required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OnHoverDetect(
      builder: (isHover) {
        return Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 35,
              vertical: 30,
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
                    borderRadius: const BorderRadius.all(Radius.circular(15)),
                  )
                : const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                  ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 250,
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: 25,
                        ),
                        child: Center(
                          child: Text(
                            data.name,
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ...data.desc.map((des) {
                            return Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 4.0),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '• ',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      height: 1.4,
                                      fontSize: 17,
                                    ),
                                  ),
                                  Expanded(
                                      child: Text(
                                    des,
                                    style: TextStyle(
                                      fontWeight: FontWeight.w300,
                                      height: 1.4,
                                      fontSize: 17,
                                    ),
                                  ))
                                ],
                              ),
                            );
                          }).toList(),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
