import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:insta_coin/presentation/home/components/gallery_loader.dart';
import 'package:insta_coin/ui/constant.dart';

class GalleryOverlayWidget extends StatefulWidget {
  const GalleryOverlayWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<GalleryOverlayWidget> createState() => _GalleryOverlayWidgetState();
}

class _GalleryOverlayWidgetState extends State<GalleryOverlayWidget> {
  int _current = 0;
  final CarouselController _controller = CarouselController();

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
                            child: const Icon(
                              Icons.arrow_back_ios,
                              size: 50,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                        Expanded(
                          child: CarouselSlider(
                            carouselController: _controller,
                            options: CarouselOptions(
                                height:
                                    MediaQuery.of(context).size.height - 100,
                                // > 400 ? MediaQuery.of(context).size.height-300 : 400,
                                viewportFraction: 1.0,
                                enlargeCenterPage: false,
                                onPageChanged: (index, reason) {
                                  setState(() {
                                    _current = index;
                                  });
                                }),
                            items: imgList
                                .map((item) => Stack(
                                      children: [
                                        Center(
                                          child: Stack(
                                            children: [
                                              Image.asset(
                                                item.imgSource,
                                              ),
                                              Positioned(
                                                right: 0,
                                                child: Container(
                                                  width: 50,
                                                  height: 50,
                                                  decoration: BoxDecoration(
                                                    color: Colors.black
                                                        .withOpacity(0.8),
                                                  ),
                                                  child: Center(
                                                    child: InkWell(
                                                      onTap: () {
                                                        GalleryLoader.appLoader
                                                            .hideLoader();
                                                      },
                                                      child: const Icon(
                                                        Icons.close,
                                                        size: 50,
                                                        color: Colors.grey,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Positioned.fill(
                                                child: Align(
                                                  alignment:
                                                      Alignment.bottomCenter,
                                                  child: Text(
                                                    item.description,
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        backgroundColor: Colors
                                                            .black
                                                            .withOpacity(0.7),
                                                        fontSize: 18,
                                                        fontWeight:
                                                            FontWeight.w300),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ))
                                .toList(),
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
                            child: const Icon(
                              Icons.arrow_forward_ios,
                              size: 50,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
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
                                      : Colors.grey)
                                  .withOpacity(
                                      _current == entry.key ? 0.9 : 0.4)),
                        ),
                      );
                    }).toList(),
                  ),
                ],
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
