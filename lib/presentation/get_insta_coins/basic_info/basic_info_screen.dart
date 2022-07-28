import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:insta_coin/presentation/get_insta_coins/get_coin_view_model.dart';
import 'package:insta_coin/responsive/responsive.dart';
import 'package:insta_coin/util/util.dart';
import 'package:provider/provider.dart';

class BasicInfoScreen extends StatefulWidget {
  const BasicInfoScreen({Key? key}) : super(key: key);

  @override
  State<BasicInfoScreen> createState() => _BasicInfoScreenState();
}

class _BasicInfoScreenState extends State<BasicInfoScreen> {
  final emailController = TextEditingController();
  final ethereumController = TextEditingController();
  bool agreeTerms = false;
  bool isScreenInit = false;

  @override
  void dispose() {
    emailController.dispose();
    ethereumController.dispose();
    super.dispose();
  }

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
                          'STEP 1 OF 3',
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
                          '기본 정보',
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
                          width: isScreenInit ? screenWidth / 3 : 0,
                          height: 10,
                          duration: Duration(milliseconds: 300),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Text(
                      'White List 등록에 필요한 기본정보를 입력해 주세요.',
                      style: TextStyle(
                        fontSize: 25,
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          flex: 2,
                          child: Text(
                            '이메일 주소 ',
                            textAlign: TextAlign.right,
                          ),
                        ),
                        Text(
                          ' * ',
                          style: TextStyle(
                            color: Colors.red,
                          ),
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Expanded(
                          flex: 3,
                          child: SizedBox(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                TextField(
                                  controller: emailController,
                                  cursorColor: Color(0xff6789ab),
                                  decoration: InputDecoration(
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(),
                                    ),
                                    isDense: true,
                                    contentPadding: EdgeInsets.all(12),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(),
                                    ),
                                  ),
                                  style: TextStyle(
                                    fontSize: 15,
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  '인스타페이 모바일 앱에 가입할 때 등록할 이메일과 동일하게 입력하셔야 INC를 문제없이 받을 수 있습니다.',
                                  style: TextStyle(
                                    color: Color(0xff6789ab),
                                    fontSize: 15,
                                    height: 1.5,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 4,
                          child: Container(),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          flex: 2,
                          child: Text(
                            '이더리움 주소 ',
                            textAlign: TextAlign.right,
                          ),
                        ),
                        Text(
                          ' * ',
                          style: TextStyle(
                            color: Colors.red,
                          ),
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Expanded(
                          flex: 3,
                          child: SizedBox(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                TextField(
                                  controller: ethereumController,
                                  cursorColor: Color(0xff6789ab),
                                  decoration: InputDecoration(
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(),
                                    ),
                                    isDense: true,
                                    contentPadding: EdgeInsets.all(12),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(),
                                    ),
                                  ),
                                  style: TextStyle(
                                    fontSize: 15,
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  '이더리움을 전송하는 본인의 지갑 주소를 입력해 주세요.\n절대로 암호화폐 거래소(업비트, 빗썸, 코인원 등)에서 발급받은 지갑 주소를 입력하면 안됩니다.',
                                  style: TextStyle(
                                    color: Color(0xff6789ab),
                                    fontSize: 15,
                                    height: 1.5,
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  children: [
                                    Checkbox(
                                        value: agreeTerms,
                                        onChanged: (value) {
                                          setState(() {
                                            agreeTerms = value!;
                                          });
                                        }),
                                    RichText(
                                      text: TextSpan(
                                        style: const TextStyle(
                                          fontSize: 15,
                                          color: Colors.black,
                                          height: 1.4,
                                        ),
                                        children: [
                                          TextSpan(
                                            text: '인스타 코인의 ',
                                          ),
                                          TextSpan(
                                              recognizer: TapGestureRecognizer()
                                                ..onTap = () {
                                                  launchURL(
                                                      'insta_coin/#/getInstaCoin/termsK');
                                                  //Navigator.pushNamed(context, '/getInstaCoin/termsK');
                                                },
                                              text: '코인판매 약관',
                                              style: TextStyle(
                                                decoration:
                                                    TextDecoration.underline,
                                              )),
                                          TextSpan(
                                            text: '에 동의합니다.',
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 4,
                          child: Container(),
                        ),
                      ],
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
                          viewModel.saveUserInfo(
                              emailController.text, ethereumController.text);
                          Navigator.pushNamed(context, '/getInstaCoin/appKyc');
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
                            '계속하기 >',
                            style: TextStyle(
                              color: Color(0xff32c5d2),
                            ),
                          ),
                        ),
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
