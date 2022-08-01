import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:insta_coin/presentation/get_insta_coins/get_coin_view_model.dart';
import 'package:insta_coin/responsive/responsive.dart';
import 'package:insta_coin/ui/on_hover_detect.dart';
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
  final formKey = GlobalKey<FormState>();

  bool agreeTerms = false;
  bool isScreenInit = false;
  bool isError = false;

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
    bool isMobileScreen = MediaQuery.of(context).size.width < 1100;
    final viewModel = context.watch<GetCoinViewModel>();
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
        child: SizedBox(
          height: MediaQuery.of(context).size.height > 1100
              ? MediaQuery.of(context).size.height
              : 1100,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SafeArea(
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
                      child: Form(
                        key: this.formKey,
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
                            if (isError)
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 25.0),
                                child: Container(
                                  padding: EdgeInsets.all(15),
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: Color(0xfffbe1e3),
                                  ),
                                  child: Text(
                                    'You have some form errors. Please check below.',
                                    style: TextStyle(
                                      color: Color(0xffe73d4a),
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
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
                                if (!isMobileScreen) ...[
                                  SizedBox(
                                    width: 200,
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
                                  SizedBox(
                                    width: 350,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        TextFormField(
                                          controller: emailController,
                                          validator: (value) {
                                            if (value == null ||
                                                value.isEmpty) {
                                              return 'This field is required.';
                                            }

                                            if (value.isNotEmpty) {
                                              bool emailValid = RegExp(
                                                      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                                  .hasMatch(value);
                                              if (!emailValid) {
                                                return 'Please enter a valid email address.';
                                              }
                                            }

                                            return null;
                                          },
                                          cursorColor: Color(0xff6789ab),
                                          decoration: InputDecoration(
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  // color: emailError
                                                  //     ? Color(0xffe73d4a)
                                                  //     : Colors.black,
                                                  ),
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
                                  Spacer(),
                                ],
                                if (isMobileScreen) ...[
                                  SizedBox(
                                    width: 30,
                                  ),
                                  Expanded(
                                    flex: 3,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            Text(
                                              '이메일 주소 ',
                                              textAlign: TextAlign.right,
                                            ),
                                            Text(
                                              ' * ',
                                              style: TextStyle(
                                                color: Colors.red,
                                              ),
                                            ),
                                          ],
                                        ),
                                        TextFormField(
                                          controller: emailController,
                                          validator: (value) {
                                            if (value == null ||
                                                value.isEmpty) {
                                              return 'This field is required.';
                                            }

                                            if (value.isNotEmpty) {
                                              bool emailValid = RegExp(
                                                      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                                  .hasMatch(value);
                                              if (!emailValid) {
                                                return 'Please enter a valid email address.';
                                              }
                                            }

                                            return null;
                                          },
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
                                  Spacer(),
                                ],
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                if (!isMobileScreen) ...[
                                  SizedBox(
                                    width: 200,
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
                                  SizedBox(
                                    width: 350,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        TextFormField(
                                          controller: ethereumController,
                                          validator: (value) {
                                            if (value == null ||
                                                value.isEmpty) {
                                              return 'This field is required.';
                                            }

                                            return null;
                                          },
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
                                            Expanded(
                                              child: Row(
                                                children: [
                                                  Text(
                                                    '인스타 코인의 ',
                                                    style: const TextStyle(
                                                      fontSize: 15,
                                                      color: Colors.black,
                                                      height: 1.4,
                                                    ),
                                                  ),
                                                  InkWell(
                                                    onTap: () {
                                                      launchURL(
                                                          'insta_coin/#/getInstaCoin/termsK');
                                                    },
                                                    child: Text(
                                                      '코인판매 약관',
                                                      style: const TextStyle(
                                                        fontSize: 15,
                                                        color: Colors.black,
                                                        height: 1.4,
                                                        decoration:
                                                            TextDecoration
                                                                .underline,
                                                      ),
                                                    ),
                                                  ),
                                                  Text(
                                                    '에 동의합니다.',
                                                    style: const TextStyle(
                                                      fontSize: 15,
                                                      color: Colors.black,
                                                      height: 1.4,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  Spacer(),
                                ],
                                if (isMobileScreen) ...[
                                  SizedBox(
                                    width: 30,
                                  ),
                                  Expanded(
                                    flex: 3,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            Text(
                                              '이더리움 주소 ',
                                              textAlign: TextAlign.right,
                                            ),
                                            Text(
                                              ' * ',
                                              style: TextStyle(
                                                color: Colors.red,
                                              ),
                                            ),
                                          ],
                                        ),
                                        TextFormField(
                                          controller: ethereumController,
                                          validator: (value) {
                                            if (value == null ||
                                                value.isEmpty) {
                                              return 'This field is required.';
                                            }

                                            return null;
                                          },
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
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Checkbox(
                                                value: agreeTerms,
                                                onChanged: (value) {
                                                  setState(() {
                                                    agreeTerms = value!;
                                                  });
                                                }),
                                            Expanded(
                                              child: RichText(
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
                                                        recognizer:
                                                            TapGestureRecognizer()
                                                              ..onTap = () {
                                                                launchURL(
                                                                    'insta_coin/#/getInstaCoin/termsK');
                                                                //Navigator.pushNamed(context, '/getInstaCoin/termsK');
                                                              },
                                                        text: '코인판매 약관',
                                                        style: TextStyle(
                                                          decoration:
                                                              TextDecoration
                                                                  .underline,
                                                        )),
                                                    TextSpan(
                                                      text: '에 동의합니다.',
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  Spacer(),
                                ],
                              ],
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
                              child: Center(
                                child: InkWell(
                                  onTap: () async {
                                    if (!formKey.currentState!.validate()) {
                                      setState(() {
                                        isError = true;
                                      });
                                      return;
                                    }
                                    if (agreeTerms == false) {
                                      setState(() {
                                        isError = true;
                                      });
                                      return;
                                    }

                                    await viewModel.saveUserInfo(
                                        emailController.text,
                                        ethereumController.text);
                                    Navigator.pushNamed(
                                        context, '/getInstaCoin/appKyc');
                                  },
                                  child: OnHoverDetect(
                                    builder: (isHover) {
                                      return Container(
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
                                          '계속하기 >',
                                          style: TextStyle(
                                            color: isHover
                                                ? Colors.white
                                                : Color(0xff32c5d2),
                                          ),
                                        ),
                                      );
                                    },
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
      ),
    );
  }
}
