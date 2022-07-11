import 'package:flutter/material.dart';
import 'package:insta_coin/presentation/Papps/papps_screen.dart';
import 'package:insta_coin/presentation/home/home_screen.dart';
import 'package:insta_coin/presentation/root/components/footer_widget.dart';
import 'package:insta_coin/presentation/root/components/overlay_menu.dart';
import 'package:insta_coin/presentation/team/team_screen.dart';
import 'package:insta_coin/responsive/responsive.dart';

class RootScreen extends StatefulWidget {
  const RootScreen({Key? key}) : super(key: key);

  @override
  State<RootScreen> createState() => _RootScreenState();
}

class _RootScreenState extends State<RootScreen> {
  final OverlayMenu menu = OverlayMenu();

  @override
  Widget build(BuildContext context) {
    if (!Responsive.isMobile(context)) {
      if (menu.isActive) {
        menu.removeMenu();
      }
    }
    menu.context = context;

    return GestureDetector(
      onTap: () {
        if (menu.isActive) {
          menu.removeMenu();
        }
      },
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 75,
          flexibleSpace: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50.0),
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    'img/main/logo_cs-1.png',
                    height: 35,
                  ),
                  if (!Responsive.isMobile(context))
                    Row(
                      children: [
                        TextButton(
                            onPressed: () {},
                            child: const Text(
                              'HOME',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 17,
                              ),
                            )),
                        TextButton(
                          onPressed: () {},
                          child: const Text(
                            'PAPPS',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 17,
                            ),
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: const Text(
                            'TEAM',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 17,
                            ),
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: const Text(
                            'MEDIA',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 17,
                            ),
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: const Text(
                            'FAQ',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 17,
                            ),
                          ),
                        ),
                      ],
                    )
                  else
                    IconButton(
                      onPressed: () {
                        if (menu.isActive) {
                          menu.removeMenu();
                        } else {
                          menu.showMenu();
                        }
                      },
                      icon: const Icon(
                        Icons.menu,
                        color: Color(0xff4ac1c2),
                      ),
                    ),
                ],
              ),
            ),
          ),
          backgroundColor: Colors.white,
          centerTitle: false,
        ),
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              onPressed: () {},
              child: Image.asset(
                'img/main/icon_naver_blog-300x300.png',
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            FloatingActionButton(
                onPressed: () {},
                child: Container(
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage('img/main/Facebook-icon-1.png'))),
                )),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: const [
              TeamScreen(),
              FooterWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
