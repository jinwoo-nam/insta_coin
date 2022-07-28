import 'package:flutter/material.dart';
import 'package:insta_coin/responsive/responsive.dart';
import 'package:insta_coin/util/util.dart';

class AppKycScreen extends StatefulWidget {
  const AppKycScreen({Key? key}) : super(key: key);

  @override
  State<AppKycScreen> createState() => _AppKycScreenState();
}

class _AppKycScreenState extends State<AppKycScreen> {
  bool isScreenInit = false;

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback(
      (_) {
        setState(() {
          isScreenInit = true;
        });
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final double screenWidth = 1000;

    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: Responsive.isMobile(context) ? 20 : 50.0,
          ),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(
                  'img/main/logo_cs-1.png',
                  height: 35,
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  'Buy INC',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                  ),
                ),
              ],
            ),
          ),
        ),
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xff2d3943),
        centerTitle: false,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Center(
              child: Container(
                padding: EdgeInsets.all(25),
                decoration: BoxDecoration(
                  border: Border.all(),
                ),
                width: screenWidth,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'STEP 2 OF 3',
                          style: TextStyle(
                            fontSize: 19,
                            fontWeight: FontWeight.w700,
                            color: Color(0xff4ac1c2),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          '인스타페이 앱으로 인증하기',
                          style: TextStyle(
                            fontSize: 19,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Stack(
                      children: [
                        Container(
                          color: Colors.grey.withOpacity(0.3),
                          width: double.infinity,
                          height: 10,
                        ),
                        AnimatedContainer(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topRight,
                              end: Alignment.bottomLeft,
                              colors: [
                                Color(0xff3fc9d5),
                                Color(0xff3fc9d5).withOpacity(0.5),
                              ],
                            ),
                          ),
                          width: isScreenInit ? screenWidth * 2 / 3 : 0,
                          height: 10,
                          duration: Duration(milliseconds: 300),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Row(
                      children: [
                        InkWell(
                          onTap: () {
                            launchURL(
                                'https://apps.apple.com/kr/app/%EC%9D%B8%EC%8A%A4%ED%83%80%ED%8E%98%EC%9D%B4/id1455816463');
                          },
                          child: Image.asset(
                            'img/get_insta_coin/store-apple.png',
                            width: 150,
                          ),
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        InkWell(
                          onTap: () {
                            launchURL(
                                'https://play.google.com/store/apps/details?id=com.insta.instapay');
                          },
                          child: Image.asset(
                            'img/get_insta_coin/store-google.png',
                            width: 150,
                          ),
                        ),
                      ],
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
