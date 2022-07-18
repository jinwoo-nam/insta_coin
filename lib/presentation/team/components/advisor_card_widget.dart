import 'package:flutter/material.dart';
import 'package:insta_coin/domain/model/team/team_data.dart';
import 'package:insta_coin/presentation/common_widget/bullet_widget.dart';

class AdvisorCardWidget extends StatelessWidget {
  final TeamData data;

  const AdvisorCardWidget({
    Key? key,
    required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
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
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                bottom: 10.0,
                top: 40,
              ),
              child: Text(
                data.name,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            ...data.desc.map((e) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 4.0),
                child: BulletWidget(e),
              );
            }).toList(),
          ],
        ),
      ],
    );
  }
}


