import 'package:flutter/material.dart';

class RectYearWidget extends StatelessWidget {
  final String year;

  const RectYearWidget({
    Key? key,
    required this.year,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          height: 50,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          alignment: Alignment.center,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5.0),
          child: Container(
            height: 40,
            decoration: BoxDecoration(
              color: const Color(0xff38aab7),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Text(
                year,
                style: const TextStyle(
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                  fontSize: 28,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

