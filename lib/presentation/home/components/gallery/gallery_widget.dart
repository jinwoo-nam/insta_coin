import 'dart:math';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:insta_coin/presentation/home/components/gallery/gallery_loader.dart';
import 'package:insta_coin/responsive/responsive.dart';
import 'package:insta_coin/ui/constant.dart';

class GalleryWidget extends StatefulWidget {
  const GalleryWidget({Key? key}) : super(key: key);

  @override
  State<GalleryWidget> createState() => _GalleryWidgetState();
}

class _GalleryWidgetState extends State<GalleryWidget> {
  int _current = 0;
  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    final length = max(
        MediaQuery.of(context).size.width, MediaQuery.of(context).size.height);

    final double galleryImageHeight =
        (Responsive.isMobile(context)) ? 400 : 750;

    return SizedBox(
      width: length,
      height: null,
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: const BoxDecoration(
          color: Color(0xff2d3943),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: (Responsive.isMobile(context)) ? 15 : 30,
              ),
              child: Text(
                'GALLERY',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: Responsive.isMobile(context) ? 40 : 50,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            SizedBox(
              width: 1200,
              height: null,
              child: Column(
                children: [
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: InkWell(
                            onTap: () {
                              _controller.previousPage(
                                  duration: const Duration(milliseconds: 300));
                            },
                            child: Icon(
                              Icons.arrow_back_ios,
                              size: (Responsive.isMobile(context)) ? 30 : 50,
                            ),
                          ),
                        ),
                        Expanded(
                          child: InkWell(
                            onTap: () {
                              GalleryLoader.appLoader.showLoader();
                            },
                            child: CarouselSlider(
                              carouselController: _controller,
                              options: CarouselOptions(
                                height: galleryImageHeight - 50,
                                viewportFraction: 1.0,
                                enlargeCenterPage: false,
                                onPageChanged: (index, reason) {
                                  setState(() {
                                    _current = index;
                                  });
                                },
                              ),
                              items: imgList
                                  .map((item) => Image.asset(item.imgSource))
                                  .toList(),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: InkWell(
                            onTap: () {
                              _controller.nextPage(
                                  duration: const Duration(
                                milliseconds: 300,
                              ));
                            },
                            child: Icon(
                              Icons.arrow_forward_ios,
                              size: (Responsive.isMobile(context)) ? 30 : 50,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: imgList.asMap().entries.map((entry) {
                      return GestureDetector(
                        onTap: () => _controller.animateToPage(entry.key),
                        child: Container(
                          width: 12.0,
                          height: 12.0,
                          margin: const EdgeInsets.symmetric(
                              vertical: 8.0, horizontal: 4.0),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: (Theme.of(context).brightness ==
                                          Brightness.dark
                                      ? Colors.white
                                      : Colors.black)
                                  .withOpacity(
                                      _current == entry.key ? 0.9 : 0.4)),
                        ),
                      );
                    }).toList(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
