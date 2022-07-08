import 'package:flutter/material.dart';

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
          padding: const EdgeInsets.symmetric(
            horizontal: 60.0,
            vertical: 70,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Text(
                'ECOSYSTEM',
                style: TextStyle(
                  fontSize: 50,
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
