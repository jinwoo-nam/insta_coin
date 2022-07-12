import 'package:flutter/material.dart';
import 'package:insta_coin/responsive/responsive.dart';
import 'package:pod_player/pod_player.dart';

class MediaScreen extends StatefulWidget {
  const MediaScreen({Key? key}) : super(key: key);

  @override
  State<MediaScreen> createState() => _MediaScreenState();
}

class _MediaScreenState extends State<MediaScreen> {
  late final PodPlayerController controller1;
  late final PodPlayerController controller2;
  late final PodPlayerController controller3;
  late final PodPlayerController controller4;

  @override
  void initState() {
    controller1 = PodPlayerController(
      playVideoFrom: PlayVideoFrom.youtube(
          'https://www.youtube.com/watch?time_continue=2&v=0bwjoYQCFmo&feature=emb_logo'),
      podPlayerConfig: const PodPlayerConfig(
        initialVideoQuality: 360,
        autoPlay: false,
      ),
    )..initialise();

    controller2 = PodPlayerController(
      playVideoFrom: PlayVideoFrom.youtube(
          'https://www.youtube.com/watch?time_continue=1&v=KdeZ1aUMrAQ&feature=emb_logo'),
      podPlayerConfig: const PodPlayerConfig(
        initialVideoQuality: 360,
        autoPlay: false,
      ),
    )..initialise();

    controller3 = PodPlayerController(
      playVideoFrom: PlayVideoFrom.youtube(
          'https://www.youtube.com/watch?v=OiscvdFKIig&feature=emb_logo'),
      podPlayerConfig: const PodPlayerConfig(
        initialVideoQuality: 360,
        autoPlay: false,
      ),
    )..initialise();

    controller4 = PodPlayerController(
      playVideoFrom: PlayVideoFrom.youtube(
          'https://www.youtube.com/watch?v=4eoNcXv7HQY&feature=emb_logo'),
      podPlayerConfig: const PodPlayerConfig(
        initialVideoQuality: 360,
        autoPlay: false,
      ),
    )..initialise();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final double fontSize = Responsive.isMobile(context)
        ? 15
        : Responsive.isTablet(context)
            ? 18
            : 22;
    return SafeArea(
        child: SingleChildScrollView(
      child: Container(
        color: Colors.white,
        alignment: Alignment.center,
        child: SizedBox(
          width: 1500,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 80.0,
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
                                  controller: controller1,
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  '[BLOCKCHAIN FOCUS] TVCC\n2018.11.08',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: fontSize,
                                      fontWeight: FontWeight.w300),
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
                                  controller: controller2,
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  'MTN(MONEY TODAY) TV\n2018.07.20',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: fontSize,
                                      fontWeight: FontWeight.w300),
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
                                  controller: controller3,
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  'NATIONAL ASSEMBLY TV\n2016.09',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: fontSize,
                                    fontWeight: FontWeight.w300,
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
                                  controller: controller4,
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  'MBC TV\n2016.09',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: fontSize,
                                      fontWeight: FontWeight.w300),
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
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    PodVideoPlayer(
                                      controller: controller1,
                                    ),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    Text(
                                      '[BLOCKCHAIN FOCUS] TVCC\n2018.11.08',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: fontSize,
                                          fontWeight: FontWeight.w300),
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
                                      controller: controller2,
                                    ),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    Text(
                                      'MTN(MONEY TODAY) TV\n2018.07.20',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: fontSize,
                                          fontWeight: FontWeight.w300),
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
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    PodVideoPlayer(
                                      controller: controller3,
                                    ),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    Text(
                                      'NATIONAL ASSEMBLY TV\n2016.09',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: fontSize,
                                        fontWeight: FontWeight.w300,
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
                                      controller: controller4,
                                    ),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    Text(
                                      'MBC TV\n2016.09',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: fontSize,
                                          fontWeight: FontWeight.w300),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                ],
              ),
            ),
          ),
        ),
      ),
    ));
  }
}
