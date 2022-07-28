import 'package:flutter/material.dart';
import 'package:insta_coin/presentation/get_insta_coins/get_coin_view_model.dart';
import 'package:insta_coin/responsive/responsive.dart';
import 'package:insta_coin/util/util.dart';
import 'package:provider/provider.dart';

class AppKycScreen extends StatefulWidget {
  const AppKycScreen({Key? key}) : super(key: key);

  @override
  State<AppKycScreen> createState() => _AppKycScreenState();
}

class _AppKycScreenState extends State<AppKycScreen> {
  bool isScreenInit = false;
  bool isMethod1Open = true;

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
    final viewModel = context.watch<GetCoinViewModel>();
    final state = viewModel.state;
    final double screenWidth = 1300;

    return Scaffold(
      backgroundColor: Colors.white,
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
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 40.0),
                      child: RichText(
                        text: TextSpan(
                          style: const TextStyle(
                            fontSize: 19,
                            color: Colors.black,
                            height: 1.8,
                          ),
                          children: [
                            TextSpan(
                              text:
                                  '먼저, 인스타페이 앱을 설치한 후 본인의 계좌를 등록해 주세요.\n앱 이메일 인증은 반드시 ',
                            ),
                            TextSpan(
                                text: '${state.userEmail}',
                                style: TextStyle(
                                  color: Color(0xffff6601),
                                )),
                            TextSpan(
                              text: '(으)로 해 주셔야 합니다',
                            ),
                          ],
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Image.asset(
                                'img/get_insta_coin/verify-shot-01.png'),
                            SizedBox(
                              height: 10,
                            ),
                            Text('① 인스타페이 가입'),
                          ],
                        ),
                        Column(
                          children: [
                            Image.asset(
                                'img/get_insta_coin/verify-shot-02.png'),
                            SizedBox(
                              height: 10,
                            ),
                            Text('② 휴대폰 번호로 본인인증'),
                          ],
                        ),
                        Column(
                          children: [
                            Image.asset(
                                'img/get_insta_coin/verify-shot-03.png'),
                            SizedBox(
                              height: 10,
                            ),
                            Text('③ 계좌 입력 후 ARS로 출금동의'),
                          ],
                        ),
                        Column(
                          children: [
                            Image.asset(
                                'img/get_insta_coin/verify-shot-04.png'),
                            SizedBox(
                              height: 10,
                            ),
                            Text('④ "내 지갑"에서 계좌등록 확인'),
                          ],
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 40.0),
                      child: RichText(
                        text: TextSpan(
                          style: const TextStyle(
                            fontSize: 19,
                            color: Colors.black,
                            height: 1.8,
                          ),
                          children: [
                            TextSpan(
                              text: '아래 ',
                            ),
                            TextSpan(
                                text: '두가지 방법 중 한 가지',
                                style: TextStyle(
                                  color: Color(0xffff6601),
                                )),
                            TextSpan(
                              text: '로 구매해 주십시오.',
                            ),
                          ],
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 20.0),
                          child: RichText(
                            text: TextSpan(
                              style: const TextStyle(
                                fontSize: 19,
                                color: Colors.black,
                                height: 1.8,
                              ),
                              children: [
                                TextSpan(
                                  text: '방법 1. ',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                TextSpan(
                                  text: '구매용 QR코드를 스캔하여 200만원',
                                ),
                                TextSpan(
                                  text: '(1,000 INC)',
                                  style: TextStyle(
                                    color: Color(0xff4ac1c2),
                                  ),
                                ),
                                TextSpan(
                                  text: '을 결제해 주세요(여러 번 결제도 가능합니다).',
                                ),
                              ],
                            ),
                          ),
                        ),
                        if (!isMethod1Open)
                          InkWell(
                            onTap: () {
                              setState(() {
                                isMethod1Open = !isMethod1Open;
                              });
                            },
                            child: Text(
                              '[QR 열기]',
                              style: TextStyle(
                                color: Color(0xffff6601),
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        if (isMethod1Open)
                          Padding(
                            padding: const EdgeInsets.only(left: 80.0),
                            child: Image.asset(
                              'img/get_insta_coin/method1.png',
                              width: 200,
                            ),
                          ),
                        SizedBox(
                          height: 30,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 20.0),
                          child: RichText(
                            text: TextSpan(
                              style: const TextStyle(
                                fontSize: 19,
                                color: Colors.black,
                                height: 1.8,
                              ),
                              children: [
                                TextSpan(
                                  text: '방법 2. ',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                TextSpan(
                                  text:
                                      '인증용 QR코드를 스캔하여 10원을 결제하신 후 희망하시는 금액만큼 아래의 계좌로 입금해 주십시오',
                                ),
                                TextSpan(
                                  text: '(1 INC = 2,000 KRW)',
                                  style: TextStyle(
                                    color: Color(0xff4ac1c2),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        if (isMethod1Open)
                          InkWell(
                            onTap: () {
                              setState(() {
                                isMethod1Open = !isMethod1Open;
                              });
                            },
                            child: Text(
                              '[QR 열기]',
                              style: TextStyle(
                                color: Color(0xffff6601),
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        if (!isMethod1Open)
                          Padding(
                            padding: const EdgeInsets.only(left: 80.0),
                            child: Image.asset(
                              'img/get_insta_coin/method2.png',
                              width: 200,
                            ),
                          ),
                        SizedBox(
                          height: 30,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 40.0),
                          child: Container(
                            height: 1,
                            width: double.infinity,
                            color: Colors.grey,
                          ),
                        ),
                        Center(
                          child: InkWell(
                            onTap: () {
                              Navigator.pushNamed(context, '/getInstaCoin/confirm');
                            },
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                vertical: 5,
                                horizontal: 100,
                              ),
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Color(0xff32c5d2),
                                ),
                              ),
                              child: Text(
                                '확인 >',
                                style: TextStyle(
                                  color: Color(0xff32c5d2),
                                ),
                              ),
                            ),
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
