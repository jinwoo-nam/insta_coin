import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:insta_coin/presentation/common_widget/app_bar_widget.dart';
import 'package:insta_coin/presentation/common_widget/floating_action_button_widget.dart';
import 'package:insta_coin/presentation/common_widget/footer_widget.dart';
import 'package:insta_coin/presentation/common_widget/overlay_menu.dart';
import 'package:insta_coin/presentation/media/media_view_model.dart';
import 'package:insta_coin/responsive/responsive.dart';
import 'package:insta_coin/util/util.dart';
import 'package:provider/provider.dart';

class InstaCoinArticleWidget extends StatefulWidget {
  const InstaCoinArticleWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<InstaCoinArticleWidget> createState() => _InstaCoinArticleWidgetState();
}

class _InstaCoinArticleWidgetState extends State<InstaCoinArticleWidget> {
  final OverlayMenu menu = OverlayMenu(
    type: PageSelectType.media,
  );

  @override
  void initState() {
    _setCurScreenToAnalytics();
    menu.context = context;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<MediaViewModel>();
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
            type: PageSelectType.media,
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
                          crossAxisAlignment: (Responsive.isMobile(context))
                              ? CrossAxisAlignment.start
                              : CrossAxisAlignment.center,
                          children: [
                            Text(
                              '인스타코인 기사',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize:
                                    (Responsive.isMobile(context)) ? 35 : 50,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            SizedBox(
                              height: 150,
                            ),
                            if (!Responsive.isMobile(context))
                              ...state.coinArticles.map((e) {
                                return Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 10.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Expanded(
                                        flex: 5,
                                        child: InkWell(
                                          onTap: () {
                                            launchURL(e.articleUrl);
                                          },
                                          child: Text(
                                            e.title,
                                            style: TextStyle(
                                              color: Color.fromRGBO(
                                                  74, 193, 194, 1),
                                              fontSize: 18,
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Expanded(
                                        child: Text(
                                          e.date,
                                          style: TextStyle(
                                            fontSize: 18,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              }).toList(),
                            if (Responsive.isMobile(context))
                              ...state.coinArticles.map((e) {
                                return Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 20.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      InkWell(
                                        onTap: () {
                                          launchURL(e.articleUrl);
                                        },
                                        child: Text(
                                          e.title,
                                          textAlign: TextAlign.start,
                                          style: TextStyle(
                                            color:
                                                Color.fromRGBO(74, 193, 194, 1),
                                            fontSize: 18,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        e.date,
                                        style: TextStyle(
                                          fontSize: 18,
                                        ),
                                      ),
                                    ],
                                  ),
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
      name: 'CoinArticle_Screen_view',
    );
  }
}
