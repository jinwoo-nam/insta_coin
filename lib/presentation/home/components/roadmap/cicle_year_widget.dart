import 'package:flutter/material.dart';

class CircleYearWidget extends StatelessWidget {
  final String year;

  const CircleYearWidget({
    Key? key,
    required this.year,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: 100,
          height: 100,
          decoration: const BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
          ),
        ),
        Container(
          width: 85,
          height: 85,
          decoration: const BoxDecoration(
            color: Color(0xff38aab7),
            shape: BoxShape.circle,
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
      ],
    );
  }
}
