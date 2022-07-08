import 'package:flutter/material.dart';

class OurVisionWidget extends StatelessWidget {
  const OurVisionWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.white,
      alignment: Alignment.center,
      child: SizedBox(
        width: 1200,
        height: null,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 80,
            horizontal: 60.0,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Center(
                child: Text(
                  'OUR VISION',
                  style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Text(
                'In 2008, Satoshi’s bitcoin provided the technological solution to bringing virtual currency payment to reality. Its intention to be used as payment instrument itself, however, has rather dimmed in the light of many other intriguing aspects of Blockchain. The issue of using payment method and currency cannot be simply resolved by the technological solutions, but is also very closely related to the nation’s regulatory framework. Our founder has the most extensive knowledge of the post-internet payment methods and their potential for change.',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w300,
                ),
              ),
              SizedBox(
                height: 35,
              ),
              Text(
                'We envision to create an O2O Commerce ecosystem that enables transactions without barriers of time and location in daily life. The credit card system that has penetrated into people’s life today is expensive in costs and complicated in system processing. InstaPay’s patented QR code payment system will provide a competitive alternative to credit card and open the doorway to the new O2O Commerce era. InstaCoin takes on the mission that Satoshi’s bitcoin has begun but not yet completed to become the future payment platform, by expanding its Blockchain ecosystem through various platform applications.',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w300,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'We envision to create the first cryptocurrency to be actually used as a payment method:  boarder-less and time-less.',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
