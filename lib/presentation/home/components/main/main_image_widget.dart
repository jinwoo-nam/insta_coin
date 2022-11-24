import 'dart:math';

import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:insta_coin/responsive/responsive.dart';
import 'package:insta_coin/util/util.dart';

class MainImageWidget extends StatelessWidget {
  const MainImageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final length = max(
        MediaQuery.of(context).size.width, MediaQuery.of(context).size.height);
    final double mainPageHeight = (Responsive.isMobile(context)) ? 900 : 700;

    return Stack(
      children: [
        ConstrainedBox(
          constraints: BoxConstraints.tight(
            Size(
              length,
              mainPageHeight,
            ),
          ),
          child: Container(
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xff2d3943),
                  Color(0xff159db5),
                ],
              ),
            ),
          ),
        ),
        Positioned(
          width: 2000,
          bottom: -300,
          child: Opacity(
            opacity: 0.8,
            child: Center(
              child: Image.asset(
                'img/main/main_line.png',
                color: Colors.white,
              ),
            ),
          ),
        ),
        if (!Responsive.isMobile(context))
          Positioned.fill(
            child: Align(
              alignment: Alignment.center,
              child: SizedBox(
                width: 1000,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(child: Image.asset('img/main/main_phone.png')),
                    Expanded(
                      flex: 2,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text(
                            'Pay Without Barriers',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 48,
                              fontWeight: FontWeight.w700,
                              height: 1.4,
                            ),
                          ),
                          const SizedBox(
                            height: 60,
                          ),
                          const Text(
                            'Simple and secure payment with cash and coin integration',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                            ),
                          ),
                          const SizedBox(
                            height: 60,
                          ),
                          const Text(
                            'The easiest way to buy digital assets!',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xffa9f9e9),
                              fontWeight: FontWeight.w600,
                              fontSize: 35,
                            ),
                          ),
                          const SizedBox(
                            height: 60,
                          ),
                          InkWell(
                            onTap: () async {
                              await FirebaseAnalytics.instance.logEvent(
                                name: 'Click_BUYINC',
                              );
                              //launchURL('#/getInstaCoin/basicInfo');
                              launchURL(
                                  'https://ex.instacoins.io/exchange-react/');
                            },
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 15, horizontal: 70),
                              decoration: BoxDecoration(
                                color: const Color(0xff263b4f),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: const Text(
                                'BUY COINS',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 25),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              InkWell(
                                onTap: () async {
                                  await FirebaseAnalytics.instance.logEvent(
                                    name: 'Click_WhitePaper(KOR)',
                                  );

                                  launchURL(
                                      'https://instacoin.s3.ap-northeast-2.amazonaws.com/INSTACOIN_WhitePaper_v2.0_KR.pdf');
                                },
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 8, horizontal: 15),
                                  decoration: BoxDecoration(
                                    color: const Color(0xff4ac1c2),
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  child: const Text(
                                    'White Paper(KOR)',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 17),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              InkWell(
                                onTap: () async {
                                  await FirebaseAnalytics.instance.logEvent(
                                    name: 'Click_WhitePaper(ENG)',
                                  );

                                  showDialog(
                                      context: context,
                                      builder: (context) => AlertDialog(
                                            title: Text('Coming soon'),
                                            content: Text('준비 중입니다.'),
                                            actions: [
                                              TextButton(
                                                  onPressed: () =>
                                                      Navigator.of(context)
                                                          .pop(),
                                                  child: Text('OK'))
                                            ],
                                          ));
                                  // launchURL(
                                  //     'https://s3.ap-northeast-2.amazonaws.com/instacoins.io/doc/White+Paper_INSTACOIN(en)_v1.pdf');
                                },
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 8, horizontal: 15),
                                  decoration: BoxDecoration(
                                    color: const Color(0xffedb057),
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  child: const Text(
                                    'White Paper(ENG)',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 17),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        if (Responsive.isMobile(context))
          Positioned.fill(
            child: Align(
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    (MediaQuery.of(context).size.width < 576)
                        ? Image.asset(
                            'img/main/main_phone.png',
                            scale: 1.6,
                          )
                        : Image.asset(
                            'img/main/main_phone.png',
                            scale: 1.4,
                          ),
                    SizedBox(
                      height: 30,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text(
                          'Pay Without Barriers',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 35,
                            fontWeight: FontWeight.w700,
                            height: 1.4,
                          ),
                        ),
                        const Text(
                          'Simple and secure payment with cash and coin integration',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        const Text(
                          'The easiest way to buy digital assets!',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xffa9f9e9),
                            fontWeight: FontWeight.w600,
                            fontSize: 27,
                          ),
                        ),
                        const SizedBox(
                          height: 35,
                        ),
                        InkWell(
                          onTap: () async {
                            await FirebaseAnalytics.instance.logEvent(
                              name: 'Click_BUYINC',
                            );
                            //launchURL('http://get.instacoins.io/basicInfo');
                            //launchURL('#/getInstaCoin/basicInfo');
                            launchURL(
                                'https://ex.instacoins.io/exchange-react/');
                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: 15, horizontal: 70),
                            decoration: BoxDecoration(
                              color: const Color(0xff263b4f),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: const Text(
                              'BUY COINS',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 25),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InkWell(
                              onTap: () async {
                                await FirebaseAnalytics.instance.logEvent(
                                  name: 'Click_WhitePaper(KOR)',
                                );

                                launchURL(
                                    'https://instacoin.s3.ap-northeast-2.amazonaws.com/INSTACOIN_WhitePaper_v2.0_KR.pdf');
                              },
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 8, horizontal: 15),
                                decoration: BoxDecoration(
                                  color: const Color(0xff4ac1c2),
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: const Text(
                                  'White Paper(KOR)',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 17),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            InkWell(
                              onTap: () async {
                                await FirebaseAnalytics.instance.logEvent(
                                  name: 'Click_WhitePaper(ENG)',
                                );

                                showDialog(
                                    context: context,
                                    builder: (context) => AlertDialog(
                                          title: Text('Coming soon'),
                                          content: Text('준비 중입니다.'),
                                          actions: [
                                            TextButton(
                                                onPressed: () =>
                                                    Navigator.of(context).pop(),
                                                child: Text('OK'))
                                          ],
                                        ));
                                // launchURL(
                                //     'https://s3.ap-northeast-2.amazonaws.com/instacoins.io/doc/White+Paper_INSTACOIN(en)_v1.pdf');
                              },
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 8, horizontal: 15),
                                decoration: BoxDecoration(
                                  color: const Color(0xffedb057),
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: const Text(
                                  'White Paper(ENG)',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 17),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
      ],
    );
  }
}
