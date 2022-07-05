import 'package:flutter/material.dart';
import 'package:insta_coin/presentation/home/home_screen.dart';

class RootScreen extends StatelessWidget {
  const RootScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 150.0),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  'img/main/logo_cs-1.png',
                  height: 35,
                ),
                Row(
                  children: [
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          'HOME',
                          style: TextStyle(color: Colors.black),
                        )),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'PAPPS',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'TEAM',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'MEDIA',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'FAQ',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        backgroundColor: Colors.white,
        centerTitle: false,
      ),
      body: const HomeScreen(),
    );
  }
}
