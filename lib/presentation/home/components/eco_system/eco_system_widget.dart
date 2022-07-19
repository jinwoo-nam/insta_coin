import 'package:flutter/material.dart';
import 'package:insta_coin/responsive/responsive.dart';

class EcoSystemWidget extends StatelessWidget {
  const EcoSystemWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 30,
      ),
      width: double.infinity,
      color: Colors.white,
      alignment: Alignment.center,
      child: SizedBox(
        width: 1200,
        //height: 1000,
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: Responsive.isMobile(context) ? 10 : 60,
            vertical: 70,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'ECOSYSTEM',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: Responsive.isMobile(context) ? 35 : 60,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(height: 40,),
              Image.asset('img/main/Instapay_Ecosystem.jpeg'),
            ],
          ),
        ),
      ),
    );
  }
}
