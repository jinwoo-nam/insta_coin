import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
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
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding:
                  const EdgeInsets.symmetric(horizontal: 8.0),
                  child: InkWell(
                    onTap: () {
                      _controller.previousPage(
                          duration: const Duration(milliseconds: 300));
                    },
                    child: const Icon(
                      Icons.arrow_back_ios,
                      size: 50,
                    ),
                  ),
                ),
                SizedBox(
                    width: 800,
                    height: 700,
                    child: CarouselSlider(
                      carouselController: _controller,
                      options: CarouselOptions(
                          height: 700,
                          viewportFraction: 1.0,
                          enlargeCenterPage: false,
                          onPageChanged: (index, reason) {
                            setState(() {
                              _current = index;
                            });
                          }),
                      items: imgList.map((item) => item).toList(),
                    )),
                Padding(
                  padding:
                  const EdgeInsets.symmetric(horizontal: 8.0),
                  child: InkWell(
                    onTap: () {
                      _controller.nextPage(
                          duration: const Duration(
                            milliseconds: 300,
                          ));
                    },
                    child: const Icon(
                      Icons.arrow_forward_ios,
                      size: 50,
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
    );
  }
}
