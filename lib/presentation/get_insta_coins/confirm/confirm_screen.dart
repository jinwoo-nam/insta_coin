import 'package:flutter/material.dart';
import 'package:insta_coin/presentation/get_insta_coins/get_coin_view_model.dart';
import 'package:insta_coin/responsive/responsive.dart';
import 'package:insta_coin/ui/on_hover_detect.dart';
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
    Future.microtask(() {
      print('confirm init state');
      final viewModel = context.read<GetCoinViewModel>();
      viewModel.getUserInfo();
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
                          SizedBox(
                            height: 40,
                          ),
                          Text(
                            'INC 구매를 완료하셨습니다.\n추후 INC 배포 일정 및 방식은 InstaCoin 홈페이지를 통해 안내드리겠습니다.',
                            style: TextStyle(
                              fontSize: 19,
                            ),
                          ),
                          SizedBox(
                            height: 50,
                          ),
                          Text(
                            '이메일 주소 : ',
                            style: TextStyle(
                              fontSize: 20,
                              height: 1.8,
                            ),
                          ),
                          Text(
                            state.userEmail,
                            style: TextStyle(
                              fontSize: 18,
                              height: 1.8,
                              color: Color(0xffff6601),
                            ),
                          ),
                          Text(
                            '이더리움 주소 : ',
                            style: TextStyle(
                              fontSize: 20,
                              height: 1.8,
                            ),
                          ),
                          Text(
                            state.userEthereumAdress,
                            style: TextStyle(
                              fontSize: 18,
                              height: 1.8,
                              color: Color(0xffff6601),
                            ),
                          ),
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
                            padding: const EdgeInsets.symmetric(vertical: 40.0),
                            child: OnHoverDetect(
                              builder: (isHover) {
                                return Center(
                                  child: InkWell(
                                    onTap: () async {
                                      await viewModel.deleteUserInfo();
                                      Navigator.pushNamed(
                                          context, '/getInstaCoin/basicInfo');
                                    },
                                    child: Container(
                                      padding: EdgeInsets.symmetric(
                                        vertical: 5,
                                        horizontal: 100,
                                      ),
                                      decoration: BoxDecoration(
                                        color:
                                            isHover ? Color(0xff32c5d2) : null,
                                        border: Border.all(
                                          color: Color(0xff32c5d2),
                                        ),
                                      ),
                                      child: Text(
                                        '완료',
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
