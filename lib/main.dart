import 'package:flutter/material.dart';
import 'package:insta_coin/presentation/home/components/gallery/gallery_overlay_widget.dart';
import 'package:insta_coin/presentation/root/root_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'InstaCoin',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'source_sans_pro'
      ),
      home: Stack(
        children: const [
          RootScreen(),
          GalleryOverlayWidget(),
        ],
      ),
    );
  }
}
