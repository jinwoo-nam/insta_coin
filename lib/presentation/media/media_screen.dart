import 'package:carousel_slider/carousel_slider.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:insta_coin/presentation/common_widget/app_bar_widget.dart';
import 'package:insta_coin/presentation/common_widget/floating_action_button_widget.dart';
import 'package:insta_coin/presentation/common_widget/footer_widget.dart';
import 'package:insta_coin/presentation/common_widget/overlay_menu.dart';
import 'package:insta_coin/presentation/media/media_view_model.dart';
import 'package:insta_coin/responsive/responsive.dart';
import 'package:provider/provider.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import '../../util/util.dart';

List<String> channels = [
  'https://www.youtube.com/watch?v=L6JuZHluSRc&t=9s',
  'https://www.youtube.com/watch?v=xSyhU4HTG40',
  'https://www.youtube.com/watch?v=7qnnLJkwWFk',
  'https://www.youtube.com/watch?v=nqsrnlUH1YQ',
  'https://www.youtube.com/watch?v=u5u9XmBwvJo',
  'https://www.youtube.com/watch?v=62KtTxoJAQo',
  'https://www.youtube.com/watch?v=e3_mid9dD1g',
];

class MediaScreen extends StatefulWidget {
  const MediaScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<MediaScreen> createState() => _MediaScreenState();
}

class _MediaScreenState extends State<MediaScreen> {
  final CarouselController _carouselController = CarouselController();
  List<YoutubePlayerController> _youtubeControllers = [];
  int curIndex = 0;
  final OverlayMenu menu = OverlayMenu(
    type: PageSelectType.media,
  );

