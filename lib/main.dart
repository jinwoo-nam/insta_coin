import 'package:flutter/material.dart';
import 'package:insta_coin/di/provider_setup.dart';
import 'package:insta_coin/presentation/Papps/papps_screen.dart';
import 'package:insta_coin/presentation/faq/faq_screen.dart';
import 'package:insta_coin/presentation/home/components/gallery/gallery_overlay_widget.dart';
import 'package:insta_coin/presentation/home/home_screen.dart';
import 'package:insta_coin/presentation/media/media_screen.dart';
import 'package:insta_coin/presentation/team/components/team_overlay_widget.dart';
import 'package:insta_coin/presentation/team/team_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: getProviders(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'InstaCoin',
      initialRoute: '/',
      onGenerateRoute: (settings) {
        if (settings.name == '/') {
          return _createRoute(
              settings,
              Stack(
                children: [
                  HomeScreen(),
                  GalleryOverlayWidget(),
                ],
              ));
        } else if (settings.name == '/papps') {
          return _createRoute(settings, PappsScreen());
        } else if (settings.name == '/team') {
          return _createRoute(
              settings,
              Stack(
                children: [
                  TeamScreen(),
                  TeamOverlayWidget(),
                ],
              ));
        } else if (settings.name == '/media') {
          return _createRoute(settings, MediaScreen());
        } else if (settings.name == '/faq') {
          return _createRoute(settings, FaqScreen());
        } else {
          return MaterialPageRoute(builder: (_) => Container());
        }
      },
      theme:
          ThemeData(primarySwatch: Colors.blue, fontFamily: 'source_sans_pro'),
    );
  }

  PageRouteBuilder<dynamic> _createRoute(
      RouteSettings settings, Widget childWidget) {
    return PageRouteBuilder(
      settings: settings,
      pageBuilder: (context, animation, secondaryAnimation) => childWidget,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(0.0, 0.0);
        const end = Offset.zero;
        const curve = Curves.ease;

        var tween =
            Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      },
    );
  }
}
