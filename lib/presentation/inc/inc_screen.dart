import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:insta_coin/presentation/common_widget/app_bar_widget.dart';
import 'package:insta_coin/presentation/common_widget/floating_action_button_widget.dart';
import 'package:insta_coin/presentation/common_widget/footer_widget.dart';
import 'package:insta_coin/presentation/common_widget/overlay_menu.dart';
import 'package:insta_coin/presentation/inc/components/inc_horizontal_widget.dart';
import 'package:insta_coin/presentation/inc/components/inc_vertical_widget.dart';
import 'package:insta_coin/presentation/inc/inc_view_model.dart';
import 'package:insta_coin/responsive/responsive.dart';
import 'package:provider/provider.dart';

class IncScreen extends StatefulWidget {
  const IncScreen({Key? key}) : super(key: key);

  @override
  State<IncScreen> createState() => _IncScreenState();
}

class _IncScreenState extends State<IncScreen> {
  final OverlayMenu menu = OverlayMenu(
    type: PageSelectType.etc,
  );

  @override
  void initState() {
    _setCurScreenToAnalytics();
    menu.context = context;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<IncViewModel>();
    final state = viewModel.state;

    return GestureDetector(
      onTap: () {
        if (menu.isActive) {
          menu.removeMenu();
        }
      },
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(75),
          child: AppbarWidget(
            type: PageSelectType.etc,
            menu: menu,
          ),
        ),
        floatingActionButton: FloatingActionButtonWidget(),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              color: Colors.white,
              child: Column(
                children: [
                  SizedBox(
                    width: 1200,
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 80.0,
                        horizontal: (Responsive.isMobile(context)) ? 20 : 60,
                      ),
                      child: Center(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 50.0),
                              child: Text(
                                '인스타코인은 인스타페이 탈중앙화된 커머스의 결제수단입니다',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize:
                                      (Responsive.isMobile(context)) ? 22 : 30,
                                  fontWeight: FontWeight.w300,
                                  height: 1.6,
                                  color: Color.fromRGBO(0, 39, 91, 0.89),
                                ),
                              ),
                            ),
                            if (!Responsive.isMobile(context))
                              ...state.incData.map((e) {
                                if (e.index % 2 == 0) {
                                  return IncHorizontalWidgetLeft(
                                    data: e,
                                  );
                                } else {
                                  return IncHorizontalWidgetRight(
                                    data: e,
                                  );
                                }
                              }).toList(),
                            if (Responsive.isMobile(context))
                              ...state.incData.map((e) {
                                return IncVerticalWidget(
                                  data: e,
                                );
                              }).toList(),
                          ],
                        ),
                      ),
                    ),
                  ),
                  FooterWidget(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _setCurScreenToAnalytics() async {
    await FirebaseAnalytics.instance.logEvent(
      name: 'Inc_Screen_view',
    );
  }
}
