import 'package:flutter/material.dart';
import 'package:insta_coin/responsive/responsive.dart';

class WhyInsta extends StatelessWidget {
  const WhyInsta({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: Responsive.isDesktop(context) ? 1400 : null,
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
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 40.0),
              child: Text(
                'WHY INSTACOIN?',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 50,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            if (Responsive.isDesktop(context))
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding:
                      const EdgeInsets.symmetric(horizontal: 60.0),
                      child: Container(
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius:
                          BorderRadius.all(Radius.circular(15)),
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 20.0, horizontal: 15),
                                child:
                                Image.asset('img/main/why1-1.png'),
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
                                          padding: EdgeInsets.only(
                                              bottom: 20.0),
                                          child: Text(
                                            'Cash and Coin Payment in One Place',
                                            style: TextStyle(
                                              fontWeight:
                                              FontWeight.w700,
                                              fontSize: 26,
                                              color: Color(0xff4ac1c2),
                                            ),
                                          ),
                                        ),
                                        Text(
                                          'We have the world’s first patented QR Code-based mobile payment platform(2008), with which we will provide both cash payment and INC payment options. As the only mobile payment company to have integrated all Korean banks, we have ultimate advantage to expanding user base for InstaCoin as both cash and coin provide alternative payment methods to costly and complicated credit card system by lowering expenses for merchants and providing convenience for users.',
                                          style: TextStyle(
                                              color: Color(0xff515151),
                                              fontWeight:
                                              FontWeight.w200,
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
                      padding:
                      const EdgeInsets.symmetric(horizontal: 60.0),
                      child: Container(
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius:
                          BorderRadius.all(Radius.circular(15)),
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 20.0, horizontal: 15),
                                child:
                                Image.asset('img/main/why1-2.png'),
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
                                          padding: EdgeInsets.only(
                                              bottom: 20.0),
                                          child: Text(
                                            'Grand Consortium',
                                            style: TextStyle(
                                              fontWeight:
                                              FontWeight.w700,
                                              fontSize: 26,
                                              color: Color(0xff4ac1c2),
                                            ),
                                          ),
                                        ),
                                        Text(
                                          'As payment coin, InstaCoin is virtually applicable to any BM. InstaCoin has been continuously expanding, currently having several projects to merge with InstaCoin and its platform applications. As InstaCoin is joined by more projects and coins, its user base and PApps will both grow, rendering the payment ecosystem more widely available. We currently have several projects planning to join InstaCoin.',
                                          style: TextStyle(
                                              color: Color(0xff515151),
                                              fontWeight:
                                              FontWeight.w200,
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
                      padding:
                      const EdgeInsets.symmetric(horizontal: 70.0),
                      child: Container(
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius:
                          BorderRadius.all(Radius.circular(15)),
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 20.0, horizontal: 15),
                                child:
                                Image.asset('img/main/why1-3.png'),
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
                                          padding: EdgeInsets.only(
                                              bottom: 20.0),
                                          child: Text(
                                            'Practical Application',
                                            style: TextStyle(
                                              fontWeight:
                                              FontWeight.w700,
                                              fontSize: 26,
                                              color: Color(0xff4ac1c2),
                                            ),
                                          ),
                                        ),
                                        Text(
                                          'InstaPay is joining Seoul Pay, a regional payment of QR payment-based platform for 10 million Seoul citizens. With original patents in various types of QR payment, InstaPay will provide the most competitive service with InstaCoin. Seoul Pay will be InstaCoin’s first practical application, success of which will accelerate more practical uses of InstaCoin in various types of payment transactions.',
                                          style: TextStyle(
                                              color: Color(0xff515151),
                                              fontWeight:
                                              FontWeight.w200,
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
            if (!Responsive.isDesktop(context))
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 60.0,
                      vertical: 30,
                    ),
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius:
                        BorderRadius.all(Radius.circular(15)),
                      ),
                      child: Column(
                        children: [
                          Image.asset('img/main/why1-1.png'),
                          Container(
                            decoration: const BoxDecoration(
                              color: Color(0xfff4f9f9),
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(15),
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
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 60.0,
                      vertical: 30,
                    ),
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius:
                        BorderRadius.all(Radius.circular(15)),
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 20.0, horizontal: 15),
                            child: Image.asset('img/main/why1-2.png'),
                          ),
                          Container(
                            decoration: const BoxDecoration(
                              color: Color(0xfff4f9f9),
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(15),
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
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 60.0,
                      vertical: 30,
                    ),
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius:
                        BorderRadius.all(Radius.circular(15)),
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 20.0, horizontal: 15),
                            child: Image.asset('img/main/why1-3.png'),
                          ),
                          Container(
                            decoration: const BoxDecoration(
                              color: Color(0xfff4f9f9),
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(15),
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
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
          ],
        ),
      ),
    );
  }
}
