import 'package:flutter/material.dart';
import 'package:insta_coin/presentation/home/home_screen.dart';
import 'package:insta_coin/responsive/responsive.dart';

class RootScreen extends StatelessWidget {
  const RootScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          toolbarHeight:75,
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
                            style: TextStyle(color: Colors.black),
                          )),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          'PAPPS',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          'TEAM',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          'MEDIA',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          'FAQ',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ],
                  )
                else
                  IconButton(
                    onPressed: () {},
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
      body: const HomeScreen(),
    );
  }
}
