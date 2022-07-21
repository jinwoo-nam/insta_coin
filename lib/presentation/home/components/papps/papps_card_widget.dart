import 'package:flutter/material.dart';
import 'package:insta_coin/domain/model/home/papps_data.dart';
import 'package:insta_coin/ui/on_hover_detect.dart';

class PappsCardWidget extends StatelessWidget {
  final PappsData data;
  final double horizontalPadding;
  final double verticalPadding;

  const PappsCardWidget({
    Key? key,
    required this.data,
    required this.horizontalPadding,
    required this.verticalPadding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: horizontalPadding,
        vertical: verticalPadding,
      ),
      child: OnHoverDetect(
        builder: (isHover) {
          return Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 30,
              vertical: 45,
            ),
            decoration: isHover
                ? BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.white.withOpacity(0.5),
                        spreadRadius: 8,
                        blurRadius: 7,
                        offset: const Offset(0, 3),
                      )
                    ],
                    borderRadius: const BorderRadius.all(Radius.circular(15)),
                  )
                : const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                  ),
            child: Column(
              children: [
                Image.asset(
                  data.imageUrl,
                  width: 80,
                  height: 80,
                  fit: BoxFit.cover,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    bottom: 20.0,
                    top: 40,
                  ),
                  child: Text(
                    data.title,
                    style: const TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                Text(
                  data.content,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w300,
                    height: 1.6,
                    wordSpacing: 1.5,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
