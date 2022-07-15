import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:insta_coin/presentation/media/media_view_model.dart';
import 'package:insta_coin/responsive/responsive.dart';
import 'package:pod_player/pod_player.dart';
import 'package:provider/provider.dart';
import '../../util/util.dart';

List<String> channels = [
  'https://www.youtube.com/watch?time_continue=9&v=L6JuZHluSRc&feature=emb_logo',
  'https://www.youtube.com/watch?v=xSyhU4HTG40&feature=emb_logo',
  'https://www.youtube.com/watch?v=7qnnLJkwWFk&feature=emb_logo',
  'https://www.youtube.com/watch?v=nqsrnlUH1YQ&feature=emb_logo',
  'https://www.youtube.com/watch?v=u5u9XmBwvJo&feature=emb_logo',
  'https://www.youtube.com/watch?v=62KtTxoJAQo&feature=emb_logo',
  'https://www.youtube.com/watch?v=e3_mid9dD1g&feature=emb_logo',
];

List<String> basic = [
  'https://www.youtube.com/watch?time_continue=2&v=0bwjoYQCFmo&feature=emb_logo',
  'https://www.youtube.com/watch?time_continue=1&v=KdeZ1aUMrAQ&feature=emb_logo',
  'https://www.youtube.com/watch?v=OiscvdFKIig&feature=emb_logo',
  'https://www.youtube.com/watch?v=4eoNcXv7HQY&feature=emb_logo',
];

class MediaScreen extends StatefulWidget {
  const MediaScreen({Key? key}) : super(key: key);

  @override
  State<MediaScreen> createState() => _MediaScreenState();
}

class _MediaScreenState extends State<MediaScreen> {
  final CarouselController _controller = CarouselController();

  final List<PodPlayerController> controllerList = [];
  final List<PodPlayerController> chControllerList = [];

  int curIndex = 0;

  @override
  void initState() {
    for (int i = 0; i < 4; i++) {
      PodPlayerController controller = PodPlayerController(
        playVideoFrom: PlayVideoFrom.youtube(basic[i]),
        podPlayerConfig: const PodPlayerConfig(
          initialVideoQuality: 360,
          autoPlay: false,
        ),
      )..initialise();

      controllerList.add(controller);
    }
    for (int i = 0; i < 7; i++) {
      PodPlayerController controller = PodPlayerController(
        playVideoFrom: PlayVideoFrom.youtube(channels[i]),
        podPlayerConfig: const PodPlayerConfig(
          initialVideoQuality: 360,
          autoPlay: false,
        ),
      )..initialise();

      chControllerList.add(controller);
    }

    super.initState();
  }

