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
          padding: EdgeInsets.symmetric(
            horizontal: Responsive.isMobile(context) ? 20 : 60,
            vertical: 70,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  'COIN ECONOMICS',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: Responsive.isMobile(context) ? 40 : 50,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              const SizedBox(
                height: 100,
              ),
              if (Responsive.isDesktop(context))
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              Text(
                                'Coin distribution',
                                style: TextStyle(
                                  fontSize:
                                      Responsive.isMobile(context) ? 20 : 30,
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
                              Text(
                                'Fund distribution',
                                style: TextStyle(
                                  fontSize:
                                      Responsive.isMobile(context) ? 20 : 30,
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
                    // RichText(
                    //   text: const TextSpan(
                    //     style: TextStyle(
                    //       fontSize: 18.0,
                    //       color: Colors.black,
                    //       fontWeight: FontWeight.w300,
                    //       height: 1.6,
                    //     ),
                    //     children: [
                    //       TextSpan(text: '1. '),
                    //       TextSpan(
                    //         text: 'Reserve Fund & Conversion Compensation: ',
                    //         style: TextStyle(
                    //           fontWeight: FontWeight.w700,
                    //         ),
                    //       ),
                    //       TextSpan(text: '1,000,000,000 INC'),
                    //     ],
                    //   ),
                    // ),
                    // RichText(
                    //   text: const TextSpan(
                    //     style: TextStyle(
                    //       fontSize: 18.0,
                    //       color: Colors.black,
                    //       fontWeight: FontWeight.w300,
                    //       height: 1.6,
                    //     ),
                    //     children: [
                    //       TextSpan(text: '2. '),
                    //       TextSpan(
                    //         text: 'Distribution: ',
                    //         style: TextStyle(
                    //           fontWeight: FontWeight.w700,
                    //         ),
                    //       ),
                    //       TextSpan(text: '1,000,000,000 INC'),
                    //     ],
                    //   ),
                    // ),
                    const SizedBox(
                      height: 100,
                    ),
                    Center(
                      child: Column(
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
                                  text: 'Coin Name: ',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                TextSpan(text: 'Insta Coin'),
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
                                  text: 'Coin Symbol: ',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                TextSpan(text: 'INC'),
                              ],
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Coin Distribution',
                                style: TextStyle(
                                  fontSize: 20,
                                  height: 2.2,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              Image.asset(
                                'img/main/coininfotable.jpg',
                                fit: BoxFit.cover,
                                width: 400,
                              ),
                            ],
                          ),
                        ],
                      ),
                      // child: Column(
                      //   crossAxisAlignment: CrossAxisAlignment.start,
                      //   children: [
                      //     RichText(
                      //       text: const TextSpan(
                      //         style: TextStyle(
                      //           fontSize: 20.0,
                      //           color: Colors.black,
                      //           fontWeight: FontWeight.w300,
                      //           height: 2.2,
                      //         ),
                      //         children: [
                      //           TextSpan(
                      //             text: 'Symbol: ',
                      //             style: TextStyle(
                      //               fontWeight: FontWeight.w700,
                      //             ),
                      //           ),
                      //           TextSpan(text: 'INC'),
                      //         ],
                      //       ),
                      //     ),
                      //     RichText(
                      //       text: const TextSpan(
                      //         style: TextStyle(
                      //           fontSize: 20.0,
                      //           color: Colors.black,
                      //           fontWeight: FontWeight.w300,
                      //           height: 2.2,
                      //         ),
                      //         children: [
                      //           TextSpan(
                      //             text: 'Total issuance: ',
                      //             style: TextStyle(
                      //               fontWeight: FontWeight.w700,
                      //             ),
                      //           ),
                      //           TextSpan(text: '2,000,000,000 INC'),
                      //         ],
                      //       ),
                      //     ),
                      //     RichText(
                      //       text: const TextSpan(
                      //         style: TextStyle(
                      //           fontSize: 20.0,
                      //           color: Colors.black,
                      //           fontWeight: FontWeight.w300,
                      //           height: 2.2,
                      //         ),
                      //         children: [
                      //           TextSpan(
                      //             text: 'Minimum purchase: ',
                      //             style: TextStyle(
                      //               fontWeight: FontWeight.w700,
                      //             ),
                      //           ),
                      //           TextSpan(text: '0.1 ETH'),
                      //         ],
                      //       ),
                      //     ),
                      //     RichText(
                      //       text: const TextSpan(
                      //         style: TextStyle(
                      //           fontSize: 20.0,
                      //           color: Colors.black,
                      //           fontWeight: FontWeight.w300,
                      //           height: 2.2,
                      //         ),
                      //         children: [
                      //           TextSpan(
                      //             text: 'KYC required: ',
                      //             style: TextStyle(
                      //               fontWeight: FontWeight.w700,
                      //             ),
                      //           ),
                      //           TextSpan(text: 'YES(Instapay App required)'),
                      //         ],
                      //       ),
                      //     ),
                      //     RichText(
                      //       text: const TextSpan(
                      //         style: TextStyle(
                      //           fontSize: 20.0,
                      //           color: Colors.black,
                      //           fontWeight: FontWeight.w300,
                      //           height: 2.2,
                      //         ),
                      //         children: [
                      //           TextSpan(
                      //             text: 'Accepted payment: ',
                      //             style: TextStyle(
                      //               fontWeight: FontWeight.w700,
                      //             ),
                      //           ),
                      //           TextSpan(text: 'FIAT(KRW) and Ethereum ONLY'),
                      //         ],
                      //       ),
                      //     ),
                      //   ],
                      // ),
                    )
                  ],
                ),
              if (!Responsive.isDesktop(context))
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Text(
                          'Coin distribution',
                          style: TextStyle(
                            fontSize: Responsive.isMobile(context) ? 20 : 30,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10),
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
                        Text(
                          'Fund distribution',
                          style: TextStyle(
                            fontSize: Responsive.isMobile(context) ? 20 : 30,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Image.asset(
                            'img/main/funddistribution.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // RichText(
                        //   text: const TextSpan(
                        //     style: TextStyle(
                        //       fontSize: 18.0,
                        //       color: Colors.black,
                        //       fontWeight: FontWeight.w300,
                        //       height: 1.6,
                        //     ),
                        //     children: [
                        //       TextSpan(text: '1. '),
                        //       TextSpan(
                        //         text:
                        //             'Reserve Fund & Conversion Compensation: ',
                        //         style: TextStyle(
                        //           fontWeight: FontWeight.w700,
                        //         ),
                        //       ),
                        //       TextSpan(text: '1,000,000,000 INC'),
                        //     ],
                        //   ),
                        // ),
                        // RichText(
                        //   text: const TextSpan(
                        //     style: TextStyle(
                        //       fontSize: 18.0,
                        //       color: Colors.black,
                        //       fontWeight: FontWeight.w300,
                        //       height: 1.6,
                        //     ),
                        //     children: [
                        //       TextSpan(text: '2. '),
                        //       TextSpan(
                        //         text: 'Distribution: ',
                        //         style: TextStyle(
                        //           fontWeight: FontWeight.w700,
                        //         ),
                        //       ),
                        //       TextSpan(text: '1,000,000,000 INC'),
                        //     ],
                        //   ),
                        // ),
                        // const SizedBox(
                        //   height: 100,
                        // ),
                        Center(
                          child: Column(
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
                                      text: 'Coin Name: ',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    TextSpan(text: 'Insta Coin'),
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
                                      text: 'Coin Symbol: ',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    TextSpan(text: 'INC'),
                                  ],
                                ),
                              ),
                              Image.asset(
                                'img/main/coininfotable.jpg',
                                fit: BoxFit.cover,
                                width: 400,
                              ),
                            ],
                          ),

                          // child: Column(
                          //   crossAxisAlignment: CrossAxisAlignment.start,
                          //   children: [
                          //     RichText(
                          //       text: const TextSpan(
                          //         style: TextStyle(
                          //           fontSize: 20.0,
                          //           color: Colors.black,
                          //           fontWeight: FontWeight.w300,
                          //           height: 2.2,
                          //         ),
                          //         children: [
                          //           TextSpan(
                          //             text: 'Symbol: ',
                          //             style: TextStyle(
                          //               fontWeight: FontWeight.w700,
                          //             ),
                          //           ),
                          //           TextSpan(text: 'INC'),
                          //         ],
                          //       ),
                          //     ),
                          //     RichText(
                          //       text: const TextSpan(
                          //         style: TextStyle(
                          //           fontSize: 20.0,
                          //           color: Colors.black,
                          //           fontWeight: FontWeight.w300,
                          //           height: 2.2,
                          //         ),
                          //         children: [
                          //           TextSpan(
                          //             text: 'Total issuance: ',
                          //             style: TextStyle(
                          //               fontWeight: FontWeight.w700,
                          //             ),
                          //           ),
                          //           TextSpan(text: '2,000,000,000 INC'),
                          //         ],
                          //       ),
                          //     ),
                          //     RichText(
                          //       text: const TextSpan(
                          //         style: TextStyle(
                          //           fontSize: 20.0,
                          //           color: Colors.black,
                          //           fontWeight: FontWeight.w300,
                          //           height: 2.2,
                          //         ),
                          //         children: [
                          //           TextSpan(
                          //             text: 'Minimum purchase: ',
                          //             style: TextStyle(
                          //               fontWeight: FontWeight.w700,
                          //             ),
                          //           ),
                          //           TextSpan(text: '0.1 ETH'),
                          //         ],
                          //       ),
                          //     ),
                          //     RichText(
                          //       text: const TextSpan(
                          //         style: TextStyle(
                          //           fontSize: 20.0,
                          //           color: Colors.black,
                          //           fontWeight: FontWeight.w300,
                          //           height: 2.2,
                          //         ),
                          //         children: [
                          //           TextSpan(
                          //             text: 'KYC required: ',
                          //             style: TextStyle(
                          //               fontWeight: FontWeight.w700,
                          //             ),
                          //           ),
                          //           TextSpan(
                          //               text: 'YES(Instapay App required)'),
                          //         ],
                          //       ),
                          //     ),
                          //     RichText(
                          //       text: const TextSpan(
                          //         style: TextStyle(
                          //           fontSize: 20.0,
                          //           color: Colors.black,
                          //           fontWeight: FontWeight.w300,
                          //           height: 2.2,
                          //         ),
                          //         children: [
                          //           TextSpan(
                          //             text: 'Accepted payment: ',
                          //             style: TextStyle(
                          //               fontWeight: FontWeight.w700,
                          //             ),
                          //           ),
                          //           TextSpan(
                          //               text: 'FIAT(KRW) and Ethereum ONLY'),
                          //         ],
                          //       ),
                          //     ),
                          //   ],
                          // ),
                        )
                      ],
                    ),
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }
}
