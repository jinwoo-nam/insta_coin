import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:insta_coin/presentation/common_widget/app_bar_widget.dart';
import 'package:insta_coin/presentation/common_widget/floating_action_button_widget.dart';
import 'package:insta_coin/presentation/common_widget/footer_widget.dart';
import 'package:insta_coin/presentation/common_widget/overlay_menu.dart';
import 'package:insta_coin/presentation/home/components/coin_economic/coin_economic_widget.dart';
import 'package:insta_coin/presentation/home/components/company/company_widget.dart';
import 'package:insta_coin/presentation/home/components/eco_system/eco_system_widget.dart';
import 'package:insta_coin/presentation/home/components/gallery/gallery_widget.dart';
import 'package:insta_coin/presentation/home/components/main/main_image_widget.dart';
import 'package:insta_coin/presentation/home/components/our_vision/our_vision_widget.dart';
import 'package:insta_coin/presentation/home/components/papps/papps_widget.dart';
import 'package:insta_coin/presentation/home/components/roadmap/roadmap_widget.dart';
import 'package:insta_coin/presentation/home/components/why_insta/why_insta_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final OverlayMenu menu = OverlayMenu(
    type: PageSelectType.home,
  );

  @override
  void initState() {
    _setCurScreenToAnalytics();
    menu.context = context;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (menu.isActive) {
          menu.removeMenu();
        }
      },
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(75),
          child: AppbarWidget(
            type: PageSelectType.home,
            menu: menu,
          ),
        ),
        floatingActionButton: FloatingActionButtonWidget(),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: const [
                MainImageWidget(),
                GalleryWidget(),
                OurVisionWidget(),
                WhyInsta(),
                CompanyWidget(),
                PappsWidget(),
                CoinEconomicWidget(),
                RoadmapWidget(),
                EcoSystemWidget(),
                FooterWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _setCurScreenToAnalytics() async {
    await FirebaseAnalytics.instance.logEvent(
      name: 'screen_view',
      parameters: {
        'firebase_screen': '/',
        'firebase_screen_class': 'HomeScreen',
      },
    );
  }
}
