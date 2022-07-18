import 'package:flutter/material.dart';
import 'package:insta_coin/domain/model/team/team_data.dart';
import 'package:insta_coin/util/util.dart';

class TeamCardWidget extends StatelessWidget {
  final TeamData data;
  final int maxLine;

  const TeamCardWidget({
    Key? key,
    required this.data,
    required this.maxLine,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        CircleAvatar(
          backgroundColor: Colors.transparent,
          radius: 70,
          backgroundImage: ExactAssetImage(
            data.imageUrl,
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
            Padding(
              padding: const EdgeInsets.only(bottom: 15.0),
              child: Text(
                data.position,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.w300,
                  color: Color.fromRGBO(10, 50, 111, 0.58),
                ),
              ),
            ),
            Text(
              data.content,
              maxLines: maxLine,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.start,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w300,
                height: 1.6,
                wordSpacing: 1.5,
              ),
            ),
          ],
        ),
        const Spacer(),
        Row(
          children: [
            if (data.facebookUrl != '' && data.facebookUrl != '#')
              InkWell(
                onTap: () {
                  launchURL(data.facebookUrl);
                },
                child: Image.asset(
                  'img/team/Facebook-icon-1.png',
                  width: 30,
                  height: 30,
                ),
              ),
            if (data.facebookUrl != '' && data.facebookUrl != '#')
              const SizedBox(
                width: 10,
              ),
            if (data.linkedInUrl != '' && data.linkedInUrl != '#')
              InkWell(
                onTap: () {
                  launchURL(data.linkedInUrl);
                },
                child: Image.asset(
                  'img/team/linkedin.png',
                  width: 30,
                  height: 30,
                ),
              ),
            const Spacer(),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 7),
              decoration: BoxDecoration(
                border: Border.all(
                  color: const Color.fromRGBO(48, 191, 193, 0.79),
                ),
                borderRadius: BorderRadius.circular(30),
              ),
              child: const Text(
                'Read More',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Color.fromRGBO(48, 191, 193, 0.79),
                ),
              ),
            )
          ],
        ),
      ],
    );
  }
}
