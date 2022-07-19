import 'package:flutter/material.dart';
import 'package:insta_coin/domain/model/team/team_data.dart';
import 'package:insta_coin/ui/on_hover_detect.dart';

class AdvisorCardWidget extends StatelessWidget {
  final TeamData data;

  const AdvisorCardWidget({
    Key? key,
    required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OnHoverDetect(
      builder: (isHover) {
        return Padding(
          padding: const EdgeInsets.all(20.0),
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
                    borderRadius: const BorderRadius.all(Radius.circular(15)),
                  )
                : const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                  ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: 147,
                  height: 147,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.transparent,
                    image: DecorationImage(
                      image: AssetImage(data.imageUrl),
                    ),
                  ),
                ),
                SizedBox(
                  height: null,
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          bottom: 10.0,
                          top: 40,
                        ),
                        child: Text(
                          data.name,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ...data.desc.map((e) {
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
                                    e,
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
