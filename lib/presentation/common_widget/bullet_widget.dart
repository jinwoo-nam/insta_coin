import 'package:flutter/material.dart';

class BulletWidget extends StatelessWidget {
  final String text;

  const BulletWidget(
      this.text, {
        Key? key,
      }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          '• ',
          style: TextStyle(
            fontWeight: FontWeight.w700,
            height: 1.4,
            fontSize: 16,
          ),
        ),
        Expanded(
            child: Text(
              text,
              style: const TextStyle(
                fontWeight: FontWeight.w300,
                height: 1.4,
                fontSize: 16,
              ),
            ))
      ],
    );
  }
}