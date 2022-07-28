import 'package:flutter/material.dart';

class NumberWidget extends StatelessWidget {
  final String text;
  final int number;
  final TextStyle? style;

  const NumberWidget(
    this.text, {
    Key? key,
    required this.number,
    this.style,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 30,
        ),
        if (number != 0)
          Text(
            '$number. ',
            style: style,
          ),
        Expanded(
            child: Text(
          text,
          style: style,
        ))
      ],
    );
  }
}
