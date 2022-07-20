import 'dart:async';

import 'package:flutter/material.dart';
import 'package:insta_coin/presentation/Papps/papps_screen.dart';
import 'package:insta_coin/presentation/faq/faq_screen.dart';
import 'package:insta_coin/presentation/home/home_screen.dart';
import 'package:insta_coin/presentation/media/media_screen.dart';
import 'package:insta_coin/presentation/root/components/footer_widget.dart';
import 'package:insta_coin/presentation/root/components/overlay_menu.dart';
import 'package:insta_coin/presentation/root/root_state.dart';
import 'package:insta_coin/presentation/root/root_view_model.dart';
import 'package:insta_coin/presentation/team/team_screen.dart';
import 'package:insta_coin/responsive/responsive.dart';
import 'package:insta_coin/util/util.dart';
import 'package:provider/provider.dart';

class RootScreen extends StatefulWidget {
  const RootScreen({Key? key}) : super(key: key);

  @override
  State<RootScreen> createState() => _RootScreenState();
}

class _RootScreenState extends State<RootScreen> {
  final OverlayMenu menu = OverlayMenu();
  StreamSubscription? _streamSubscription;
  ScrollController scrollController = ScrollController();

  @override
  void initState() {
    final viewModel = context.read<RootViewModel>();

    _streamSubscription = viewModel.eventStream.listen((event) {
      event.when(
        menuTab: () {
          if (menu.isActive) {
            menu.removeMenu();
          }
        },
        selectScreen: (PageSelectType type) {
          selectScreen(type);
        },
      );
    });
    super.initState();
  }

  @override
  void dispose() {
    _streamSubscription?.cancel();
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<RootViewModel>();

    if (!Responsive.isMobile(context)) {
      if (menu.isActive) {
        menu.removeMenu();
      }
    }
    menu.context = context;

    return GestureDetector(
      onTap: () {
        if (menu.isActive) {
          menu.removeMenu();
        }
      },
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 75,
          flexibleSpace: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: Responsive.isMobile(context) ? 20 : 50.0,
            ),
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      viewModel.selectPage(PageSelectType.home);
                    },
                    child: Image.asset(
                      'img/main/logo_cs-1.png',
                      height: 35,
                    ),
                  ),
                  if (!Responsive.isMobile(context))
                    Row(
                      children: [
                        TextButton(
                            onPressed: () {
                              viewModel.selectPage(PageSelectType.home);
                            },
                            child: Text(
                              'HOME',
                              style: TextStyle(
                                  color: viewModel.state.curPage ==
                                          PageSelectType.home
                                      ? Colors.black
                                      : Colors.black45,
                                  fontSize: 17,
                                  fontWeight: FontWeight.w600),
                            )),
                        TextButton(
                          onPressed: () {
                            viewModel.selectPage(PageSelectType.papps);
                          },
                          child: Text(
                            'PAPPS',
                            style: TextStyle(
                                color: viewModel.state.curPage ==
                                        PageSelectType.papps
                                    ? Colors.black
                                    : Colors.black45,
                                fontSize: 17,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            viewModel.selectPage(PageSelectType.team);
                          },
                          child: Text(
                            'TEAM',
                            style: TextStyle(
                                color: viewModel.state.curPage ==
                                        PageSelectType.team
                                    ? Colors.black
                                    : Colors.black45,
                                fontSize: 17,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            viewModel.selectPage(PageSelectType.media);
                          },
                          child: Text(
                            'MEDIA',
                            style: TextStyle(
                                color: viewModel.state.curPage ==
                                        PageSelectType.media
                                    ? Colors.black
                                    : Colors.black45,
                                fontSize: 17,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            viewModel.selectPage(PageSelectType.faq);
                          },
                          child: Text(
                            'FAQ',
                            style: TextStyle(
                                color: viewModel.state.curPage ==
                                        PageSelectType.faq
                                    ? Colors.black
                                    : Colors.black45,
                                fontSize: 17,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ],
                    )
                  else
                    IconButton(
                      onPressed: () {
                        if (menu.isActive) {
                          menu.removeMenu();
                        } else {
                          menu.showMenu();
                        }
                      },
                      icon: const Icon(
                        Icons.menu,
                        color: Color(0xff4ac1c2),
                      ),
                    ),
                ],
              ),
            ),
          ),
          backgroundColor: Colors.white,
          centerTitle: false,
        ),
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              onPressed: () {
                launchURL('https://t.me/instapaycoin1');
              },
              child: Image.asset(
                'img/main/telegram_icon.png',
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            FloatingActionButton(
              onPressed: () {
                launchURL('https://blog.naver.com/instacoin');
              },
              child: Image.asset(
                'img/main/icon_naver_blog-300x300.png',
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            FloatingActionButton(
                onPressed: () {
                  launchURL('https://www.facebook.com/groups/174734989840209/');
                },
                child: Container(
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage('img/main/Facebook-icon-1.png'))),
                )),
          ],
        ),
        body: SingleChildScrollView(
          controller: scrollController,
          child: Column(
            children: [
              getSelectWidget(viewModel.state.curPage),
              //HomeScreen(),
              const FooterWidget(),
            ],
          ),
        ),
      ),
    );
  }

  void selectScreen(PageSelectType type) {
    if (scrollController.hasClients) {
      scrollController.jumpTo(0);
    }
  }

  Widget getSelectWidget(PageSelectType type) {
    switch (type) {
      case PageSelectType.home:
        return const HomeScreen();
      case PageSelectType.papps:
        return const PappsScreen();
      case PageSelectType.team:
        return const TeamScreen();
      case PageSelectType.media:
        return const MediaScreen();
      case PageSelectType.faq:
        return const FaqScreen();
      default:
        return const HomeScreen();
    }
  }
}
