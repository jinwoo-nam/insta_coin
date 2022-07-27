import 'package:flutter/material.dart';
import 'package:insta_coin/domain/model/road_map/month_data.dart';
import 'package:insta_coin/responsive/responsive.dart';

class CircleMonthWidget extends StatelessWidget {
  final MonthData data;
  final double downPadding;
  final bool isDesktop;

  const CircleMonthWidget(
    this.data, {
    required this.downPadding,
    this.isDesktop = true,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: isDesktop ? Alignment.center : Alignment.topLeft,
      children: [
        if (isDesktop)
          Padding(
            padding: (data.direction == MonthMessageDirection.right)
                ? const EdgeInsets.only(right: 120.0)
                : const EdgeInsets.only(left: 120.0),
            child: Text(
              data.month,
              style: const TextStyle(
                fontWeight: FontWeight.w700,
                color: Colors.white,
                fontSize: 22,
              ),
            ),
          ),
        if (isDesktop)
          Container(
            width: 60,
            height: 60,
            decoration: const BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
          ),
        if (!isDesktop)
          Padding(
            padding: EdgeInsets.only(top: downPadding),
            child: Container(
              width: 60,
              height: 60,
              decoration: const BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
            ),
          ),
        if (isDesktop)
          Padding(
            padding: (data.direction == MonthMessageDirection.right)
                ? EdgeInsets.only(
                    left: 500.0,
                    top: downPadding,
                  )
                : EdgeInsets.only(
                    right: 500.0,
                    top: downPadding,
                  ),
            child: Container(
              width: 400,
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: RichText(
                text: TextSpan(
                  style: const TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                    fontWeight: FontWeight.w300,
                    height: 1.4,
                  ),
                  children: [
                    TextSpan(
                      text: data.title,
                      style: const TextStyle(
                        fontWeight: FontWeight.w700,
                        color: Color(0xff4ac1c2),
                        fontSize: 15,
                      ),
                    ),
                    TextSpan(text: '\n\n${data.description}'),
                  ],
                ),
              ),
            ),
          ),
        if (!isDesktop)
          Padding(
            padding: (!isDesktop)
                ? const EdgeInsets.only(
                    left: 80,
                  )
                : (data.direction == MonthMessageDirection.right)
                    ? EdgeInsets.only(
                        left: 500.0,
                        top: downPadding,
                      )
                    : EdgeInsets.only(
                        right: 500.0,
                        top: downPadding,
                      ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 10.0),
                  child: Text(
                    data.month,
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                      fontSize: (Responsive.isMobile(context)) ? 13 : 18,
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: RichText(
                    text: TextSpan(
                      style:  TextStyle(
                        fontSize: (Responsive.isMobile(context)) ? 12 : 14,
                        color: Colors.black,
                        fontWeight: FontWeight.w300,
                        height: 1.3,
                      ),
                      children: [
                        TextSpan(
                          text: data.title,
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            color: const Color(0xff4ac1c2),
                            fontSize: (Responsive.isMobile(context)) ? 13 : 16,
                          ),
                        ),
                        TextSpan(text: '\n\n${data.description}'),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
      ],
    );
  }
}