  @override
  void initState() {
    _setCurScreenToAnalytics();
    menu.context = context;

    for (int i = 0; i < channels.length; i++) {
      String? id = YoutubePlayerController.convertUrlToId(channels[i]);
      _youtubeControllers.add(YoutubePlayerController(
        initialVideoId: id ?? '',
        params: const YoutubePlayerParams(
          showControls: true,
          showFullscreenButton: true,
          desktopMode: true,
          privacyEnhanced: true,
          useHybridComposition: true,
        ),
      ));
    }

    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<MediaViewModel>();
    final state = viewModel.state;
    //final player = YoutubePlayerIFrame();

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
          child: Column(
            children: [
              Container(
                color: Colors.white,
                alignment: Alignment.center,
                child: SizedBox(
                  width: 1500,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: (Responsive.isMobile(context)) ? 40 : 80.0,
                      horizontal: 20,
                    ),
                    child: Center(
                      child: Column(
                        children: [
                          const Text(
                            'PRESS',
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 45,
                            ),
                          ),
                          const SizedBox(
                            height: 50,
                          ),
                          if (MediaQuery.of(context).size.width > 1300)
                            GridView.builder(
                                physics: NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                itemCount: state.articles.length,
                                gridDelegate:
                                    const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 4,
                                  childAspectRatio: 5 / 6,
                                  mainAxisSpacing: 10,
                                  crossAxisSpacing: 10,
                                ),
                                itemBuilder: (BuildContext context, int index) {
                                  return Column(
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(bottom: 20.0),
                                        child: Image.asset(
                                          state.articles[index].imageUrl,
                                          width: 250,
                                          height: 160,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      SizedBox(
                                          width: 230,
                                          child: Column(
                                            children: [
                                              Text(
                                                state.articles[index].title,
                                                textAlign: TextAlign.center,
                                                maxLines: 6,
                                                overflow: TextOverflow.ellipsis,
                                                style: const TextStyle(
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 15,
                                                ),
                                              ),
                                              InkWell(
                                                onTap: () async {
                                                  await FirebaseAnalytics
                                                      .instance
                                                      .logEvent(
                                                          name: 'Click_Press',
                                                          parameters: {
                                                        'article_name': state
                                                            .articles[index]
                                                            .title,
                                                      });
                                                  launchURL(state
                                                      .articles[index]
                                                      .articleUrl);
                                                },
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          top: 15.0),
                                                  child: Align(
                                                    alignment:
                                                        Alignment.bottomRight,
                                                    child: Container(
                                                      padding: const EdgeInsets
                                                          .symmetric(
                                                        horizontal: 10,
                                                        vertical: 5,
                                                      ),
                                                      // decoration: BoxDecoration(
                                                      //   borderRadius:
                                                      //       BorderRadius.circular(15),
                                                      //   border: Border.all(),
                                                      // ),
                                                      child: const Text(
                                                        'Read More',
                                                        style: TextStyle(
                                                          color:
                                                              Color(0xff7e7e94),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          )),
                                    ],
                                  );
                                }),
                          if (MediaQuery.of(context).size.width < 1300 &&
                              MediaQuery.of(context).size.width > 900)
                            GridView.builder(
                                physics: NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                itemCount: state.articles.length,
                                gridDelegate:
                                    const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 3,
                                  childAspectRatio: 7 / 8,
                                  mainAxisSpacing: 10,
                                  crossAxisSpacing: 10,
                                ),
                                itemBuilder: (BuildContext context, int index) {
                                  return Column(
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(bottom: 20.0),
                                        child: Image.asset(
                                          state.articles[index].imageUrl,
                                          width: 250,
                                          height: 160,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      SizedBox(
                                          width: 230,
                                          child: Column(
                                            children: [
                                              Text(
                                                state.articles[index].title,
                                                textAlign: TextAlign.center,
                                                maxLines: 4,
                                                overflow: TextOverflow.ellipsis,
                                                style: const TextStyle(
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 15,
                                                ),
                                              ),
                                              InkWell(
                                                onTap: () async {
                                                  await FirebaseAnalytics
                                                      .instance
                                                      .logEvent(
                                                          name: 'Click_Press',
                                                          parameters: {
                                                        'article_name': state
                                                            .articles[index]
                                                            .title,
                                                      });

                                                  launchURL(state
                                                      .articles[index]
                                                      .articleUrl);
                                                },
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          top: 15.0),
                                                  child: Align(
                                                    alignment:
                                                        Alignment.bottomRight,
                                                    child: Container(
                                                      padding: const EdgeInsets
                                                          .symmetric(
                                                        horizontal: 10,
                                                        vertical: 5,
                                                      ),
                                                      // decoration: BoxDecoration(
                                                      //   borderRadius:
                                                      //       BorderRadius.circular(15),
                                                      //   border: Border.all(),
                                                      // ),
                                                      child: const Text(
                                                        'Read More',
                                                        style: TextStyle(
                                                          color:
                                                              Color(0xff7e7e94),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          )),
                                    ],
                                  );
                                }),
                          if (MediaQuery.of(context).size.width < 900 &&
                              MediaQuery.of(context).size.width > 650)
                            GridView.builder(
                                physics: NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                itemCount: state.articles.length,
                                gridDelegate:
                                    const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                  childAspectRatio: 5 / 6,
                                  mainAxisSpacing: 30,
                                  crossAxisSpacing: 30,
                                ),
                                itemBuilder: (BuildContext context, int index) {
                                  return Column(
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(bottom: 20.0),
                                        child: Image.asset(
                                          state.articles[index].imageUrl,
                                          width: 250,
                                          height: 160,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      SizedBox(
                                          width: 230,
                                          child: Column(
                                            children: [
                                              Text(
                                                state.articles[index].title,
                                                textAlign: TextAlign.center,
                                                maxLines: 5,
                                                overflow: TextOverflow.ellipsis,
                                                style: const TextStyle(
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 15,
                                                ),
                                              ),
                                              InkWell(
                                                onTap: () async {
                                                  await FirebaseAnalytics
                                                      .instance
                                                      .logEvent(
                                                          name: 'Click_Press',
                                                          parameters: {
                                                        'article_name': state
                                                            .articles[index]
                                                            .title,
                                                      });

                                                  launchURL(state
                                                      .articles[index]
                                                      .articleUrl);
                                                },
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          top: 15.0),
                                                  child: Align(
                                                    alignment:
                                                        Alignment.bottomRight,
                                                    child: Container(
                                                      padding: const EdgeInsets
                                                          .symmetric(
                                                        horizontal: 10,
                                                        vertical: 5,
                                                      ),
                                                      // decoration: BoxDecoration(
                                                      //   borderRadius:
                                                      //       BorderRadius.circular(15),
                                                      //   border: Border.all(),
                                                      // ),
                                                      child: const Text(
                                                        'Read More',
                                                        style: TextStyle(
                                                          color:
                                                              Color(0xff7e7e94),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          )),
                                    ],
                                  );
                                }),
                          if (MediaQuery.of(context).size.width < 650 &&
                              MediaQuery.of(context).size.width > 470)
                            GridView.builder(
                                physics: NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                itemCount: state.articles.length,
                                gridDelegate:
                                    const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                  childAspectRatio: 1 / 1.3,
                                  mainAxisSpacing: 30,
                                  crossAxisSpacing: 10,
                                ),
                                itemBuilder: (BuildContext context, int index) {
                                  return Column(
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(bottom: 20.0),
                                        child: Image.asset(
                                          state.articles[index].imageUrl,
                                          width: 250,
                                          height: 160,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      SizedBox(
                                          width: 230,
                                          child: Column(
                                            children: [
                                              Text(
                                                state.articles[index].title,
                                                textAlign: TextAlign.center,
                                                maxLines: 2,
                                                overflow: TextOverflow.ellipsis,
                                                style: const TextStyle(
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 13,
                                                ),
                                              ),
                                              InkWell(
                                                onTap: () async {
                                                  await FirebaseAnalytics
                                                      .instance
                                                      .logEvent(
                                                          name: 'Click_Press',
                                                          parameters: {
                                                        'article_name': state
                                                            .articles[index]
                                                            .title,
                                                      });

                                                  launchURL(state
                                                      .articles[index]
                                                      .articleUrl);
                                                },
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          top: 15.0),
                                                  child: Align(
                                                    alignment:
                                                        Alignment.bottomRight,
                                                    child: Container(
                                                      padding: const EdgeInsets
                                                          .symmetric(
                                                        horizontal: 10,
                                                        vertical: 5,
                                                      ),
                                                      // decoration: BoxDecoration(
                                                      //   borderRadius:
                                                      //       BorderRadius.circular(15),
                                                      //   border: Border.all(),
                                                      // ),
                                                      child: const Text(
                                                        'Read More',
                                                        style: TextStyle(
                                                          color:
                                                              Color(0xff7e7e94),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          )),
                                    ],
                                  );
                                }),
                          if (MediaQuery.of(context).size.width < 470)
                            GridView.builder(
                                physics: NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                itemCount: state.articles.length,
                                gridDelegate:
                                    const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 1,
                                  childAspectRatio: 1,
                                ),
                                itemBuilder: (BuildContext context, int index) {
                                  return Column(
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(bottom: 20.0),
                                        child: Image.asset(
                                          state.articles[index].imageUrl,
                                          width: 250,
                                          height: 160,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      SizedBox(
                                          width: 230,
                                          child: Column(
                                            children: [
                                              Text(
                                                state.articles[index].title,
                                                textAlign: TextAlign.center,
                                                maxLines: 2,
                                                overflow: TextOverflow.ellipsis,
                                                style: const TextStyle(
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 13,
                                                ),
                                              ),
                                              InkWell(
                                                onTap: () async {
                                                  await FirebaseAnalytics
                                                      .instance
                                                      .logEvent(
                                                          name: 'Click_Press',
                                                          parameters: {
                                                        'article_name': state
                                                            .articles[index]
                                                            .title,
                                                      });

                                                  launchURL(state
                                                      .articles[index]
                                                      .articleUrl);
                                                },
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          top: 15.0),
                                                  child: Align(
                                                    alignment:
                                                        Alignment.bottomRight,
                                                    child: Container(
                                                      padding: const EdgeInsets
                                                          .symmetric(
                                                        horizontal: 10,
                                                        vertical: 5,
                                                      ),
                                                      // decoration: BoxDecoration(
                                                      //   borderRadius:
                                                      //       BorderRadius.circular(15),
                                                      //   border: Border.all(),
                                                      // ),
                                                      child: const Text(
                                                        'Read More',
                                                        style: TextStyle(
                                                          color:
                                                              Color(0xff7e7e94),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          )),
                                    ],
                                  );
                                }),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 100.0),
                            child: InkWell(
                              onTap: () {
                                Navigator.pushNamed(context, '/media/articles');
                              },
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                  vertical: 15,
                                  horizontal: 25,
                                ),
                                decoration: BoxDecoration(
                                  color: const Color.fromRGBO(45, 57, 67, 0.82),
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: const Text(
                                  'View all',
                                  style: TextStyle(
                                    fontSize: 25,
                                    color: Colors.white,
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
              Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.symmetric(
                  vertical: 20,
                  horizontal: (Responsive.isMobile(context)) ? 10 : 50,
                ),
                decoration: const BoxDecoration(
                  color: Color(0xff2d3943),
                  gradient: RadialGradient(
                    colors: [
                      Color(0xff4ac1c2),
                      Color(0xff159db5),
                    ],
                  ),
                ),
                alignment: Alignment.center,
                child: SizedBox(
                  width: 1200,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 50.0),
                        child: Text(
                          'COLUMN',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: (Responsive.isMobile(context)) ? 35 : 50,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      if (Responsive.isDesktop(context))
                        GridView.builder(
                            physics: NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: state.columns.length,
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 4,
                              childAspectRatio: 0.8,
                              mainAxisSpacing: 10,
                              crossAxisSpacing: 10,
                            ),
                            itemBuilder: (BuildContext context, int index) {
                              return Column(
                                children: [
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(bottom: 20.0),
                                    child: Image.asset(
                                      state.columns[index].imageUrl,
                                      width: 200,
                                      height: 100,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  SizedBox(
                                      width: 180,
                                      child: Column(
                                        children: [
                                          Text(
                                            state.columns[index].title,
                                            textAlign: TextAlign.center,
                                            maxLines: 6,
                                            overflow: TextOverflow.ellipsis,
                                            style: const TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 15,
                                            ),
                                          ),
                                          InkWell(
                                            onTap: () {
                                              launchURL(state
                                                  .columns[index].articleUrl);
                                            },
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 15.0),
                                              child: Align(
                                                alignment:
                                                    Alignment.bottomRight,
                                                child: Container(
                                                  padding: const EdgeInsets
                                                      .symmetric(
                                                    horizontal: 10,
                                                    vertical: 5,
                                                  ),
                                                  // decoration: BoxDecoration(
                                                  //   borderRadius:
                                                  //       BorderRadius.circular(15),
                                                  //   border: Border.all(),
                                                  // ),
                                                  child: const Text(
                                                    'Read More',
                                                    style: TextStyle(
                                                      color: Color(0xff7e7e94),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      )),
                                ],
                              );
                            }),
                      if (Responsive.isTablet(context))
                        GridView.builder(
                            physics: NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: state.columns.length,
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 3,
                              childAspectRatio: 0.8,
                              mainAxisSpacing: 10,
                              crossAxisSpacing: 10,
                            ),
                            itemBuilder: (BuildContext context, int index) {
                              return Column(
                                children: [
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(bottom: 20.0),
                                    child: Image.asset(
                                      state.columns[index].imageUrl,
                                      width: 200,
                                      height: 100,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  SizedBox(
                                      width: 180,
                                      child: Column(
                                        children: [
                                          Text(
                                            state.columns[index].title,
                                            textAlign: TextAlign.center,
                                            maxLines: 6,
                                            overflow: TextOverflow.ellipsis,
                                            style: const TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 15,
                                            ),
                                          ),
                                          InkWell(
                                            onTap: () {
                                              launchURL(state
                                                  .columns[index].articleUrl);
                                            },
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 15.0),
                                              child: Align(
                                                alignment:
                                                    Alignment.bottomRight,
                                                child: Container(
                                                  padding: const EdgeInsets
                                                      .symmetric(
                                                    horizontal: 10,
                                                    vertical: 5,
                                                  ),
                                                  // decoration: BoxDecoration(
                                                  //   borderRadius:
                                                  //       BorderRadius.circular(15),
                                                  //   border: Border.all(),
                                                  // ),
                                                  child: const Text(
                                                    'Read More',
                                                    style: TextStyle(
                                                      color: Color(0xff7e7e94),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      )),
                                ],
                              );
                            }),
                      if (Responsive.isMobile(context))
                        GridView.builder(
                            physics: NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: state.columns.length,
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              childAspectRatio: 0.6,
                              mainAxisSpacing: 10,
                              crossAxisSpacing: 10,
                            ),
                            itemBuilder: (BuildContext context, int index) {
                              return Column(
                                children: [
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(bottom: 20.0),
                                    child: Image.asset(
                                      state.columns[index].imageUrl,
                                      width: 200,
                                      height: 100,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  SizedBox(
                                      width: 180,
                                      child: Column(
                                        children: [
                                          Text(
                                            state.columns[index].title,
                                            textAlign: TextAlign.center,
                                            maxLines: 6,
                                            overflow: TextOverflow.ellipsis,
                                            style: const TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 15,
                                            ),
                                          ),
                                          InkWell(
                                            onTap: () {
                                              launchURL(state
                                                  .columns[index].articleUrl);
                                            },
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 15.0),
                                              child: Align(
                                                alignment:
                                                    Alignment.bottomRight,
                                                child: Container(
                                                  padding: const EdgeInsets
                                                      .symmetric(
                                                    horizontal: 10,
                                                    vertical: 5,
                                                  ),
                                                  // decoration: BoxDecoration(
                                                  //   borderRadius:
                                                  //       BorderRadius.circular(15),
                                                  //   border: Border.all(),
                                                  // ),
                                                  child: const Text(
                                                    'Read More',
                                                    style: TextStyle(
                                                      color: Color(0xff7e7e94),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      )),
                                ],
                              );
                            }),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 100.0),
                        child: InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, '/media/columns');
                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                              vertical: 15,
                              horizontal: 25,
                            ),
                            decoration: BoxDecoration(
                              color: const Color.fromRGBO(45, 57, 67, 0.82),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: const Text(
                              'View all',
                              style: TextStyle(
                                fontSize: 25,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                color: Colors.white,
                alignment: Alignment.center,
                child: SizedBox(
                  width: 1200,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 80.0,
                      horizontal: 20,
                    ),
                    child: Center(
                      child: Column(
                        children: [
                          const Text(
                            'EVENTS',
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 45,
                            ),
                          ),
                          const SizedBox(
                            height: 50,
                          ),
                          if (Responsive.isDesktop(context))
                            ...state.events.map((e) {
                              return Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Expanded(
                                          child: Image.asset(
                                            e.imageUrl,
                                            fit: BoxFit.fitHeight,
                                            width: 200,
                                            height: 160,
                                          ),
                                        ),
                                        Expanded(
                                          flex: 3,
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 30.0),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  e.title,
                                                  textAlign: TextAlign.start,
                                                  style: const TextStyle(
                                                    fontSize: 25,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                                ),
                                                const SizedBox(
                                                  height: 30,
                                                ),
                                                Text(
                                                  e.date,
                                                  textAlign: TextAlign.start,
                                                  style: const TextStyle(
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.w300,
                                                      height: 1.6),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              InkWell(
                                                onTap: () {
                                                  launchURL(e.articleUrl);
                                                },
                                                child: Visibility(
                                                  visible:
                                                      e.articleUrl.isNotEmpty,
                                                  child: Container(
                                                    padding: const EdgeInsets
                                                        .symmetric(
                                                      //horizontal: 10,
                                                      vertical: 5,
                                                    ),
                                                    // decoration: BoxDecoration(
                                                    //   borderRadius:
                                                    //       BorderRadius.circular(15),
                                                    //   border: Border.all(),
                                                    // ),
                                                    child: const Text(
                                                      'See More',
                                                      style: TextStyle(
                                                          color: Color(
                                                              0xff7e7e94)),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              const SizedBox(
                                                height: 10,
                                              ),
                                              ...e.logos.map(
                                                (logo) {
                                                  return Image.asset(
                                                    logo,
                                                    width: 80,
                                                    height: 50,
                                                  );
                                                },
                                              ),
                                              Text(e.sponsor ?? ''),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    const Padding(
                                      padding:
                                          EdgeInsets.symmetric(vertical: 20.0),
                                      child: Divider(
                                        height: 2,
                                        thickness: 1,
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            }),
                          if (!Responsive.isDesktop(context))
                            ...state.events.map((e) {
                              return SizedBox(
                                width: MediaQuery.of(context).size.width * 0.7,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Center(
                                      child: Image.asset(
                                        e.imageUrl,
                                        fit: BoxFit.contain,
                                        width: 250,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 30.0),
                                      child: Text(
                                        e.title,
                                        textAlign: TextAlign.start,
                                        style: const TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      e.date,
                                      textAlign: TextAlign.start,
                                      style: const TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w300,
                                          height: 1.6),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 15.0),
                                      child: InkWell(
                                        onTap: () {
                                          launchURL(e.articleUrl);
                                        },
                                        child: Visibility(
                                          visible: e.articleUrl.isNotEmpty,
                                          child: Container(
                                            padding: const EdgeInsets.symmetric(
                                              //horizontal: 10,
                                              vertical: 5,
                                            ),
                                            // decoration: BoxDecoration(
                                            //   borderRadius:
                                            //       BorderRadius.circular(15),
                                            //   border: Border.all(),
                                            // ),
                                            child: const Text(
                                              'See More',
                                              style: TextStyle(
                                                  color: Color(0xff7e7e94)),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    GridView.builder(
                                        physics: NeverScrollableScrollPhysics(),
                                        shrinkWrap: true,
                                        itemCount: e.logos.length,
                                        gridDelegate:
                                            const SliverGridDelegateWithFixedCrossAxisCount(
                                          crossAxisCount: 4,
                                          childAspectRatio: 2,
                                          crossAxisSpacing: 30,
                                        ),
                                        itemBuilder:
                                            (BuildContext context, int index) {
                                          return Image.asset(
                                            e.logos[index],
                                            fit: BoxFit.contain,
                                            width: 70,
                                          );
                                        }),
                                    Text(
                                      e.sponsor ?? '',
                                      style: const TextStyle(
                                        height: 1.5,
                                        fontSize: 16,
                                      ),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.only(bottom: 15.0),
                                      child: Divider(
                                        height: 2,
                                        thickness: 1,
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            }),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Visibility(
                visible: false,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.symmetric(
                    vertical: (Responsive.isMobile(context)) ? 5 : 20,
                    horizontal: (Responsive.isMobile(context)) ? 5 : 50,
                  ),
                  decoration: const BoxDecoration(
                    color: Color(0xff2d3943),
                    gradient: RadialGradient(
                      colors: [
                        Color(0xff4ac1c2),
                        Color(0xff159db5),
                      ],
                    ),
                  ),
                  alignment: Alignment.center,
                  child: SizedBox(
                    width: 1200,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(
                            vertical:
                                (Responsive.isMobile(context)) ? 15 : 50.0,
                          ),
                          child: Text(
                            'CHANNEL',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize:
                                  (Responsive.isMobile(context)) ? 35 : 50,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        Stack(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 40.0),
                              child: CarouselSlider(
                                carouselController: _carouselController,
                                options: CarouselOptions(
                                  //height: 450,
                                  viewportFraction: 1.0,
                                  enlargeCenterPage: false,
                                  onPageChanged: (index, reason) {
                                    setState(() {});
                                  },
                                ),
                                items: _youtubeControllers.map((e) {
                                  return YoutubePlayerControllerProvider(
                                    controller: e,
                                    child: Scaffold(
                                      body: LayoutBuilder(
                                        builder: (context, constraints) {
                                          return YoutubePlayerIFrame();
                                        },
                                      ),
                                    ),
                                  );
                                }).toList(),
                              ),
                            ),
                            Positioned.fill(
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: (Responsive.isMobile(context))
                                        ? 5
                                        : 10.0,
                                  ),
                                  child: IconButton(
                                    onPressed: () {
                                      _carouselController.previousPage(
                                          duration: const Duration(
                                              milliseconds: 300));
                                    },
                                    icon: Icon(
                                      Icons.arrow_back_ios_new,
                                      color: Colors.white,
                                      size: (Responsive.isMobile(context))
                                          ? 20
                                          : 40,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned.fill(
                              child: Align(
                                alignment: Alignment.centerRight,
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: (Responsive.isMobile(context))
                                        ? 5
                                        : 8.0,
                                  ),
                                  child: IconButton(
                                    onPressed: () {
                                      _carouselController.nextPage(
                                          duration: const Duration(
                                              milliseconds: 300));
                                    },
                                    icon: Icon(
                                      Icons.arrow_forward_ios,
                                      color: Colors.white,
                                      size: (Responsive.isMobile(context))
                                          ? 20
                                          : 40,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              FooterWidget(),
            ],
          ),
        )),
      ),
    );
  }

  void _setCurScreenToAnalytics() async {
    await FirebaseAnalytics.instance.logEvent(
      name: 'Media_Screen_view',
    );
  }
}
