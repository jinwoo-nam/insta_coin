import 'package:flutter/material.dart';
import 'package:insta_coin/responsive/responsive.dart';
import 'package:insta_coin/ui/on_hover_detect.dart';

class TeamScreen extends StatefulWidget {
  const TeamScreen({Key? key}) : super(key: key);

  @override
  State<TeamScreen> createState() => _TeamScreenState();
}

class _TeamScreenState extends State<TeamScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color(0xff253444), Color.fromRGBO(24, 61, 96, 0.65)],
            ),
          ),
          alignment: Alignment.center,
          child: SizedBox(
            width: 1550,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 80.0,
                horizontal: 40,
              ),
              child: Center(
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(bottom: 70.0),
                      child: Text(
                        'TEAM',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 45,
                        ),
                      ),
                    ),
                    if (Responsive.isDesktop(context))
                      Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: OnHoverDetect(
                                  builder: (isHover) {
                                    return Padding(
                                      padding: const EdgeInsets.all(20.0),
                                      child: Container(
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 25,
                                          vertical: 45,
                                        ),
                                        decoration: isHover
                                            ? BoxDecoration(
                                                color: Colors.white,
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Colors.white
                                                        .withOpacity(0.5),
                                                    spreadRadius: 8,
                                                    blurRadius: 7,
                                                    offset: const Offset(0, 3),
                                                  )
                                                ],
                                                borderRadius:
                                                    const BorderRadius.all(
                                                        Radius.circular(15)),
                                              )
                                            : const BoxDecoration(
                                                color: Colors.white,
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(15)),
                                              ),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            const CircleAvatar(
                                              backgroundColor:
                                                  Colors.transparent,
                                              radius: 70,
                                              backgroundImage: ExactAssetImage(
                                                'img/team/team01.png',
                                              ),
                                            ),
                                            SizedBox(
                                              height: 300,
                                              child: Column(
                                                children: const [
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                      bottom: 10.0,
                                                      top: 40,
                                                    ),
                                                    child: Text(
                                                      'Jaekwang Bae',
                                                      style: TextStyle(
                                                        fontSize: 20,
                                                        fontWeight:
                                                            FontWeight.w700,
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        bottom: 15.0),
                                                    child: Text(
                                                      'Founder & CEO',
                                                      style: TextStyle(
                                                        fontSize: 19,
                                                        fontWeight:
                                                            FontWeight.w300,
                                                        color: Color.fromRGBO(
                                                            10, 50, 111, 0.58),
                                                      ),
                                                    ),
                                                  ),
                                                  Text(
                                                    'Jaekwang is a leading figure in internet governance and innovative venture ecosystem in Korea. He was a director/audit at NCsoft and Hancom and the general counsel at Naver throughout its foundation and IPO.',
                                                    maxLines: 5,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.start,
                                                    style: TextStyle(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w300,
                                                      height: 1.6,
                                                      wordSpacing: 1.5,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 20,
                                            ),
                                            Row(
                                              children: [
                                                InkWell(
                                                  onTap: () {},
                                                  child: Image.asset(
                                                    'img/team/Facebook-icon-1.png',
                                                    width: 30,
                                                    height: 30,
                                                  ),
                                                ),
                                                const SizedBox(
                                                  width: 10,
                                                ),
                                                InkWell(
                                                  onTap: () {},
                                                  child: Image.asset(
                                                    'img/team/linkedin.png',
                                                    width: 30,
                                                    height: 30,
                                                  ),
                                                ),
                                                const Spacer(),
                                                Container(
                                                  padding: const EdgeInsets
                                                          .symmetric(
                                                      horizontal: 10,
                                                      vertical: 7),
                                                  decoration: BoxDecoration(
                                                    border: Border.all(
                                                      color:
                                                          const Color.fromRGBO(
                                                              48,
                                                              191,
                                                              193,
                                                              0.79),
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            30),
                                                  ),
                                                  child: const Text(
                                                    'Read More',
                                                    style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      color: Color.fromRGBO(
                                                          48, 191, 193, 0.79),
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ),
                              Expanded(
                                child: OnHoverDetect(
                                  builder: (isHover) {
                                    return Padding(
                                      padding: const EdgeInsets.all(20.0),
                                      child: Container(
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 25,
                                          vertical: 45,
                                        ),
                                        decoration: isHover
                                            ? BoxDecoration(
                                                color: Colors.white,
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Colors.white
                                                        .withOpacity(0.5),
                                                    spreadRadius: 8,
                                                    blurRadius: 7,
                                                    offset: const Offset(0, 3),
                                                  )
                                                ],
                                                borderRadius:
                                                    const BorderRadius.all(
                                                        Radius.circular(15)),
                                              )
                                            : const BoxDecoration(
                                                color: Colors.white,
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(15)),
                                              ),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            const CircleAvatar(
                                              backgroundColor:
                                                  Colors.transparent,
                                              radius: 70,
                                              backgroundImage: ExactAssetImage(
                                                'img/team/team02.png',
                                              ),
                                            ),
                                            SizedBox(
                                              height: 300,
                                              child: Column(
                                                children: const [
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                      bottom: 10.0,
                                                      top: 40,
                                                    ),
                                                    child: Text(
                                                      'Kyoungsoo Kim',
                                                      style: TextStyle(
                                                        fontSize: 20,
                                                        fontWeight:
                                                            FontWeight.w700,
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        bottom: 15.0),
                                                    child: Text(
                                                      'CPO',
                                                      style: TextStyle(
                                                        fontSize: 19,
                                                        fontWeight:
                                                            FontWeight.w300,
                                                        color: Color.fromRGBO(
                                                            10, 50, 111, 0.58),
                                                      ),
                                                    ),
                                                  ),
                                                  Text(
                                                    'Kyoungsoo has over 18 years of experience as a web and mobile service business developer and UI/UX specialist. He joined InstaPay after 10 years of career at SK Communications.',
                                                    maxLines: 5,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.start,
                                                    style: TextStyle(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w300,
                                                      height: 1.6,
                                                      wordSpacing: 1.5,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 20,
                                            ),
                                            Row(
                                              children: [
                                                InkWell(
                                                  onTap: () {},
                                                  child: Image.asset(
                                                    'img/team/linkedin.png',
                                                    width: 30,
                                                    height: 30,
                                                  ),
                                                ),
                                                const Spacer(),
                                                Container(
                                                  padding: const EdgeInsets
                                                          .symmetric(
                                                      horizontal: 15,
                                                      vertical: 10),
                                                  decoration: BoxDecoration(
                                                    border: Border.all(
                                                      color:
                                                          const Color.fromRGBO(
                                                              48,
                                                              191,
                                                              193,
                                                              0.79),
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            30),
                                                  ),
                                                  child: const Text(
                                                    'Read More',
                                                    style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      color: Color.fromRGBO(
                                                          48, 191, 193, 0.79),
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ),
                              Expanded(
                                child: OnHoverDetect(
                                  builder: (isHover) {
                                    return Padding(
                                      padding: const EdgeInsets.all(20.0),
                                      child: Container(
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 25,
                                          vertical: 45,
                                        ),
                                        decoration: isHover
                                            ? BoxDecoration(
                                                color: Colors.white,
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Colors.white
                                                        .withOpacity(0.5),
                                                    spreadRadius: 8,
                                                    blurRadius: 7,
                                                    offset: const Offset(0, 3),
                                                  )
                                                ],
                                                borderRadius:
                                                    const BorderRadius.all(
                                                        Radius.circular(15)),
                                              )
                                            : const BoxDecoration(
                                                color: Colors.white,
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(15)),
                                              ),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            const CircleAvatar(
                                              backgroundColor:
                                                  Colors.transparent,
                                              radius: 70,
                                              backgroundImage: ExactAssetImage(
                                                'img/team/team03.png',
                                              ),
                                            ),
                                            SizedBox(
                                              height: 300,
                                              child: Column(
                                                children: const [
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                      bottom: 10.0,
                                                      top: 40,
                                                    ),
                                                    child: Text(
                                                      'Kwangyeon Won',
                                                      style: TextStyle(
                                                        fontSize: 20,
                                                        fontWeight:
                                                            FontWeight.w700,
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        bottom: 15.0),
                                                    child: Text(
                                                      'CCO',
                                                      style: TextStyle(
                                                        fontSize: 19,
                                                        fontWeight:
                                                            FontWeight.w300,
                                                        color: Color.fromRGBO(
                                                            10, 50, 111, 0.58),
                                                      ),
                                                    ),
                                                  ),
                                                  Text(
                                                    'Kwang Yeon oversees digital contents and media platform. He specializes in development of synthetical contents by coordinating analytical approach and qualitative knowledge.',
                                                    maxLines: 5,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.start,
                                                    style: TextStyle(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w300,
                                                      height: 1.6,
                                                      wordSpacing: 1.5,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 20,
                                            ),
                                            Row(
                                              children: [
                                                InkWell(
                                                  onTap: () {},
                                                  child: Image.asset(
                                                    'img/team/linkedin.png',
                                                    width: 30,
                                                    height: 30,
                                                  ),
                                                ),
                                                const Spacer(),
                                                Container(
                                                  padding: const EdgeInsets
                                                          .symmetric(
                                                      horizontal: 15,
                                                      vertical: 10),
                                                  decoration: BoxDecoration(
                                                    border: Border.all(
                                                      color:
                                                          const Color.fromRGBO(
                                                              48,
                                                              191,
                                                              193,
                                                              0.79),
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            30),
                                                  ),
                                                  child: const Text(
                                                    'Read More',
                                                    style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      color: Color.fromRGBO(
                                                          48, 191, 193, 0.79),
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ),
                              Expanded(
                                child: OnHoverDetect(
                                  builder: (isHover) {
                                    return Padding(
                                      padding: const EdgeInsets.all(20.0),
                                      child: Container(
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 25,
                                          vertical: 45,
                                        ),
                                        decoration: isHover
                                            ? BoxDecoration(
                                                color: Colors.white,
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Colors.white
                                                        .withOpacity(0.5),
                                                    spreadRadius: 8,
                                                    blurRadius: 7,
                                                    offset: const Offset(0, 3),
                                                  )
                                                ],
                                                borderRadius:
                                                    const BorderRadius.all(
                                                        Radius.circular(15)),
                                              )
                                            : const BoxDecoration(
                                                color: Colors.white,
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(15)),
                                              ),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            const CircleAvatar(
                                              backgroundColor:
                                                  Colors.transparent,
                                              radius: 70,
                                              backgroundImage: ExactAssetImage(
                                                'img/team/team04.png',
                                              ),
                                            ),
                                            SizedBox(
                                              height: 300,
                                              child: Column(
                                                children: const [
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                      bottom: 10.0,
                                                      top: 40,
                                                    ),
                                                    child: Text(
                                                      'Jongsung Chun',
                                                      style: TextStyle(
                                                        fontSize: 20,
                                                        fontWeight:
                                                            FontWeight.w700,
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        bottom: 15.0),
                                                    child: Text(
                                                      'Media & Platform Director',
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                        fontSize: 19,
                                                        fontWeight:
                                                            FontWeight.w300,
                                                        color: Color.fromRGBO(
                                                            10, 50, 111, 0.58),
                                                      ),
                                                    ),
                                                  ),
                                                  Text(
                                                    'Business strategy and communications specialist with extensive experience in media, various platforms, and IR, Jongsung was COO at Sinjisoft, the company that developed the world’s first VM(Virtual Machine).',
                                                    maxLines: 5,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.start,
                                                    style: TextStyle(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w300,
                                                      height: 1.6,
                                                      wordSpacing: 1.5,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 20,
                                            ),
                                            Row(
                                              children: [
                                                InkWell(
                                                  onTap: () {},
                                                  child: Image.asset(
                                                    'img/team/linkedin.png',
                                                    width: 30,
                                                    height: 30,
                                                  ),
                                                ),
                                                const Spacer(),
                                                Container(
                                                  padding: const EdgeInsets
                                                          .symmetric(
                                                      horizontal: 15,
                                                      vertical: 10),
                                                  decoration: BoxDecoration(
                                                    border: Border.all(
                                                      color:
                                                          const Color.fromRGBO(
                                                              48,
                                                              191,
                                                              193,
                                                              0.79),
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            30),
                                                  ),
                                                  child: const Text(
                                                    'Read More',
                                                    style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      color: Color.fromRGBO(
                                                          48, 191, 193, 0.79),
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ],
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: OnHoverDetect(
                                  builder: (isHover) {
                                    return Padding(
                                      padding: const EdgeInsets.all(20.0),
                                      child: Container(
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 25,
                                          vertical: 45,
                                        ),
                                        decoration: isHover
                                            ? BoxDecoration(
                                                color: Colors.white,
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Colors.white
                                                        .withOpacity(0.5),
                                                    spreadRadius: 8,
                                                    blurRadius: 7,
                                                    offset: const Offset(0, 3),
                                                  )
                                                ],
                                                borderRadius:
                                                    const BorderRadius.all(
                                                        Radius.circular(15)),
                                              )
                                            : const BoxDecoration(
                                                color: Colors.white,
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(15)),
                                              ),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            const CircleAvatar(
                                              backgroundColor:
                                                  Colors.transparent,
                                              radius: 70,
                                              backgroundImage: ExactAssetImage(
                                                'img/team/team05.png',
                                              ),
                                            ),
                                            SizedBox(
                                              height: 300,
                                              child: Column(
                                                children: const [
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                      bottom: 10.0,
                                                      top: 40,
                                                    ),
                                                    child: Text(
                                                      'Sangyeop Kim',
                                                      style: TextStyle(
                                                        fontSize: 20,
                                                        fontWeight:
                                                            FontWeight.w700,
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        bottom: 15.0),
                                                    child: Text(
                                                      'Chief Blockchain Architect',
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                        fontSize: 19,
                                                        fontWeight:
                                                            FontWeight.w300,
                                                        color: Color.fromRGBO(
                                                            10, 50, 111, 0.58),
                                                      ),
                                                    ),
                                                  ),
                                                  Text(
                                                    'Sangyeop specializes in InfoSec and Architecture. In the past years, he worked for financial companies including KEB Hana Bank. He contributed to the development of Crypto-Market and led architecture and implementation of InstaPay’s server, including integration of Payment-gateway with KFTC. He majored in Computer Science at Pusan National University.',
                                                    maxLines: 5,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.start,
                                                    style: TextStyle(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w300,
                                                      height: 1.6,
                                                      wordSpacing: 1.5,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 20,
                                            ),
                                            Row(
                                              children: [
                                                InkWell(
                                                  onTap: () {},
                                                  child: Image.asset(
                                                    'img/team/linkedin.png',
                                                    width: 30,
                                                    height: 30,
                                                  ),
                                                ),
                                                const Spacer(),
                                                Container(
                                                  padding: const EdgeInsets
                                                          .symmetric(
                                                      horizontal: 15,
                                                      vertical: 10),
                                                  decoration: BoxDecoration(
                                                    border: Border.all(
                                                      color:
                                                          const Color.fromRGBO(
                                                              48,
                                                              191,
                                                              193,
                                                              0.79),
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            30),
                                                  ),
                                                  child: const Text(
                                                    'Read More',
                                                    style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      color: Color.fromRGBO(
                                                          48, 191, 193, 0.79),
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ),
                              Expanded(
                                child: OnHoverDetect(
                                  builder: (isHover) {
                                    return Padding(
                                      padding: const EdgeInsets.all(20.0),
                                      child: Container(
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 25,
                                          vertical: 45,
                                        ),
                                        decoration: isHover
                                            ? BoxDecoration(
                                                color: Colors.white,
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Colors.white
                                                        .withOpacity(0.5),
                                                    spreadRadius: 8,
                                                    blurRadius: 7,
                                                    offset: const Offset(0, 3),
                                                  )
                                                ],
                                                borderRadius:
                                                    const BorderRadius.all(
                                                        Radius.circular(15)),
                                              )
                                            : const BoxDecoration(
                                                color: Colors.white,
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(15)),
                                              ),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            const CircleAvatar(
                                              backgroundColor:
                                                  Colors.transparent,
                                              radius: 70,
                                              backgroundImage: ExactAssetImage(
                                                'img/team/team06.png',
                                              ),
                                            ),
                                            SizedBox(
                                              height: 300,
                                              child: Column(
                                                children: const [
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                      bottom: 10.0,
                                                      top: 40,
                                                    ),
                                                    child: Text(
                                                      'Keunhye Lee',
                                                      style: TextStyle(
                                                        fontSize: 20,
                                                        fontWeight:
                                                            FontWeight.w700,
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        bottom: 15.0),
                                                    child: Text(
                                                      'Director of Marketing and Communication',
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                        fontSize: 19,
                                                        fontWeight:
                                                            FontWeight.w300,
                                                        color: Color.fromRGBO(
                                                            10, 50, 111, 0.58),
                                                      ),
                                                    ),
                                                  ),
                                                  Text(
                                                    'Keunhye has 15 years’ experience in advertising and marketing communication. After graduation, Lee joined Daehong Communications, an advertising marketing agency, as an ad creator. Lee participated in many big campaigns in IMC dimension, with specialization in advertising and promotion. Lee majored in industrial design and business administration at Seoul National University.',
                                                    maxLines: 5,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.start,
                                                    style: TextStyle(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w300,
                                                      height: 1.6,
                                                      wordSpacing: 1.5,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 20,
                                            ),
                                            Row(
                                              children: [
                                                InkWell(
                                                  onTap: () {},
                                                  child: Image.asset(
                                                    'img/team/linkedin.png',
                                                    width: 30,
                                                    height: 30,
                                                  ),
                                                ),
                                                const Spacer(),
                                                Container(
                                                  padding: const EdgeInsets
                                                          .symmetric(
                                                      horizontal: 15,
                                                      vertical: 10),
                                                  decoration: BoxDecoration(
                                                    border: Border.all(
                                                      color:
                                                          const Color.fromRGBO(
                                                              48,
                                                              191,
                                                              193,
                                                              0.79),
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            30),
                                                  ),
                                                  child: const Text(
                                                    'Read More',
                                                    style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      color: Color.fromRGBO(
                                                          48, 191, 193, 0.79),
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ),
                              Expanded(
                                child: OnHoverDetect(
                                  builder: (isHover) {
                                    return Padding(
                                      padding: const EdgeInsets.all(20.0),
                                      child: Container(
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 25,
                                          vertical: 45,
                                        ),
                                        decoration: isHover
                                            ? BoxDecoration(
                                                color: Colors.white,
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Colors.white
                                                        .withOpacity(0.5),
                                                    spreadRadius: 8,
                                                    blurRadius: 7,
                                                    offset: const Offset(0, 3),
                                                  )
                                                ],
                                                borderRadius:
                                                    const BorderRadius.all(
                                                        Radius.circular(15)),
                                              )
                                            : const BoxDecoration(
                                                color: Colors.white,
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(15)),
                                              ),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            const CircleAvatar(
                                              backgroundColor:
                                                  Colors.transparent,
                                              radius: 70,
                                              backgroundImage: ExactAssetImage(
                                                'img/team/team07.png',
                                              ),
                                            ),
                                            SizedBox(
                                              height: 300,
                                              child: Column(
                                                children: const [
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                      bottom: 10.0,
                                                      top: 40,
                                                    ),
                                                    child: Text(
                                                      'Yewon Yoo',
                                                      style: TextStyle(
                                                        fontSize: 20,
                                                        fontWeight:
                                                            FontWeight.w700,
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        bottom: 15.0),
                                                    child: Text(
                                                      'UX and Visual Designer',
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                        fontSize: 19,
                                                        fontWeight:
                                                            FontWeight.w300,
                                                        color: Color.fromRGBO(
                                                            10, 50, 111, 0.58),
                                                      ),
                                                    ),
                                                  ),
                                                  Text(
                                                    'Yewon is a graphic designer with a demonstrated history of working in the design industry. Skilled in Adobe Creative Suite and Typography. Strong professional with a Master’s Degree focused in Graphic Design from Seoul National University and a Bachelor’s Degree from Rhode Island School of Design.',
                                                    maxLines: 5,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.start,
                                                    style: TextStyle(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w300,
                                                      height: 1.6,
                                                      wordSpacing: 1.5,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 20,
                                            ),
                                            Row(
                                              children: [
                                                InkWell(
                                                  onTap: () {},
                                                  child: Image.asset(
                                                    'img/team/linkedin.png',
                                                    width: 30,
                                                    height: 30,
                                                  ),
                                                ),
                                                const Spacer(),
                                                Container(
                                                  padding: const EdgeInsets
                                                          .symmetric(
                                                      horizontal: 15,
                                                      vertical: 10),
                                                  decoration: BoxDecoration(
                                                    border: Border.all(
                                                      color:
                                                          const Color.fromRGBO(
                                                              48,
                                                              191,
                                                              193,
                                                              0.79),
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            30),
                                                  ),
                                                  child: const Text(
                                                    'Read More',
                                                    style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      color: Color.fromRGBO(
                                                          48, 191, 193, 0.79),
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ),
                              Expanded(
                                child: OnHoverDetect(
                                  builder: (isHover) {
                                    return Padding(
                                      padding: const EdgeInsets.all(20.0),
                                      child: Container(
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 25,
                                          vertical: 45,
                                        ),
                                        decoration: isHover
                                            ? BoxDecoration(
                                                color: Colors.white,
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Colors.white
                                                        .withOpacity(0.5),
                                                    spreadRadius: 8,
                                                    blurRadius: 7,
                                                    offset: const Offset(0, 3),
                                                  )
                                                ],
                                                borderRadius:
                                                    const BorderRadius.all(
                                                        Radius.circular(15)),
                                              )
                                            : const BoxDecoration(
                                                color: Colors.white,
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(15)),
                                              ),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            const Icon(
                                              Icons.question_mark,
                                              color: Color(0xff4ac1c2),
                                              size: 140,
                                            ),
                                            SizedBox(
                                              height: 360,
                                              child: Column(
                                                children: const [
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                      bottom: 10.0,
                                                      top: 40,
                                                    ),
                                                    child: Text(
                                                      'You?',
                                                      style: TextStyle(
                                                        fontSize: 20,
                                                        fontWeight:
                                                            FontWeight.w700,
                                                      ),
                                                    ),
                                                  ),
                                                  Text(
                                                    'We are looking for talented, driven people to join our journey of bringing the crypto-payment innovation to reality. If you’re interested or have any inquiry, please contact us at',
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w300,
                                                      height: 1.6,
                                                      wordSpacing: 1.5,
                                                    ),
                                                  ),
                                                  Text(
                                                    'business@instapay.kr',
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      height: 1.6,
                                                      wordSpacing: 1.5,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    if (Responsive.isTablet(context))
                      Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: OnHoverDetect(
                                  builder: (isHover) {
                                    return Padding(
                                      padding: const EdgeInsets.all(20.0),
                                      child: Container(
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 30,
                                          vertical: 45,
                                        ),
                                        decoration: isHover
                                            ? BoxDecoration(
                                                color: Colors.white,
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Colors.white
                                                        .withOpacity(0.5),
                                                    spreadRadius: 8,
                                                    blurRadius: 7,
                                                    offset: const Offset(0, 3),
                                                  )
                                                ],
                                                borderRadius:
                                                    const BorderRadius.all(
                                                        Radius.circular(15)),
                                              )
                                            : const BoxDecoration(
                                                color: Colors.white,
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(15)),
                                              ),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            const CircleAvatar(
                                              backgroundColor:
                                                  Colors.transparent,
                                              radius: 70,
                                              backgroundImage: ExactAssetImage(
                                                'img/team/team01.png',
                                              ),
                                            ),
                                            SizedBox(
                                              height: 300,
                                              child: Column(
                                                children: const [
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                      bottom: 10.0,
                                                      top: 40,
                                                    ),
                                                    child: Text(
                                                      'Jaekwang Bae',
                                                      style: TextStyle(
                                                        fontSize: 23,
                                                        fontWeight:
                                                            FontWeight.w700,
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        bottom: 15.0),
                                                    child: Text(
                                                      'Founder & CEO',
                                                      style: TextStyle(
                                                        fontSize: 20,
                                                        fontWeight:
                                                            FontWeight.w300,
                                                        color: Color.fromRGBO(
                                                            10, 50, 111, 0.58),
                                                      ),
                                                    ),
                                                  ),
                                                  Text(
                                                    'Jaekwang is a leading figure in internet governance and innovative venture ecosystem in Korea. He was a director/audit at NCsoft and Hancom and the general counsel at Naver throughout its foundation and IPO.',
                                                    maxLines: 5,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.start,
                                                    style: TextStyle(
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.w300,
                                                      height: 1.6,
                                                      wordSpacing: 1.5,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 20,
                                            ),
                                            Row(
                                              children: [
                                                InkWell(
                                                  onTap: () {},
                                                  child: Image.asset(
                                                    'img/team/Facebook-icon-1.png',
                                                    width: 30,
                                                    height: 30,
                                                  ),
                                                ),
                                                const SizedBox(
                                                  width: 10,
                                                ),
                                                InkWell(
                                                  onTap: () {},
                                                  child: Image.asset(
                                                    'img/team/linkedin.png',
                                                    width: 30,
                                                    height: 30,
                                                  ),
                                                ),
                                                const Spacer(),
                                                Container(
                                                  padding: const EdgeInsets
                                                          .symmetric(
                                                      horizontal: 15,
                                                      vertical: 10),
                                                  decoration: BoxDecoration(
                                                    border: Border.all(
                                                      color:
                                                          const Color.fromRGBO(
                                                              48,
                                                              191,
                                                              193,
                                                              0.79),
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            30),
                                                  ),
                                                  child: const Text(
                                                    'Read More',
                                                    style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      color: Color.fromRGBO(
                                                          48, 191, 193, 0.79),
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ),
                              Expanded(
                                child: OnHoverDetect(
                                  builder: (isHover) {
                                    return Padding(
                                      padding: const EdgeInsets.all(20.0),
                                      child: Container(
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 30,
                                          vertical: 45,
                                        ),
                                        decoration: isHover
                                            ? BoxDecoration(
                                                color: Colors.white,
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Colors.white
                                                        .withOpacity(0.5),
                                                    spreadRadius: 8,
                                                    blurRadius: 7,
                                                    offset: const Offset(0, 3),
                                                  )
                                                ],
                                                borderRadius:
                                                    const BorderRadius.all(
                                                        Radius.circular(15)),
                                              )
                                            : const BoxDecoration(
                                                color: Colors.white,
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(15)),
                                              ),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            const CircleAvatar(
                                              backgroundColor:
                                                  Colors.transparent,
                                              radius: 70,
                                              backgroundImage: ExactAssetImage(
                                                'img/team/team02.png',
                                              ),
                                            ),
                                            SizedBox(
                                              height: 300,
                                              child: Column(
                                                children: const [
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                      bottom: 10.0,
                                                      top: 40,
                                                    ),
                                                    child: Text(
                                                      'Kyoungsoo Kim',
                                                      style: TextStyle(
                                                        fontSize: 23,
                                                        fontWeight:
                                                            FontWeight.w700,
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        bottom: 15.0),
                                                    child: Text(
                                                      'CPO',
                                                      style: TextStyle(
                                                        fontSize: 20,
                                                        fontWeight:
                                                            FontWeight.w300,
                                                        color: Color.fromRGBO(
                                                            10, 50, 111, 0.58),
                                                      ),
                                                    ),
                                                  ),
                                                  Text(
                                                    'Kyoungsoo has over 18 years of experience as a web and mobile service business developer and UI/UX specialist. He joined InstaPay after 10 years of career at SK Communications.',
                                                    maxLines: 5,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.start,
                                                    style: TextStyle(
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.w300,
                                                      height: 1.6,
                                                      wordSpacing: 1.5,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 20,
                                            ),
                                            Row(
                                              children: [
                                                InkWell(
                                                  onTap: () {},
                                                  child: Image.asset(
                                                    'img/team/linkedin.png',
                                                    width: 30,
                                                    height: 30,
                                                  ),
                                                ),
                                                const Spacer(),
                                                Container(
                                                  padding: const EdgeInsets
                                                          .symmetric(
                                                      horizontal: 15,
                                                      vertical: 10),
                                                  decoration: BoxDecoration(
                                                    border: Border.all(
                                                      color:
                                                          const Color.fromRGBO(
                                                              48,
                                                              191,
                                                              193,
                                                              0.79),
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            30),
                                                  ),
                                                  child: const Text(
                                                    'Read More',
                                                    style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      color: Color.fromRGBO(
                                                          48, 191, 193, 0.79),
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ],
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: OnHoverDetect(
                                  builder: (isHover) {
                                    return Padding(
                                      padding: const EdgeInsets.all(20.0),
                                      child: Container(
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 30,
                                          vertical: 45,
                                        ),
                                        decoration: isHover
                                            ? BoxDecoration(
                                                color: Colors.white,
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Colors.white
                                                        .withOpacity(0.5),
                                                    spreadRadius: 8,
                                                    blurRadius: 7,
                                                    offset: const Offset(0, 3),
                                                  )
                                                ],
                                                borderRadius:
                                                    const BorderRadius.all(
                                                        Radius.circular(15)),
                                              )
                                            : const BoxDecoration(
                                                color: Colors.white,
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(15)),
                                              ),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            const CircleAvatar(
                                              backgroundColor:
                                                  Colors.transparent,
                                              radius: 70,
                                              backgroundImage: ExactAssetImage(
                                                'img/team/team03.png',
                                              ),
                                            ),
                                            SizedBox(
                                              height: 300,
                                              child: Column(
                                                children: const [
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                      bottom: 10.0,
                                                      top: 40,
                                                    ),
                                                    child: Text(
                                                      'Kwangyeon Won',
                                                      style: TextStyle(
                                                        fontSize: 23,
                                                        fontWeight:
                                                            FontWeight.w700,
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        bottom: 15.0),
                                                    child: Text(
                                                      'CCO',
                                                      style: TextStyle(
                                                        fontSize: 20,
                                                        fontWeight:
                                                            FontWeight.w300,
                                                        color: Color.fromRGBO(
                                                            10, 50, 111, 0.58),
                                                      ),
                                                    ),
                                                  ),
                                                  Text(
                                                    'Kwang Yeon oversees digital contents and media platform. He specializes in development of synthetical contents by coordinating analytical approach and qualitative knowledge.',
                                                    maxLines: 5,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.start,
                                                    style: TextStyle(
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.w300,
                                                      height: 1.6,
                                                      wordSpacing: 1.5,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 20,
                                            ),
                                            Row(
                                              children: [
                                                InkWell(
                                                  onTap: () {},
                                                  child: Image.asset(
                                                    'img/team/linkedin.png',
                                                    width: 30,
                                                    height: 30,
                                                  ),
                                                ),
                                                const Spacer(),
                                                Container(
                                                  padding: const EdgeInsets
                                                          .symmetric(
                                                      horizontal: 15,
                                                      vertical: 10),
                                                  decoration: BoxDecoration(
                                                    border: Border.all(
                                                      color:
                                                          const Color.fromRGBO(
                                                              48,
                                                              191,
                                                              193,
                                                              0.79),
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            30),
                                                  ),
                                                  child: const Text(
                                                    'Read More',
                                                    style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      color: Color.fromRGBO(
                                                          48, 191, 193, 0.79),
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ),
                              Expanded(
                                child: OnHoverDetect(
                                  builder: (isHover) {
                                    return Padding(
                                      padding: const EdgeInsets.all(20.0),
                                      child: Container(
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 30,
                                          vertical: 45,
                                        ),
                                        decoration: isHover
                                            ? BoxDecoration(
                                                color: Colors.white,
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Colors.white
                                                        .withOpacity(0.5),
                                                    spreadRadius: 8,
                                                    blurRadius: 7,
                                                    offset: const Offset(0, 3),
                                                  )
                                                ],
                                                borderRadius:
                                                    const BorderRadius.all(
                                                        Radius.circular(15)),
                                              )
                                            : const BoxDecoration(
                                                color: Colors.white,
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(15)),
                                              ),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            const CircleAvatar(
                                              backgroundColor:
                                                  Colors.transparent,
                                              radius: 70,
                                              backgroundImage: ExactAssetImage(
                                                'img/team/team04.png',
                                              ),
                                            ),
                                            SizedBox(
                                              height: 300,
                                              child: Column(
                                                children: const [
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                      bottom: 10.0,
                                                      top: 40,
                                                    ),
                                                    child: Text(
                                                      'Jongsung Chun',
                                                      style: TextStyle(
                                                        fontSize: 23,
                                                        fontWeight:
                                                            FontWeight.w700,
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        bottom: 15.0),
                                                    child: Text(
                                                      'Media & Platform Director',
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                        fontSize: 20,
                                                        fontWeight:
                                                            FontWeight.w300,
                                                        color: Color.fromRGBO(
                                                            10, 50, 111, 0.58),
                                                      ),
                                                    ),
                                                  ),
                                                  Text(
                                                    'Business strategy and communications specialist with extensive experience in media, various platforms, and IR, Jongsung was COO at Sinjisoft, the company that developed the world’s first VM(Virtual Machine).',
                                                    maxLines: 5,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.start,
                                                    style: TextStyle(
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.w300,
                                                      height: 1.6,
                                                      wordSpacing: 1.5,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 20,
                                            ),
                                            Row(
                                              children: [
                                                InkWell(
                                                  onTap: () {},
                                                  child: Image.asset(
                                                    'img/team/linkedin.png',
                                                    width: 30,
                                                    height: 30,
                                                  ),
                                                ),
                                                const Spacer(),
                                                Container(
                                                  padding: const EdgeInsets
                                                          .symmetric(
                                                      horizontal: 15,
                                                      vertical: 10),
                                                  decoration: BoxDecoration(
                                                    border: Border.all(
                                                      color:
                                                          const Color.fromRGBO(
                                                              48,
                                                              191,
                                                              193,
                                                              0.79),
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            30),
                                                  ),
                                                  child: const Text(
                                                    'Read More',
                                                    style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      color: Color.fromRGBO(
                                                          48, 191, 193, 0.79),
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ],
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: OnHoverDetect(
                                  builder: (isHover) {
                                    return Padding(
                                      padding: const EdgeInsets.all(20.0),
                                      child: Container(
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 30,
                                          vertical: 45,
                                        ),
                                        decoration: isHover
                                            ? BoxDecoration(
                                                color: Colors.white,
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Colors.white
                                                        .withOpacity(0.5),
                                                    spreadRadius: 8,
                                                    blurRadius: 7,
                                                    offset: const Offset(0, 3),
                                                  )
                                                ],
                                                borderRadius:
                                                    const BorderRadius.all(
                                                        Radius.circular(15)),
                                              )
                                            : const BoxDecoration(
                                                color: Colors.white,
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(15)),
                                              ),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            const CircleAvatar(
                                              backgroundColor:
                                                  Colors.transparent,
                                              radius: 70,
                                              backgroundImage: ExactAssetImage(
                                                'img/team/team05.png',
                                              ),
                                            ),
                                            SizedBox(
                                              height: 300,
                                              child: Column(
                                                children: const [
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                      bottom: 10.0,
                                                      top: 40,
                                                    ),
                                                    child: Text(
                                                      'Sangyeop Kim',
                                                      style: TextStyle(
                                                        fontSize: 23,
                                                        fontWeight:
                                                            FontWeight.w700,
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        bottom: 15.0),
                                                    child: Text(
                                                      'Chief Blockchain Architect',
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                        fontSize: 20,
                                                        fontWeight:
                                                            FontWeight.w300,
                                                        color: Color.fromRGBO(
                                                            10, 50, 111, 0.58),
                                                      ),
                                                    ),
                                                  ),
                                                  Text(
                                                    'Sangyeop specializes in InfoSec and Architecture. In the past years, he worked for financial companies including KEB Hana Bank. He contributed to the development of Crypto-Market and led architecture and implementation of InstaPay’s server, including integration of Payment-gateway with KFTC. He majored in Computer Science at Pusan National University.',
                                                    maxLines: 5,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.start,
                                                    style: TextStyle(
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.w300,
                                                      height: 1.6,
                                                      wordSpacing: 1.5,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 20,
                                            ),
                                            Row(
                                              children: [
                                                InkWell(
                                                  onTap: () {},
                                                  child: Image.asset(
                                                    'img/team/linkedin.png',
                                                    width: 30,
                                                    height: 30,
                                                  ),
                                                ),
                                                const Spacer(),
                                                Container(
                                                  padding: const EdgeInsets
                                                          .symmetric(
                                                      horizontal: 15,
                                                      vertical: 10),
                                                  decoration: BoxDecoration(
                                                    border: Border.all(
                                                      color:
                                                          const Color.fromRGBO(
                                                              48,
                                                              191,
                                                              193,
                                                              0.79),
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            30),
                                                  ),
                                                  child: const Text(
                                                    'Read More',
                                                    style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      color: Color.fromRGBO(
                                                          48, 191, 193, 0.79),
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ),
                              Expanded(
                                child: OnHoverDetect(
                                  builder: (isHover) {
                                    return Padding(
                                      padding: const EdgeInsets.all(20.0),
                                      child: Container(
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 30,
                                          vertical: 45,
                                        ),
                                        decoration: isHover
                                            ? BoxDecoration(
                                                color: Colors.white,
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Colors.white
                                                        .withOpacity(0.5),
                                                    spreadRadius: 8,
                                                    blurRadius: 7,
                                                    offset: const Offset(0, 3),
                                                  )
                                                ],
                                                borderRadius:
                                                    const BorderRadius.all(
                                                        Radius.circular(15)),
                                              )
                                            : const BoxDecoration(
                                                color: Colors.white,
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(15)),
                                              ),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            const CircleAvatar(
                                              backgroundColor:
                                                  Colors.transparent,
                                              radius: 70,
                                              backgroundImage: ExactAssetImage(
                                                'img/team/team06.png',
                                              ),
                                            ),
                                            SizedBox(
                                              height: 300,
                                              child: Column(
                                                children: const [
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                      bottom: 10.0,
                                                      top: 40,
                                                    ),
                                                    child: Text(
                                                      'Keunhye Lee',
                                                      style: TextStyle(
                                                        fontSize: 23,
                                                        fontWeight:
                                                            FontWeight.w700,
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        bottom: 15.0),
                                                    child: Text(
                                                      'Director of Marketing and Communication',
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                        fontSize: 20,
                                                        fontWeight:
                                                            FontWeight.w300,
                                                        color: Color.fromRGBO(
                                                            10, 50, 111, 0.58),
                                                      ),
                                                    ),
                                                  ),
                                                  Text(
                                                    'Keunhye has 15 years’ experience in advertising and marketing communication. After graduation, Lee joined Daehong Communications, an advertising marketing agency, as an ad creator. Lee participated in many big campaigns in IMC dimension, with specialization in advertising and promotion. Lee majored in industrial design and business administration at Seoul National University.',
                                                    maxLines: 5,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.start,
                                                    style: TextStyle(
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.w300,
                                                      height: 1.6,
                                                      wordSpacing: 1.5,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 20,
                                            ),
                                            Row(
                                              children: [
                                                InkWell(
                                                  onTap: () {},
                                                  child: Image.asset(
                                                    'img/team/linkedin.png',
                                                    width: 30,
                                                    height: 30,
                                                  ),
                                                ),
                                                const Spacer(),
                                                Container(
                                                  padding: const EdgeInsets
                                                          .symmetric(
                                                      horizontal: 15,
                                                      vertical: 10),
                                                  decoration: BoxDecoration(
                                                    border: Border.all(
                                                      color:
                                                          const Color.fromRGBO(
                                                              48,
                                                              191,
                                                              193,
                                                              0.79),
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            30),
                                                  ),
                                                  child: const Text(
                                                    'Read More',
                                                    style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      color: Color.fromRGBO(
                                                          48, 191, 193, 0.79),
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ],
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: OnHoverDetect(
                                  builder: (isHover) {
                                    return Padding(
                                      padding: const EdgeInsets.all(20.0),
                                      child: Container(
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 30,
                                          vertical: 45,
                                        ),
                                        decoration: isHover
                                            ? BoxDecoration(
                                                color: Colors.white,
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Colors.white
                                                        .withOpacity(0.5),
                                                    spreadRadius: 8,
                                                    blurRadius: 7,
                                                    offset: const Offset(0, 3),
                                                  )
                                                ],
                                                borderRadius:
                                                    const BorderRadius.all(
                                                        Radius.circular(15)),
                                              )
                                            : const BoxDecoration(
                                                color: Colors.white,
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(15)),
                                              ),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            const CircleAvatar(
                                              backgroundColor:
                                                  Colors.transparent,
                                              radius: 70,
                                              backgroundImage: ExactAssetImage(
                                                'img/team/team07.png',
                                              ),
                                            ),
                                            SizedBox(
                                              height: 300,
                                              child: Column(
                                                children: const [
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                      bottom: 10.0,
                                                      top: 40,
                                                    ),
                                                    child: Text(
                                                      'Yewon Yoo',
                                                      style: TextStyle(
                                                        fontSize: 23,
                                                        fontWeight:
                                                            FontWeight.w700,
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        bottom: 15.0),
                                                    child: Text(
                                                      'UX and Visual Designer',
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                        fontSize: 20,
                                                        fontWeight:
                                                            FontWeight.w300,
                                                        color: Color.fromRGBO(
                                                            10, 50, 111, 0.58),
                                                      ),
                                                    ),
                                                  ),
                                                  Text(
                                                    'Yewon is a graphic designer with a demonstrated history of working in the design industry. Skilled in Adobe Creative Suite and Typography. Strong professional with a Master’s Degree focused in Graphic Design from Seoul National University and a Bachelor’s Degree from Rhode Island School of Design.',
                                                    maxLines: 5,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.start,
                                                    style: TextStyle(
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.w300,
                                                      height: 1.6,
                                                      wordSpacing: 1.5,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 20,
                                            ),
                                            Row(
                                              children: [
                                                InkWell(
                                                  onTap: () {},
                                                  child: Image.asset(
                                                    'img/team/linkedin.png',
                                                    width: 30,
                                                    height: 30,
                                                  ),
                                                ),
                                                const Spacer(),
                                                Container(
                                                  padding: const EdgeInsets
                                                          .symmetric(
                                                      horizontal: 15,
                                                      vertical: 10),
                                                  decoration: BoxDecoration(
                                                    border: Border.all(
                                                      color:
                                                          const Color.fromRGBO(
                                                              48,
                                                              191,
                                                              193,
                                                              0.79),
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            30),
                                                  ),
                                                  child: const Text(
                                                    'Read More',
                                                    style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      color: Color.fromRGBO(
                                                          48, 191, 193, 0.79),
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ),
                              Expanded(
                                child: OnHoverDetect(
                                  builder: (isHover) {
                                    return Padding(
                                      padding: const EdgeInsets.all(20.0),
                                      child: Container(
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 30,
                                          vertical: 45,
                                        ),
                                        decoration: isHover
                                            ? BoxDecoration(
                                                color: Colors.white,
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Colors.white
                                                        .withOpacity(0.5),
                                                    spreadRadius: 8,
                                                    blurRadius: 7,
                                                    offset: const Offset(0, 3),
                                                  )
                                                ],
                                                borderRadius:
                                                    const BorderRadius.all(
                                                        Radius.circular(15)),
                                              )
                                            : const BoxDecoration(
                                                color: Colors.white,
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(15)),
                                              ),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            const Icon(
                                              Icons.question_mark,
                                              color: Color(0xff4ac1c2),
                                              size: 140,
                                            ),
                                            SizedBox(
                                              height: 300,
                                              child: Column(
                                                children: const [
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                      bottom: 10.0,
                                                      top: 40,
                                                    ),
                                                    child: Text(
                                                      'You?',
                                                      style: TextStyle(
                                                        fontSize: 23,
                                                        fontWeight:
                                                            FontWeight.w700,
                                                      ),
                                                    ),
                                                  ),
                                                  Text(
                                                    'We are looking for talented, driven people to join our journey of bringing the crypto-payment innovation to reality. If you’re interested or have any inquiry, please contact us at',
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.w300,
                                                      height: 1.6,
                                                      wordSpacing: 1.5,
                                                    ),
                                                  ),
                                                  Text(
                                                    'business@instapay.kr',
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      height: 1.6,
                                                      wordSpacing: 1.5,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 60,
                                            ),
                                          ],
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    if (Responsive.isMobile(context))
                      SizedBox(
                        width: 400,
                        child: Column(
                          children: [
                            OnHoverDetect(
                              builder: (isHover) {
                                return Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 30,
                                      vertical: 45,
                                    ),
                                    decoration: isHover
                                        ? BoxDecoration(
                                            color: Colors.white,
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.white
                                                    .withOpacity(0.5),
                                                spreadRadius: 8,
                                                blurRadius: 7,
                                                offset: const Offset(0, 3),
                                              )
                                            ],
                                            borderRadius:
                                                const BorderRadius.all(
                                                    Radius.circular(15)),
                                          )
                                        : const BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(15)),
                                          ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        const CircleAvatar(
                                          backgroundColor: Colors.transparent,
                                          radius: 70,
                                          backgroundImage: ExactAssetImage(
                                            'img/team/team01.png',
                                          ),
                                        ),
                                        SizedBox(
                                          height: 300,
                                          child: Column(
                                            children: const [
                                              Padding(
                                                padding: EdgeInsets.only(
                                                  bottom: 10.0,
                                                  top: 40,
                                                ),
                                                child: Text(
                                                  'Jaekwang Bae',
                                                  style: TextStyle(
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.w700,
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(
                                                    bottom: 15.0),
                                                child: Text(
                                                  'Founder & CEO',
                                                  style: TextStyle(
                                                    fontSize: 19,
                                                    fontWeight: FontWeight.w300,
                                                    color: Color.fromRGBO(
                                                        10, 50, 111, 0.58),
                                                  ),
                                                ),
                                              ),
                                              Text(
                                                'Jaekwang is a leading figure in internet governance and innovative venture ecosystem in Korea. He was a director/audit at NCsoft and Hancom and the general counsel at Naver throughout its foundation and IPO.',
                                                maxLines: 5,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.start,
                                                style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w300,
                                                  height: 1.6,
                                                  wordSpacing: 1.5,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 20,
                                        ),
                                        Row(
                                          children: [
                                            InkWell(
                                              onTap: () {},
                                              child: Image.asset(
                                                'img/team/Facebook-icon-1.png',
                                                width: 30,
                                                height: 30,
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 10,
                                            ),
                                            InkWell(
                                              onTap: () {},
                                              child: Image.asset(
                                                'img/team/linkedin.png',
                                                width: 30,
                                                height: 30,
                                              ),
                                            ),
                                            const Spacer(),
                                            Container(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 15,
                                                      vertical: 10),
                                              decoration: BoxDecoration(
                                                border: Border.all(
                                                  color: const Color.fromRGBO(
                                                      48, 191, 193, 0.79),
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(30),
                                              ),
                                              child: const Text(
                                                'Read More',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.w600,
                                                  color: Color.fromRGBO(
                                                      48, 191, 193, 0.79),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              },
                            ),
                            OnHoverDetect(
                              builder: (isHover) {
                                return Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 30,
                                      vertical: 45,
                                    ),
                                    decoration: isHover
                                        ? BoxDecoration(
                                            color: Colors.white,
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.white
                                                    .withOpacity(0.5),
                                                spreadRadius: 8,
                                                blurRadius: 7,
                                                offset: const Offset(0, 3),
                                              )
                                            ],
                                            borderRadius:
                                                const BorderRadius.all(
                                                    Radius.circular(15)),
                                          )
                                        : const BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(15)),
                                          ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        const CircleAvatar(
                                          backgroundColor: Colors.transparent,
                                          radius: 70,
                                          backgroundImage: ExactAssetImage(
                                            'img/team/team02.png',
                                          ),
                                        ),
                                        SizedBox(
                                          height: 300,
                                          child: Column(
                                            children: const [
                                              Padding(
                                                padding: EdgeInsets.only(
                                                  bottom: 10.0,
                                                  top: 40,
                                                ),
                                                child: Text(
                                                  'Kyoungsoo Kim',
                                                  style: TextStyle(
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.w700,
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(
                                                    bottom: 15.0),
                                                child: Text(
                                                  'CPO',
                                                  style: TextStyle(
                                                    fontSize: 19,
                                                    fontWeight: FontWeight.w300,
                                                    color: Color.fromRGBO(
                                                        10, 50, 111, 0.58),
                                                  ),
                                                ),
                                              ),
                                              Text(
                                                'Kyoungsoo has over 18 years of experience as a web and mobile service business developer and UI/UX specialist. He joined InstaPay after 10 years of career at SK Communications.',
                                                maxLines: 5,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.start,
                                                style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w300,
                                                  height: 1.6,
                                                  wordSpacing: 1.5,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 20,
                                        ),
                                        Row(
                                          children: [
                                            InkWell(
                                              onTap: () {},
                                              child: Image.asset(
                                                'img/team/linkedin.png',
                                                width: 30,
                                                height: 30,
                                              ),
                                            ),
                                            const Spacer(),
                                            Container(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 15,
                                                      vertical: 10),
                                              decoration: BoxDecoration(
                                                border: Border.all(
                                                  color: const Color.fromRGBO(
                                                      48, 191, 193, 0.79),
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(30),
                                              ),
                                              child: const Text(
                                                'Read More',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.w600,
                                                  color: Color.fromRGBO(
                                                      48, 191, 193, 0.79),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              },
                            ),
                            OnHoverDetect(
                              builder: (isHover) {
                                return Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 30,
                                      vertical: 45,
                                    ),
                                    decoration: isHover
                                        ? BoxDecoration(
                                            color: Colors.white,
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.white
                                                    .withOpacity(0.5),
                                                spreadRadius: 8,
                                                blurRadius: 7,
                                                offset: const Offset(0, 3),
                                              )
                                            ],
                                            borderRadius:
                                                const BorderRadius.all(
                                                    Radius.circular(15)),
                                          )
                                        : const BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(15)),
                                          ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        const CircleAvatar(
                                          backgroundColor: Colors.transparent,
                                          radius: 70,
                                          backgroundImage: ExactAssetImage(
                                            'img/team/team03.png',
                                          ),
                                        ),
                                        SizedBox(
                                          height: 300,
                                          child: Column(
                                            children: const [
                                              Padding(
                                                padding: EdgeInsets.only(
                                                  bottom: 10.0,
                                                  top: 40,
                                                ),
                                                child: Text(
                                                  'Kwangyeon Won',
                                                  style: TextStyle(
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.w700,
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(
                                                    bottom: 15.0),
                                                child: Text(
                                                  'CCO',
                                                  style: TextStyle(
                                                    fontSize: 19,
                                                    fontWeight: FontWeight.w300,
                                                    color: Color.fromRGBO(
                                                        10, 50, 111, 0.58),
                                                  ),
                                                ),
                                              ),
                                              Text(
                                                'Kwang Yeon oversees digital contents and media platform. He specializes in development of synthetical contents by coordinating analytical approach and qualitative knowledge.',
                                                maxLines: 5,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.start,
                                                style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w300,
                                                  height: 1.6,
                                                  wordSpacing: 1.5,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 20,
                                        ),
                                        Row(
                                          children: [
                                            InkWell(
                                              onTap: () {},
                                              child: Image.asset(
                                                'img/team/linkedin.png',
                                                width: 30,
                                                height: 30,
                                              ),
                                            ),
                                            const Spacer(),
                                            Container(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 15,
                                                      vertical: 10),
                                              decoration: BoxDecoration(
                                                border: Border.all(
                                                  color: const Color.fromRGBO(
                                                      48, 191, 193, 0.79),
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(30),
                                              ),
                                              child: const Text(
                                                'Read More',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.w600,
                                                  color: Color.fromRGBO(
                                                      48, 191, 193, 0.79),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              },
                            ),
                            OnHoverDetect(
                              builder: (isHover) {
                                return Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 30,
                                      vertical: 45,
                                    ),
                                    decoration: isHover
                                        ? BoxDecoration(
                                            color: Colors.white,
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.white
                                                    .withOpacity(0.5),
                                                spreadRadius: 8,
                                                blurRadius: 7,
                                                offset: const Offset(0, 3),
                                              )
                                            ],
                                            borderRadius:
                                                const BorderRadius.all(
                                                    Radius.circular(15)),
                                          )
                                        : const BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(15)),
                                          ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        const CircleAvatar(
                                          backgroundColor: Colors.transparent,
                                          radius: 70,
                                          backgroundImage: ExactAssetImage(
                                            'img/team/team04.png',
                                          ),
                                        ),
                                        SizedBox(
                                          height: 300,
                                          child: Column(
                                            children: const [
                                              Padding(
                                                padding: EdgeInsets.only(
                                                  bottom: 10.0,
                                                  top: 40,
                                                ),
                                                child: Text(
                                                  'Jongsung Chun',
                                                  style: TextStyle(
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.w700,
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(
                                                    bottom: 15.0),
                                                child: Text(
                                                  'Media & Platform Director',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                    fontSize: 19,
                                                    fontWeight: FontWeight.w300,
                                                    color: Color.fromRGBO(
                                                        10, 50, 111, 0.58),
                                                  ),
                                                ),
                                              ),
                                              Text(
                                                'Business strategy and communications specialist with extensive experience in media, various platforms, and IR, Jongsung was COO at Sinjisoft, the company that developed the world’s first VM(Virtual Machine).',
                                                maxLines: 5,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.start,
                                                style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w300,
                                                  height: 1.6,
                                                  wordSpacing: 1.5,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 20,
                                        ),
                                        Row(
                                          children: [
                                            InkWell(
                                              onTap: () {},
                                              child: Image.asset(
                                                'img/team/linkedin.png',
                                                width: 30,
                                                height: 30,
                                              ),
                                            ),
                                            const Spacer(),
                                            Container(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 15,
                                                      vertical: 10),
                                              decoration: BoxDecoration(
                                                border: Border.all(
                                                  color: const Color.fromRGBO(
                                                      48, 191, 193, 0.79),
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(30),
                                              ),
                                              child: const Text(
                                                'Read More',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.w600,
                                                  color: Color.fromRGBO(
                                                      48, 191, 193, 0.79),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              },
                            ),
                            OnHoverDetect(
                              builder: (isHover) {
                                return Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 30,
                                      vertical: 45,
                                    ),
                                    decoration: isHover
                                        ? BoxDecoration(
                                            color: Colors.white,
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.white
                                                    .withOpacity(0.5),
                                                spreadRadius: 8,
                                                blurRadius: 7,
                                                offset: const Offset(0, 3),
                                              )
                                            ],
                                            borderRadius:
                                                const BorderRadius.all(
                                                    Radius.circular(15)),
                                          )
                                        : const BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(15)),
                                          ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        const CircleAvatar(
                                          backgroundColor: Colors.transparent,
                                          radius: 70,
                                          backgroundImage: ExactAssetImage(
                                            'img/team/team05.png',
                                          ),
                                        ),
                                        SizedBox(
                                          height: 300,
                                          child: Column(
                                            children: const [
                                              Padding(
                                                padding: EdgeInsets.only(
                                                  bottom: 10.0,
                                                  top: 40,
                                                ),
                                                child: Text(
                                                  'Sangyeop Kim',
                                                  style: TextStyle(
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.w700,
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(
                                                    bottom: 15.0),
                                                child: Text(
                                                  'Chief Blockchain Architect',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                    fontSize: 19,
                                                    fontWeight: FontWeight.w300,
                                                    color: Color.fromRGBO(
                                                        10, 50, 111, 0.58),
                                                  ),
                                                ),
                                              ),
                                              Text(
                                                'Sangyeop specializes in InfoSec and Architecture. In the past years, he worked for financial companies including KEB Hana Bank. He contributed to the development of Crypto-Market and led architecture and implementation of InstaPay’s server, including integration of Payment-gateway with KFTC. He majored in Computer Science at Pusan National University.',
                                                maxLines: 5,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.start,
                                                style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w300,
                                                  height: 1.6,
                                                  wordSpacing: 1.5,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 20,
                                        ),
                                        Row(
                                          children: [
                                            InkWell(
                                              onTap: () {},
                                              child: Image.asset(
                                                'img/team/linkedin.png',
                                                width: 30,
                                                height: 30,
                                              ),
                                            ),
                                            const Spacer(),
                                            Container(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 15,
                                                      vertical: 10),
                                              decoration: BoxDecoration(
                                                border: Border.all(
                                                  color: const Color.fromRGBO(
                                                      48, 191, 193, 0.79),
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(30),
                                              ),
                                              child: const Text(
                                                'Read More',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.w600,
                                                  color: Color.fromRGBO(
                                                      48, 191, 193, 0.79),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              },
                            ),
                            OnHoverDetect(
                              builder: (isHover) {
                                return Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 30,
                                      vertical: 45,
                                    ),
                                    decoration: isHover
                                        ? BoxDecoration(
                                            color: Colors.white,
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.white
                                                    .withOpacity(0.5),
                                                spreadRadius: 8,
                                                blurRadius: 7,
                                                offset: const Offset(0, 3),
                                              )
                                            ],
                                            borderRadius:
                                                const BorderRadius.all(
                                                    Radius.circular(15)),
                                          )
                                        : const BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(15)),
                                          ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        const CircleAvatar(
                                          backgroundColor: Colors.transparent,
                                          radius: 70,
                                          backgroundImage: ExactAssetImage(
                                            'img/team/team06.png',
                                          ),
                                        ),
                                        SizedBox(
                                          height: 300,
                                          child: Column(
                                            children: const [
                                              Padding(
                                                padding: EdgeInsets.only(
                                                  bottom: 10.0,
                                                  top: 40,
                                                ),
                                                child: Text(
                                                  'Keunhye Lee',
                                                  style: TextStyle(
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.w700,
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(
                                                    bottom: 15.0),
                                                child: Text(
                                                  'Director of Marketing and Communication',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                    fontSize: 19,
                                                    fontWeight: FontWeight.w300,
                                                    color: Color.fromRGBO(
                                                        10, 50, 111, 0.58),
                                                  ),
                                                ),
                                              ),
                                              Text(
                                                'Keunhye has 15 years’ experience in advertising and marketing communication. After graduation, Lee joined Daehong Communications, an advertising marketing agency, as an ad creator. Lee participated in many big campaigns in IMC dimension, with specialization in advertising and promotion. Lee majored in industrial design and business administration at Seoul National University.',
                                                maxLines: 5,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.start,
                                                style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w300,
                                                  height: 1.6,
                                                  wordSpacing: 1.5,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 20,
                                        ),
                                        Row(
                                          children: [
                                            InkWell(
                                              onTap: () {},
                                              child: Image.asset(
                                                'img/team/linkedin.png',
                                                width: 30,
                                                height: 30,
                                              ),
                                            ),
                                            const Spacer(),
                                            Container(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 15,
                                                      vertical: 10),
                                              decoration: BoxDecoration(
                                                border: Border.all(
                                                  color: const Color.fromRGBO(
                                                      48, 191, 193, 0.79),
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(30),
                                              ),
                                              child: const Text(
                                                'Read More',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.w600,
                                                  color: Color.fromRGBO(
                                                      48, 191, 193, 0.79),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              },
                            ),
                            OnHoverDetect(
                              builder: (isHover) {
                                return Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 30,
                                      vertical: 45,
                                    ),
                                    decoration: isHover
                                        ? BoxDecoration(
                                            color: Colors.white,
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.white
                                                    .withOpacity(0.5),
                                                spreadRadius: 8,
                                                blurRadius: 7,
                                                offset: const Offset(0, 3),
                                              )
                                            ],
                                            borderRadius:
                                                const BorderRadius.all(
                                                    Radius.circular(15)),
                                          )
                                        : const BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(15)),
                                          ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        const CircleAvatar(
                                          backgroundColor: Colors.transparent,
                                          radius: 70,
                                          backgroundImage: ExactAssetImage(
                                            'img/team/team07.png',
                                          ),
                                        ),
                                        SizedBox(
                                          height: 300,
                                          child: Column(
                                            children: const [
                                              Padding(
                                                padding: EdgeInsets.only(
                                                  bottom: 10.0,
                                                  top: 40,
                                                ),
                                                child: Text(
                                                  'Yewon Yoo',
                                                  style: TextStyle(
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.w700,
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(
                                                    bottom: 15.0),
                                                child: Text(
                                                  'UX and Visual Designer',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                    fontSize: 19,
                                                    fontWeight: FontWeight.w300,
                                                    color: Color.fromRGBO(
                                                        10, 50, 111, 0.58),
                                                  ),
                                                ),
                                              ),
                                              Text(
                                                'Yewon is a graphic designer with a demonstrated history of working in the design industry. Skilled in Adobe Creative Suite and Typography. Strong professional with a Master’s Degree focused in Graphic Design from Seoul National University and a Bachelor’s Degree from Rhode Island School of Design.',
                                                maxLines: 5,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.start,
                                                style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w300,
                                                  height: 1.6,
                                                  wordSpacing: 1.5,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 20,
                                        ),
                                        Row(
                                          children: [
                                            InkWell(
                                              onTap: () {},
                                              child: Image.asset(
                                                'img/team/linkedin.png',
                                                width: 30,
                                                height: 30,
                                              ),
                                            ),
                                            const Spacer(),
                                            Container(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 15,
                                                      vertical: 10),
                                              decoration: BoxDecoration(
                                                border: Border.all(
                                                  color: const Color.fromRGBO(
                                                      48, 191, 193, 0.79),
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(30),
                                              ),
                                              child: const Text(
                                                'Read More',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.w600,
                                                  color: Color.fromRGBO(
                                                      48, 191, 193, 0.79),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              },
                            ),
                            OnHoverDetect(
                              builder: (isHover) {
                                return Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 30,
                                      vertical: 45,
                                    ),
                                    decoration: isHover
                                        ? BoxDecoration(
                                            color: Colors.white,
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.white
                                                    .withOpacity(0.5),
                                                spreadRadius: 8,
                                                blurRadius: 7,
                                                offset: const Offset(0, 3),
                                              )
                                            ],
                                            borderRadius:
                                                const BorderRadius.all(
                                                    Radius.circular(15)),
                                          )
                                        : const BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(15)),
                                          ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        const Icon(
                                          Icons.question_mark,
                                          color: Color(0xff4ac1c2),
                                          size: 140,
                                        ),
                                        SizedBox(
                                          height: 300,
                                          child: Column(
                                            children: const [
                                              Padding(
                                                padding: EdgeInsets.only(
                                                  bottom: 10.0,
                                                  top: 40,
                                                ),
                                                child: Text(
                                                  'You?',
                                                  style: TextStyle(
                                                    fontSize: 23,
                                                    fontWeight: FontWeight.w700,
                                                  ),
                                                ),
                                              ),
                                              Text(
                                                'We are looking for talented, driven people to join our journey of bringing the crypto-payment innovation to reality. If you’re interested or have any inquiry, please contact us at',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w300,
                                                  height: 1.6,
                                                  wordSpacing: 1.5,
                                                ),
                                              ),
                                              Text(
                                                'business@instapay.kr',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w700,
                                                  height: 1.6,
                                                  wordSpacing: 1.5,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 60,
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 80.0),
                      child: RichText(
                        text: const TextSpan(
                          style: TextStyle(
                            fontSize: 45.0,
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            height: 1.4,
                          ),
                          children: [
                            TextSpan(
                              text: 'PLATFORM',
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                color: Color.fromRGBO(153, 238, 239, 0.94),
                              ),
                            ),
                            TextSpan(text: ' ADVISORS'),
                          ],
                        ),
                      ),
                    ),
                    const Text(
                      'Game',
                      style: TextStyle(
                        color: Color.fromRGBO(162, 238, 239, 0.94),
                        fontSize: 25,
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    if (Responsive.isDesktop(context))
                      Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: OnHoverDetect(
                                  builder: (isHover) {
                                    return Padding(
                                      padding: const EdgeInsets.all(20.0),
                                      child: Container(
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 25,
                                          vertical: 45,
                                        ),
                                        decoration: isHover
                                            ? BoxDecoration(
                                                color: Colors.white,
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Colors.white
                                                        .withOpacity(0.5),
                                                    spreadRadius: 8,
                                                    blurRadius: 7,
                                                    offset: const Offset(0, 3),
                                                  )
                                                ],
                                                borderRadius:
                                                    const BorderRadius.all(
                                                        Radius.circular(15)),
                                              )
                                            : const BoxDecoration(
                                                color: Colors.white,
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(15)),
                                              ),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Container(
                                              width: 147,
                                              height: 147,
                                              decoration: const BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: Colors.transparent,
                                                image: DecorationImage(
                                                  image: AssetImage(
                                                      'img/team/game1.png'),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 300,
                                              child: Column(
                                                children: [
                                                  const Padding(
                                                    padding: EdgeInsets.only(
                                                      bottom: 10.0,
                                                      top: 40,
                                                    ),
                                                    child: Text(
                                                      'Yangmin Seo',
                                                      style: TextStyle(
                                                        fontSize: 20,
                                                        fontWeight:
                                                            FontWeight.w700,
                                                      ),
                                                    ),
                                                  ),
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .symmetric(
                                                                vertical: 4.0),
                                                        child: Row(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: const [
                                                            Text(
                                                              '• ',
                                                              style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w700,
                                                                height: 1.4,
                                                                fontSize: 17,
                                                              ),
                                                            ),
                                                            Expanded(
                                                                child: Text(
                                                              'CEO, Andromeda Game',
                                                              style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w300,
                                                                height: 1.4,
                                                                fontSize: 17,
                                                              ),
                                                            ))
                                                          ],
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .symmetric(
                                                                vertical: 4.0),
                                                        child: Row(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: const [
                                                            Text(
                                                              '• ',
                                                              style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w700,
                                                                height: 1.4,
                                                                fontSize: 17,
                                                              ),
                                                            ),
                                                            Expanded(
                                                                child: Text(
                                                              'former Development Director, NCSoft',
                                                              style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w300,
                                                                height: 1.4,
                                                                fontSize: 17,
                                                              ),
                                                            ))
                                                          ],
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .symmetric(
                                                                vertical: 4.0),
                                                        child: Row(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: const [
                                                            Text(
                                                              '• ',
                                                              style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w700,
                                                                fontSize: 17,
                                                                height: 1.4,
                                                              ),
                                                            ),
                                                            Expanded(
                                                                child: Text(
                                                              'Seoul National Univ., Computer Science',
                                                              style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w300,
                                                                height: 1.4,
                                                                fontSize: 17,
                                                              ),
                                                            ))
                                                          ],
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
                                    );
                                  },
                                ),
                              ),
                              Expanded(
                                child: OnHoverDetect(
                                  builder: (isHover) {
                                    return Padding(
                                      padding: const EdgeInsets.all(20.0),
                                      child: Container(
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 25,
                                          vertical: 45,
                                        ),
                                        decoration: isHover
                                            ? BoxDecoration(
                                                color: Colors.white,
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Colors.white
                                                        .withOpacity(0.5),
                                                    spreadRadius: 8,
                                                    blurRadius: 7,
                                                    offset: const Offset(0, 3),
                                                  )
                                                ],
                                                borderRadius:
                                                    const BorderRadius.all(
                                                        Radius.circular(15)),
                                              )
                                            : const BoxDecoration(
                                                color: Colors.white,
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(15)),
                                              ),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Container(
                                              width: 147,
                                              height: 147,
                                              decoration: const BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: Colors.transparent,
                                                image: DecorationImage(
                                                  image: AssetImage(
                                                      'img/team/game2.png'),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 300,
                                              child: Column(
                                                children: [
                                                  const Padding(
                                                    padding: EdgeInsets.only(
                                                      bottom: 10.0,
                                                      top: 40,
                                                    ),
                                                    child: Text(
                                                      'Hyunseong Seo',
                                                      style: TextStyle(
                                                        fontSize: 20,
                                                        fontWeight:
                                                            FontWeight.w700,
                                                      ),
                                                    ),
                                                  ),
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .symmetric(
                                                                vertical: 4.0),
                                                        child: Row(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: const [
                                                            Text(
                                                              '• ',
                                                              style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w700,
                                                                height: 1.4,
                                                                fontSize: 17,
                                                              ),
                                                            ),
                                                            Expanded(
                                                                child: Text(
                                                              'CEO, Pathfinder 8',
                                                              style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w300,
                                                                height: 1.4,
                                                                fontSize: 17,
                                                              ),
                                                            ))
                                                          ],
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .symmetric(
                                                                vertical: 4.0),
                                                        child: Row(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: const [
                                                            Text(
                                                              '• ',
                                                              style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w700,
                                                                height: 1.4,
                                                                fontSize: 17,
                                                              ),
                                                            ),
                                                            Expanded(
                                                                child: Text(
                                                              'Lead developer of ‘Kaiser’, a popular Korean game',
                                                              style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w300,
                                                                height: 1.4,
                                                                fontSize: 17,
                                                              ),
                                                            ))
                                                          ],
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .symmetric(
                                                                vertical: 4.0),
                                                        child: Row(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: const [
                                                            Text(
                                                              '• ',
                                                              style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w700,
                                                                fontSize: 17,
                                                                height: 1.4,
                                                              ),
                                                            ),
                                                            Expanded(
                                                                child: Text(
                                                              'Seoul National Univ., Computer Science',
                                                              style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w300,
                                                                height: 1.4,
                                                                fontSize: 17,
                                                              ),
                                                            ))
                                                          ],
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
                                    );
                                  },
                                ),
                              ),
                              Expanded(
                                child: Visibility(
                                  visible: false,
                                  child: OnHoverDetect(
                                    builder: (isHover) {
                                      return Padding(
                                        padding: const EdgeInsets.all(20.0),
                                        child: Container(
                                          padding: const EdgeInsets.symmetric(
                                            horizontal: 25,
                                            vertical: 45,
                                          ),
                                          decoration: isHover
                                              ? BoxDecoration(
                                                  color: Colors.white,
                                                  boxShadow: [
                                                    BoxShadow(
                                                      color: Colors.white
                                                          .withOpacity(0.5),
                                                      spreadRadius: 8,
                                                      blurRadius: 7,
                                                      offset:
                                                          const Offset(0, 3),
                                                    )
                                                  ],
                                                  borderRadius:
                                                      const BorderRadius.all(
                                                          Radius.circular(15)),
                                                )
                                              : const BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(15)),
                                                ),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              SizedBox(
                                                height: 300,
                                                child: Column(
                                                  children: const [
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                        bottom: 10.0,
                                                        top: 40,
                                                      ),
                                                      child: Text(
                                                        '',
                                                        style: TextStyle(
                                                          fontSize: 20,
                                                          fontWeight:
                                                              FontWeight.w700,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          bottom: 15.0),
                                                      child: Text(
                                                        '',
                                                        style: TextStyle(
                                                          fontSize: 19,
                                                          fontWeight:
                                                              FontWeight.w300,
                                                          color: Color.fromRGBO(
                                                              10,
                                                              50,
                                                              111,
                                                              0.58),
                                                        ),
                                                      ),
                                                    ),
                                                    Text(
                                                      '',
                                                      maxLines: 5,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign:
                                                          TextAlign.start,
                                                      style: TextStyle(
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.w300,
                                                        height: 1.6,
                                                        wordSpacing: 1.5,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              const SizedBox(
                                                height: 20,
                                              ),
                                            ],
                                          ),
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Visibility(
                                  visible: false,
                                  child: OnHoverDetect(
                                    builder: (isHover) {
                                      return Padding(
                                        padding: const EdgeInsets.all(20.0),
                                        child: Container(
                                          padding: const EdgeInsets.symmetric(
                                            horizontal: 25,
                                            vertical: 45,
                                          ),
                                          decoration: isHover
                                              ? BoxDecoration(
                                                  color: Colors.white,
                                                  boxShadow: [
                                                    BoxShadow(
                                                      color: Colors.white
                                                          .withOpacity(0.5),
                                                      spreadRadius: 8,
                                                      blurRadius: 7,
                                                      offset:
                                                          const Offset(0, 3),
                                                    )
                                                  ],
                                                  borderRadius:
                                                      const BorderRadius.all(
                                                          Radius.circular(15)),
                                                )
                                              : const BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(15)),
                                                ),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              SizedBox(
                                                height: 300,
                                                child: Column(
                                                  children: const [],
                                                ),
                                              ),
                                              const SizedBox(
                                                height: 20,
                                              ),
                                            ],
                                          ),
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    if (Responsive.isTablet(context))
                      Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: OnHoverDetect(
                                  builder: (isHover) {
                                    return Padding(
                                      padding: const EdgeInsets.all(20.0),
                                      child: Container(
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 25,
                                          vertical: 45,
                                        ),
                                        decoration: isHover
                                            ? BoxDecoration(
                                                color: Colors.white,
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Colors.white
                                                        .withOpacity(0.5),
                                                    spreadRadius: 8,
                                                    blurRadius: 7,
                                                    offset: const Offset(0, 3),
                                                  )
                                                ],
                                                borderRadius:
                                                    const BorderRadius.all(
                                                        Radius.circular(15)),
                                              )
                                            : const BoxDecoration(
                                                color: Colors.white,
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(15)),
                                              ),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Container(
                                              width: 147,
                                              height: 147,
                                              decoration: const BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: Colors.transparent,
                                                image: DecorationImage(
                                                  image: AssetImage(
                                                      'img/team/game1.png'),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 300,
                                              child: Column(
                                                children: [
                                                  const Padding(
                                                    padding: EdgeInsets.only(
                                                      bottom: 10.0,
                                                      top: 40,
                                                    ),
                                                    child: Text(
                                                      'Yangmin Seo',
                                                      style: TextStyle(
                                                        fontSize: 20,
                                                        fontWeight:
                                                            FontWeight.w700,
                                                      ),
                                                    ),
                                                  ),
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .symmetric(
                                                                vertical: 4.0),
                                                        child: Row(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: const [
                                                            Text(
                                                              '• ',
                                                              style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w700,
                                                                height: 1.4,
                                                                fontSize: 17,
                                                              ),
                                                            ),
                                                            Expanded(
                                                                child: Text(
                                                              'CEO, Andromeda Game',
                                                              style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w300,
                                                                height: 1.4,
                                                                fontSize: 17,
                                                              ),
                                                            ))
                                                          ],
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .symmetric(
                                                                vertical: 4.0),
                                                        child: Row(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: const [
                                                            Text(
                                                              '• ',
                                                              style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w700,
                                                                height: 1.4,
                                                                fontSize: 17,
                                                              ),
                                                            ),
                                                            Expanded(
                                                                child: Text(
                                                              'former Development Director, NCSoft',
                                                              style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w300,
                                                                height: 1.4,
                                                                fontSize: 17,
                                                              ),
                                                            ))
                                                          ],
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .symmetric(
                                                                vertical: 4.0),
                                                        child: Row(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: const [
                                                            Text(
                                                              '• ',
                                                              style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w700,
                                                                fontSize: 17,
                                                                height: 1.4,
                                                              ),
                                                            ),
                                                            Expanded(
                                                                child: Text(
                                                              'Seoul National Univ., Computer Science',
                                                              style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w300,
                                                                height: 1.4,
                                                                fontSize: 17,
                                                              ),
                                                            ))
                                                          ],
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
                                    );
                                  },
                                ),
                              ),
                              Expanded(
                                child: OnHoverDetect(
                                  builder: (isHover) {
                                    return Padding(
                                      padding: const EdgeInsets.all(20.0),
                                      child: Container(
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 25,
                                          vertical: 45,
                                        ),
                                        decoration: isHover
                                            ? BoxDecoration(
                                                color: Colors.white,
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Colors.white
                                                        .withOpacity(0.5),
                                                    spreadRadius: 8,
                                                    blurRadius: 7,
                                                    offset: const Offset(0, 3),
                                                  )
                                                ],
                                                borderRadius:
                                                    const BorderRadius.all(
                                                        Radius.circular(15)),
                                              )
                                            : const BoxDecoration(
                                                color: Colors.white,
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(15)),
                                              ),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Container(
                                              width: 147,
                                              height: 147,
                                              decoration: const BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: Colors.transparent,
                                                image: DecorationImage(
                                                  image: AssetImage(
                                                      'img/team/game2.png'),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 300,
                                              child: Column(
                                                children: [
                                                  const Padding(
                                                    padding: EdgeInsets.only(
                                                      bottom: 10.0,
                                                      top: 40,
                                                    ),
                                                    child: Text(
                                                      'Hyunseong Seo',
                                                      style: TextStyle(
                                                        fontSize: 20,
                                                        fontWeight:
                                                            FontWeight.w700,
                                                      ),
                                                    ),
                                                  ),
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .symmetric(
                                                                vertical: 4.0),
                                                        child: Row(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: const [
                                                            Text(
                                                              '• ',
                                                              style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w700,
                                                                height: 1.4,
                                                                fontSize: 17,
                                                              ),
                                                            ),
                                                            Expanded(
                                                                child: Text(
                                                              'CEO, Pathfinder 8',
                                                              style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w300,
                                                                height: 1.4,
                                                                fontSize: 17,
                                                              ),
                                                            ))
                                                          ],
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .symmetric(
                                                                vertical: 4.0),
                                                        child: Row(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: const [
                                                            Text(
                                                              '• ',
                                                              style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w700,
                                                                height: 1.4,
                                                                fontSize: 17,
                                                              ),
                                                            ),
                                                            Expanded(
                                                                child: Text(
                                                              'Lead developer of ‘Kaiser’, a popular Korean game',
                                                              style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w300,
                                                                height: 1.4,
                                                                fontSize: 17,
                                                              ),
                                                            ))
                                                          ],
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .symmetric(
                                                                vertical: 4.0),
                                                        child: Row(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: const [
                                                            Text(
                                                              '• ',
                                                              style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w700,
                                                                fontSize: 17,
                                                                height: 1.4,
                                                              ),
                                                            ),
                                                            Expanded(
                                                                child: Text(
                                                              'Seoul National Univ., Computer Science',
                                                              style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w300,
                                                                height: 1.4,
                                                                fontSize: 17,
                                                              ),
                                                            ))
                                                          ],
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
                                    );
                                  },
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    if (Responsive.isMobile(context))
                      SizedBox(
                        width: 400,
                        child: Column(
                          children: [
                            OnHoverDetect(
                              builder: (isHover) {
                                return Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 25,
                                      vertical: 45,
                                    ),
                                    decoration: isHover
                                        ? BoxDecoration(
                                            color: Colors.white,
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.white
                                                    .withOpacity(0.5),
                                                spreadRadius: 8,
                                                blurRadius: 7,
                                                offset: const Offset(0, 3),
                                              )
                                            ],
                                            borderRadius:
                                                const BorderRadius.all(
                                                    Radius.circular(15)),
                                          )
                                        : const BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(15)),
                                          ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Container(
                                          width: 147,
                                          height: 147,
                                          decoration: const BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Colors.transparent,
                                            image: DecorationImage(
                                              image: AssetImage(
                                                  'img/team/game1.png'),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 300,
                                          child: Column(
                                            children: [
                                              const Padding(
                                                padding: EdgeInsets.only(
                                                  bottom: 10.0,
                                                  top: 40,
                                                ),
                                                child: Text(
                                                  'Yangmin Seo',
                                                  style: TextStyle(
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.w700,
                                                  ),
                                                ),
                                              ),
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                    padding: const EdgeInsets
                                                            .symmetric(
                                                        vertical: 4.0),
                                                    child: Row(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: const [
                                                        Text(
                                                          '• ',
                                                          style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.w700,
                                                            height: 1.4,
                                                            fontSize: 17,
                                                          ),
                                                        ),
                                                        Expanded(
                                                            child: Text(
                                                          'CEO, Andromeda Game',
                                                          style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.w300,
                                                            height: 1.4,
                                                            fontSize: 17,
                                                          ),
                                                        ))
                                                      ],
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets
                                                            .symmetric(
                                                        vertical: 4.0),
                                                    child: Row(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: const [
                                                        Text(
                                                          '• ',
                                                          style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.w700,
                                                            height: 1.4,
                                                            fontSize: 17,
                                                          ),
                                                        ),
                                                        Expanded(
                                                            child: Text(
                                                          'former Development Director, NCSoft',
                                                          style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.w300,
                                                            height: 1.4,
                                                            fontSize: 17,
                                                          ),
                                                        ))
                                                      ],
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets
                                                            .symmetric(
                                                        vertical: 4.0),
                                                    child: Row(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: const [
                                                        Text(
                                                          '• ',
                                                          style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.w700,
                                                            fontSize: 17,
                                                            height: 1.4,
                                                          ),
                                                        ),
                                                        Expanded(
                                                            child: Text(
                                                          'Seoul National Univ., Computer Science',
                                                          style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.w300,
                                                            height: 1.4,
                                                            fontSize: 17,
                                                          ),
                                                        ))
                                                      ],
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
                                );
                              },
                            ),
                            OnHoverDetect(
                              builder: (isHover) {
                                return Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 25,
                                      vertical: 45,
                                    ),
                                    decoration: isHover
                                        ? BoxDecoration(
                                            color: Colors.white,
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.white
                                                    .withOpacity(0.5),
                                                spreadRadius: 8,
                                                blurRadius: 7,
                                                offset: const Offset(0, 3),
                                              )
                                            ],
                                            borderRadius:
                                                const BorderRadius.all(
                                                    Radius.circular(15)),
                                          )
                                        : const BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(15)),
                                          ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Container(
                                          width: 147,
                                          height: 147,
                                          decoration: const BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Colors.transparent,
                                            image: DecorationImage(
                                              image: AssetImage(
                                                  'img/team/game2.png'),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 300,
                                          child: Column(
                                            children: [
                                              const Padding(
                                                padding: EdgeInsets.only(
                                                  bottom: 10.0,
                                                  top: 40,
                                                ),
                                                child: Text(
                                                  'Hyunseong Seo',
                                                  style: TextStyle(
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.w700,
                                                  ),
                                                ),
                                              ),
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                    padding: const EdgeInsets
                                                            .symmetric(
                                                        vertical: 4.0),
                                                    child: Row(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: const [
                                                        Text(
                                                          '• ',
                                                          style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.w700,
                                                            height: 1.4,
                                                            fontSize: 17,
                                                          ),
                                                        ),
                                                        Expanded(
                                                            child: Text(
                                                          'CEO, Pathfinder 8',
                                                          style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.w300,
                                                            height: 1.4,
                                                            fontSize: 17,
                                                          ),
                                                        ))
                                                      ],
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets
                                                            .symmetric(
                                                        vertical: 4.0),
                                                    child: Row(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: const [
                                                        Text(
                                                          '• ',
                                                          style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.w700,
                                                            height: 1.4,
                                                            fontSize: 17,
                                                          ),
                                                        ),
                                                        Expanded(
                                                            child: Text(
                                                          'Lead developer of ‘Kaiser’, a popular Korean game',
                                                          style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.w300,
                                                            height: 1.4,
                                                            fontSize: 17,
                                                          ),
                                                        ))
                                                      ],
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets
                                                            .symmetric(
                                                        vertical: 4.0),
                                                    child: Row(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: const [
                                                        Text(
                                                          '• ',
                                                          style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.w700,
                                                            fontSize: 17,
                                                            height: 1.4,
                                                          ),
                                                        ),
                                                        Expanded(
                                                            child: Text(
                                                          'Seoul National Univ., Computer Science',
                                                          style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.w300,
                                                            height: 1.4,
                                                            fontSize: 17,
                                                          ),
                                                        ))
                                                      ],
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
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 40.0),
                      child: Text(
                        'O2O Commerce & Donation',
                        style: TextStyle(
                          color: Color.fromRGBO(162, 238, 239, 0.94),
                          fontSize: 25,
                        ),
                      ),
                    ),
                    if (Responsive.isDesktop(context))
                      Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: OnHoverDetect(
                                  builder: (isHover) {
                                    return Padding(
                                      padding: const EdgeInsets.all(20.0),
                                      child: Container(
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 25,
                                          vertical: 45,
                                        ),
                                        decoration: isHover
                                            ? BoxDecoration(
                                                color: Colors.white,
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Colors.white
                                                        .withOpacity(0.5),
                                                    spreadRadius: 8,
                                                    blurRadius: 7,
                                                    offset: const Offset(0, 3),
                                                  )
                                                ],
                                                borderRadius:
                                                    const BorderRadius.all(
                                                        Radius.circular(15)),
                                              )
                                            : const BoxDecoration(
                                                color: Colors.white,
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(15)),
                                              ),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Container(
                                              width: 147,
                                              height: 147,
                                              decoration: const BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: Colors.transparent,
                                                image: DecorationImage(
                                                  image: AssetImage(
                                                      'img/team/o2o01.png'),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 300,
                                              child: Column(
                                                children: [
                                                  const Padding(
                                                    padding: EdgeInsets.only(
                                                      bottom: 10.0,
                                                      top: 40,
                                                    ),
                                                    child: Text(
                                                      'Cheongjong Lee',
                                                      style: TextStyle(
                                                        fontSize: 20,
                                                        fontWeight:
                                                            FontWeight.w700,
                                                      ),
                                                    ),
                                                  ),
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .symmetric(
                                                                vertical: 4.0),
                                                        child: Row(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: const [
                                                            Text(
                                                              '• ',
                                                              style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w700,
                                                                height: 1.4,
                                                                fontSize: 17,
                                                              ),
                                                            ),
                                                            Expanded(
                                                                child: Text(
                                                              'CEO, Whois, Inc.',
                                                              style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w300,
                                                                height: 1.4,
                                                                fontSize: 17,
                                                              ),
                                                            ))
                                                          ],
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .symmetric(
                                                                vertical: 4.0),
                                                        child: Row(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: const [
                                                            Text(
                                                              '• ',
                                                              style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w700,
                                                                height: 1.4,
                                                                fontSize: 17,
                                                              ),
                                                            ),
                                                            Expanded(
                                                                child: Text(
                                                              'Yonsei University',
                                                              style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w300,
                                                                height: 1.4,
                                                                fontSize: 17,
                                                              ),
                                                            ))
                                                          ],
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
                                    );
                                  },
                                ),
                              ),
                              Expanded(
                                child: OnHoverDetect(
                                  builder: (isHover) {
                                    return Padding(
                                      padding: const EdgeInsets.all(20.0),
                                      child: Container(
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 25,
                                          vertical: 45,
                                        ),
                                        decoration: isHover
                                            ? BoxDecoration(
                                                color: Colors.white,
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Colors.white
                                                        .withOpacity(0.5),
                                                    spreadRadius: 8,
                                                    blurRadius: 7,
                                                    offset: const Offset(0, 3),
                                                  )
                                                ],
                                                borderRadius:
                                                    const BorderRadius.all(
                                                        Radius.circular(15)),
                                              )
                                            : const BoxDecoration(
                                                color: Colors.white,
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(15)),
                                              ),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Container(
                                              width: 147,
                                              height: 147,
                                              decoration: const BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: Colors.transparent,
                                                image: DecorationImage(
                                                  image: AssetImage(
                                                      'img/team/o2o02.png'),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 300,
                                              child: Column(
                                                children: [
                                                  const Padding(
                                                    padding: EdgeInsets.only(
                                                      bottom: 10.0,
                                                      top: 40,
                                                    ),
                                                    child: Text(
                                                      'Inkyu Park',
                                                      style: TextStyle(
                                                        fontSize: 20,
                                                        fontWeight:
                                                            FontWeight.w700,
                                                      ),
                                                    ),
                                                  ),
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .symmetric(
                                                                vertical: 4.0),
                                                        child: Row(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: const [
                                                            Text(
                                                              '• ',
                                                              style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w700,
                                                                height: 1.4,
                                                                fontSize: 17,
                                                              ),
                                                            ),
                                                            Expanded(
                                                                child: Text(
                                                              'CEO, ecPlaza, Inc.',
                                                              style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w300,
                                                                height: 1.4,
                                                                fontSize: 17,
                                                              ),
                                                            ))
                                                          ],
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .symmetric(
                                                                vertical: 4.0),
                                                        child: Row(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: const [
                                                            Text(
                                                              '• ',
                                                              style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w700,
                                                                height: 1.4,
                                                                fontSize: 17,
                                                              ),
                                                            ),
                                                            Expanded(
                                                                child: Text(
                                                              'Former manager, KTNET',
                                                              style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w300,
                                                                height: 1.4,
                                                                fontSize: 17,
                                                              ),
                                                            ))
                                                          ],
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
                                    );
                                  },
                                ),
                              ),
                              Expanded(
                                child: OnHoverDetect(
                                  builder: (isHover) {
                                    return Padding(
                                      padding: const EdgeInsets.all(20.0),
                                      child: Container(
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 25,
                                          vertical: 45,
                                        ),
                                        decoration: isHover
                                            ? BoxDecoration(
                                                color: Colors.white,
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Colors.white
                                                        .withOpacity(0.5),
                                                    spreadRadius: 8,
                                                    blurRadius: 7,
                                                    offset: const Offset(0, 3),
                                                  )
                                                ],
                                                borderRadius:
                                                    const BorderRadius.all(
                                                        Radius.circular(15)),
                                              )
                                            : const BoxDecoration(
                                                color: Colors.white,
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(15)),
                                              ),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Container(
                                              width: 147,
                                              height: 147,
                                              decoration: const BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: Colors.transparent,
                                                image: DecorationImage(
                                                  image: AssetImage(
                                                      'img/team/o2o03.png'),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 300,
                                              child: Column(
                                                children: [
                                                  const Padding(
                                                    padding: EdgeInsets.only(
                                                      bottom: 10.0,
                                                      top: 40,
                                                    ),
                                                    child: Text(
                                                      'Jungwoo Shim',
                                                      style: TextStyle(
                                                        fontSize: 20,
                                                        fontWeight:
                                                            FontWeight.w700,
                                                      ),
                                                    ),
                                                  ),
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .symmetric(
                                                                vertical: 4.0),
                                                        child: Row(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: const [
                                                            Text(
                                                              '• ',
                                                              style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w700,
                                                                height: 1.4,
                                                                fontSize: 17,
                                                              ),
                                                            ),
                                                            Expanded(
                                                                child: Text(
                                                              'President, The Policy Academy of National Assembly',
                                                              style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w300,
                                                                height: 1.4,
                                                                fontSize: 17,
                                                              ),
                                                            ))
                                                          ],
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
                                    );
                                  },
                                ),
                              ),
                              Expanded(
                                child: OnHoverDetect(
                                  builder: (isHover) {
                                    return Padding(
                                      padding: const EdgeInsets.all(20.0),
                                      child: Container(
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 25,
                                          vertical: 45,
                                        ),
                                        decoration: isHover
                                            ? BoxDecoration(
                                                color: Colors.white,
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Colors.white
                                                        .withOpacity(0.5),
                                                    spreadRadius: 8,
                                                    blurRadius: 7,
                                                    offset: const Offset(0, 3),
                                                  )
                                                ],
                                                borderRadius:
                                                    const BorderRadius.all(
                                                        Radius.circular(15)),
                                              )
                                            : const BoxDecoration(
                                                color: Colors.white,
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(15)),
                                              ),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Container(
                                              width: 147,
                                              height: 147,
                                              decoration: const BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: Colors.transparent,
                                                image: DecorationImage(
                                                  image: AssetImage(
                                                      'img/team/o2o04.png'),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 300,
                                              child: Column(
                                                children: [
                                                  const Padding(
                                                    padding: EdgeInsets.only(
                                                      bottom: 10.0,
                                                      top: 40,
                                                    ),
                                                    child: Text(
                                                      'Jadeok Koo',
                                                      style: TextStyle(
                                                        fontSize: 20,
                                                        fontWeight:
                                                            FontWeight.w700,
                                                      ),
                                                    ),
                                                  ),
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .symmetric(
                                                                vertical: 4.0),
                                                        child: Row(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: const [
                                                            Text(
                                                              '• ',
                                                              style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w700,
                                                                height: 1.4,
                                                                fontSize: 17,
                                                              ),
                                                            ),
                                                            Expanded(
                                                                child: Text(
                                                              'Founder, NPO IT Support Center',
                                                              style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w300,
                                                                height: 1.4,
                                                                fontSize: 17,
                                                              ),
                                                            ))
                                                          ],
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .symmetric(
                                                                vertical: 4.0),
                                                        child: Row(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: const [
                                                            Text(
                                                              '• ',
                                                              style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w700,
                                                                height: 1.4,
                                                                fontSize: 17,
                                                              ),
                                                            ),
                                                            Expanded(
                                                                child: Text(
                                                              'Korea University',
                                                              style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w300,
                                                                height: 1.4,
                                                                fontSize: 17,
                                                              ),
                                                            ))
                                                          ],
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .symmetric(
                                                                vertical: 4.0),
                                                        child: Row(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: const [
                                                            Text(
                                                              '• ',
                                                              style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w700,
                                                                fontSize: 17,
                                                                height: 1.4,
                                                              ),
                                                            ),
                                                            Expanded(
                                                                child: Text(
                                                              'Seoul National Univ., Computer Science',
                                                              style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w300,
                                                                height: 1.4,
                                                                fontSize: 17,
                                                              ),
                                                            ))
                                                          ],
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
                                    );
                                  },
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    if (Responsive.isTablet(context))
                      Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: OnHoverDetect(
                                  builder: (isHover) {
                                    return Padding(
                                      padding: const EdgeInsets.all(20.0),
                                      child: Container(
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 25,
                                          vertical: 45,
                                        ),
                                        decoration: isHover
                                            ? BoxDecoration(
                                                color: Colors.white,
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Colors.white
                                                        .withOpacity(0.5),
                                                    spreadRadius: 8,
                                                    blurRadius: 7,
                                                    offset: const Offset(0, 3),
                                                  )
                                                ],
                                                borderRadius:
                                                    const BorderRadius.all(
                                                        Radius.circular(15)),
                                              )
                                            : const BoxDecoration(
                                                color: Colors.white,
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(15)),
                                              ),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Container(
                                              width: 147,
                                              height: 147,
                                              decoration: const BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: Colors.transparent,
                                                image: DecorationImage(
                                                  image: AssetImage(
                                                      'img/team/o2o01.png'),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 300,
                                              child: Column(
                                                children: [
                                                  const Padding(
                                                    padding: EdgeInsets.only(
                                                      bottom: 10.0,
                                                      top: 40,
                                                    ),
                                                    child: Text(
                                                      'Cheongjong Lee',
                                                      style: TextStyle(
                                                        fontSize: 20,
                                                        fontWeight:
                                                            FontWeight.w700,
                                                      ),
                                                    ),
                                                  ),
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .symmetric(
                                                                vertical: 4.0),
                                                        child: Row(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: const [
                                                            Text(
                                                              '• ',
                                                              style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w700,
                                                                height: 1.4,
                                                                fontSize: 17,
                                                              ),
                                                            ),
                                                            Expanded(
                                                                child: Text(
                                                              'CEO, Whois, Inc.',
                                                              style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w300,
                                                                height: 1.4,
                                                                fontSize: 17,
                                                              ),
                                                            ))
                                                          ],
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .symmetric(
                                                                vertical: 4.0),
                                                        child: Row(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: const [
                                                            Text(
                                                              '• ',
                                                              style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w700,
                                                                height: 1.4,
                                                                fontSize: 17,
                                                              ),
                                                            ),
                                                            Expanded(
                                                                child: Text(
                                                              'Yonsei University',
                                                              style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w300,
                                                                height: 1.4,
                                                                fontSize: 17,
                                                              ),
                                                            ))
                                                          ],
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
                                    );
                                  },
                                ),
                              ),
                              Expanded(
                                child: OnHoverDetect(
                                  builder: (isHover) {
                                    return Padding(
                                      padding: const EdgeInsets.all(20.0),
                                      child: Container(
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 25,
                                          vertical: 45,
                                        ),
                                        decoration: isHover
                                            ? BoxDecoration(
                                                color: Colors.white,
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Colors.white
                                                        .withOpacity(0.5),
                                                    spreadRadius: 8,
                                                    blurRadius: 7,
                                                    offset: const Offset(0, 3),
                                                  )
                                                ],
                                                borderRadius:
                                                    const BorderRadius.all(
                                                        Radius.circular(15)),
                                              )
                                            : const BoxDecoration(
                                                color: Colors.white,
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(15)),
                                              ),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Container(
                                              width: 147,
                                              height: 147,
                                              decoration: const BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: Colors.transparent,
                                                image: DecorationImage(
                                                  image: AssetImage(
                                                      'img/team/o2o02.png'),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 300,
                                              child: Column(
                                                children: [
                                                  const Padding(
                                                    padding: EdgeInsets.only(
                                                      bottom: 10.0,
                                                      top: 40,
                                                    ),
                                                    child: Text(
                                                      'Inkyu Park',
                                                      style: TextStyle(
                                                        fontSize: 20,
                                                        fontWeight:
                                                            FontWeight.w700,
                                                      ),
                                                    ),
                                                  ),
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .symmetric(
                                                                vertical: 4.0),
                                                        child: Row(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: const [
                                                            Text(
                                                              '• ',
                                                              style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w700,
                                                                height: 1.4,
                                                                fontSize: 17,
                                                              ),
                                                            ),
                                                            Expanded(
                                                                child: Text(
                                                              'CEO, ecPlaza, Inc.',
                                                              style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w300,
                                                                height: 1.4,
                                                                fontSize: 17,
                                                              ),
                                                            ))
                                                          ],
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .symmetric(
                                                                vertical: 4.0),
                                                        child: Row(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: const [
                                                            Text(
                                                              '• ',
                                                              style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w700,
                                                                height: 1.4,
                                                                fontSize: 17,
                                                              ),
                                                            ),
                                                            Expanded(
                                                                child: Text(
                                                              'Former manager, KTNET',
                                                              style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w300,
                                                                height: 1.4,
                                                                fontSize: 17,
                                                              ),
                                                            ))
                                                          ],
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
                                    );
                                  },
                                ),
                              ),
                            ],
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: OnHoverDetect(
                                  builder: (isHover) {
                                    return Padding(
                                      padding: const EdgeInsets.all(20.0),
                                      child: Container(
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 25,
                                          vertical: 45,
                                        ),
                                        decoration: isHover
                                            ? BoxDecoration(
                                                color: Colors.white,
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Colors.white
                                                        .withOpacity(0.5),
                                                    spreadRadius: 8,
                                                    blurRadius: 7,
                                                    offset: const Offset(0, 3),
                                                  )
                                                ],
                                                borderRadius:
                                                    const BorderRadius.all(
                                                        Radius.circular(15)),
                                              )
                                            : const BoxDecoration(
                                                color: Colors.white,
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(15)),
                                              ),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Container(
                                              width: 147,
                                              height: 147,
                                              decoration: const BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: Colors.transparent,
                                                image: DecorationImage(
                                                  image: AssetImage(
                                                      'img/team/o2o03.png'),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 300,
                                              child: Column(
                                                children: [
                                                  const Padding(
                                                    padding: EdgeInsets.only(
                                                      bottom: 10.0,
                                                      top: 40,
                                                    ),
                                                    child: Text(
                                                      'Jungwoo Shim',
                                                      style: TextStyle(
                                                        fontSize: 20,
                                                        fontWeight:
                                                            FontWeight.w700,
                                                      ),
                                                    ),
                                                  ),
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .symmetric(
                                                                vertical: 4.0),
                                                        child: Row(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: const [
                                                            Text(
                                                              '• ',
                                                              style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w700,
                                                                height: 1.4,
                                                                fontSize: 17,
                                                              ),
                                                            ),
                                                            Expanded(
                                                                child: Text(
                                                              'President, The Policy Academy of National Assembly',
                                                              style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w300,
                                                                height: 1.4,
                                                                fontSize: 17,
                                                              ),
                                                            ))
                                                          ],
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
                                    );
                                  },
                                ),
                              ),
                              Expanded(
                                child: OnHoverDetect(
                                  builder: (isHover) {
                                    return Padding(
                                      padding: const EdgeInsets.all(20.0),
                                      child: Container(
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 25,
                                          vertical: 45,
                                        ),
                                        decoration: isHover
                                            ? BoxDecoration(
                                                color: Colors.white,
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Colors.white
                                                        .withOpacity(0.5),
                                                    spreadRadius: 8,
                                                    blurRadius: 7,
                                                    offset: const Offset(0, 3),
                                                  )
                                                ],
                                                borderRadius:
                                                    const BorderRadius.all(
                                                        Radius.circular(15)),
                                              )
                                            : const BoxDecoration(
                                                color: Colors.white,
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(15)),
                                              ),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Container(
                                              width: 147,
                                              height: 147,
                                              decoration: const BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: Colors.transparent,
                                                image: DecorationImage(
                                                  image: AssetImage(
                                                      'img/team/o2o04.png'),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 300,
                                              child: Column(
                                                children: [
                                                  const Padding(
                                                    padding: EdgeInsets.only(
                                                      bottom: 10.0,
                                                      top: 40,
                                                    ),
                                                    child: Text(
                                                      'Jadeok Koo',
                                                      style: TextStyle(
                                                        fontSize: 20,
                                                        fontWeight:
                                                            FontWeight.w700,
                                                      ),
                                                    ),
                                                  ),
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .symmetric(
                                                                vertical: 4.0),
                                                        child: Row(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: const [
                                                            Text(
                                                              '• ',
                                                              style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w700,
                                                                height: 1.4,
                                                                fontSize: 17,
                                                              ),
                                                            ),
                                                            Expanded(
                                                                child: Text(
                                                              'Founder, NPO IT Support Center',
                                                              style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w300,
                                                                height: 1.4,
                                                                fontSize: 17,
                                                              ),
                                                            ))
                                                          ],
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .symmetric(
                                                                vertical: 4.0),
                                                        child: Row(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: const [
                                                            Text(
                                                              '• ',
                                                              style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w700,
                                                                height: 1.4,
                                                                fontSize: 17,
                                                              ),
                                                            ),
                                                            Expanded(
                                                                child: Text(
                                                              'Korea University',
                                                              style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w300,
                                                                height: 1.4,
                                                                fontSize: 17,
                                                              ),
                                                            ))
                                                          ],
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .symmetric(
                                                                vertical: 4.0),
                                                        child: Row(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: const [
                                                            Text(
                                                              '• ',
                                                              style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w700,
                                                                fontSize: 17,
                                                                height: 1.4,
                                                              ),
                                                            ),
                                                            Expanded(
                                                                child: Text(
                                                              'Seoul National Univ., Computer Science',
                                                              style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w300,
                                                                height: 1.4,
                                                                fontSize: 17,
                                                              ),
                                                            ))
                                                          ],
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
                                    );
                                  },
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    if (Responsive.isMobile(context))
                      SizedBox(
                        width: 400,
                        child: Column(
                          children: [
                            OnHoverDetect(
                              builder: (isHover) {
                                return Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 25,
                                      vertical: 45,
                                    ),
                                    decoration: isHover
                                        ? BoxDecoration(
                                      color: Colors.white,
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.white
                                              .withOpacity(0.5),
                                          spreadRadius: 8,
                                          blurRadius: 7,
                                          offset:
                                          const Offset(0, 3),
                                        )
                                      ],
                                      borderRadius:
                                      const BorderRadius.all(
                                          Radius.circular(15)),
                                    )
                                        : const BoxDecoration(
                                      color: Colors.white,
                                      borderRadius:
                                      BorderRadius.all(
                                          Radius.circular(15)),
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                      MainAxisAlignment.start,
                                      children: [
                                        Container(
                                          width: 147,
                                          height: 147,
                                          decoration: const BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Colors.transparent,
                                            image: DecorationImage(
                                              image: AssetImage(
                                                  'img/team/o2o01.png'),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 300,
                                          child: Column(
                                            children: [
                                              const Padding(
                                                padding: EdgeInsets.only(
                                                  bottom: 10.0,
                                                  top: 40,
                                                ),
                                                child: Text(
                                                  'Cheongjong Lee',
                                                  style: TextStyle(
                                                    fontSize: 20,
                                                    fontWeight:
                                                    FontWeight.w700,
                                                  ),
                                                ),
                                              ),
                                              Column(
                                                crossAxisAlignment:
                                                CrossAxisAlignment
                                                    .start,
                                                children: [
                                                  Padding(
                                                    padding:
                                                    const EdgeInsets
                                                        .symmetric(
                                                        vertical:
                                                        4.0),
                                                    child: Row(
                                                      crossAxisAlignment:
                                                      CrossAxisAlignment
                                                          .start,
                                                      children: const [
                                                        Text(
                                                          '• ',
                                                          style:
                                                          TextStyle(
                                                            fontWeight:
                                                            FontWeight
                                                                .w700,
                                                            height: 1.4,
                                                            fontSize: 17,
                                                          ),
                                                        ),
                                                        Expanded(
                                                            child: Text(
                                                              'CEO, Whois, Inc.',
                                                              style:
                                                              TextStyle(
                                                                fontWeight:
                                                                FontWeight
                                                                    .w300,
                                                                height: 1.4,
                                                                fontSize: 17,
                                                              ),
                                                            ))
                                                      ],
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                    const EdgeInsets
                                                        .symmetric(
                                                        vertical:
                                                        4.0),
                                                    child: Row(
                                                      crossAxisAlignment:
                                                      CrossAxisAlignment
                                                          .start,
                                                      children: const [
                                                        Text(
                                                          '• ',
                                                          style:
                                                          TextStyle(
                                                            fontWeight:
                                                            FontWeight
                                                                .w700,
                                                            height: 1.4,
                                                            fontSize: 17,
                                                          ),
                                                        ),
                                                        Expanded(
                                                            child: Text(
                                                              'Yonsei University',
                                                              style:
                                                              TextStyle(
                                                                fontWeight:
                                                                FontWeight
                                                                    .w300,
                                                                height: 1.4,
                                                                fontSize: 17,
                                                              ),
                                                            ))
                                                      ],
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
                                );
                              },
                            ),
                            OnHoverDetect(
                              builder: (isHover) {
                                return Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 25,
                                      vertical: 45,
                                    ),
                                    decoration: isHover
                                        ? BoxDecoration(
                                      color: Colors.white,
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.white
                                              .withOpacity(0.5),
                                          spreadRadius: 8,
                                          blurRadius: 7,
                                          offset:
                                          const Offset(0, 3),
                                        )
                                      ],
                                      borderRadius:
                                      const BorderRadius.all(
                                          Radius.circular(15)),
                                    )
                                        : const BoxDecoration(
                                      color: Colors.white,
                                      borderRadius:
                                      BorderRadius.all(
                                          Radius.circular(15)),
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                      MainAxisAlignment.start,
                                      children: [
                                        Container(
                                          width: 147,
                                          height: 147,
                                          decoration: const BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Colors.transparent,
                                            image: DecorationImage(
                                              image: AssetImage(
                                                  'img/team/o2o02.png'),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 300,
                                          child: Column(
                                            children: [
                                              const Padding(
                                                padding: EdgeInsets.only(
                                                  bottom: 10.0,
                                                  top: 40,
                                                ),
                                                child: Text(
                                                  'Inkyu Park',
                                                  style: TextStyle(
                                                    fontSize: 20,
                                                    fontWeight:
                                                    FontWeight.w700,
                                                  ),
                                                ),
                                              ),
                                              Column(
                                                crossAxisAlignment:
                                                CrossAxisAlignment
                                                    .start,
                                                children: [
                                                  Padding(
                                                    padding:
                                                    const EdgeInsets
                                                        .symmetric(
                                                        vertical:
                                                        4.0),
                                                    child: Row(
                                                      crossAxisAlignment:
                                                      CrossAxisAlignment
                                                          .start,
                                                      children: const [
                                                        Text(
                                                          '• ',
                                                          style:
                                                          TextStyle(
                                                            fontWeight:
                                                            FontWeight
                                                                .w700,
                                                            height: 1.4,
                                                            fontSize: 17,
                                                          ),
                                                        ),
                                                        Expanded(
                                                            child: Text(
                                                              'CEO, ecPlaza, Inc.',
                                                              style:
                                                              TextStyle(
                                                                fontWeight:
                                                                FontWeight
                                                                    .w300,
                                                                height: 1.4,
                                                                fontSize: 17,
                                                              ),
                                                            ))
                                                      ],
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                    const EdgeInsets
                                                        .symmetric(
                                                        vertical:
                                                        4.0),
                                                    child: Row(
                                                      crossAxisAlignment:
                                                      CrossAxisAlignment
                                                          .start,
                                                      children: const [
                                                        Text(
                                                          '• ',
                                                          style:
                                                          TextStyle(
                                                            fontWeight:
                                                            FontWeight
                                                                .w700,
                                                            height: 1.4,
                                                            fontSize: 17,
                                                          ),
                                                        ),
                                                        Expanded(
                                                            child: Text(
                                                              'Former manager, KTNET',
                                                              style:
                                                              TextStyle(
                                                                fontWeight:
                                                                FontWeight
                                                                    .w300,
                                                                height: 1.4,
                                                                fontSize: 17,
                                                              ),
                                                            ))
                                                      ],
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
                                );
                              },
                            ),
                            OnHoverDetect(
                              builder: (isHover) {
                                return Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 25,
                                      vertical: 45,
                                    ),
                                    decoration: isHover
                                        ? BoxDecoration(
                                      color: Colors.white,
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.white
                                              .withOpacity(0.5),
                                          spreadRadius: 8,
                                          blurRadius: 7,
                                          offset:
                                          const Offset(0, 3),
                                        )
                                      ],
                                      borderRadius:
                                      const BorderRadius.all(
                                          Radius.circular(15)),
                                    )
                                        : const BoxDecoration(
                                      color: Colors.white,
                                      borderRadius:
                                      BorderRadius.all(
                                          Radius.circular(15)),
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                      MainAxisAlignment.start,
                                      children: [
                                        Container(
                                          width: 147,
                                          height: 147,
                                          decoration: const BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Colors.transparent,
                                            image: DecorationImage(
                                              image: AssetImage(
                                                  'img/team/o2o03.png'),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 300,
                                          child: Column(
                                            children: [
                                              const Padding(
                                                padding: EdgeInsets.only(
                                                  bottom: 10.0,
                                                  top: 40,
                                                ),
                                                child: Text(
                                                  'Jungwoo Shim',
                                                  style: TextStyle(
                                                    fontSize: 20,
                                                    fontWeight:
                                                    FontWeight.w700,
                                                  ),
                                                ),
                                              ),
                                              Column(
                                                crossAxisAlignment:
                                                CrossAxisAlignment
                                                    .start,
                                                children: [
                                                  Padding(
                                                    padding:
                                                    const EdgeInsets
                                                        .symmetric(
                                                        vertical:
                                                        4.0),
                                                    child: Row(
                                                      crossAxisAlignment:
                                                      CrossAxisAlignment
                                                          .start,
                                                      children: const [
                                                        Text(
                                                          '• ',
                                                          style:
                                                          TextStyle(
                                                            fontWeight:
                                                            FontWeight
                                                                .w700,
                                                            height: 1.4,
                                                            fontSize: 17,
                                                          ),
                                                        ),
                                                        Expanded(
                                                            child: Text(
                                                              'President, The Policy Academy of National Assembly',
                                                              style:
                                                              TextStyle(
                                                                fontWeight:
                                                                FontWeight
                                                                    .w300,
                                                                height: 1.4,
                                                                fontSize: 17,
                                                              ),
                                                            ))
                                                      ],
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
                                );
                              },
                            ),
                            OnHoverDetect(
                              builder: (isHover) {
                                return Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 25,
                                      vertical: 45,
                                    ),
                                    decoration: isHover
                                        ? BoxDecoration(
                                      color: Colors.white,
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.white
                                              .withOpacity(0.5),
                                          spreadRadius: 8,
                                          blurRadius: 7,
                                          offset:
                                          const Offset(0, 3),
                                        )
                                      ],
                                      borderRadius:
                                      const BorderRadius.all(
                                          Radius.circular(15)),
                                    )
                                        : const BoxDecoration(
                                      color: Colors.white,
                                      borderRadius:
                                      BorderRadius.all(
                                          Radius.circular(15)),
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                      MainAxisAlignment.start,
                                      children: [
                                        Container(
                                          width: 147,
                                          height: 147,
                                          decoration: const BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Colors.transparent,
                                            image: DecorationImage(
                                              image: AssetImage(
                                                  'img/team/o2o04.png'),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 300,
                                          child: Column(
                                            children: [
                                              const Padding(
                                                padding: EdgeInsets.only(
                                                  bottom: 10.0,
                                                  top: 40,
                                                ),
                                                child: Text(
                                                  'Jadeok Koo',
                                                  style: TextStyle(
                                                    fontSize: 20,
                                                    fontWeight:
                                                    FontWeight.w700,
                                                  ),
                                                ),
                                              ),
                                              Column(
                                                crossAxisAlignment:
                                                CrossAxisAlignment
                                                    .start,
                                                children: [
                                                  Padding(
                                                    padding:
                                                    const EdgeInsets
                                                        .symmetric(
                                                        vertical:
                                                        4.0),
                                                    child: Row(
                                                      crossAxisAlignment:
                                                      CrossAxisAlignment
                                                          .start,
                                                      children: const [
                                                        Text(
                                                          '• ',
                                                          style:
                                                          TextStyle(
                                                            fontWeight:
                                                            FontWeight
                                                                .w700,
                                                            height: 1.4,
                                                            fontSize: 17,
                                                          ),
                                                        ),
                                                        Expanded(
                                                            child: Text(
                                                              'Founder, NPO IT Support Center',
                                                              style:
                                                              TextStyle(
                                                                fontWeight:
                                                                FontWeight
                                                                    .w300,
                                                                height: 1.4,
                                                                fontSize: 17,
                                                              ),
                                                            ))
                                                      ],
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                    const EdgeInsets
                                                        .symmetric(
                                                        vertical:
                                                        4.0),
                                                    child: Row(
                                                      crossAxisAlignment:
                                                      CrossAxisAlignment
                                                          .start,
                                                      children: const [
                                                        Text(
                                                          '• ',
                                                          style:
                                                          TextStyle(
                                                            fontWeight:
                                                            FontWeight
                                                                .w700,
                                                            height: 1.4,
                                                            fontSize: 17,
                                                          ),
                                                        ),
                                                        Expanded(
                                                            child: Text(
                                                              'Korea University',
                                                              style:
                                                              TextStyle(
                                                                fontWeight:
                                                                FontWeight
                                                                    .w300,
                                                                height: 1.4,
                                                                fontSize: 17,
                                                              ),
                                                            ))
                                                      ],
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                    const EdgeInsets
                                                        .symmetric(
                                                        vertical:
                                                        4.0),
                                                    child: Row(
                                                      crossAxisAlignment:
                                                      CrossAxisAlignment
                                                          .start,
                                                      children: const [
                                                        Text(
                                                          '• ',
                                                          style:
                                                          TextStyle(
                                                            fontWeight:
                                                            FontWeight
                                                                .w700,
                                                            fontSize: 17,
                                                            height: 1.4,
                                                          ),
                                                        ),
                                                        Expanded(
                                                            child: Text(
                                                              'Seoul National Univ., Computer Science',
                                                              style:
                                                              TextStyle(
                                                                fontWeight:
                                                                FontWeight
                                                                    .w300,
                                                                height: 1.4,
                                                                fontSize: 17,
                                                              ),
                                                            ))
                                                      ],
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
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 40.0),
                      child: Text(
                        'IP & Creative',
                        style: TextStyle(
                          color: Color.fromRGBO(162, 238, 239, 0.94),
                          fontSize: 25,
                        ),
                      ),
                    ),
                    if (Responsive.isDesktop(context))
                      Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: OnHoverDetect(
                                  builder: (isHover) {
                                    return Padding(
                                      padding: const EdgeInsets.all(20.0),
                                      child: Container(
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 25,
                                          vertical: 45,
                                        ),
                                        decoration: isHover
                                            ? BoxDecoration(
                                                color: Colors.white,
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Colors.white
                                                        .withOpacity(0.5),
                                                    spreadRadius: 8,
                                                    blurRadius: 7,
                                                    offset: const Offset(0, 3),
                                                  )
                                                ],
                                                borderRadius:
                                                    const BorderRadius.all(
                                                        Radius.circular(15)),
                                              )
                                            : const BoxDecoration(
                                                color: Colors.white,
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(15)),
                                              ),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Container(
                                              width: 147,
                                              height: 147,
                                              decoration: const BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: Colors.transparent,
                                                image: DecorationImage(
                                                  image: AssetImage(
                                                      'img/team/ip01.png'),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 300,
                                              child: Column(
                                                children: [
                                                  const Padding(
                                                    padding: EdgeInsets.only(
                                                      bottom: 10.0,
                                                      top: 40,
                                                    ),
                                                    child: Text(
                                                      'Sangdon Joo',
                                                      style: TextStyle(
                                                        fontSize: 20,
                                                        fontWeight:
                                                            FontWeight.w700,
                                                      ),
                                                    ),
                                                  ),
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .symmetric(
                                                                vertical: 4.0),
                                                        child: Row(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: const [
                                                            Text(
                                                              '• ',
                                                              style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w700,
                                                                height: 1.4,
                                                                fontSize: 15,
                                                              ),
                                                            ),
                                                            Expanded(
                                                                child: Text(
                                                              'CEO, IP Targets',
                                                              style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w300,
                                                                height: 1.4,
                                                                fontSize: 15,
                                                              ),
                                                            ))
                                                          ],
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .symmetric(
                                                                vertical: 4.0),
                                                        child: Row(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: const [
                                                            Text(
                                                              '• ',
                                                              style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w700,
                                                                height: 1.4,
                                                                fontSize: 15,
                                                              ),
                                                            ),
                                                            Expanded(
                                                                child: Text(
                                                              'Publisher, IPnomics',
                                                              style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w300,
                                                                height: 1.4,
                                                                fontSize: 15,
                                                              ),
                                                            )),
                                                          ],
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .symmetric(
                                                                vertical: 4.0),
                                                        child: Row(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: const [
                                                            Text(
                                                              '• ',
                                                              style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w700,
                                                                height: 1.4,
                                                                fontSize: 15,
                                                              ),
                                                            ),
                                                            Expanded(
                                                                child: Text(
                                                              'Adjunct Professor, Korea University Graduate School of Management of Technology',
                                                              style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w300,
                                                                height: 1.4,
                                                                fontSize: 15,
                                                              ),
                                                            )),
                                                          ],
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .symmetric(
                                                                vertical: 4.0),
                                                        child: Row(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: const [
                                                            Text(
                                                              '• ',
                                                              style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w700,
                                                                height: 1.4,
                                                                fontSize: 15,
                                                              ),
                                                            ),
                                                            Expanded(
                                                                child: Text(
                                                              'Member of the national steering committee of the Korea IP World Hub',
                                                              style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w300,
                                                                height: 1.4,
                                                                fontSize: 15,
                                                              ),
                                                            )),
                                                          ],
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
                                    );
                                  },
                                ),
                              ),
                              Expanded(
                                child: Visibility(
                                  visible: false,
                                  child: OnHoverDetect(
                                    builder: (isHover) {
                                      return Padding(
                                        padding: const EdgeInsets.all(20.0),
                                        child: Container(
                                          padding: const EdgeInsets.symmetric(
                                            horizontal: 25,
                                            vertical: 45,
                                          ),
                                          decoration: isHover
                                              ? BoxDecoration(
                                                  color: Colors.white,
                                                  boxShadow: [
                                                    BoxShadow(
                                                      color: Colors.white
                                                          .withOpacity(0.5),
                                                      spreadRadius: 8,
                                                      blurRadius: 7,
                                                      offset:
                                                          const Offset(0, 3),
                                                    )
                                                  ],
                                                  borderRadius:
                                                      const BorderRadius.all(
                                                          Radius.circular(15)),
                                                )
                                              : const BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(15)),
                                                ),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              SizedBox(
                                                height: 300,
                                                child: Column(
                                                  children: const [
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                        bottom: 10.0,
                                                        top: 40,
                                                      ),
                                                      child: Text(
                                                        '',
                                                        style: TextStyle(
                                                          fontSize: 20,
                                                          fontWeight:
                                                              FontWeight.w700,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          bottom: 15.0),
                                                      child: Text(
                                                        '',
                                                        style: TextStyle(
                                                          fontSize: 19,
                                                          fontWeight:
                                                              FontWeight.w300,
                                                          color: Color.fromRGBO(
                                                              10,
                                                              50,
                                                              111,
                                                              0.58),
                                                        ),
                                                      ),
                                                    ),
                                                    Text(
                                                      '',
                                                      maxLines: 5,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign:
                                                          TextAlign.start,
                                                      style: TextStyle(
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.w300,
                                                        height: 1.6,
                                                        wordSpacing: 1.5,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              const SizedBox(
                                                height: 20,
                                              ),
                                            ],
                                          ),
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Visibility(
                                  visible: false,
                                  child: OnHoverDetect(
                                    builder: (isHover) {
                                      return Padding(
                                        padding: const EdgeInsets.all(20.0),
                                        child: Container(
                                          padding: const EdgeInsets.symmetric(
                                            horizontal: 25,
                                            vertical: 45,
                                          ),
                                          decoration: isHover
                                              ? BoxDecoration(
                                                  color: Colors.white,
                                                  boxShadow: [
                                                    BoxShadow(
                                                      color: Colors.white
                                                          .withOpacity(0.5),
                                                      spreadRadius: 8,
                                                      blurRadius: 7,
                                                      offset:
                                                          const Offset(0, 3),
                                                    )
                                                  ],
                                                  borderRadius:
                                                      const BorderRadius.all(
                                                          Radius.circular(15)),
                                                )
                                              : const BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(15)),
                                                ),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              SizedBox(
                                                height: 300,
                                                child: Column(
                                                  children: const [
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                        bottom: 10.0,
                                                        top: 40,
                                                      ),
                                                      child: Text(
                                                        '',
                                                        style: TextStyle(
                                                          fontSize: 20,
                                                          fontWeight:
                                                              FontWeight.w700,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          bottom: 15.0),
                                                      child: Text(
                                                        '',
                                                        style: TextStyle(
                                                          fontSize: 19,
                                                          fontWeight:
                                                              FontWeight.w300,
                                                          color: Color.fromRGBO(
                                                              10,
                                                              50,
                                                              111,
                                                              0.58),
                                                        ),
                                                      ),
                                                    ),
                                                    Text(
                                                      '',
                                                      maxLines: 5,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign:
                                                          TextAlign.start,
                                                      style: TextStyle(
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.w300,
                                                        height: 1.6,
                                                        wordSpacing: 1.5,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              const SizedBox(
                                                height: 20,
                                              ),
                                            ],
                                          ),
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Visibility(
                                  visible: false,
                                  child: OnHoverDetect(
                                    builder: (isHover) {
                                      return Padding(
                                        padding: const EdgeInsets.all(20.0),
                                        child: Container(
                                          padding: const EdgeInsets.symmetric(
                                            horizontal: 25,
                                            vertical: 45,
                                          ),
                                          decoration: isHover
                                              ? BoxDecoration(
                                                  color: Colors.white,
                                                  boxShadow: [
                                                    BoxShadow(
                                                      color: Colors.white
                                                          .withOpacity(0.5),
                                                      spreadRadius: 8,
                                                      blurRadius: 7,
                                                      offset:
                                                          const Offset(0, 3),
                                                    )
                                                  ],
                                                  borderRadius:
                                                      const BorderRadius.all(
                                                          Radius.circular(15)),
                                                )
                                              : const BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(15)),
                                                ),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              SizedBox(
                                                height: 300,
                                                child: Column(
                                                  children: const [
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                        bottom: 10.0,
                                                        top: 40,
                                                      ),
                                                      child: Text(
                                                        '',
                                                        style: TextStyle(
                                                          fontSize: 20,
                                                          fontWeight:
                                                              FontWeight.w700,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          bottom: 15.0),
                                                      child: Text(
                                                        '',
                                                        style: TextStyle(
                                                          fontSize: 19,
                                                          fontWeight:
                                                              FontWeight.w300,
                                                          color: Color.fromRGBO(
                                                              10,
                                                              50,
                                                              111,
                                                              0.58),
                                                        ),
                                                      ),
                                                    ),
                                                    Text(
                                                      '',
                                                      maxLines: 5,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign:
                                                          TextAlign.start,
                                                      style: TextStyle(
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.w300,
                                                        height: 1.6,
                                                        wordSpacing: 1.5,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              const SizedBox(
                                                height: 20,
                                              ),
                                            ],
                                          ),
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    if (Responsive.isTablet(context))
                      Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: OnHoverDetect(
                                  builder: (isHover) {
                                    return Padding(
                                      padding: const EdgeInsets.all(20.0),
                                      child: Container(
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 25,
                                          vertical: 45,
                                        ),
                                        decoration: isHover
                                            ? BoxDecoration(
                                                color: Colors.white,
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Colors.white
                                                        .withOpacity(0.5),
                                                    spreadRadius: 8,
                                                    blurRadius: 7,
                                                    offset: const Offset(0, 3),
                                                  )
                                                ],
                                                borderRadius:
                                                    const BorderRadius.all(
                                                        Radius.circular(15)),
                                              )
                                            : const BoxDecoration(
                                                color: Colors.white,
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(15)),
                                              ),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Container(
                                              width: 147,
                                              height: 147,
                                              decoration: const BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: Colors.transparent,
                                                image: DecorationImage(
                                                  image: AssetImage(
                                                      'img/team/ip01.png'),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 300,
                                              child: Column(
                                                children: [
                                                  const Padding(
                                                    padding: EdgeInsets.only(
                                                      bottom: 10.0,
                                                      top: 40,
                                                    ),
                                                    child: Text(
                                                      'Sangdon Joo',
                                                      style: TextStyle(
                                                        fontSize: 20,
                                                        fontWeight:
                                                            FontWeight.w700,
                                                      ),
                                                    ),
                                                  ),
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .symmetric(
                                                                vertical: 4.0),
                                                        child: Row(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: const [
                                                            Text(
                                                              '• ',
                                                              style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w700,
                                                                height: 1.4,
                                                                fontSize: 17,
                                                              ),
                                                            ),
                                                            Expanded(
                                                                child: Text(
                                                              'CEO, IP Targets',
                                                              style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w300,
                                                                height: 1.4,
                                                                fontSize: 17,
                                                              ),
                                                            ))
                                                          ],
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .symmetric(
                                                                vertical: 4.0),
                                                        child: Row(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: const [
                                                            Text(
                                                              '• ',
                                                              style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w700,
                                                                height: 1.4,
                                                                fontSize: 16,
                                                              ),
                                                            ),
                                                            Expanded(
                                                                child: Text(
                                                              'Publisher, IPnomics',
                                                              style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w300,
                                                                height: 1.4,
                                                                fontSize: 16,
                                                              ),
                                                            )),
                                                          ],
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .symmetric(
                                                                vertical: 4.0),
                                                        child: Row(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: const [
                                                            Text(
                                                              '• ',
                                                              style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w700,
                                                                height: 1.4,
                                                                fontSize: 16,
                                                              ),
                                                            ),
                                                            Expanded(
                                                                child: Text(
                                                              'Adjunct Professor, Korea University Graduate School of Management of Technology',
                                                              style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w300,
                                                                height: 1.4,
                                                                fontSize: 16,
                                                              ),
                                                            )),
                                                          ],
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .symmetric(
                                                                vertical: 4.0),
                                                        child: Row(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: const [
                                                            Text(
                                                              '• ',
                                                              style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w700,
                                                                height: 1.4,
                                                                fontSize: 16,
                                                              ),
                                                            ),
                                                            Expanded(
                                                                child: Text(
                                                              'Member of the national steering committee of the Korea IP World Hub',
                                                              style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w300,
                                                                height: 1.4,
                                                                fontSize: 16,
                                                              ),
                                                            )),
                                                          ],
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
                                    );
                                  },
                                ),
                              ),
                              Expanded(
                                child: Visibility(
                                  visible: false,
                                  child: OnHoverDetect(
                                    builder: (isHover) {
                                      return Padding(
                                        padding: const EdgeInsets.all(20.0),
                                        child: Container(
                                          padding: const EdgeInsets.symmetric(
                                            horizontal: 25,
                                            vertical: 45,
                                          ),
                                          decoration: isHover
                                              ? BoxDecoration(
                                                  color: Colors.white,
                                                  boxShadow: [
                                                    BoxShadow(
                                                      color: Colors.white
                                                          .withOpacity(0.5),
                                                      spreadRadius: 8,
                                                      blurRadius: 7,
                                                      offset:
                                                          const Offset(0, 3),
                                                    )
                                                  ],
                                                  borderRadius:
                                                      const BorderRadius.all(
                                                          Radius.circular(15)),
                                                )
                                              : const BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(15)),
                                                ),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              SizedBox(
                                                height: 300,
                                                child: Column(
                                                  children: const [
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                        bottom: 10.0,
                                                        top: 40,
                                                      ),
                                                      child: Text(
                                                        '',
                                                        style: TextStyle(
                                                          fontSize: 20,
                                                          fontWeight:
                                                              FontWeight.w700,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          bottom: 15.0),
                                                      child: Text(
                                                        '',
                                                        style: TextStyle(
                                                          fontSize: 19,
                                                          fontWeight:
                                                              FontWeight.w300,
                                                          color: Color.fromRGBO(
                                                              10,
                                                              50,
                                                              111,
                                                              0.58),
                                                        ),
                                                      ),
                                                    ),
                                                    Text(
                                                      '',
                                                      maxLines: 5,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign:
                                                          TextAlign.start,
                                                      style: TextStyle(
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.w300,
                                                        height: 1.6,
                                                        wordSpacing: 1.5,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              const SizedBox(
                                                height: 20,
                                              ),
                                            ],
                                          ),
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    if (Responsive.isMobile(context))
                      SizedBox(
                        width: 400,
                        child: Column(
                          children: [
                            OnHoverDetect(
                              builder: (isHover) {
                                return Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 25,
                                      vertical: 45,
                                    ),
                                    decoration: isHover
                                        ? BoxDecoration(
                                            color: Colors.white,
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.white
                                                    .withOpacity(0.5),
                                                spreadRadius: 8,
                                                blurRadius: 7,
                                                offset: const Offset(0, 3),
                                              )
                                            ],
                                            borderRadius:
                                                const BorderRadius.all(
                                                    Radius.circular(15)),
                                          )
                                        : const BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(15)),
                                          ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Container(
                                          width: 147,
                                          height: 147,
                                          decoration: const BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Colors.transparent,
                                            image: DecorationImage(
                                              image: AssetImage(
                                                  'img/team/ip01.png'),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 300,
                                          child: Column(
                                            children: [
                                              const Padding(
                                                padding: EdgeInsets.only(
                                                  bottom: 10.0,
                                                  top: 40,
                                                ),
                                                child: Text(
                                                  'Sangdon Joo',
                                                  style: TextStyle(
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.w700,
                                                  ),
                                                ),
                                              ),
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                    padding: const EdgeInsets
                                                            .symmetric(
                                                        vertical: 4.0),
                                                    child: Row(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: const [
                                                        Text(
                                                          '• ',
                                                          style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.w700,
                                                            height: 1.4,
                                                            fontSize: 17,
                                                          ),
                                                        ),
                                                        Expanded(
                                                            child: Text(
                                                          'CEO, IP Targets',
                                                          style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.w300,
                                                            height: 1.4,
                                                            fontSize: 17,
                                                          ),
                                                        ))
                                                      ],
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets
                                                            .symmetric(
                                                        vertical: 4.0),
                                                    child: Row(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: const [
                                                        Text(
                                                          '• ',
                                                          style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.w700,
                                                            height: 1.4,
                                                            fontSize: 16,
                                                          ),
                                                        ),
                                                        Expanded(
                                                            child: Text(
                                                          'Publisher, IPnomics',
                                                          style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.w300,
                                                            height: 1.4,
                                                            fontSize: 16,
                                                          ),
                                                        )),
                                                      ],
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets
                                                            .symmetric(
                                                        vertical: 4.0),
                                                    child: Row(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: const [
                                                        Text(
                                                          '• ',
                                                          style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.w700,
                                                            height: 1.4,
                                                            fontSize: 16,
                                                          ),
                                                        ),
                                                        Expanded(
                                                            child: Text(
                                                          'Adjunct Professor, Korea University Graduate School of Management of Technology',
                                                          style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.w300,
                                                            height: 1.4,
                                                            fontSize: 16,
                                                          ),
                                                        )),
                                                      ],
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets
                                                            .symmetric(
                                                        vertical: 4.0),
                                                    child: Row(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: const [
                                                        Text(
                                                          '• ',
                                                          style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.w700,
                                                            height: 1.4,
                                                            fontSize: 16,
                                                          ),
                                                        ),
                                                        Expanded(
                                                            child: Text(
                                                          'Member of the national steering committee of the Korea IP World Hub',
                                                          style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.w300,
                                                            height: 1.4,
                                                            fontSize: 16,
                                                          ),
                                                        )),
                                                      ],
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
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 80.0),
                      child: RichText(
                        text: const TextSpan(
                          style: TextStyle(
                            fontSize: 45.0,
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            height: 1.4,
                          ),
                          children: [
                            TextSpan(
                              text: 'TECHNICAL & STRATEGIC',
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                color: Color.fromRGBO(153, 238, 239, 0.94),
                              ),
                            ),
                            TextSpan(text: ' ADVISORS'),
                          ],
                        ),
                      ),
                    ),
                    if(Responsive.isDesktop(context))
                    Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: OnHoverDetect(
                                builder: (isHover) {
                                  return Padding(
                                    padding: const EdgeInsets.all(20.0),
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 25,
                                        vertical: 45,
                                      ),
                                      decoration: isHover
                                          ? BoxDecoration(
                                              color: Colors.white,
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.white
                                                      .withOpacity(0.5),
                                                  spreadRadius: 8,
                                                  blurRadius: 7,
                                                  offset: const Offset(0, 3),
                                                )
                                              ],
                                              borderRadius:
                                                  const BorderRadius.all(
                                                      Radius.circular(15)),
                                            )
                                          : const BoxDecoration(
                                              color: Colors.white,
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(15)),
                                            ),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Container(
                                            width: 147,
                                            height: 147,
                                            decoration: const BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: Colors.transparent,
                                              image: DecorationImage(
                                                image: AssetImage(
                                                    'img/team/tech01.png'),
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 300,
                                            child: Column(
                                              children: [
                                                const Padding(
                                                  padding: EdgeInsets.only(
                                                    bottom: 10.0,
                                                    top: 40,
                                                  ),
                                                  child: Text(
                                                    'Tommy Ryoo',
                                                    style: TextStyle(
                                                      fontSize: 20,
                                                      fontWeight:
                                                          FontWeight.w700,
                                                    ),
                                                  ),
                                                ),
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Padding(
                                                      padding: const EdgeInsets
                                                              .symmetric(
                                                          vertical: 4.0),
                                                      child: Row(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: const [
                                                          Text(
                                                            '• ',
                                                            style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w700,
                                                              height: 1.4,
                                                              fontSize: 17,
                                                            ),
                                                          ),
                                                          Expanded(
                                                              child: Text(
                                                            'Global Business Director, FXGear, a leading AR/VR technology company',
                                                            style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w300,
                                                              height: 1.4,
                                                              fontSize: 17,
                                                            ),
                                                          ))
                                                        ],
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: const EdgeInsets
                                                              .symmetric(
                                                          vertical: 4.0),
                                                      child: Row(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: const [
                                                          Text(
                                                            '• ',
                                                            style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w700,
                                                              height: 1.4,
                                                              fontSize: 17,
                                                            ),
                                                          ),
                                                          Expanded(
                                                              child: Text(
                                                            'Hyundai Electronics SW lab',
                                                            style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w300,
                                                              height: 1.4,
                                                              fontSize: 17,
                                                            ),
                                                          ))
                                                        ],
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: const EdgeInsets
                                                              .symmetric(
                                                          vertical: 4.0),
                                                      child: Row(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: const [
                                                          Text(
                                                            '• ',
                                                            style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w700,
                                                              fontSize: 17,
                                                              height: 1.4,
                                                            ),
                                                          ),
                                                          Expanded(
                                                              child: Text(
                                                            'B.E., Seoul National University',
                                                            style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w300,
                                                              height: 1.4,
                                                              fontSize: 17,
                                                            ),
                                                          ))
                                                        ],
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
                                  );
                                },
                              ),
                            ),
                            Expanded(
                              child: OnHoverDetect(
                                builder: (isHover) {
                                  return Padding(
                                    padding: const EdgeInsets.all(20.0),
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 25,
                                        vertical: 45,
                                      ),
                                      decoration: isHover
                                          ? BoxDecoration(
                                              color: Colors.white,
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.white
                                                      .withOpacity(0.5),
                                                  spreadRadius: 8,
                                                  blurRadius: 7,
                                                  offset: const Offset(0, 3),
                                                )
                                              ],
                                              borderRadius:
                                                  const BorderRadius.all(
                                                      Radius.circular(15)),
                                            )
                                          : const BoxDecoration(
                                              color: Colors.white,
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(15)),
                                            ),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Container(
                                            width: 147,
                                            height: 147,
                                            decoration: const BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: Colors.transparent,
                                              image: DecorationImage(
                                                image: AssetImage(
                                                    'img/team/tech02.png'),
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 300,
                                            child: Column(
                                              children: [
                                                const Padding(
                                                  padding: EdgeInsets.only(
                                                    bottom: 10.0,
                                                    top: 40,
                                                  ),
                                                  child: Text(
                                                    'Jiho Kim',
                                                    style: TextStyle(
                                                      fontSize: 20,
                                                      fontWeight:
                                                          FontWeight.w700,
                                                    ),
                                                  ),
                                                ),
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Padding(
                                                      padding: const EdgeInsets
                                                              .symmetric(
                                                          vertical: 4.0),
                                                      child: Row(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: const [
                                                          Text(
                                                            '• ',
                                                            style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w700,
                                                              height: 1.4,
                                                              fontSize: 17,
                                                            ),
                                                          ),
                                                          Expanded(
                                                              child: Text(
                                                            'Blockchain Architect',
                                                            style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w300,
                                                              height: 1.4,
                                                              fontSize: 17,
                                                            ),
                                                          ))
                                                        ],
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: const EdgeInsets
                                                              .symmetric(
                                                          vertical: 4.0),
                                                      child: Row(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: const [
                                                          Text(
                                                            '• ',
                                                            style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w700,
                                                              height: 1.4,
                                                              fontSize: 17,
                                                            ),
                                                          ),
                                                          Expanded(
                                                              child: Text(
                                                            'A top-class, first-generation game developer in Korea',
                                                            style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w300,
                                                              height: 1.4,
                                                              fontSize: 17,
                                                            ),
                                                          ))
                                                        ],
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: const EdgeInsets
                                                              .symmetric(
                                                          vertical: 4.0),
                                                      child: Row(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: const [
                                                          Text(
                                                            '• ',
                                                            style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w700,
                                                              fontSize: 17,
                                                              height: 1.4,
                                                            ),
                                                          ),
                                                          Expanded(
                                                              child: Text(
                                                            'KAIST',
                                                            style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w300,
                                                              height: 1.4,
                                                              fontSize: 17,
                                                            ),
                                                          ))
                                                        ],
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
                                  );
                                },
                              ),
                            ),
                            Expanded(
                              child: Visibility(
                                visible: false,
                                child: OnHoverDetect(
                                  builder: (isHover) {
                                    return Padding(
                                      padding: const EdgeInsets.all(20.0),
                                      child: Container(
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 25,
                                          vertical: 45,
                                        ),
                                        decoration: isHover
                                            ? BoxDecoration(
                                                color: Colors.white,
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Colors.white
                                                        .withOpacity(0.5),
                                                    spreadRadius: 8,
                                                    blurRadius: 7,
                                                    offset: const Offset(0, 3),
                                                  )
                                                ],
                                                borderRadius:
                                                    const BorderRadius.all(
                                                        Radius.circular(15)),
                                              )
                                            : const BoxDecoration(
                                                color: Colors.white,
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(15)),
                                              ),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            SizedBox(
                                              height: 300,
                                              child: Column(
                                                children: const [
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                      bottom: 10.0,
                                                      top: 40,
                                                    ),
                                                    child: Text(
                                                      '',
                                                      style: TextStyle(
                                                        fontSize: 20,
                                                        fontWeight:
                                                            FontWeight.w700,
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        bottom: 15.0),
                                                    child: Text(
                                                      '',
                                                      style: TextStyle(
                                                        fontSize: 19,
                                                        fontWeight:
                                                            FontWeight.w300,
                                                        color: Color.fromRGBO(
                                                            10, 50, 111, 0.58),
                                                      ),
                                                    ),
                                                  ),
                                                  Text(
                                                    '',
                                                    maxLines: 5,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.start,
                                                    style: TextStyle(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w300,
                                                      height: 1.6,
                                                      wordSpacing: 1.5,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 20,
                                            ),
                                          ],
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ),
                            Expanded(
                              child: Visibility(
                                visible: false,
                                child: OnHoverDetect(
                                  builder: (isHover) {
                                    return Padding(
                                      padding: const EdgeInsets.all(20.0),
                                      child: Container(
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 25,
                                          vertical: 45,
                                        ),
                                        decoration: isHover
                                            ? BoxDecoration(
                                                color: Colors.white,
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Colors.white
                                                        .withOpacity(0.5),
                                                    spreadRadius: 8,
                                                    blurRadius: 7,
                                                    offset: const Offset(0, 3),
                                                  )
                                                ],
                                                borderRadius:
                                                    const BorderRadius.all(
                                                        Radius.circular(15)),
                                              )
                                            : const BoxDecoration(
                                                color: Colors.white,
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(15)),
                                              ),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            SizedBox(
                                              height: 300,
                                              child: Column(
                                                children: const [],
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 20,
                                            ),
                                          ],
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    if(Responsive.isTablet(context))
                      Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: OnHoverDetect(
                                  builder: (isHover) {
                                    return Padding(
                                      padding: const EdgeInsets.all(20.0),
                                      child: Container(
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 25,
                                          vertical: 45,
                                        ),
                                        decoration: isHover
                                            ? BoxDecoration(
                                          color: Colors.white,
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.white
                                                  .withOpacity(0.5),
                                              spreadRadius: 8,
                                              blurRadius: 7,
                                              offset: const Offset(0, 3),
                                            )
                                          ],
                                          borderRadius:
                                          const BorderRadius.all(
                                              Radius.circular(15)),
                                        )
                                            : const BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(15)),
                                        ),
                                        child: Column(
                                          mainAxisAlignment:
                                          MainAxisAlignment.start,
                                          children: [
                                            Container(
                                              width: 147,
                                              height: 147,
                                              decoration: const BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: Colors.transparent,
                                                image: DecorationImage(
                                                  image: AssetImage(
                                                      'img/team/tech01.png'),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 300,
                                              child: Column(
                                                children: [
                                                  const Padding(
                                                    padding: EdgeInsets.only(
                                                      bottom: 10.0,
                                                      top: 40,
                                                    ),
                                                    child: Text(
                                                      'Tommy Ryoo',
                                                      style: TextStyle(
                                                        fontSize: 20,
                                                        fontWeight:
                                                        FontWeight.w700,
                                                      ),
                                                    ),
                                                  ),
                                                  Column(
                                                    crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                    children: [
                                                      Padding(
                                                        padding: const EdgeInsets
                                                            .symmetric(
                                                            vertical: 4.0),
                                                        child: Row(
                                                          crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                          children: const [
                                                            Text(
                                                              '• ',
                                                              style: TextStyle(
                                                                fontWeight:
                                                                FontWeight
                                                                    .w700,
                                                                height: 1.4,
                                                                fontSize: 17,
                                                              ),
                                                            ),
                                                            Expanded(
                                                                child: Text(
                                                                  'Global Business Director, FXGear, a leading AR/VR technology company',
                                                                  style: TextStyle(
                                                                    fontWeight:
                                                                    FontWeight
                                                                        .w300,
                                                                    height: 1.4,
                                                                    fontSize: 17,
                                                                  ),
                                                                ))
                                                          ],
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding: const EdgeInsets
                                                            .symmetric(
                                                            vertical: 4.0),
                                                        child: Row(
                                                          crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                          children: const [
                                                            Text(
                                                              '• ',
                                                              style: TextStyle(
                                                                fontWeight:
                                                                FontWeight
                                                                    .w700,
                                                                height: 1.4,
                                                                fontSize: 17,
                                                              ),
                                                            ),
                                                            Expanded(
                                                                child: Text(
                                                                  'Hyundai Electronics SW lab',
                                                                  style: TextStyle(
                                                                    fontWeight:
                                                                    FontWeight
                                                                        .w300,
                                                                    height: 1.4,
                                                                    fontSize: 17,
                                                                  ),
                                                                ))
                                                          ],
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding: const EdgeInsets
                                                            .symmetric(
                                                            vertical: 4.0),
                                                        child: Row(
                                                          crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                          children: const [
                                                            Text(
                                                              '• ',
                                                              style: TextStyle(
                                                                fontWeight:
                                                                FontWeight
                                                                    .w700,
                                                                fontSize: 17,
                                                                height: 1.4,
                                                              ),
                                                            ),
                                                            Expanded(
                                                                child: Text(
                                                                  'B.E., Seoul National University',
                                                                  style: TextStyle(
                                                                    fontWeight:
                                                                    FontWeight
                                                                        .w300,
                                                                    height: 1.4,
                                                                    fontSize: 17,
                                                                  ),
                                                                ))
                                                          ],
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
                                    );
                                  },
                                ),
                              ),
                              Expanded(
                                child: OnHoverDetect(
                                  builder: (isHover) {
                                    return Padding(
                                      padding: const EdgeInsets.all(20.0),
                                      child: Container(
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 25,
                                          vertical: 45,
                                        ),
                                        decoration: isHover
                                            ? BoxDecoration(
                                          color: Colors.white,
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.white
                                                  .withOpacity(0.5),
                                              spreadRadius: 8,
                                              blurRadius: 7,
                                              offset: const Offset(0, 3),
                                            )
                                          ],
                                          borderRadius:
                                          const BorderRadius.all(
                                              Radius.circular(15)),
                                        )
                                            : const BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(15)),
                                        ),
                                        child: Column(
                                          mainAxisAlignment:
                                          MainAxisAlignment.start,
                                          children: [
                                            Container(
                                              width: 147,
                                              height: 147,
                                              decoration: const BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: Colors.transparent,
                                                image: DecorationImage(
                                                  image: AssetImage(
                                                      'img/team/tech02.png'),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 300,
                                              child: Column(
                                                children: [
                                                  const Padding(
                                                    padding: EdgeInsets.only(
                                                      bottom: 10.0,
                                                      top: 40,
                                                    ),
                                                    child: Text(
                                                      'Jiho Kim',
                                                      style: TextStyle(
                                                        fontSize: 20,
                                                        fontWeight:
                                                        FontWeight.w700,
                                                      ),
                                                    ),
                                                  ),
                                                  Column(
                                                    crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                    children: [
                                                      Padding(
                                                        padding: const EdgeInsets
                                                            .symmetric(
                                                            vertical: 4.0),
                                                        child: Row(
                                                          crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                          children: const [
                                                            Text(
                                                              '• ',
                                                              style: TextStyle(
                                                                fontWeight:
                                                                FontWeight
                                                                    .w700,
                                                                height: 1.4,
                                                                fontSize: 17,
                                                              ),
                                                            ),
                                                            Expanded(
                                                                child: Text(
                                                                  'Blockchain Architect',
                                                                  style: TextStyle(
                                                                    fontWeight:
                                                                    FontWeight
                                                                        .w300,
                                                                    height: 1.4,
                                                                    fontSize: 17,
                                                                  ),
                                                                ))
                                                          ],
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding: const EdgeInsets
                                                            .symmetric(
                                                            vertical: 4.0),
                                                        child: Row(
                                                          crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                          children: const [
                                                            Text(
                                                              '• ',
                                                              style: TextStyle(
                                                                fontWeight:
                                                                FontWeight
                                                                    .w700,
                                                                height: 1.4,
                                                                fontSize: 17,
                                                              ),
                                                            ),
                                                            Expanded(
                                                                child: Text(
                                                                  'A top-class, first-generation game developer in Korea',
                                                                  style: TextStyle(
                                                                    fontWeight:
                                                                    FontWeight
                                                                        .w300,
                                                                    height: 1.4,
                                                                    fontSize: 17,
                                                                  ),
                                                                ))
                                                          ],
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding: const EdgeInsets
                                                            .symmetric(
                                                            vertical: 4.0),
                                                        child: Row(
                                                          crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                          children: const [
                                                            Text(
                                                              '• ',
                                                              style: TextStyle(
                                                                fontWeight:
                                                                FontWeight
                                                                    .w700,
                                                                fontSize: 17,
                                                                height: 1.4,
                                                              ),
                                                            ),
                                                            Expanded(
                                                                child: Text(
                                                                  'KAIST',
                                                                  style: TextStyle(
                                                                    fontWeight:
                                                                    FontWeight
                                                                        .w300,
                                                                    height: 1.4,
                                                                    fontSize: 17,
                                                                  ),
                                                                ))
                                                          ],
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
                                    );
                                  },
                                ),
                              ),
                            ],
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Visibility(
                                  visible: false,
                                  child: OnHoverDetect(
                                    builder: (isHover) {
                                      return Padding(
                                        padding: const EdgeInsets.all(20.0),
                                        child: Container(
                                          padding: const EdgeInsets.symmetric(
                                            horizontal: 25,
                                            vertical: 45,
                                          ),
                                          decoration: isHover
                                              ? BoxDecoration(
                                            color: Colors.white,
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.white
                                                    .withOpacity(0.5),
                                                spreadRadius: 8,
                                                blurRadius: 7,
                                                offset: const Offset(0, 3),
                                              )
                                            ],
                                            borderRadius:
                                            const BorderRadius.all(
                                                Radius.circular(15)),
                                          )
                                              : const BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(15)),
                                          ),
                                          child: Column(
                                            mainAxisAlignment:
                                            MainAxisAlignment.start,
                                            children: [
                                              SizedBox(
                                                height: 300,
                                                child: Column(
                                                  children: const [
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                        bottom: 10.0,
                                                        top: 40,
                                                      ),
                                                      child: Text(
                                                        '',
                                                        style: TextStyle(
                                                          fontSize: 20,
                                                          fontWeight:
                                                          FontWeight.w700,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          bottom: 15.0),
                                                      child: Text(
                                                        '',
                                                        style: TextStyle(
                                                          fontSize: 19,
                                                          fontWeight:
                                                          FontWeight.w300,
                                                          color: Color.fromRGBO(
                                                              10, 50, 111, 0.58),
                                                        ),
                                                      ),
                                                    ),
                                                    Text(
                                                      '',
                                                      maxLines: 5,
                                                      overflow:
                                                      TextOverflow.ellipsis,
                                                      textAlign: TextAlign.start,
                                                      style: TextStyle(
                                                        fontSize: 16,
                                                        fontWeight:
                                                        FontWeight.w300,
                                                        height: 1.6,
                                                        wordSpacing: 1.5,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              const SizedBox(
                                                height: 20,
                                              ),
                                            ],
                                          ),
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Visibility(
                                  visible: false,
                                  child: OnHoverDetect(
                                    builder: (isHover) {
                                      return Padding(
                                        padding: const EdgeInsets.all(20.0),
                                        child: Container(
                                          padding: const EdgeInsets.symmetric(
                                            horizontal: 25,
                                            vertical: 45,
                                          ),
                                          decoration: isHover
                                              ? BoxDecoration(
                                            color: Colors.white,
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.white
                                                    .withOpacity(0.5),
                                                spreadRadius: 8,
                                                blurRadius: 7,
                                                offset: const Offset(0, 3),
                                              )
                                            ],
                                            borderRadius:
                                            const BorderRadius.all(
                                                Radius.circular(15)),
                                          )
                                              : const BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(15)),
                                          ),
                                          child: Column(
                                            mainAxisAlignment:
                                            MainAxisAlignment.start,
                                            children: [
                                              SizedBox(
                                                height: 300,
                                                child: Column(
                                                  children: const [],
                                                ),
                                              ),
                                              const SizedBox(
                                                height: 20,
                                              ),
                                            ],
                                          ),
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    if(Responsive.isMobile(context))
                      SizedBox(
                        width: 400,
                        child: Column(
                          children: [
                            OnHoverDetect(
                              builder: (isHover) {
                                return Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 25,
                                      vertical: 45,
                                    ),
                                    decoration: isHover
                                        ? BoxDecoration(
                                      color: Colors.white,
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.white
                                              .withOpacity(0.5),
                                          spreadRadius: 8,
                                          blurRadius: 7,
                                          offset: const Offset(0, 3),
                                        )
                                      ],
                                      borderRadius:
                                      const BorderRadius.all(
                                          Radius.circular(15)),
                                    )
                                        : const BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(15)),
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                      MainAxisAlignment.start,
                                      children: [
                                        Container(
                                          width: 147,
                                          height: 147,
                                          decoration: const BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Colors.transparent,
                                            image: DecorationImage(
                                              image: AssetImage(
                                                  'img/team/tech01.png'),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 300,
                                          child: Column(
                                            children: [
                                              const Padding(
                                                padding: EdgeInsets.only(
                                                  bottom: 10.0,
                                                  top: 40,
                                                ),
                                                child: Text(
                                                  'Tommy Ryoo',
                                                  style: TextStyle(
                                                    fontSize: 20,
                                                    fontWeight:
                                                    FontWeight.w700,
                                                  ),
                                                ),
                                              ),
                                              Column(
                                                crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                    padding: const EdgeInsets
                                                        .symmetric(
                                                        vertical: 4.0),
                                                    child: Row(
                                                      crossAxisAlignment:
                                                      CrossAxisAlignment
                                                          .start,
                                                      children: const [
                                                        Text(
                                                          '• ',
                                                          style: TextStyle(
                                                            fontWeight:
                                                            FontWeight
                                                                .w700,
                                                            height: 1.4,
                                                            fontSize: 17,
                                                          ),
                                                        ),
                                                        Expanded(
                                                            child: Text(
                                                              'Global Business Director, FXGear, a leading AR/VR technology company',
                                                              style: TextStyle(
                                                                fontWeight:
                                                                FontWeight
                                                                    .w300,
                                                                height: 1.4,
                                                                fontSize: 17,
                                                              ),
                                                            ))
                                                      ],
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets
                                                        .symmetric(
                                                        vertical: 4.0),
                                                    child: Row(
                                                      crossAxisAlignment:
                                                      CrossAxisAlignment
                                                          .start,
                                                      children: const [
                                                        Text(
                                                          '• ',
                                                          style: TextStyle(
                                                            fontWeight:
                                                            FontWeight
                                                                .w700,
                                                            height: 1.4,
                                                            fontSize: 17,
                                                          ),
                                                        ),
                                                        Expanded(
                                                            child: Text(
                                                              'Hyundai Electronics SW lab',
                                                              style: TextStyle(
                                                                fontWeight:
                                                                FontWeight
                                                                    .w300,
                                                                height: 1.4,
                                                                fontSize: 17,
                                                              ),
                                                            ))
                                                      ],
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets
                                                        .symmetric(
                                                        vertical: 4.0),
                                                    child: Row(
                                                      crossAxisAlignment:
                                                      CrossAxisAlignment
                                                          .start,
                                                      children: const [
                                                        Text(
                                                          '• ',
                                                          style: TextStyle(
                                                            fontWeight:
                                                            FontWeight
                                                                .w700,
                                                            fontSize: 17,
                                                            height: 1.4,
                                                          ),
                                                        ),
                                                        Expanded(
                                                            child: Text(
                                                              'B.E., Seoul National University',
                                                              style: TextStyle(
                                                                fontWeight:
                                                                FontWeight
                                                                    .w300,
                                                                height: 1.4,
                                                                fontSize: 17,
                                                              ),
                                                            ))
                                                      ],
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
                                );
                              },
                            ),
                            OnHoverDetect(
                              builder: (isHover) {
                                return Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 25,
                                      vertical: 45,
                                    ),
                                    decoration: isHover
                                        ? BoxDecoration(
                                      color: Colors.white,
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.white
                                              .withOpacity(0.5),
                                          spreadRadius: 8,
                                          blurRadius: 7,
                                          offset: const Offset(0, 3),
                                        )
                                      ],
                                      borderRadius:
                                      const BorderRadius.all(
                                          Radius.circular(15)),
                                    )
                                        : const BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(15)),
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                      MainAxisAlignment.start,
                                      children: [
                                        Container(
                                          width: 147,
                                          height: 147,
                                          decoration: const BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Colors.transparent,
                                            image: DecorationImage(
                                              image: AssetImage(
                                                  'img/team/tech02.png'),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 300,
                                          child: Column(
                                            children: [
                                              const Padding(
                                                padding: EdgeInsets.only(
                                                  bottom: 10.0,
                                                  top: 40,
                                                ),
                                                child: Text(
                                                  'Jiho Kim',
                                                  style: TextStyle(
                                                    fontSize: 20,
                                                    fontWeight:
                                                    FontWeight.w700,
                                                  ),
                                                ),
                                              ),
                                              Column(
                                                crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                    padding: const EdgeInsets
                                                        .symmetric(
                                                        vertical: 4.0),
                                                    child: Row(
                                                      crossAxisAlignment:
                                                      CrossAxisAlignment
                                                          .start,
                                                      children: const [
                                                        Text(
                                                          '• ',
                                                          style: TextStyle(
                                                            fontWeight:
                                                            FontWeight
                                                                .w700,
                                                            height: 1.4,
                                                            fontSize: 17,
                                                          ),
                                                        ),
                                                        Expanded(
                                                            child: Text(
                                                              'Blockchain Architect',
                                                              style: TextStyle(
                                                                fontWeight:
                                                                FontWeight
                                                                    .w300,
                                                                height: 1.4,
                                                                fontSize: 17,
                                                              ),
                                                            ))
                                                      ],
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets
                                                        .symmetric(
                                                        vertical: 4.0),
                                                    child: Row(
                                                      crossAxisAlignment:
                                                      CrossAxisAlignment
                                                          .start,
                                                      children: const [
                                                        Text(
                                                          '• ',
                                                          style: TextStyle(
                                                            fontWeight:
                                                            FontWeight
                                                                .w700,
                                                            height: 1.4,
                                                            fontSize: 17,
                                                          ),
                                                        ),
                                                        Expanded(
                                                            child: Text(
                                                              'A top-class, first-generation game developer in Korea',
                                                              style: TextStyle(
                                                                fontWeight:
                                                                FontWeight
                                                                    .w300,
                                                                height: 1.4,
                                                                fontSize: 17,
                                                              ),
                                                            ))
                                                      ],
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets
                                                        .symmetric(
                                                        vertical: 4.0),
                                                    child: Row(
                                                      crossAxisAlignment:
                                                      CrossAxisAlignment
                                                          .start,
                                                      children: const [
                                                        Text(
                                                          '• ',
                                                          style: TextStyle(
                                                            fontWeight:
                                                            FontWeight
                                                                .w700,
                                                            fontSize: 17,
                                                            height: 1.4,
                                                          ),
                                                        ),
                                                        Expanded(
                                                            child: Text(
                                                              'KAIST',
                                                              style: TextStyle(
                                                                fontWeight:
                                                                FontWeight
                                                                    .w300,
                                                                height: 1.4,
                                                                fontSize: 17,
                                                              ),
                                                            ))
                                                      ],
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
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
