import 'package:flutter/material.dart';
import 'package:insta_coin/responsive/responsive.dart';
import 'package:insta_coin/ui/on_hover_detect.dart';

class PappsWidget extends StatelessWidget {
  const PappsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      //height: 1400,
      padding: const EdgeInsets.symmetric(
        vertical: 20,
        horizontal: 50,
      ),
      decoration: const BoxDecoration(
        color: Color(0xff2d3943),
      ),
      alignment: Alignment.center,
      child: SizedBox(
        width: 1200,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 60.0,
            vertical: 70,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.only(bottom: 50.0),
                child: Center(
                  child: Text(
                    'PApps (Platform Applications)',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 50,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
              if (Responsive.isDesktop(context))
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 30.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Expanded(
                            child: OnHoverDetect(
                              builder: (isHover) {
                                return Container(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 30,
                                    vertical: 45,
                                  ),
                                  decoration: isHover
                                      ? BoxDecoration(
                                          color: Colors.white,
                                          boxShadow: [
                                            BoxShadow(
                                              color:
                                                  Colors.white.withOpacity(0.5),
                                              spreadRadius: 8,
                                              blurRadius: 7,
                                              offset: const Offset(0, 3),
                                            )
                                          ],
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(15)),
                                        )
                                      : const BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(15)),
                                        ),
                                  child: Column(
                                    children: [
                                      Image.asset(
                                        'img/main/o2o.png',
                                        width: 80,
                                        height: 80,
                                        fit: BoxFit.cover,
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(
                                          bottom: 20.0,
                                          top: 40,
                                        ),
                                        child: Text(
                                          'O2O Commerce',
                                          style: TextStyle(
                                            fontSize: 23,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                      ),
                                      const Text(
                                        'InstaPay removes the barriers of time and space in shopping, paying, and delivery. By using blockchain, it prevents fraudulent transactions and protects personal information in O2O Commerce.',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w300,
                                          height: 1.6,
                                          wordSpacing: 1.5,
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              },
                            ),
                          ),
                          const SizedBox(
                            width: 50,
                          ),
                          Expanded(
                            child: OnHoverDetect(
                              builder: (isHover) {
                                return Container(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 30,
                                    vertical: 45,
                                  ),
                                  decoration: isHover
                                      ? BoxDecoration(
                                          color: Colors.white,
                                          boxShadow: [
                                            BoxShadow(
                                              color:
                                                  Colors.white.withOpacity(0.5),
                                              spreadRadius: 8,
                                              blurRadius: 7,
                                              offset: const Offset(0, 3),
                                            )
                                          ],
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(15)),
                                        )
                                      : const BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(15)),
                                        ),
                                  child: Column(
                                    children: [
                                      Image.asset(
                                        'img/main/mbpp.png',
                                        width: 80,
                                        height: 80,
                                        fit: BoxFit.cover,
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(
                                          bottom: 20.0,
                                          top: 40,
                                        ),
                                        child: Text(
                                          'MBPP',
                                          style: TextStyle(
                                            fontSize: 23,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                      ),
                                      const Text(
                                        'You can pay and charge InstaCoin via mobile without intermediaries . It spans over payment between individuals, as well as recurring bills for O2O Commerce, memberships, subscriptions, and more.',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w300,
                                          height: 1.6,
                                          wordSpacing: 1.5,
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              },
                            ),
                          ),
                          const SizedBox(
                            width: 50,
                          ),
                          Expanded(
                            child: OnHoverDetect(
                              builder: (isHover) {
                                return Container(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 30,
                                    vertical: 45,
                                  ),
                                  decoration: isHover
                                      ? BoxDecoration(
                                          color: Colors.white,
                                          boxShadow: [
                                            BoxShadow(
                                              color:
                                                  Colors.white.withOpacity(0.5),
                                              spreadRadius: 8,
                                              blurRadius: 7,
                                              offset: const Offset(0, 3),
                                            )
                                          ],
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(15)),
                                        )
                                      : const BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(15)),
                                        ),
                                  child: Column(
                                    children: [
                                      Image.asset(
                                        'img/main/game.png',
                                        width: 80,
                                        height: 80,
                                        fit: BoxFit.cover,
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(
                                          bottom: 20.0,
                                          top: 40,
                                        ),
                                        child: Text(
                                          'Game',
                                          style: TextStyle(
                                            fontSize: 23,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                      ),
                                      const Text(
                                        'You can own game items as InstaCoin’s Digital Asset. InstaCoin will provide convenient and secure experience in purchasing at a virtual store within game and trading game items between users.',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w300,
                                          height: 1.6,
                                          wordSpacing: 1.5,
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              },
                            ),
                          ),
                          const SizedBox(
                            width: 50,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 30.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Expanded(
                            child: OnHoverDetect(
                              builder: (isHover) {
                                return Container(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 30,
                                    vertical: 45,
                                  ),
                                  decoration: isHover
                                      ? BoxDecoration(
                                          color: Colors.white,
                                          boxShadow: [
                                            BoxShadow(
                                              color:
                                                  Colors.white.withOpacity(0.5),
                                              spreadRadius: 8,
                                              blurRadius: 7,
                                              offset: const Offset(0, 3),
                                            )
                                          ],
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(15)),
                                        )
                                      : const BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(15)),
                                        ),
                                  child: Column(
                                    children: [
                                      Image.asset(
                                        'img/main/etrade.png',
                                        width: 80,
                                        height: 80,
                                        fit: BoxFit.cover,
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(
                                          bottom: 20.0,
                                          top: 40,
                                        ),
                                        child: Text(
                                          'Worldwide e-Trade',
                                          style: TextStyle(
                                            fontSize: 23,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                      ),
                                      const Text(
                                        'In long term, Instacoin envisions to build decentralized multilateral payment system and crypto-economy ecosystem, which will reduce intermediaries fees, prevent fraud, and enable transparent delivery.',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w300,
                                          height: 1.6,
                                          wordSpacing: 1.5,
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              },
                            ),
                          ),
                          const SizedBox(
                            width: 50,
                          ),
                          Expanded(
                            child: OnHoverDetect(
                              builder: (isHover) {
                                return Container(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 30,
                                    vertical: 45,
                                  ),
                                  decoration: isHover
                                      ? BoxDecoration(
                                          color: Colors.white,
                                          boxShadow: [
                                            BoxShadow(
                                              color:
                                                  Colors.white.withOpacity(0.5),
                                              spreadRadius: 8,
                                              blurRadius: 7,
                                              offset: const Offset(0, 3),
                                            )
                                          ],
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(15)),
                                        )
                                      : const BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(15)),
                                        ),
                                  child: Column(
                                    children: [
                                      Image.asset(
                                        'img/main/ip.png',
                                        width: 80,
                                        height: 80,
                                        fit: BoxFit.cover,
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(
                                          bottom: 20.0,
                                          top: 40,
                                        ),
                                        child: Text(
                                          'IP',
                                          style: TextStyle(
                                            fontSize: 23,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                      ),
                                      const Text(
                                        'InstaPay removes the barriers of time and space in shopping, paying, and delivery. By using blockchain, it prevents fraudulent transactions and protects personal information in O2O Commerce.',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w300,
                                          height: 1.6,
                                          wordSpacing: 1.5,
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              },
                            ),
                          ),
                          const SizedBox(
                            width: 50,
                          ),
                          Expanded(
                            child: OnHoverDetect(
                              builder: (isHover) {
                                return Container(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 30,
                                    vertical: 45,
                                  ),
                                  decoration: isHover
                                      ? BoxDecoration(
                                          color: Colors.white,
                                          boxShadow: [
                                            BoxShadow(
                                              color:
                                                  Colors.white.withOpacity(0.5),
                                              spreadRadius: 8,
                                              blurRadius: 7,
                                              offset: const Offset(0, 3),
                                            )
                                          ],
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(15)),
                                        )
                                      : const BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(15)),
                                        ),
                                  child: Column(
                                    children: [
                                      Image.asset(
                                        'img/main/reward.png',
                                        width: 80,
                                        height: 80,
                                        fit: BoxFit.cover,
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(
                                          bottom: 20.0,
                                          top: 40,
                                        ),
                                        child: Text(
                                          'Reward & Donation',
                                          style: TextStyle(
                                            fontSize: 23,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                      ),
                                      const Text(
                                        'You can pay and charge InstaCoin via mobile without intermediaries . It spans over payment between individuals, as well as recurring bills for O2O Commerce, memberships, subscriptions, and more.',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w300,
                                          height: 1.6,
                                          wordSpacing: 1.5,
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              },
                            ),
                          ),
                          const SizedBox(
                            width: 50,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 30.0),
                      child: Center(
                        child: InkWell(
                          onTap: () {},
                          child: OnHoverDetect(
                            builder: (isHover) {
                              return Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 30,
                                  vertical: 15,
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: const Color(0xff80d0d6),
                                ),
                                child: const Text(
                                  'See our PApps',
                                  style: TextStyle(
                                    fontSize: 21,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              if (!Responsive.isDesktop(context))
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 30),
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 30,
                          vertical: 45,
                        ),
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                        ),
                        child: Column(
                          children: [
                            Image.asset(
                              'img/main/o2o.png',
                              width: 80,
                              height: 80,
                              fit: BoxFit.cover,
                            ),
                            const Padding(
                              padding: EdgeInsets.only(
                                bottom: 20.0,
                                top: 40,
                              ),
                              child: Text(
                                'O2O Commerce',
                                style: TextStyle(
                                  fontSize: 23,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                            const Text(
                              'InstaPay removes the barriers of time and space in shopping, paying, and delivery. By using blockchain, it prevents fraudulent transactions and protects personal information in O2O Commerce.',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w300,
                                height: 1.6,
                                wordSpacing: 1.5,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 30),
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 30,
                          vertical: 45,
                        ),
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                        ),
                        child: Column(
                          children: [
                            Image.asset(
                              'img/main/mbpp.png',
                              width: 80,
                              height: 80,
                              fit: BoxFit.cover,
                            ),
                            const Padding(
                              padding: EdgeInsets.only(
                                bottom: 20.0,
                                top: 40,
                              ),
                              child: Text(
                                'MBPP',
                                style: TextStyle(
                                  fontSize: 23,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                            const Text(
                              'You can pay and charge InstaCoin via mobile without intermediaries . It spans over payment between individuals, as well as recurring bills for O2O Commerce, memberships, subscriptions, and more.',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w300,
                                height: 1.6,
                                wordSpacing: 1.5,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 30),
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 30,
                          vertical: 45,
                        ),
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                        ),
                        child: Column(
                          children: [
                            Image.asset(
                              'img/main/game.png',
                              width: 80,
                              height: 80,
                              fit: BoxFit.cover,
                            ),
                            const Padding(
                              padding: EdgeInsets.only(
                                bottom: 20.0,
                                top: 40,
                              ),
                              child: Text(
                                'Game',
                                style: TextStyle(
                                  fontSize: 23,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                            const Text(
                              'You can own game items as InstaCoin’s Digital Asset. InstaCoin will provide convenient and secure experience in purchasing at a virtual store within game and trading game items between users.',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w300,
                                height: 1.6,
                                wordSpacing: 1.5,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 30),
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 30,
                          vertical: 45,
                        ),
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                        ),
                        child: Column(
                          children: [
                            Image.asset(
                              'img/main/etrade.png',
                              width: 80,
                              height: 80,
                              fit: BoxFit.cover,
                            ),
                            const Padding(
                              padding: EdgeInsets.only(
                                bottom: 20.0,
                                top: 40,
                              ),
                              child: Text(
                                'Worldwide e-Trade',
                                style: TextStyle(
                                  fontSize: 23,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                            const Text(
                              'In long term, Instacoin envisions to build decentralized multilateral payment system and crypto-economy ecosystem, which will reduce intermediaries fees, prevent fraud, and enable transparent delivery.',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w300,
                                height: 1.6,
                                wordSpacing: 1.5,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 30),
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 30,
                          vertical: 45,
                        ),
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                        ),
                        child: Column(
                          children: [
                            Image.asset(
                              'img/main/ip.png',
                              width: 80,
                              height: 80,
                              fit: BoxFit.cover,
                            ),
                            const Padding(
                              padding: EdgeInsets.only(
                                bottom: 20.0,
                                top: 40,
                              ),
                              child: Text(
                                'IP',
                                style: TextStyle(
                                  fontSize: 23,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                            const Text(
                              'InstaPay removes the barriers of time and space in shopping, paying, and delivery. By using blockchain, it prevents fraudulent transactions and protects personal information in O2O Commerce.',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w300,
                                height: 1.6,
                                wordSpacing: 1.5,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 30),
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 30,
                          vertical: 45,
                        ),
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                        ),
                        child: Column(
                          children: [
                            Image.asset(
                              'img/main/reward.png',
                              width: 80,
                              height: 80,
                              fit: BoxFit.cover,
                            ),
                            const Padding(
                              padding: EdgeInsets.only(
                                bottom: 20.0,
                                top: 40,
                              ),
                              child: Text(
                                'Reward & Donation',
                                style: TextStyle(
                                  fontSize: 23,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                            const Text(
                              'You can pay and charge InstaCoin via mobile without intermediaries . It spans over payment between individuals, as well as recurring bills for O2O Commerce, memberships, subscriptions, and more.',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w300,
                                height: 1.6,
                                wordSpacing: 1.5,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Center(
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 30,
                            vertical: 15,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: const Color(0xff80d0d6),
                          ),
                          child: const Text(
                            'See our PApps',
                            style: TextStyle(
                              fontSize: 21,
                              color: Colors.white,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }
}
