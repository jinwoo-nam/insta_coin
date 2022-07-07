import 'dart:math';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:insta_coin/presentation/home/components/gallery_loader.dart';
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
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

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
                                    fontWeight: FontWeight.w700,
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
            SizedBox(
              width: length,
              height: 950,
              child: Container(
                decoration: const BoxDecoration(
                  color: Color(0xff2d3943),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 30,
                      ),
                      child: Text(
                        'GALLERY',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 50,
                          fontWeight: FontWeight.w700,
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
                                  GalleryLoader.appLoader.showLoader();
                                },
                                child: SizedBox(
                                  width: 1200,
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
                                      },
                                    ),
                                    items: imgList
                                        .map((item) =>
                                            Image.asset(item.imgSource))
                                        .toList(),
                                  ),
                                ),
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
            Container(
              width: double.infinity,
              color: Colors.white,
              alignment: Alignment.center,
              child: SizedBox(
                width: 1200,
                height: 700,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 60.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Center(
                        child: Text(
                          'OUR VISION',
                          style: TextStyle(
                            fontSize: 50,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Text(
                        'In 2008, Satoshi’s bitcoin provided the technological solution to bringing virtual currency payment to reality. Its intention to be used as payment instrument itself, however, has rather dimmed in the light of many other intriguing aspects of Blockchain. The issue of using payment method and currency cannot be simply resolved by the technological solutions, but is also very closely related to the nation’s regulatory framework. Our founder has the most extensive knowledge of the post-internet payment methods and their potential for change.',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      SizedBox(
                        height: 35,
                      ),
                      Text(
                        'We envision to create an O2O Commerce ecosystem that enables transactions without barriers of time and location in daily life. The credit card system that has penetrated into people’s life today is expensive in costs and complicated in system processing. InstaPay’s patented QR code payment system will provide a competitive alternative to credit card and open the doorway to the new O2O Commerce era. InstaCoin takes on the mission that Satoshi’s bitcoin has begun but not yet completed to become the future payment platform, by expanding its Blockchain ecosystem through various platform applications.',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        'We envision to create the first cryptocurrency to be actually used as a payment method:  boarder-less and time-less.',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 1400,
              padding: const EdgeInsets.symmetric(
                vertical: 20,
                horizontal: 50,
              ),
              decoration: const BoxDecoration(
                color: Color(0xff2d3943),
              ),
              alignment: Alignment.center,
              child: SizedBox(
                width: 1200,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 20.0),
                      child: Text(
                        'WHY INSTACOIN?',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 50,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 60.0),
                      child: Container(
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 20.0, horizontal: 15),
                                child: Image.asset('img/main/why1-1.png'),
                              ),
                            ),
                            Expanded(
                                flex: 3,
                                child: Container(
                                  decoration: const BoxDecoration(
                                    color: Color(0xfff4f9f9),
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(15),
                                      bottomRight: Radius.circular(15),
                                    ),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 40,
                                      vertical: 50,
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: const [
                                        Padding(
                                          padding:
                                              EdgeInsets.only(bottom: 20.0),
                                          child: Text(
                                            'Cash and Coin Payment in One Place',
                                            style: TextStyle(
                                              fontWeight: FontWeight.w700,
                                              fontSize: 26,
                                              color: Color(0xff4ac1c2),
                                            ),
                                          ),
                                        ),
                                        Text(
                                          'We have the world’s first patented QR Code-based mobile payment platform(2008), with which we will provide both cash payment and INC payment options. As the only mobile payment company to have integrated all Korean banks, we have ultimate advantage to expanding user base for InstaCoin as both cash and coin provide alternative payment methods to costly and complicated credit card system by lowering expenses for merchants and providing convenience for users.',
                                          style: TextStyle(
                                              color: Color(0xff515151),
                                              fontWeight: FontWeight.w200,
                                              fontSize: 19,
                                              height: 1.5),
                                        ),
                                      ],
                                    ),
                                  ),
                                ))
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 60.0),
                      child: Container(
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 20.0, horizontal: 15),
                                child: Image.asset('img/main/why1-2.png'),
                              ),
                            ),
                            Expanded(
                                flex: 3,
                                child: Container(
                                  decoration: const BoxDecoration(
                                    color: Color(0xfff4f9f9),
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(15),
                                      bottomRight: Radius.circular(15),
                                    ),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 40,
                                      vertical: 50,
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: const [
                                        Padding(
                                          padding:
                                              EdgeInsets.only(bottom: 20.0),
                                          child: Text(
                                            'Grand Consortium',
                                            style: TextStyle(
                                              fontWeight: FontWeight.w700,
                                              fontSize: 26,
                                              color: Color(0xff4ac1c2),
                                            ),
                                          ),
                                        ),
                                        Text(
                                          'As payment coin, InstaCoin is virtually applicable to any BM. InstaCoin has been continuously expanding, currently having several projects to merge with InstaCoin and its platform applications. As InstaCoin is joined by more projects and coins, its user base and PApps will both grow, rendering the payment ecosystem more widely available. We currently have several projects planning to join InstaCoin.',
                                          style: TextStyle(
                                              color: Color(0xff515151),
                                              fontWeight: FontWeight.w200,
                                              fontSize: 19,
                                              height: 1.5),
                                        ),
                                      ],
                                    ),
                                  ),
                                ))
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 70.0),
                      child: Container(
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 20.0, horizontal: 15),
                                child: Image.asset('img/main/why1-3.png'),
                              ),
                            ),
                            Expanded(
                                flex: 3,
                                child: Container(
                                  decoration: const BoxDecoration(
                                    color: Color(0xfff4f9f9),
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(15),
                                      bottomRight: Radius.circular(15),
                                    ),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 40,
                                      vertical: 50,
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: const [
                                        Padding(
                                          padding:
                                              EdgeInsets.only(bottom: 20.0),
                                          child: Text(
                                            'Practical Application',
                                            style: TextStyle(
                                              fontWeight: FontWeight.w700,
                                              fontSize: 26,
                                              color: Color(0xff4ac1c2),
                                            ),
                                          ),
                                        ),
                                        Text(
                                          'InstaPay is joining Seoul Pay, a regional payment of QR payment-based platform for 10 million Seoul citizens. With original patents in various types of QR payment, InstaPay will provide the most competitive service with InstaCoin. Seoul Pay will be InstaCoin’s first practical application, success of which will accelerate more practical uses of InstaCoin in various types of payment transactions.',
                                          style: TextStyle(
                                              color: Color(0xff515151),
                                              fontWeight: FontWeight.w200,
                                              fontSize: 19,
                                              height: 1.5),
                                        ),
                                      ],
                                    ),
                                  ),
                                ))
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(
                vertical: 30,
              ),
              width: double.infinity,
              color: Colors.white,
              alignment: Alignment.center,
              child: SizedBox(
                width: 1200,
                height: 1850,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 60.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'THE COMPANY',
                        style: TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20.0),
                        child: Image.asset(
                          'img/main/instapay_logo.jpeg',
                          width: 330,
                          height: 110,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: 15.0),
                        child: Text(
                          '1. We have designed and patented the QR code payment scheme since 2006 and registered our patents since 2008, the first in the world.',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color.fromRGBO(0, 28, 81, 0.88),
                            height: 1.8,
                            fontSize: 20,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: 15.0),
                        child: Text(
                          '2. InstaPay is the first and only mobile payment company to have integrated all Korean banks through firm banking.',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color.fromRGBO(0, 28, 81, 0.88),
                            height: 1.8,
                            fontSize: 20,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: 15.0),
                        child: Text(
                          '3. InstaPay’s payment system provides the simplest UI/UX for any type of transaction.',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color.fromRGBO(0, 28, 81, 0.88),
                            height: 1.8,
                            fontSize: 20,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: 50.0),
                        child: Text(
                          'These are some of InstaPay’s partners:',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color.fromRGBO(0, 28, 81, 0.88),
                            height: 1.8,
                            fontSize: 20,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(bottom: 30.0),
                        child: Text(
                          'Banks',
                          style: TextStyle(
                            fontSize: 27,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      Image.asset('img/main/banks.png'),
                      const SizedBox(
                        height: 30,
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: 30.0),
                        child: Text(
                          'Public Entities',
                          style: TextStyle(
                            fontSize: 27,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      Image.asset('img/main/public.png'),
                      const SizedBox(
                        height: 30,
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: 30.0),
                        child: Text(
                          'Private',
                          style: TextStyle(
                            fontSize: 27,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      Image.asset('img/main/private.png'),
                      const SizedBox(
                        height: 70,
                      ),
                      const Text(
                        '* We differentiate between general partners with InstaPay, which we consider one of our Platform Applications, and InstaCoin Payment Applications(PApps). Instacoin’s ecosystem is independent of, while complemented by, InstaPay’s platforms, as we endeavor to creating coins for widespread payments.',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w300,
                          height: 1.8,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 1400,
              padding: const EdgeInsets.symmetric(
                vertical: 20,
                horizontal: 50,
              ),
              decoration: const BoxDecoration(
                color: Color(0xff2d3943),
              ),
              alignment: Alignment.center,
              child: SizedBox(
                width: 1200,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 60.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(top: 20.0),
                        child: Text(
                          'PApps (Platform Applications)',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 50,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Expanded(
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 30,
                                vertical: 45,
                              ),
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15)),
                              ),
                              child: Column(
                                children: [
                                  Image.asset(
                                    'img/main/o2o.png',
                                    width: 80,
                                    height: 80,
                                    fit: BoxFit.cover,
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.only(
                                      bottom: 20.0,
                                      top: 40,
                                    ),
                                    child: Text(
                                      'O2O Commerce',
                                      style: TextStyle(
                                        fontSize: 23,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ),
                                  const Text(
                                    'InstaPay removes the barriers of time and space in shopping, paying, and delivery. By using blockchain, it prevents fraudulent transactions and protects personal information in O2O Commerce.',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w300,
                                      height: 1.6,
                                      wordSpacing: 1.5,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 50,
                          ),
                          Expanded(
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 30,
                                vertical: 45,
                              ),
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15)),
                              ),
                              child: Column(
                                children: [
                                  Image.asset(
                                    'img/main/mbpp.png',
                                    width: 80,
                                    height: 80,
                                    fit: BoxFit.cover,
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.only(
                                      bottom: 20.0,
                                      top: 40,
                                    ),
                                    child: Text(
                                      'MBPP',
                                      style: TextStyle(
                                        fontSize: 23,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ),
                                  const Text(
                                    'You can pay and charge InstaCoin via mobile without intermediaries . It spans over payment between individuals, as well as recurring bills for O2O Commerce, memberships, subscriptions, and more.',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w300,
                                      height: 1.6,
                                      wordSpacing: 1.5,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 50,
                          ),
                          Expanded(
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 30,
                                vertical: 45,
                              ),
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15)),
                              ),
                              child: Column(
                                children: [
                                  Image.asset(
                                    'img/main/game.png',
                                    width: 80,
                                    height: 80,
                                    fit: BoxFit.cover,
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.only(
                                      bottom: 20.0,
                                      top: 40,
                                    ),
                                    child: Text(
                                      'Game',
                                      style: TextStyle(
                                        fontSize: 23,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ),
                                  const Text(
                                    'You can own game items as InstaCoin’s Digital Asset. InstaCoin will provide convenient and secure experience in purchasing at a virtual store within game and trading game items between users.',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w300,
                                      height: 1.6,
                                      wordSpacing: 1.5,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 50,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Expanded(
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 30,
                                vertical: 45,
                              ),
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15)),
                              ),
                              child: Column(
                                children: [
                                  Image.asset(
                                    'img/main/etrade.png',
                                    width: 80,
                                    height: 80,
                                    fit: BoxFit.cover,
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.only(
                                      bottom: 20.0,
                                      top: 40,
                                    ),
                                    child: Text(
                                      'Worldwide e-Trade',
                                      style: TextStyle(
                                        fontSize: 23,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ),
                                  const Text(
                                    'In long term, Instacoin envisions to build decentralized multilateral payment system and crypto-economy ecosystem, which will reduce intermediaries fees, prevent fraud, and enable transparent delivery.',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w300,
                                      height: 1.6,
                                      wordSpacing: 1.5,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 50,
                          ),
                          Expanded(
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 30,
                                vertical: 45,
                              ),
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15)),
                              ),
                              child: Column(
                                children: [
                                  Image.asset(
                                    'img/main/ip.png',
                                    width: 80,
                                    height: 80,
                                    fit: BoxFit.cover,
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.only(
                                      bottom: 20.0,
                                      top: 40,
                                    ),
                                    child: Text(
                                      'IP',
                                      style: TextStyle(
                                        fontSize: 23,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ),
                                  const Text(
                                    'InstaPay removes the barriers of time and space in shopping, paying, and delivery. By using blockchain, it prevents fraudulent transactions and protects personal information in O2O Commerce.',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w300,
                                      height: 1.6,
                                      wordSpacing: 1.5,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 50,
                          ),
                          Expanded(
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 30,
                                vertical: 45,
                              ),
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15)),
                              ),
                              child: Column(
                                children: [
                                  Image.asset(
                                    'img/main/reward.png',
                                    width: 80,
                                    height: 80,
                                    fit: BoxFit.cover,
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.only(
                                      bottom: 20.0,
                                      top: 40,
                                    ),
                                    child: Text(
                                      'Reward & Donation',
                                      style: TextStyle(
                                        fontSize: 23,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ),
                                  const Text(
                                    'You can pay and charge InstaCoin via mobile without intermediaries . It spans over payment between individuals, as well as recurring bills for O2O Commerce, memberships, subscriptions, and more.',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w300,
                                      height: 1.6,
                                      wordSpacing: 1.5,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 50,
                          ),
                        ],
                      ),
                      Center(
                        child: InkWell(
                          onTap: () {},
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 30,
                              vertical: 15,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: const Color(0xff80d0d6),
                            ),
                            child: const Text(
                              'See our PApps',
                              style: TextStyle(
                                fontSize: 21,
                                color: Colors.white,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              color: Colors.white,
              alignment: Alignment.center,
              child: SizedBox(
                width: 1200,
                height: 1200,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 60.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Center(
                        child: Text(
                          'COIN ECONOMICS',
                          style: TextStyle(
                            fontSize: 50,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 100,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              children: [
                                const Text(
                                  'Coin distribution',
                                  style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(30.0),
                                  child: Image.asset(
                                    'img/main/coindistribution.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                const Text(
                                  'Fund distribution',
                                  style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(30.0),
                                  child: Image.asset(
                                    'img/main/funddistribution.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      RichText(
                        text: const TextSpan(
                          style: TextStyle(
                            fontSize: 18.0,
                            color: Colors.black,
                            fontWeight: FontWeight.w300,
                            height: 1.6,
                          ),
                          children: [
                            TextSpan(text: '1. '),
                            TextSpan(
                              text: 'Reserve Fund & Conversion Compensation: ',
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            TextSpan(text: '1,000,000,000 INC'),
                          ],
                        ),
                      ),
                      RichText(
                        text: const TextSpan(
                          style: TextStyle(
                            fontSize: 18.0,
                            color: Colors.black,
                            fontWeight: FontWeight.w300,
                            height: 1.6,
                          ),
                          children: [
                            TextSpan(text: '2. '),
                            TextSpan(
                              text: 'Distribution: ',
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            TextSpan(text: '1,000,000,000 INC'),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 100,
                      ),
                      Center(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            RichText(
                              text: const TextSpan(
                                style: TextStyle(
                                  fontSize: 20.0,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w300,
                                  height: 2.2,
                                ),
                                children: [
                                  TextSpan(
                                    text: 'Symbol: ',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  TextSpan(text: 'INC'),
                                ],
                              ),
                            ),
                            RichText(
                              text: const TextSpan(
                                style: TextStyle(
                                  fontSize: 20.0,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w300,
                                  height: 2.2,
                                ),
                                children: [
                                  TextSpan(
                                    text: 'Total issuance: ',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  TextSpan(text: '2,000,000,000 INC'),
                                ],
                              ),
                            ),
                            RichText(
                              text: const TextSpan(
                                style: TextStyle(
                                  fontSize: 20.0,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w300,
                                  height: 2.2,
                                ),
                                children: [
                                  TextSpan(
                                    text: 'Minimum purchase: ',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  TextSpan(text: '0.1 ETH'),
                                ],
                              ),
                            ),
                            RichText(
                              text: const TextSpan(
                                style: TextStyle(
                                  fontSize: 20.0,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w300,
                                  height: 2.2,
                                ),
                                children: [
                                  TextSpan(
                                    text: 'KYC required: ',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  TextSpan(text: 'YES(Instapay App required)'),
                                ],
                              ),
                            ),
                            RichText(
                              text: const TextSpan(
                                style: TextStyle(
                                  fontSize: 20.0,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w300,
                                  height: 2.2,
                                ),
                                children: [
                                  TextSpan(
                                    text: 'Accepted payment: ',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  TextSpan(text: 'FIAT(KRW) and Ethereum ONLY'),
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 2400,
              padding: const EdgeInsets.symmetric(
                vertical: 20,
                horizontal: 50,
              ),
              decoration: const BoxDecoration(
                color: Color(0xff2d3943),
              ),
              alignment: Alignment.center,
              child: SizedBox(
                width: 1200,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 60.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(top: 20.0),
                        child: Text(
                          'ROADMAP',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 50,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 2000,
                        child: Stack(
                          alignment: Alignment.topCenter,
                          children: [
                            VerticalDivider(
                              thickness: 3,
                              color: Colors.white,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 50.0),
                              child: CircleYearWidget(
                                year: '2008',
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 220.0),
                              child: CircleMonthWidget(MonthData(
                                month: 'Jan',
                                direction: MonthMessageDirection.right,
                                title: 'QR Code Payment Patent Registration',
                                description:
                                    '“METHOD AND APPARATUS FOR CONTROLLING GIRO CHARGE PAYMENT BY USING MOBILE COMMUNICATION TERMINAL”',
                              )),
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
      ),
    );
  }
}

class CircleYearWidget extends StatelessWidget {
  final String year;

  const CircleYearWidget({
    Key? key,
    required this.year,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
          ),
        ),
        Container(
          width: 85,
          height: 85,
          decoration: BoxDecoration(
            color: Color(0xff38aab7),
            shape: BoxShape.circle,
          ),
          child: Center(
            child: Text(
              year,
              style: TextStyle(
                fontWeight: FontWeight.w700,
                color: Colors.white,
                fontSize: 28,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class CircleMonthWidget extends StatelessWidget {
  final MonthData data;

  const CircleMonthWidget(
    this.data, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Padding(
          padding: (data.direction == MonthMessageDirection.right)
              ? const EdgeInsets.only(right: 120.0)
              : const EdgeInsets.only(left: 120.0),
          child: Text(
            data.month,
            style: TextStyle(
              fontWeight: FontWeight.w700,
              color: Colors.white,
              fontSize: 22,
            ),
          ),
        ),
        Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
          ),
        ),
        // Padding(
        //   padding: (data.direction == MonthMessageDirection.right)
        //       ? const EdgeInsets.only(left: 450.0)
        //       : const EdgeInsets.only(right: 450.0),
        //   child: Container(
        //     padding: EdgeInsets.all(10),
        //     decoration: BoxDecoration(
        //       color: Colors.white,
        //       borderRadius: BorderRadius.circular(15),
        //     ),
        //     child: Column(
        //       crossAxisAlignment: CrossAxisAlignment.start,
        //       children: [
        //         Text(
        //           data.title,
        //           style: TextStyle(
        //             color: Color(0xff4ac1c2),
        //             fontSize: 19,
        //             fontWeight: FontWeight.w700,
        //           ),
        //         ),
        //         SizedBox(
        //           height: 30,
        //         ),
        //         Text(
        //           data.description,
        //           style: TextStyle(
        //             color: Colors.black,
        //             fontSize: 18,
        //             fontWeight: FontWeight.w300,
        //           ),
        //         ),
        //       ],
        //     ),
        //   ),
        // ),
        Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Text(
            data.title,
            style: TextStyle(
              color: Color(0xff4ac1c2),
              fontSize: 19,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ],
    );
  }
}

enum MonthMessageDirection {
  left,
  right,
}

class MonthData {
  final String title;
  final String description;
  final String month;
  final MonthMessageDirection direction;

  MonthData({
    required this.title,
    required this.month,
    required this.description,
    required this.direction,
  });
}
