import 'package:flutter/material.dart';
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
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
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
          ],
        ),
      ),
    );
  }
}
