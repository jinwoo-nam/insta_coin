import 'dart:math';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:insta_coin/presentation/home/components/gallery_widget.dart';
import 'package:insta_coin/ui/constant.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _current = 0;
  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    final length = max(
        MediaQuery.of(context).size.width, MediaQuery.of(context).size.height);

    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                ConstrainedBox(
                  constraints: BoxConstraints.tight(Size(
                    length,
                    700,
                  )),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Color(0xff2d3943),
                          Color(0xff159db5),
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  width: 2000,
                  bottom: -300,
                  child: Opacity(
                    opacity: 0.8,
                    child: Center(
                      child: Image.asset(
                        'img/main/main_line.png',
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Positioned.fill(
                  child: Align(
                    alignment: Alignment.center,
                    child: SizedBox(
                      width: 1000,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                              child: Image.asset('img/main/main_phone.png')),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  'Pay Without Barriers',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 48,
                                    fontWeight: FontWeight.bold,
                                    height: 1.4,
                                  ),
                                ),
                                const SizedBox(
                                  height: 60,
                                ),
                                const Text(
                                  'Simple and secure payment with cash and coin integration',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25,
                                  ),
                                ),
                                const SizedBox(
                                  height: 60,
                                ),
                                const Text(
                                  'Application for Listing\nComing Soon!',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Color(0xffa9f9e9),
                                    fontWeight: FontWeight.w600,
                                    fontSize: 35,
                                  ),
                                ),
                                const SizedBox(
                                  height: 60,
                                ),
                                InkWell(
                                  onTap: () {},
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 15, horizontal: 70),
                                    decoration: BoxDecoration(
                                      color: const Color(0xff263b4f),
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                    child: const Text(
                                      'BUY INC',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 25),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    InkWell(
                                      onTap: () {},
                                      child: Container(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 8, horizontal: 15),
                                        decoration: BoxDecoration(
                                          color: const Color(0xff4ac1c2),
                                          borderRadius:
                                              BorderRadius.circular(30),
                                        ),
                                        child: const Text(
                                          'White Paper(KOR)',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 17),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 20,
                                    ),
                                    InkWell(
                                      onTap: () {},
                                      child: Container(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 8, horizontal: 15),
                                        decoration: BoxDecoration(
                                          color: const Color(0xffedb057),
                                          borderRadius:
                                              BorderRadius.circular(30),
                                        ),
                                        child: const Text(
                                          'White Paper(ENG)',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 17),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            ConstrainedBox(
              constraints: BoxConstraints.tight(Size(
                length,
                900,
              )),
              child: Container(
                decoration: const BoxDecoration(
                  color: Color(0xff2d3943),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 20.0),
                      child: Text(
                        'GALLERY',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Column(
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
                                        duration:
                                            const Duration(milliseconds: 300));
                                  },
                                  child: const Icon(
                                    Icons.arrow_back_ios,
                                    size: 50,
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const GalleryWidget()),
                                  );
                                },
                                child: SizedBox(
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
                                      items:
                                          imgList.map((item) => item).toList(),
                                    )),
                              ),
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
                  ],
                ),
              ),
            ),
            ConstrainedBox(
              constraints: BoxConstraints.tight(const Size(
                800,
                700,
              )),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'OUR VISION',
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Text(
                    'In 2008, Satoshi’s bitcoin provided the technological solution to bringing virtual currency payment to reality. Its intention to be used as payment instrument itself, however, has rather dimmed in the light of many other intriguing aspects of Blockchain. The issue of using payment method and currency cannot be simply resolved by the technological solutions, but is also very closely related to the nation’s regulatory framework. Our founder has the most extensive knowledge of the post-internet payment methods and their potential for change.',
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(height: 35,),
                  Text(
                    'We envision to create an O2O Commerce ecosystem that enables transactions without barriers of time and location in daily life. The credit card system that has penetrated into people’s life today is expensive in costs and complicated in system processing. InstaPay’s patented QR code payment system will provide a competitive alternative to credit card and open the doorway to the new O2O Commerce era. InstaCoin takes on the mission that Satoshi’s bitcoin has begun but not yet completed to become the future payment platform, by expanding its Blockchain ecosystem through various platform applications.',
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(height: 30,),
                  Text(
                    'We envision to create the first cryptocurrency to be actually used as a payment method:  boarder-less and time-less.',
                    style: TextStyle(fontSize: 20),
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
