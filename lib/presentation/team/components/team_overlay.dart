import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:insta_coin/presentation/home/components/gallery/gallery_loader.dart';
import 'package:insta_coin/ui/constant.dart';

class TeamOverlayWidget extends StatefulWidget {
  const TeamOverlayWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<TeamOverlayWidget> createState() => _TeamOverlayWidgetState();
}

class _TeamOverlayWidgetState extends State<TeamOverlayWidget> {
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
      valueListenable: GalleryLoader.appLoader.loaderShowingNotifier,
      builder: (context, value, child) {
        if (value) {
          return Container(
            decoration: BoxDecoration(color: Colors.black.withOpacity(0.8)),
            child: Material(
              type: MaterialType.transparency,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [],
              ),
            ),
          );
        } else {
          return Container();
        }
      },
    );
  }
}
