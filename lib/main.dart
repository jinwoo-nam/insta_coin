import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:insta_coin/di/provider_setup.dart';
import 'package:insta_coin/presentation/Papps/papps_screen.dart';
import 'package:insta_coin/presentation/faq/faq_screen.dart';
import 'package:insta_coin/presentation/get_insta_coins/app_kyc/app_kyc_screen.dart';
import 'package:insta_coin/presentation/get_insta_coins/basic_info/basic_info_screen.dart';
import 'package:insta_coin/presentation/get_insta_coins/basic_info/terms/terms_screen.dart';
import 'package:insta_coin/presentation/get_insta_coins/confirm/confirm_screen.dart';
import 'package:insta_coin/presentation/home/components/gallery/gallery_overlay_widget.dart';
import 'package:insta_coin/presentation/home/home_screen.dart';
import 'package:insta_coin/presentation/media/components/insta_coin_article_widget.dart';
import 'package:insta_coin/presentation/media/components/insta_coin_columns_widget.dart';
import 'package:insta_coin/presentation/media/media_screen.dart';
import 'package:insta_coin/presentation/team/components/team_overlay_widget.dart';
import 'package:insta_coin/presentation/team/team_screen.dart';
import 'package:provider/provider.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'presentation/inc/inc_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

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
  static FirebaseAnalytics analytics = FirebaseAnalytics.instance;
  static FirebaseAnalyticsObserver observer =
      FirebaseAnalyticsObserver(analytics: analytics);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'InstaCoin',
      initialRoute: '/',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'source_sans_pro',
        backgroundColor: Colors.white,
      ),
      navigatorObservers: <NavigatorObserver>[observer],
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
        } else if (settings.name == '/media/articles') {
          return _createRoute(settings, InstaCoinArticleWidget());
        } else if (settings.name == '/media/columns') {
          return _createRoute(settings, InstaCoinColumnsWidget());
        } else if (settings.name == '/getInstaCoin/basicInfo') {
          return _createRoute(settings, BasicInfoScreen());
        } else if (settings.name == '/getInstaCoin/termsK') {
          return _createRoute(settings, TermsScreen());
        } else if (settings.name == '/getInstaCoin/appKyc') {
          return _createRoute(settings, AppKycScreen());
        } else if (settings.name == '/getInstaCoin/confirm') {
          return _createRoute(settings, ConfirmScreen());
        } else if (settings.name == '/inc') {
          return _createRoute(settings, IncScreen());
        } else {
          return MaterialPageRoute(builder: (_) => Container());
        }
      },
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
