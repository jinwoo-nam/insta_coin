import 'package:flutter/material.dart';
import 'package:insta_coin/domain/model/team/team_data.dart';
import 'package:insta_coin/presentation/team/components/team_loader.dart';
import 'package:insta_coin/ui/on_hover_detect.dart';
import 'package:insta_coin/util/util.dart';

class TeamCardWidget extends StatelessWidget {
  final TeamData data;

  const TeamCardWidget({
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
            child: data.name == 'You?'
                ? TeamYouCardWidget()
                : Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.transparent,
                        radius: 70,
                        backgroundImage: ExactAssetImage(
                          data.imageUrl,
                        ),
                      ),
                      SizedBox(
                        height: 300,
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
                            Padding(
                              padding: EdgeInsets.only(bottom: 15.0),
                              child: Text(
                                data.position,
                                style: TextStyle(
                                  fontSize: 19,
                                  fontWeight: FontWeight.w300,
                                  color: Color.fromRGBO(10, 50, 111, 0.58),
                                ),
                              ),
                            ),
                            Text(
                              data.content,
                              maxLines: 5,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w300,
                                height: 1.6,
                                wordSpacing: 1.5,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          if (data.facebookUrl.isNotEmpty)
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
                          if (data.facebookUrl.isNotEmpty)
                            const SizedBox(
                              width: 10,
                            ),
                          if (data.linkedInUrl.isNotEmpty)
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
                          InkWell(
                            onTap: () {
                              TeamLoader.appLoader.showLoader(data);
                            },
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 7),
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color:
                                      const Color.fromRGBO(48, 191, 193, 0.79),
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
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
          ),
        );
      },
    );
  }
}

class TeamYouCardWidget extends StatelessWidget {
  const TeamYouCardWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const Icon(
          Icons.question_mark,
          color: Color(0xff4ac1c2),
          size: 140,
        ),
        SizedBox(
          height: 360,
          child: Column(
            children: const [
              Padding(
                padding: EdgeInsets.only(
                  bottom: 10.0,
                  top: 40,
                ),
                child: Text(
                  'You?',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Text(
                'We are looking for talented, driven people to join our journey of bringing the crypto-payment innovation to reality. If you’re interested or have any inquiry, please contact us at',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w300,
                  height: 1.6,
                  wordSpacing: 1.5,
                ),
              ),
              Text(
                'business@instapay.kr',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  height: 1.6,
                  wordSpacing: 1.5,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
