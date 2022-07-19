import 'package:flutter/material.dart';
import 'package:insta_coin/domain/model/home/papps_data.dart';
import 'package:insta_coin/presentation/home/components/papps/papps_card_widget.dart';
import 'package:insta_coin/presentation/home/components/papps/see_papps_button_widget.dart';
import 'package:insta_coin/presentation/home/home_view_model.dart';
import 'package:insta_coin/responsive/responsive.dart';
import 'package:insta_coin/ui/on_hover_detect.dart';
import 'package:provider/provider.dart';

class PappsWidget extends StatelessWidget {
  const PappsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<HomeViewModel>();
    final state = viewModel.state;

    return Container(
      width: MediaQuery.of(context).size.width,
      //height: 1400,
      padding: EdgeInsets.symmetric(
        vertical: 20,
        horizontal: Responsive.isDesktop(context) ? 50 : 0,
      ),
      decoration: const BoxDecoration(
        color: Color(0xff2d3943),
      ),
      alignment: Alignment.center,
      child: SizedBox(
        width: 1200,
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: Responsive.isMobile(context) ? 20 : 60,
            vertical: 70,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 50.0),
                child: Center(
                  child: Text(
                    'PApps (Platform Applications)',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: Responsive.isMobile(context) ? 35 : 50,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
              if (Responsive.isDesktop(context))
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 30.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ...state.papps
                              .where((element) => element.index < 3)
                              .map((e) {
                            return Expanded(
                              child: PappsCardWidget(
                                data: e,
                                horizontalPadding: 50,
                                verticalPadding: 0,
                              ),
                            );
                          }).toList(),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 30.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ...state.papps
                              .where((element) => element.index > 2)
                              .map((e) {
                            return Expanded(
                              child: PappsCardWidget(
                                data: e,
                                horizontalPadding: 50,
                                verticalPadding: 0,
                              ),
                            );
                          }).toList(),
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 30.0),
                      child: SeePappsButtonWidget(),
                    ),
                  ],
                ),
              if (!Responsive.isDesktop(context))
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ...state.papps.map((e) {
                      return PappsCardWidget(
                        data: e,
                        horizontalPadding: 0,
                        verticalPadding: 30,
                      );
                    }).toList(),
                    // Padding(
                    //   padding: const EdgeInsets.symmetric(vertical: 30),
                    //   child: Container(
                    //     padding: const EdgeInsets.symmetric(
                    //       horizontal: 30,
                    //       vertical: 45,
                    //     ),
                    //     decoration: const BoxDecoration(
                    //       color: Colors.white,
                    //       borderRadius: BorderRadius.all(Radius.circular(15)),
                    //     ),
                    //     child: Column(
                    //       children: [
                    //         Image.asset(
                    //           'img/main/o2o.png',
                    //           width: 80,
                    //           height: 80,
                    //           fit: BoxFit.cover,
                    //         ),
                    //         const Padding(
                    //           padding: EdgeInsets.only(
                    //             bottom: 20.0,
                    //             top: 40,
                    //           ),
                    //           child: Text(
                    //             'O2O Commerce',
                    //             style: TextStyle(
                    //               fontSize: 23,
                    //               fontWeight: FontWeight.w700,
                    //             ),
                    //           ),
                    //         ),
                    //         const Text(
                    //           'InstaPay removes the barriers of time and space in shopping, paying, and delivery. By using blockchain, it prevents fraudulent transactions and protects personal information in O2O Commerce.',
                    //           textAlign: TextAlign.center,
                    //           style: TextStyle(
                    //             fontSize: 18,
                    //             fontWeight: FontWeight.w300,
                    //             height: 1.6,
                    //             wordSpacing: 1.5,
                    //           ),
                    //         ),
                    //       ],
                    //     ),
                    //   ),
                    // ),
                    // Padding(
                    //   padding: const EdgeInsets.symmetric(vertical: 30),
                    //   child: Container(
                    //     padding: const EdgeInsets.symmetric(
                    //       horizontal: 30,
                    //       vertical: 45,
                    //     ),
                    //     decoration: const BoxDecoration(
                    //       color: Colors.white,
                    //       borderRadius: BorderRadius.all(Radius.circular(15)),
                    //     ),
                    //     child: Column(
                    //       children: [
                    //         Image.asset(
                    //           'img/main/mbpp.png',
                    //           width: 80,
                    //           height: 80,
                    //           fit: BoxFit.cover,
                    //         ),
                    //         const Padding(
                    //           padding: EdgeInsets.only(
                    //             bottom: 20.0,
                    //             top: 40,
                    //           ),
                    //           child: Text(
                    //             'MBPP',
                    //             style: TextStyle(
                    //               fontSize: 23,
                    //               fontWeight: FontWeight.w700,
                    //             ),
                    //           ),
                    //         ),
                    //         const Text(
                    //           'You can pay and charge InstaCoin via mobile without intermediaries . It spans over payment between individuals, as well as recurring bills for O2O Commerce, memberships, subscriptions, and more.',
                    //           textAlign: TextAlign.center,
                    //           style: TextStyle(
                    //             fontSize: 18,
                    //             fontWeight: FontWeight.w300,
                    //             height: 1.6,
                    //             wordSpacing: 1.5,
                    //           ),
                    //         ),
                    //       ],
                    //     ),
                    //   ),
                    // ),
                    // Padding(
                    //   padding: const EdgeInsets.symmetric(vertical: 30),
                    //   child: Container(
                    //     padding: const EdgeInsets.symmetric(
                    //       horizontal: 30,
                    //       vertical: 45,
                    //     ),
                    //     decoration: const BoxDecoration(
                    //       color: Colors.white,
                    //       borderRadius: BorderRadius.all(Radius.circular(15)),
                    //     ),
                    //     child: Column(
                    //       children: [
                    //         Image.asset(
                    //           'img/main/game.png',
                    //           width: 80,
                    //           height: 80,
                    //           fit: BoxFit.cover,
                    //         ),
                    //         const Padding(
                    //           padding: EdgeInsets.only(
                    //             bottom: 20.0,
                    //             top: 40,
                    //           ),
                    //           child: Text(
                    //             'Game',
                    //             style: TextStyle(
                    //               fontSize: 23,
                    //               fontWeight: FontWeight.w700,
                    //             ),
                    //           ),
                    //         ),
                    //         const Text(
                    //           'You can own game items as InstaCoin’s Digital Asset. InstaCoin will provide convenient and secure experience in purchasing at a virtual store within game and trading game items between users.',
                    //           textAlign: TextAlign.center,
                    //           style: TextStyle(
                    //             fontSize: 18,
                    //             fontWeight: FontWeight.w300,
                    //             height: 1.6,
                    //             wordSpacing: 1.5,
                    //           ),
                    //         ),
                    //       ],
                    //     ),
                    //   ),
                    // ),
                    // Padding(
                    //   padding: const EdgeInsets.symmetric(vertical: 30),
                    //   child: Container(
                    //     padding: const EdgeInsets.symmetric(
                    //       horizontal: 30,
                    //       vertical: 45,
                    //     ),
                    //     decoration: const BoxDecoration(
                    //       color: Colors.white,
                    //       borderRadius: BorderRadius.all(Radius.circular(15)),
                    //     ),
                    //     child: Column(
                    //       children: [
                    //         Image.asset(
                    //           'img/main/etrade.png',
                    //           width: 80,
                    //           height: 80,
                    //           fit: BoxFit.cover,
                    //         ),
                    //         const Padding(
                    //           padding: EdgeInsets.only(
                    //             bottom: 20.0,
                    //             top: 40,
                    //           ),
                    //           child: Text(
                    //             'Worldwide e-Trade',
                    //             style: TextStyle(
                    //               fontSize: 23,
                    //               fontWeight: FontWeight.w700,
                    //             ),
                    //           ),
                    //         ),
                    //         const Text(
                    //           'In long term, Instacoin envisions to build decentralized multilateral payment system and crypto-economy ecosystem, which will reduce intermediaries fees, prevent fraud, and enable transparent delivery.',
                    //           textAlign: TextAlign.center,
                    //           style: TextStyle(
                    //             fontSize: 18,
                    //             fontWeight: FontWeight.w300,
                    //             height: 1.6,
                    //             wordSpacing: 1.5,
                    //           ),
                    //         ),
                    //       ],
                    //     ),
                    //   ),
                    // ),
                    // Padding(
                    //   padding: const EdgeInsets.symmetric(vertical: 30),
                    //   child: Container(
                    //     padding: const EdgeInsets.symmetric(
                    //       horizontal: 30,
                    //       vertical: 45,
                    //     ),
                    //     decoration: const BoxDecoration(
                    //       color: Colors.white,
                    //       borderRadius: BorderRadius.all(Radius.circular(15)),
                    //     ),
                    //     child: Column(
                    //       children: [
                    //         Image.asset(
                    //           'img/main/ip.png',
                    //           width: 80,
                    //           height: 80,
                    //           fit: BoxFit.cover,
                    //         ),
                    //         const Padding(
                    //           padding: EdgeInsets.only(
                    //             bottom: 20.0,
                    //             top: 40,
                    //           ),
                    //           child: Text(
                    //             'IP',
                    //             style: TextStyle(
                    //               fontSize: 23,
                    //               fontWeight: FontWeight.w700,
                    //             ),
                    //           ),
                    //         ),
                    //         const Text(
                    //           'InstaPay removes the barriers of time and space in shopping, paying, and delivery. By using blockchain, it prevents fraudulent transactions and protects personal information in O2O Commerce.',
                    //           textAlign: TextAlign.center,
                    //           style: TextStyle(
                    //             fontSize: 18,
                    //             fontWeight: FontWeight.w300,
                    //             height: 1.6,
                    //             wordSpacing: 1.5,
                    //           ),
                    //         ),
                    //       ],
                    //     ),
                    //   ),
                    // ),
                    // Padding(
                    //   padding: const EdgeInsets.symmetric(vertical: 30),
                    //   child: Container(
                    //     padding: const EdgeInsets.symmetric(
                    //       horizontal: 30,
                    //       vertical: 45,
                    //     ),
                    //     decoration: const BoxDecoration(
                    //       color: Colors.white,
                    //       borderRadius: BorderRadius.all(Radius.circular(15)),
                    //     ),
                    //     child: Column(
                    //       children: [
                    //         Image.asset(
                    //           'img/main/reward.png',
                    //           width: 80,
                    //           height: 80,
                    //           fit: BoxFit.cover,
                    //         ),
                    //         const Padding(
                    //           padding: EdgeInsets.only(
                    //             bottom: 20.0,
                    //             top: 40,
                    //           ),
                    //           child: Text(
                    //             'Reward & Donation',
                    //             style: TextStyle(
                    //               fontSize: 23,
                    //               fontWeight: FontWeight.w700,
                    //             ),
                    //           ),
                    //         ),
                    //         const Text(
                    //           'You can pay and charge InstaCoin via mobile without intermediaries . It spans over payment between individuals, as well as recurring bills for O2O Commerce, memberships, subscriptions, and more.',
                    //           textAlign: TextAlign.center,
                    //           style: TextStyle(
                    //             fontSize: 18,
                    //             fontWeight: FontWeight.w300,
                    //             height: 1.6,
                    //             wordSpacing: 1.5,
                    //           ),
                    //         ),
                    //       ],
                    //     ),
                    //   ),
                    // ),
                    SeePappsButtonWidget(),
                    // Center(
                    //   child: InkWell(
                    //     onTap: () {},
                    //     child: Container(
                    //       padding: const EdgeInsets.symmetric(
                    //         horizontal: 30,
                    //         vertical: 15,
                    //       ),
                    //       decoration: BoxDecoration(
                    //         borderRadius: BorderRadius.circular(30),
                    //         color: const Color(0xff80d0d6),
                    //       ),
                    //       child: const Text(
                    //         'See our PApps',
                    //         style: TextStyle(
                    //           fontSize: 21,
                    //           color: Colors.white,
                    //           fontWeight: FontWeight.w300,
                    //         ),
                    //       ),
                    //     ),
                    //   ),
                    // )
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }
}
