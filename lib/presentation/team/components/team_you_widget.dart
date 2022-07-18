import 'package:flutter/material.dart';

class TeamYouWidget extends StatelessWidget {
  const TeamYouWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Icon(
          Icons.question_mark,
          color: Color(0xff4ac1c2),
          size: 140,
        ),
        Padding(
          padding: EdgeInsets.only(
            bottom: 10.0,
            top: 40,
          ),
          child: Text(
            'You?',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        Text(
          'We are looking for talented, driven people to join our journey of bringing the crypto-payment innovation to reality. If you’re interested or have any inquiry, please contact us at',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w300,
            height: 1.5,
            wordSpacing: 1.5,
          ),
        ),
        Text(
          'business@instapay.kr',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w700,
            height: 1.5,
            wordSpacing: 1.5,
          ),
        ),
      ],
    );
  }
}
