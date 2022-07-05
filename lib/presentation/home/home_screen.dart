import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final length = max(
        MediaQuery.of(context).size.width, MediaQuery.of(context).size.height);

    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                ConstrainedBox(
                  constraints: BoxConstraints.tight(Size(
                    length,
                    700,
                  )),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Color(0xff2d3943),
                          Color(0xff159db5),
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  width: 2000,
                  bottom: -300,
                  child: Opacity(
                    opacity: 0.8,
                    child: Center(
                      child: Image.asset(
                        'img/main/main_line.png',
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            ConstrainedBox(
              constraints: BoxConstraints.tight(Size(
                length,
                700,
              )),
              child: Container(
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xff254756),
                    Color(0x0ff74412),
                  ],
                )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
