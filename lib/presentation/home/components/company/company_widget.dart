import 'package:flutter/material.dart';
import 'package:insta_coin/responsive/responsive.dart';

class CompanyWidget extends StatelessWidget {
  const CompanyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 70,
        horizontal: Responsive.isMobile(context) ? 20 : 60,
      ),
      width: double.infinity,
      color: Colors.white,
      alignment: Alignment.center,
      child: SizedBox(
        width: 1200,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'THE COMPANY',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: Responsive.isMobile(context) ? 40 : 50,
                fontWeight: FontWeight.w700,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: Image.asset(
                'img/main/instapay_logo.jpeg',
                width: 330,
                height: 110,
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 15.0),
              child: Text(
                '1. We have designed and patented the QR code payment scheme since 2006 and registered our patents since 2008, the first in the world.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xff222222),
                  height: 1.8,
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 15.0),
              child: Text(
                '2. InstaPay is the first and only mobile payment company to have integrated all Korean banks through firm banking.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xff222222),
                  height: 1.8,
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 15.0),
              child: Text(
                '3. InstaPay’s payment system provides the simplest UI/UX for any type of transaction.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xff222222),
                  height: 1.8,
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 50.0),
              child: Text(
                'These are some of InstaPay’s partners:',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xff222222),
                  height: 1.8,
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 30.0),
              child: Text(
                'Banks',
                style: TextStyle(
                  fontSize: 27,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Image.asset('img/main/banks.png'),
            const SizedBox(
              height: 30,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 30.0),
              child: Text(
                'Public Entities',
                style: TextStyle(
                  fontSize: 27,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Image.asset('img/main/public.png'),
            const SizedBox(
              height: 30,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 30.0),
              child: Text(
                'Private Entities',
                style: TextStyle(
                  fontSize: 27,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Image.asset('img/main/private.png'),
            const SizedBox(
              height: 70,
            ),
            const Text(
              '* We differentiate between general partners with InstaPay, which we consider one of our Platform Applications, and InstaCoin Payment Applications(PApps). Instacoin’s ecosystem is independent of, while complemented by, InstaPay’s platforms, as we endeavor to creating coins for widespread payments.',
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w400,
                color: Color(0xff222222),
                height: 1.8,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