  @override
  void dispose() {
    for (int i = 0; i < 4; i++) {
      controllerList[i].dispose();
    }

    for (int i = 0; i < 7; i++) {
      chControllerList[i].dispose();
    }

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<MediaViewModel>();
    final state = viewModel.state;
    final double fontSize = Responsive.isMobile(context)
        ? 15
        : Responsive.isTablet(context)
            ? 18
            : 22;
    return SafeArea(
        child: SingleChildScrollView(
      child: Column(
        children: [
          Container(
            color: Colors.white,
            alignment: Alignment.center,
            child: SizedBox(
              width: 1500,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 80.0,
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
                      if (Responsive.isDesktop(context))
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    PodVideoPlayer(
                                      controller: controllerList[0],
                                    ),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    InkWell(
                                      onTap: () {
                                        launchURL(basic[0]);
                                      },
                                      child: Text(
                                        '[BLOCKCHAIN FOCUS] TVCC\n2018.11.08',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: fontSize,
                                            fontWeight: FontWeight.w300),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    PodVideoPlayer(
                                      controller: controllerList[1],
                                    ),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    InkWell(
                                      onTap: () {
                                        launchURL(basic[1]);
                                      },
                                      child: Text(
                                        'MTN(MONEY TODAY) TV\n2018.07.20',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: fontSize,
                                            fontWeight: FontWeight.w300),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    PodVideoPlayer(
                                      controller: controllerList[2],
                                    ),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    InkWell(
                                      onTap: () {
                                        launchURL(basic[2]);
                                      },
                                      child: Text(
                                        'NATIONAL ASSEMBLY TV\n2016.09',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: fontSize,
                                          fontWeight: FontWeight.w300,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    PodVideoPlayer(
                                      controller: controllerList[3],
                                    ),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    InkWell(
                                      onTap: () {
                                        launchURL(basic[3]);
                                      },
                                      child: Text(
                                        'MBC TV\n2016.09',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: fontSize,
                                            fontWeight: FontWeight.w300),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      if (!Responsive.isDesktop(context))
                        Column(
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.all(20.0),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        PodVideoPlayer(
                                          controller: controllerList[0],
                                        ),
                                        const SizedBox(
                                          height: 20,
                                        ),
                                        InkWell(
                                          onTap: () {
                                            launchURL(basic[0]);
                                          },
                                          child: Text(
                                            '[BLOCKCHAIN FOCUS] TVCC\n2018.11.08',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontSize: fontSize,
                                                fontWeight: FontWeight.w300),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.all(20.0),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        PodVideoPlayer(
                                          controller: controllerList[1],
                                        ),
                                        const SizedBox(
                                          height: 20,
                                        ),
                                        InkWell(
                                          onTap: () {
                                            launchURL(basic[1]);
                                          },
                                          child: Text(
                                            'MTN(MONEY TODAY) TV\n2018.07.20',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontSize: fontSize,
                                                fontWeight: FontWeight.w300),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.all(20.0),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        PodVideoPlayer(
                                          controller: controllerList[2],
                                        ),
                                        const SizedBox(
                                          height: 20,
                                        ),
                                        InkWell(
                                          onTap: () {
                                            launchURL(basic[2]);
                                          },
                                          child: Text(
                                            'NATIONAL ASSEMBLY TV\n2016.09',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontSize: fontSize,
                                              fontWeight: FontWeight.w300,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.all(20.0),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        PodVideoPlayer(
                                          controller: controllerList[3],
                                        ),
                                        const SizedBox(
                                          height: 20,
                                        ),
                                        InkWell(
                                          onTap: () {
                                            launchURL(basic[3]);
                                          },
                                          child: Text(
                                            'MBC TV\n2016.09',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontSize: fontSize,
                                                fontWeight: FontWeight.w300),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      const SizedBox(
                        height: 100,
                      ),
                      if (MediaQuery.of(context).size.width > 1300)
                        GridView.builder(
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
                                            onTap: () {
                                              launchURL(state
                                                  .articles[index].articleUrl);
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
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            15),
                                                    border: Border.all(),
                                                  ),
                                                  child: const Text(
                                                    'Read More',
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
                                            onTap: () {
                                              launchURL(state
                                                  .articles[index].articleUrl);
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
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            15),
                                                    border: Border.all(),
                                                  ),
                                                  child: const Text(
                                                    'Read More',
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
                                            onTap: () {
                                              launchURL(state
                                                  .articles[index].articleUrl);
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
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            15),
                                                    border: Border.all(),
                                                  ),
                                                  child: const Text(
                                                    'Read More',
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
                      if (MediaQuery.of(context).size.width < 650)
                        GridView.builder(
                            shrinkWrap: true,
                            itemCount: state.articles.length,
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 1,
                              childAspectRatio: 1.5,
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
                                            maxLines: 3,
                                            overflow: TextOverflow.ellipsis,
                                            style: const TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 15,
                                            ),
                                          ),
                                          InkWell(
                                            onTap: () {
                                              launchURL(state
                                                  .articles[index].articleUrl);
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
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            15),
                                                    border: Border.all(),
                                                  ),
                                                  child: const Text(
                                                    'Read More',
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
                    ],
                  ),
                ),
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.symmetric(
              vertical: 20,
              horizontal: 50,
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
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 50.0),
                    child: Text(
                      'COLUMN',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 50,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  if (Responsive.isDesktop(context))
                    GridView.builder(
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
                                padding: const EdgeInsets.only(bottom: 20.0),
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
                                          launchURL(
                                              state.columns[index].articleUrl);
                                        },
                                        child: Padding(
                                          padding:
                                              const EdgeInsets.only(top: 15.0),
                                          child: Align(
                                            alignment: Alignment.bottomRight,
                                            child: Container(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                horizontal: 10,
                                                vertical: 5,
                                              ),
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(15),
                                                border: Border.all(),
                                              ),
                                              child: const Text(
                                                'Read More',
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
                                padding: const EdgeInsets.only(bottom: 20.0),
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
                                          launchURL(
                                              state.columns[index].articleUrl);
                                        },
                                        child: Padding(
                                          padding:
                                              const EdgeInsets.only(top: 15.0),
                                          child: Align(
                                            alignment: Alignment.bottomRight,
                                            child: Container(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                horizontal: 10,
                                                vertical: 5,
                                              ),
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(15),
                                                border: Border.all(),
                                              ),
                                              child: const Text(
                                                'Read More',
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
                                padding: const EdgeInsets.only(bottom: 20.0),
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
                                          launchURL(
                                              state.columns[index].articleUrl);
                                        },
                                        child: Padding(
                                          padding:
                                              const EdgeInsets.only(top: 15.0),
                                          child: Align(
                                            alignment: Alignment.bottomRight,
                                            child: Container(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                horizontal: 10,
                                                vertical: 5,
                                              ),
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(15),
                                                border: Border.all(),
                                              ),
                                              child: const Text(
                                                'Read More',
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
                                                  fontWeight: FontWeight.w300,
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
                                              visible: e.articleUrl.isNotEmpty,
                                              child: Container(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                  horizontal: 10,
                                                  vertical: 5,
                                                ),
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(15),
                                                  border: Border.all(),
                                                ),
                                                child: const Text(
                                                  'See More',
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
                                  padding: EdgeInsets.symmetric(vertical: 20.0),
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
                                          horizontal: 10,
                                          vertical: 5,
                                        ),
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          border: Border.all(),
                                        ),
                                        child: const Text(
                                          'See More',
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                GridView.builder(
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
          Container(
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.symmetric(
              vertical: 20,
              horizontal: 50,
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
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 50.0),
                    child: Text(
                      'CHANNEL',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 50,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: IconButton(
                          onPressed: () {
                            for (int i = 0; i < chControllerList.length; i++) {
                              if (chControllerList[i].isVideoPlaying) {
                                chControllerList[i].pause();
                              }
                            }
                            _controller.previousPage(
                                duration: const Duration(milliseconds: 300));
                          },
                          icon: const Icon(
                            Icons.arrow_back_ios_new,
                            color: Colors.white,
                            size: 40,
                          ),
                        ),
                      ),
                      Expanded(
                        child: CarouselSlider(
                          carouselController: _controller,
                          options: CarouselOptions(
                            height: 500,
                            viewportFraction: 1.0,
                            enlargeCenterPage: false,
                            onPageChanged: (index, reason) {
                              setState(() {});
                            },
                          ),
                          items: chControllerList.map((e) {
                            return PodVideoPlayer(
                              controller: e,
                            );
                          }).toList(),
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          for (int i = 0; i < chControllerList.length; i++) {
                            if (chControllerList[i].isVideoPlaying) {
                              chControllerList[i].pause();
                            }
                          }
                          _controller.nextPage(
                              duration: const Duration(milliseconds: 300));
                        },
                        icon: const Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.white,
                          size: 40,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
