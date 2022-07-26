import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:insta_coin/util/util.dart';

class FloatingActionButtonWidget extends StatelessWidget {
  const FloatingActionButtonWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        FloatingActionButton(
          heroTag: null,
          onPressed: () async {
            await FirebaseAnalytics.instance.logEvent(
              name: 'Click_Telegram',
            );

            launchURL('https://t.me/instapaycoin1');
          },
          child: Image.asset(
            'img/main/telegram_icon.png',
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        FloatingActionButton(
          heroTag: null,
          onPressed: () async {
            await FirebaseAnalytics.instance.logEvent(
              name: 'Click_Blog',
            );

            launchURL('https://blog.naver.com/instacoin');
          },
          child: Image.asset(
            'img/main/icon_naver_blog-300x300.png',
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        FloatingActionButton(
            heroTag: null,
            onPressed: () async {
              await FirebaseAnalytics.instance.logEvent(
                name: 'Click_Facebook',
              );

              launchURL('https://www.facebook.com/groups/174734989840209/');
            },
            child: Container(
              decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage('img/main/Facebook-icon-1.png'))),
            )),
      ],
    );
  }
}
