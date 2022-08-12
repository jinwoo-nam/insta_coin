import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:insta_coin/presentation/common_widget/app_bar_widget.dart';
import 'package:insta_coin/presentation/common_widget/floating_action_button_widget.dart';
import 'package:insta_coin/presentation/common_widget/footer_widget.dart';
import 'package:insta_coin/presentation/common_widget/overlay_menu.dart';
import 'package:insta_coin/presentation/temp/components/temp_horizontal_widget.dart';
import 'package:insta_coin/presentation/temp/components/temp_vertical_widget.dart';
import 'package:insta_coin/presentation/temp/temp_view_model.dart';
import 'package:insta_coin/responsive/responsive.dart';
import 'package:provider/provider.dart';

class TempScreen extends StatefulWidget {
  const TempScreen({Key? key}) : super(key: key);

  @override
  State<TempScreen> createState() => _TempScreenState();
}

class _TempScreenState extends State<TempScreen> {
  final OverlayMenu menu = OverlayMenu(
    type: PageSelectType.temp,
  );

  @override
  void initState() {
    _setCurScreenToAnalytics();
    menu.context = context;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<TempViewModel>();
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
            type: PageSelectType.temp,
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
                            Text(
                              'TEMP',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize:
                                    (Responsive.isMobile(context)) ? 35 : 50,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            if (!Responsive.isMobile(context))
                              ...state.tempData.map((e) {
                                if (e.index % 2 == 0) {
                                  return TempHorizontalWidgetLeft(
                                    data: e,
                                  );
                                } else {
                                  return TempHorizontalWidgetRight(
                                    data: e,
                                  );
                                }
                              }).toList(),
                            if (Responsive.isMobile(context))
                              ...state.tempData.map((e) {
                                return TempVerticalWidget(
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
      name: 'Temp_Screen_view',
    );
  }
}
