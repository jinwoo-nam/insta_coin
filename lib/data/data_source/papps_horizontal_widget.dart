import 'package:flutter/material.dart';
import 'package:insta_coin/domain/model/home/papps_data.dart';

class PappsHorizontalWidgetRight extends StatelessWidget {
  final PappsData data;

  const PappsHorizontalWidgetRight({
    required this.data,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30.0),
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(74, 133, 178, 0.07),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                        color: Color.fromRGBO(71, 74, 181, 0.12),
                        spreadRadius: 8,
                        blurRadius: 7,
                        offset: Offset(0, 3),
                      )
                    ],
                  ),
                  child: Image.asset(data.imageUrl)),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(data.logoUrl),
                  Text(
                    data.title,
                    textAlign: TextAlign.start,
                    style: const TextStyle(
                      fontSize: 40,
                      color: Color(0xff4AC1C2),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 25.0,
                      bottom: 55,
                    ),
                    child: Text(
                      data.subTitle,
                      textAlign: TextAlign.start,
                      style: const TextStyle(
                          fontSize: 20, color: Color.fromRGBO(0, 39, 91, 0.89)),
                    ),
                  ),
                  Text(
                    data.content,
                    textAlign: TextAlign.start,
                    style: const TextStyle(
                      fontSize: 17,
                      height: 1.5,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class PappsHorizontalWidgetLeft extends StatelessWidget {
  final PappsData data;

  const PappsHorizontalWidgetLeft({
    Key? key,
    required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30.0),
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Image.asset(data.logoUrl),
                  Text(
                    data.title,
                    style: const TextStyle(
                      fontSize: 40,
                      color: Color(0xff4AC1C2),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 25.0,
                      bottom: 55,
                    ),
                    child: Text(
                      data.subTitle,
                      textAlign: TextAlign.end,
                      style: const TextStyle(
                          fontSize: 20,
                          color: Color.fromRGBO(0, 39, 91, 0.89)),
                    ),
                  ),
                  Text(
                    data.content,
                    textAlign: TextAlign.end,
                    style: const TextStyle(
                      fontSize: 17,
                      height: 1.5,
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
              child: Container(
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(74, 133, 178, 0.07),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: const [
                    BoxShadow(
                      color: Color.fromRGBO(71, 74, 181, 0.12),
                      spreadRadius: 8,
                      blurRadius: 7,
                      offset: Offset(0, 3),
                    )
                  ],
                ),
                child: Image.asset(data.imageUrl),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
