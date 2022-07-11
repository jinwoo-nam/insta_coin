import 'package:flutter/material.dart';

class FooterWidget extends StatelessWidget {
  const FooterWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 100,
      padding: const EdgeInsets.symmetric(
        vertical: 20,
        horizontal: 50,
      ),
      decoration: const BoxDecoration(
        color: Color(0xff2d3943),
      ),
      alignment: Alignment.topLeft,
      child: const SizedBox(
        width: 1200,
        child: Text(
          'Copyright © 2022 InstaPay - All Rights Reserved.',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w300,
            color: Color(0xff8e8e8e),
          ),
        ),
      ),
    );
  }
}
