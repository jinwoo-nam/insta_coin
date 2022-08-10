import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:insta_coin/presentation/get_insta_coins/get_coin_view_model.dart';
import 'package:insta_coin/responsive/responsive.dart';
import 'package:insta_coin/ui/on_hover_detect.dart';
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
  final scrollController = ScrollController();

  @override
  void initState() {
    Future.microtask(() async {
      final viewModel = context.read<GetCoinViewModel>();
      await viewModel.getUserInfo();
      if (viewModel.state.userEmail.isEmpty ||
          viewModel.state.userEthereumAdress.isEmpty) {
        showDialog<String>(
          context: context,
          builder: (BuildContext context) => AlertDialog(
            title: const Text('사용자 정보가 없습니다.'),
            content: const Text('Email, Ethereum 주소가 없습니다.'),
            actions: <Widget>[
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/getInstaCoin/basicInfo');
                } ,
                child: const Text('OK'),
              ),
            ],
          ),
        );
      }
    });

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
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    bool isMobileScreen = MediaQuery.of(context).size.width < 1100;
    final viewModel = context.watch<GetCoinViewModel>();
    final state = viewModel.state;
    final double screenWidth =
        isMobileScreen ? MediaQuery.of(context).size.width - 50 : 1100;

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
                  'img/get_insta_coin/bi_name_wg.png',
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
        controller: scrollController,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30.0),
              child: SafeArea(
                child: Padding(
                  padding: isMobileScreen
                      ? EdgeInsets.all(3)
                      : const EdgeInsets.all(20.0),
                  child: Center(
                    child: Container(
                      padding: isMobileScreen
                          ? EdgeInsets.all(3)
                          : EdgeInsets.all(25),
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
                          if (!isMobileScreen)
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
                                    Text(
                                      '① 인스타페이 가입',
                                      style: TextStyle(
                                        fontSize: 18,
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Image.asset(
                                        'img/get_insta_coin/verify-shot-02.png'),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      '② 휴대폰 번호로 본인인증',
                                      style: TextStyle(
                                        fontSize: 18,
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Image.asset(
                                        'img/get_insta_coin/verify-shot-03.png'),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      '③ 계좌 입력 후 ARS로 출금동의',
                                      style: TextStyle(
                                        fontSize: 18,
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Image.asset(
                                        'img/get_insta_coin/verify-shot-04.png'),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      '④ "내 지갑"에서 계좌등록 확인',
                                      style: TextStyle(
                                        fontSize: 18,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          if (isMobileScreen)
                            Center(
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset(
                                      'img/get_insta_coin/verify-shot-01.png'),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    '① 인스타페이 가입',
                                    style: TextStyle(
                                      fontSize: 18,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      top: 40.0,
                                      bottom: 20,
                                    ),
                                    child: Image.asset(
                                        'img/get_insta_coin/verify-shot-02.png'),
                                  ),
                                  Text(
                                    '② 휴대폰 번호로 본인인증',
                                    style: TextStyle(
                                      fontSize: 18,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      top: 40.0,
                                      bottom: 20,
                                    ),
                                    child: Image.asset(
                                        'img/get_insta_coin/verify-shot-03.png'),
                                  ),
                                  Text(
                                    '③ 계좌 입력 후 ARS로 출금동의',
                                    style: TextStyle(
                                      fontSize: 18,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      top: 40.0,
                                      bottom: 20,
                                    ),
                                    child: Image.asset(
                                        'img/get_insta_coin/verify-shot-04.png'),
                                  ),
                                  Text(
                                    '④ "내 지갑"에서 계좌등록 확인',
                                    style: TextStyle(
                                      fontSize: 18,
                                    ),
                                  ),
                                ],
                              ),
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
                                padding:
                                    const EdgeInsets.symmetric(vertical: 20.0),
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
                              if (isMethod1Open) ...[
                                if (!isMobileScreen)
                                  Padding(
                                    padding: const EdgeInsets.only(left: 80.0),
                                    child: Column(
                                      children: [
                                        InkWell(
                                          onTap: () {
                                            if (!kIsWeb) {
                                              launchURL('api.instapay.kr');
                                            }
                                          },
                                          child: Image.asset(
                                            'img/get_insta_coin/method1.png',
                                            width: 200,
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 8.0),
                                          child: Text(
                                            '모바일에서는 QR코드 이미지를 터치해주세요.',
                                            style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600,
                                              color: Color(0xff4ac1c2),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                if (isMobileScreen)
                                  Center(
                                    child: Column(
                                      children: [
                                        InkWell(
                                          onTap: () {
                                            if (!kIsWeb) {
                                              launchURL('api.instapay.kr');
                                            }
                                          },
                                          child: Image.asset(
                                            'img/get_insta_coin/method1.png',
                                            width: 200,
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 8.0),
                                          child: Text(
                                            '모바일에서는 QR코드 이미지를 터치해주세요.',
                                            style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600,
                                              color: Color(0xff4ac1c2),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                              ],
                              SizedBox(
                                height: 30,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 20.0),
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
                              if (!isMethod1Open) ...[
                                if (!isMobileScreen)
                                  Padding(
                                    padding: const EdgeInsets.only(left: 80.0),
                                    child: Column(
                                      children: [
                                        InkWell(
                                          onTap: () {
                                            if (!kIsWeb) {
                                              launchURL('api.instapay.kr');
                                            }
                                          },
                                          child: Image.asset(
                                            'img/get_insta_coin/method2.png',
                                            width: 200,
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 8.0),
                                          child: Text(
                                            '모바일에서는 QR코드 이미지를 터치해주세요.',
                                            style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600,
                                              color: Color(0xff4ac1c2),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Container(
                                          padding: EdgeInsets.symmetric(
                                            horizontal: 70,
                                            vertical: 10,
                                          ),
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              color:
                                                  Colors.grey.withOpacity(0.7),
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(15),
                                          ),
                                          child: Text(
                                            '우리은행 1005-002-956715\n예금주: 스타트업팩토리',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontSize: 21,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                if (isMobileScreen)
                                  Center(
                                    child: Column(
                                      children: [
                                        InkWell(
                                          onTap: () {
                                            if (!kIsWeb) {
                                              launchURL('api.instapay.kr');
                                            }
                                          },
                                          child: Image.asset(
                                            'img/get_insta_coin/method2.png',
                                            width: 200,
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 8.0),
                                          child: Text(
                                            '모바일에서는 QR코드 이미지를 터치해주세요.',
                                            style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600,
                                              color: Color(0xff4ac1c2),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Container(
                                          padding: EdgeInsets.symmetric(
                                            horizontal: 60,
                                            vertical: 8,
                                          ),
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              color:
                                                  Colors.grey.withOpacity(0.7),
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(15),
                                          ),
                                          child: Text(
                                            '우리은행 1005-002-956715\n예금주: 스타트업팩토리',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontSize: 18,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                              ],
                              SizedBox(
                                height: 30,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 40.0),
                                child: Container(
                                  height: 1,
                                  width: double.infinity,
                                  color: Colors.grey,
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 40.0),
                                child: OnHoverDetect(
                                  builder: (isHover) {
                                    return Center(
                                      child: InkWell(
                                        onTap: () async {
                                          await viewModel
                                              .saveUserInfoToFireStore();
                                          Navigator.pushNamed(
                                              context, '/getInstaCoin/confirm');
                                        },
                                        child: Container(
                                          padding: EdgeInsets.symmetric(
                                            vertical: 5,
                                            horizontal: 100,
                                          ),
                                          decoration: BoxDecoration(
                                            color: isHover
                                                ? Color(0xff32c5d2)
                                                : null,
                                            border: Border.all(
                                              color: Color(0xff32c5d2),
                                            ),
                                          ),
                                          child: Text(
                                            '확인 >',
                                            style: TextStyle(
                                              color: isHover
                                                  ? Colors.white
                                                  : Color(0xff32c5d2),
                                            ),
                                          ),
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
                    ),
                  ),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 50,
              color: Colors.grey.withOpacity(0.5),
              child: Center(
                child: Text(
                  '© 2022 : InstaPay Inc. all rights reserved',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
