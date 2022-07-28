import 'package:flutter/material.dart';
import 'package:insta_coin/presentation/get_insta_coins/get_coin_view_model.dart';
import 'package:insta_coin/responsive/responsive.dart';
import 'package:provider/provider.dart';

class ConfirmScreen extends StatefulWidget {
  const ConfirmScreen({Key? key}) : super(key: key);

  @override
  State<ConfirmScreen> createState() => _ConfirmScreenState();
}

class _ConfirmScreenState extends State<ConfirmScreen> {
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
                          'STEP 3 OF 3',
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
                          '등록 결과 확인',
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
                          width: isScreenInit ? screenWidth * 3 / 3 : 0,
                          height: 10,
                          duration: Duration(milliseconds: 300),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Text(
                      '감사합니다. 등록이 완료되었습니다!',
                      style: TextStyle(
                        fontSize: 30,
                      ),
                    ),
                    SizedBox(height: 40,),
                    Text(
                      'INC 구매를 완료하셨습니다.\n추후 INC 배포 일정 및 방식은 InstaCoin 홈페이지를 통해 안내드리겠습니다.',
                      style: TextStyle(
                        fontSize: 19,
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
