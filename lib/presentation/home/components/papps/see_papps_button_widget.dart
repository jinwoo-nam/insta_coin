import 'package:flutter/material.dart';
import 'package:insta_coin/ui/on_hover_detect.dart';

class SeePappsButtonWidget extends StatelessWidget {
  const SeePappsButtonWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: InkWell(
        onTap: () {},
        child: OnHoverDetect(
          builder: (isHover) {
            return Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 30,
                vertical: 15,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: const Color(0xff80d0d6),
              ),
              child: const Text(
                'See our PApps',
                style: TextStyle(
                  fontSize: 21,
                  color: Colors.white,
                  fontWeight: FontWeight.w300,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
