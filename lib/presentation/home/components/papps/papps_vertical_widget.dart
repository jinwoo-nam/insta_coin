import 'package:flutter/material.dart';
import 'package:insta_coin/domain/model/home/papps_data.dart';
import 'package:insta_coin/responsive/responsive.dart';

class PappsVerticalWidget extends StatelessWidget {
  final PappsData data;

  const PappsVerticalWidget({
    required this.data,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(data.logoUrl),
          Text(
            data.title,
            style: TextStyle(
              fontSize: (Responsive.isMobile(context)) ? 30 : 40,
              color: const Color(0xff4AC1C2),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 25.0,
              bottom: 55,
            ),
            child: Text(
              data.subTitle,
              style: const TextStyle(
                  fontSize: 20, color: Color.fromRGBO(0, 39, 91, 0.89)),
            ),
          ),
          Text(
            data.content,
            style: const TextStyle(
              fontSize: 17,
              height: 1.5,
              fontWeight: FontWeight.w300,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
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
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
