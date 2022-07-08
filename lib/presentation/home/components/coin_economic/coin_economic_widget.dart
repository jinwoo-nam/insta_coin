import 'package:flutter/material.dart';
import 'package:insta_coin/responsive/responsive.dart';

class CoinEconomicWidget extends StatelessWidget {
  const CoinEconomicWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.white,
      alignment: Alignment.center,
      child: SizedBox(
        width: 1200,
        child: Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: 60.0, vertical: 70),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Center(
                child: Text(
                  'COIN ECONOMICS',
                  style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              const SizedBox(
                height: 100,
              ),
              if (Responsive.isDesktop(context))
                Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              const Text(
                                'Coin distribution',
                                style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(30.0),
                                child: Image.asset(
                                  'img/main/coindistribution.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              const Text(
                                'Fund distribution',
                                style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(30.0),
                                child: Image.asset(
                                  'img/main/funddistribution.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    RichText(
                      text: const TextSpan(
                        style: TextStyle(
                          fontSize: 18.0,
                          color: Colors.black,
                          fontWeight: FontWeight.w300,
                          height: 1.6,
                        ),
                        children: [
                          TextSpan(text: '1. '),
                          TextSpan(
                            text:
                            'Reserve Fund & Conversion Compensation: ',
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          TextSpan(text: '1,000,000,000 INC'),
                        ],
                      ),
                    ),
                    RichText(
                      text: const TextSpan(
                        style: TextStyle(
                          fontSize: 18.0,
                          color: Colors.black,
                          fontWeight: FontWeight.w300,
                          height: 1.6,
                        ),
                        children: [
                          TextSpan(text: '2. '),
                          TextSpan(
                            text: 'Distribution: ',
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          TextSpan(text: '1,000,000,000 INC'),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 100,
                    ),
                    Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RichText(
                            text: const TextSpan(
                              style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.black,
                                fontWeight: FontWeight.w300,
                                height: 2.2,
                              ),
                              children: [
                                TextSpan(
                                  text: 'Symbol: ',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                TextSpan(text: 'INC'),
                              ],
                            ),
                          ),
                          RichText(
                            text: const TextSpan(
                              style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.black,
                                fontWeight: FontWeight.w300,
                                height: 2.2,
                              ),
                              children: [
                                TextSpan(
                                  text: 'Total issuance: ',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                TextSpan(text: '2,000,000,000 INC'),
                              ],
                            ),
                          ),
                          RichText(
                            text: const TextSpan(
                              style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.black,
                                fontWeight: FontWeight.w300,
                                height: 2.2,
                              ),
                              children: [
                                TextSpan(
                                  text: 'Minimum purchase: ',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                TextSpan(text: '0.1 ETH'),
                              ],
                            ),
                          ),
                          RichText(
                            text: const TextSpan(
                              style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.black,
                                fontWeight: FontWeight.w300,
                                height: 2.2,
                              ),
                              children: [
                                TextSpan(
                                  text: 'KYC required: ',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                TextSpan(
                                    text: 'YES(Instapay App required)'),
                              ],
                            ),
                          ),
                          RichText(
                            text: const TextSpan(
                              style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.black,
                                fontWeight: FontWeight.w300,
                                height: 2.2,
                              ),
                              children: [
                                TextSpan(
                                  text: 'Accepted payment: ',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                TextSpan(
                                    text:
                                    'FIAT(KRW) and Ethereum ONLY'),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              if (!Responsive.isDesktop(context))
                Column(
                  children: [
                    Column(
                      children: [
                        const Text(
                          'Coin distribution',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 60.0,
                            vertical: 30,
                          ),
                          child: Image.asset(
                            'img/main/coindistribution.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Column(
                      children: [
                        const Text(
                          'Fund distribution',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 60.0,
                            vertical: 30,
                          ),
                          child: Image.asset(
                            'img/main/funddistribution.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                    RichText(
                      text: const TextSpan(
                        style: TextStyle(
                          fontSize: 18.0,
                          color: Colors.black,
                          fontWeight: FontWeight.w300,
                          height: 1.6,
                        ),
                        children: [
                          TextSpan(text: '1. '),
                          TextSpan(
                            text:
                            'Reserve Fund & Conversion Compensation: ',
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          TextSpan(text: '1,000,000,000 INC'),
                        ],
                      ),
                    ),
                    RichText(
                      text: const TextSpan(
                        style: TextStyle(
                          fontSize: 18.0,
                          color: Colors.black,
                          fontWeight: FontWeight.w300,
                          height: 1.6,
                        ),
                        children: [
                          TextSpan(text: '2. '),
                          TextSpan(
                            text: 'Distribution: ',
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          TextSpan(text: '1,000,000,000 INC'),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 100,
                    ),
                    Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RichText(
                            text: const TextSpan(
                              style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.black,
                                fontWeight: FontWeight.w300,
                                height: 2.2,
                              ),
                              children: [
                                TextSpan(
                                  text: 'Symbol: ',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                TextSpan(text: 'INC'),
                              ],
                            ),
                          ),
                          RichText(
                            text: const TextSpan(
                              style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.black,
                                fontWeight: FontWeight.w300,
                                height: 2.2,
                              ),
                              children: [
                                TextSpan(
                                  text: 'Total issuance: ',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                TextSpan(text: '2,000,000,000 INC'),
                              ],
                            ),
                          ),
                          RichText(
                            text: const TextSpan(
                              style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.black,
                                fontWeight: FontWeight.w300,
                                height: 2.2,
                              ),
                              children: [
                                TextSpan(
                                  text: 'Minimum purchase: ',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                TextSpan(text: '0.1 ETH'),
                              ],
                            ),
                          ),
                          RichText(
                            text: const TextSpan(
                              style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.black,
                                fontWeight: FontWeight.w300,
                                height: 2.2,
                              ),
                              children: [
                                TextSpan(
                                  text: 'KYC required: ',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                TextSpan(
                                    text: 'YES(Instapay App required)'),
                              ],
                            ),
                          ),
                          RichText(
                            text: const TextSpan(
                              style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.black,
                                fontWeight: FontWeight.w300,
                                height: 2.2,
                              ),
                              children: [
                                TextSpan(
                                  text: 'Accepted payment: ',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                TextSpan(
                                    text:
                                    'FIAT(KRW) and Ethereum ONLY'),
                              ],
                            ),
                          ),
                        ],
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
