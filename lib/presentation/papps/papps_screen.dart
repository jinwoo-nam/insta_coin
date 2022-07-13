import 'package:flutter/material.dart';
import 'package:insta_coin/responsive/responsive.dart';

class PappsScreen extends StatelessWidget {
  const PappsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: SizedBox(
          width: 1200,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 80.0,
              horizontal: 60,
            ),
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    'Platform Applications',
                    style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const Text(
                    '(PApps)',
                    style: TextStyle(
                      color: Color(0xff999999),
                      fontSize: 45,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 50.0),
                    child: Text(
                      'As payment coin, InstaCoin can be applied beyond its existing ecosystem with our liquidity provider system. InstaCoin’s PApps can be distinguished into two categories: 1) InstaPay’s payment partners and 2) projects that will issue tokens through InstaCoin’s Blockchain main net.',
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w300,
                          height: 1.6),
                    ),
                  ),
                  if (!Responsive.isMobile(context))
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Image.asset('img/main/o2o.png'),
                              const Text(
                                'O2O Commerce',
                                style: TextStyle(
                                  fontSize: 40,
                                  color: Color(0xff4AC1C2),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(
                                  top: 25.0,
                                  bottom: 55,
                                ),
                                child: Text(
                                  'A decentralized, convenient, and transparent commerce without high-cost intermediaries',
                                  textAlign: TextAlign.end,
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Color.fromRGBO(0, 39, 91, 0.89)),
                                ),
                              ),
                              const Text(
                                'Traditional payment has been used in limited forms of commerce transactions, where the various processes of shopping operate under a centralized system. Blockchain and cryptocurrency, and InstaCoin’s QR code payment will enable fast and transparent direct payments between consumers and vendors, as well as C2C transactions without intermediaries. Each process of shopping, payment, and delivery can be decentralized and separated with low-cost(at both ends) transactions at each step. With blockchain technology in O2O Commerce, M2M Communication keeps complete records of delivery information in ledger to prevent fraud and protect personal information. Secure, easy, and transparent payment system at low costs provides competitive solution to the existing O2O commerce with intermediaries. By offering cash payment(also without intermediaries) alongside, we will continue to expand the applicable markets and expose the real crypto-payment to our users, and beyond.',
                                textAlign: TextAlign.end,
                                style: TextStyle(
                                  fontSize: 17,
                                  height: 1.5,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(40.0),
                            child: Container(
                              decoration: BoxDecoration(
                                color: const Color.fromRGBO(74, 133, 178, 0.07),
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: const [
                                  BoxShadow(
                                    color: Color.fromRGBO(71, 74, 181, 0.12),
                                    spreadRadius: 8,
                                    blurRadius: 7,
                                    offset: Offset(0, 3),
                                  )
                                ],
                              ),
                              child: Image.asset('img/papps/O2OCommerce.png'),
                            ),
                          ),
                        ),
                      ],
                    ),
                  if (Responsive.isMobile(context))
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset('img/main/o2o.png'),
                        const Text(
                          'O2O Commerce',
                          style: TextStyle(
                            fontSize: 40,
                            color: Color(0xff4AC1C2),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(
                            top: 25.0,
                            bottom: 55,
                          ),
                          child: Text(
                            'A decentralized, convenient, and transparent commerce without high-cost intermediaries',
                            style: TextStyle(
                                fontSize: 20,
                                color: Color.fromRGBO(0, 39, 91, 0.89)),
                          ),
                        ),
                        const Text(
                          'Traditional payment has been used in limited forms of commerce transactions, where the various processes of shopping operate under a centralized system. Blockchain and cryptocurrency, and InstaCoin’s QR code payment will enable fast and transparent direct payments between consumers and vendors, as well as C2C transactions without intermediaries. Each process of shopping, payment, and delivery can be decentralized and separated with low-cost(at both ends) transactions at each step. With blockchain technology in O2O Commerce, M2M Communication keeps complete records of delivery information in ledger to prevent fraud and protect personal information. Secure, easy, and transparent payment system at low costs provides competitive solution to the existing O2O commerce with intermediaries. By offering cash payment(also without intermediaries) alongside, we will continue to expand the applicable markets and expose the real crypto-payment to our users, and beyond.',
                          style: TextStyle(
                            fontSize: 17,
                            height: 1.5,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(40.0),
                          child: Container(
                              decoration: BoxDecoration(
                                color: const Color.fromRGBO(74, 133, 178, 0.07),
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: const [
                                  BoxShadow(
                                    color: Color.fromRGBO(71, 74, 181, 0.12),
                                    spreadRadius: 8,
                                    blurRadius: 7,
                                    offset: Offset(0, 3),
                                  )
                                ],
                              ),
                              child: Image.asset('img/papps/O2OCommerce.png')),
                        ),
                      ],
                    ),
                  const SizedBox(
                    height: 60,
                  ),
                  if (!Responsive.isMobile(context))
                    Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(40.0),
                            child: Container(
                                decoration: BoxDecoration(
                                  color:
                                      const Color.fromRGBO(74, 133, 178, 0.07),
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Color.fromRGBO(71, 74, 181, 0.12),
                                      spreadRadius: 8,
                                      blurRadius: 7,
                                      offset: Offset(0, 3),
                                    )
                                  ],
                                ),
                                child: Image.asset('img/papps/MBPP_desc.png')),
                          ),
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset('img/main/mbpp.png'),
                              const Text(
                                'MBPP',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  fontSize: 40,
                                  color: Color(0xff4AC1C2),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(
                                  top: 25.0,
                                  bottom: 55,
                                ),
                                child: Text(
                                  'A convenient, direct MBPP that eliminates intermediaries',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Color.fromRGBO(0, 39, 91, 0.89)),
                                ),
                              ),
                              const Text(
                                'Using Blockchain technology, payer and payee can proceed direct bill transaction without current intermediary, which is Korea Financial Telecommunications and Clearings Institute(KFTC) in Korea, by directly connecting through API provided by InstaPay. In Korea, QR code payment has recently surged in its popularity and number of users, with many MBPP, including giro bills, using QR code. Our patented QR code payment system provides a very competitive payment solution to the traditional MBPP that is inconvenient. INC can be traded in direct payments between individuals in various types of MBPP. For giro payment to public entities, Instacoin’s liquidity system will provide a solution as the Instacoin ecosystem expands, eventually allowing MBPP payments even to the entities outside the Instacoin ecosystem.\n\n* The specific details and design of liquidity system cannot be revealed for confidentiality reasons.',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  fontSize: 17,
                                  height: 1.5,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  if (Responsive.isMobile(context))
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset('img/main/mbpp.png'),
                        const Text(
                          'MBPP',
                          style: TextStyle(
                            fontSize: 40,
                            color: Color(0xff4AC1C2),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(
                            top: 25.0,
                            bottom: 55,
                          ),
                          child: Text(
                            'A convenient, direct MBPP that eliminates intermediaries',
                            style: TextStyle(
                                fontSize: 20,
                                color: Color.fromRGBO(0, 39, 91, 0.89)),
                          ),
                        ),
                        const Text(
                          'Using Blockchain technology, payer and payee can proceed direct bill transaction without current intermediary, which is Korea Financial Telecommunications and Clearings Institute(KFTC) in Korea, by directly connecting through API provided by InstaPay. In Korea, QR code payment has recently surged in its popularity and number of users, with many MBPP, including giro bills, using QR code. Our patented QR code payment system provides a very competitive payment solution to the traditional MBPP that is inconvenient. INC can be traded in direct payments between individuals in various types of MBPP. For giro payment to public entities, Instacoin’s liquidity system will provide a solution as the Instacoin ecosystem expands, eventually allowing MBPP payments even to the entities outside the Instacoin ecosystem.\n\n* The specific details and design of liquidity system cannot be revealed for confidentiality reasons.',
                          style: TextStyle(
                            fontSize: 17,
                            height: 1.5,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(40.0),
                          child: Container(
                              decoration: BoxDecoration(
                                color: const Color.fromRGBO(74, 133, 178, 0.07),
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: const [
                                  BoxShadow(
                                    color: Color.fromRGBO(71, 74, 181, 0.12),
                                    spreadRadius: 8,
                                    blurRadius: 7,
                                    offset: Offset(0, 3),
                                  )
                                ],
                              ),
                              child: Image.asset('img/papps/MBPP_desc.png')),
                        ),
                      ],
                    ),
                  const SizedBox(
                    height: 60,
                  ),
                  if (!Responsive.isMobile(context))
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Image.asset('img/main/game.png'),
                              const Text(
                                'Game',
                                style: TextStyle(
                                  fontSize: 40,
                                  color: Color(0xff4AC1C2),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(
                                  top: 25.0,
                                  bottom: 55,
                                ),
                                child: Text(
                                  'A decentralized platform for funding game development and game item trading',
                                  textAlign: TextAlign.end,
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Color.fromRGBO(0, 39, 91, 0.89)),
                                ),
                              ),
                              const Text(
                                'The current game industry has been largely formed and led by VC investments and large publishers’ investments. Works by developers and creators in smaller studios were more likely to go unnoticed. Blockchain and Cryptocurrency brought new possibilities of supporting the experimental creativity that developers around the world have once wished for. By designing Instacoin-based games, game creators can more easily raise funds for game development as a wide range of users, game investors, and crypto-investors purchase Instacoin. The coin buyers can also benefit mainly in two ways: they can resell the coins through trading for earning basic profits, or more importantly, as a game user, contribute to expanding the game and creating an active ecosystem within it to increase the game coin value, at which point they can resell them at profits.\n\nWith Instacoin ecosystem, game users can also trade and share items in game through transparent transaction enabled by Blockchain. They can now own and keep the virtual game items as active, rather than passive, participants. The future of Blockchain-based MMORPG evolving into a new platform is nearing.',
                                textAlign: TextAlign.end,
                                style: TextStyle(
                                  fontSize: 17,
                                  height: 1.5,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(40.0),
                            child: Container(
                                decoration: BoxDecoration(
                                  color:
                                      const Color.fromRGBO(74, 133, 178, 0.07),
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Color.fromRGBO(71, 74, 181, 0.12),
                                      spreadRadius: 8,
                                      blurRadius: 7,
                                      offset: Offset(0, 3),
                                    )
                                  ],
                                ),
                                child: Image.asset('img/papps/game_desc.png')),
                          ),
                        ),
                      ],
                    ),
                  if (Responsive.isMobile(context))
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset('img/main/game.png'),
                        const Text(
                          'Game',
                          style: TextStyle(
                            fontSize: 40,
                            color: Color(0xff4AC1C2),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(
                            top: 25.0,
                            bottom: 55,
                          ),
                          child: Text(
                            'A decentralized platform for funding game development and game item trading',
                            style: TextStyle(
                                fontSize: 20,
                                color: Color.fromRGBO(0, 39, 91, 0.89)),
                          ),
                        ),
                        const Text(
                          'The current game industry has been largely formed and led by VC investments and large publishers’ investments. Works by developers and creators in smaller studios were more likely to go unnoticed. Blockchain and Cryptocurrency brought new possibilities of supporting the experimental creativity that developers around the world have once wished for. By designing Instacoin-based games, game creators can more easily raise funds for game development as a wide range of users, game investors, and crypto-investors purchase Instacoin. The coin buyers can also benefit mainly in two ways: they can resell the coins through trading for earning basic profits, or more importantly, as a game user, contribute to expanding the game and creating an active ecosystem within it to increase the game coin value, at which point they can resell them at profits.\n\nWith Instacoin ecosystem, game users can also trade and share items in game through transparent transaction enabled by Blockchain. They can now own and keep the virtual game items as active, rather than passive, participants. The future of Blockchain-based MMORPG evolving into a new platform is nearing.',
                          style: TextStyle(
                            fontSize: 17,
                            height: 1.5,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(40.0),
                          child: Container(
                              decoration: BoxDecoration(
                                color: const Color.fromRGBO(74, 133, 178, 0.07),
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: const [
                                  BoxShadow(
                                    color: Color.fromRGBO(71, 74, 181, 0.12),
                                    spreadRadius: 8,
                                    blurRadius: 7,
                                    offset: Offset(0, 3),
                                  )
                                ],
                              ),
                              child: Image.asset('img/papps/game_desc.png')),
                        ),
                      ],
                    ),
                  const SizedBox(
                    height: 60,
                  ),
                  if (!Responsive.isMobile(context))
                    Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(40.0),
                            child: Container(
                                decoration: BoxDecoration(
                                  color:
                                      const Color.fromRGBO(74, 133, 178, 0.07),
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Color.fromRGBO(71, 74, 181, 0.12),
                                      spreadRadius: 8,
                                      blurRadius: 7,
                                      offset: Offset(0, 3),
                                    )
                                  ],
                                ),
                                child: Image.asset('img/papps/ip_desc.png')),
                          ),
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset('img/main/ip.png'),
                              const Text(
                                'IP',
                                style: TextStyle(
                                  fontSize: 40,
                                  color: Color(0xff4AC1C2),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(
                                  top: 25.0,
                                  bottom: 55,
                                ),
                                child: Text(
                                  'A decentralized platform to foster growth and success of creative works',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Color.fromRGBO(0, 39, 91, 0.89)),
                                ),
                              ),
                              const Text(
                                'Majority of creative industries, such as music and media, are largely centralized, dominated by big publishers or agencies in their production and distribution while individual creators were often limited by the scale of their projects. By issuing InstaCoin, however, any creator can raise funds needed for successful production, advertisement, etc., as coin investor, IP purchaser, and IP incubator buy coins they find promising. They can resell their coins in coin market or await the commercialization of the project.\n\nThe use of InstaCoin in IP will also prevent illegal reproduction and distribution of works, which have inundated the current internet since its beginning, as Blockchain tracks and records all distribution channels. By preventing the infringement of intellectual property rights, InstaCoin will benefit creators, any related businesses, and coin purchasers.',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  fontSize: 17,
                                  height: 1.5,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  if (Responsive.isMobile(context))
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset('img/main/ip.png'),
                        const Text(
                          'IP',
                          style: TextStyle(
                            fontSize: 40,
                            color: Color(0xff4AC1C2),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(
                            top: 25.0,
                            bottom: 55,
                          ),
                          child: Text(
                            'A decentralized platform to foster growth and success of creative works',
                            style: TextStyle(
                                fontSize: 20,
                                color: Color.fromRGBO(0, 39, 91, 0.89)),
                          ),
                        ),
                        const Text(
                          'Majority of creative industries, such as music and media, are largely centralized, dominated by big publishers or agencies in their production and distribution while individual creators were often limited by the scale of their projects. By issuing InstaCoin, however, any creator can raise funds needed for successful production, advertisement, etc., as coin investor, IP purchaser, and IP incubator buy coins they find promising. They can resell their coins in coin market or await the commercialization of the project.\n\nThe use of InstaCoin in IP will also prevent illegal reproduction and distribution of works, which have inundated the current internet since its beginning, as Blockchain tracks and records all distribution channels. By preventing the infringement of intellectual property rights, InstaCoin will benefit creators, any related businesses, and coin purchasers.',
                          style: TextStyle(
                            fontSize: 17,
                            height: 1.5,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(40.0),
                          child: Container(
                              decoration: BoxDecoration(
                                color: const Color.fromRGBO(74, 133, 178, 0.07),
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: const [
                                  BoxShadow(
                                    color: Color.fromRGBO(71, 74, 181, 0.12),
                                    spreadRadius: 8,
                                    blurRadius: 7,
                                    offset: Offset(0, 3),
                                  )
                                ],
                              ),
                              child: Image.asset('img/papps/ip_desc.png')),
                        ),
                      ],
                    ),
                  const SizedBox(
                    height: 60,
                  ),
                  if (!Responsive.isMobile(context))
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Image.asset('img/main/reward.png'),
                              const Text(
                                'Reward & Donation',
                                style: TextStyle(
                                  fontSize: 40,
                                  color: Color(0xff4AC1C2),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(
                                  top: 25.0,
                                  bottom: 55,
                                ),
                                child: Text(
                                  'Transparent and effective reward system for socially beneficial acts',
                                  textAlign: TextAlign.end,
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Color.fromRGBO(0, 39, 91, 0.89)),
                                ),
                              ),
                              Text(
                                style: TextStyle(
                                  fontSize: 17,
                                  height: 1.5,
                                  fontWeight: FontWeight.w300,
                                ),
                                textAlign: TextAlign.end,
                                'Despite their societal benefits, rewards and donations are often under-produced. The problem with the existing system of donation is the lack of transparency of the exact usage of the donation, which demotivates people from acting on the basis of the sense of fulfillment. By clearly reporting the track of their donations through Blockchain technology, InstaCoin will foster a decentralized donation platform that no longer completely rely on entities in all the processes. Beneficial behaviors to the public, such as writing helpful customer reviews or recycling computers, can be also rewarded with InstaCoin in the same way, encouraging acts that are in the interest of the general public and society.',
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(40.0),
                            child: Container(
                                decoration: BoxDecoration(
                                  color:
                                      const Color.fromRGBO(74, 133, 178, 0.07),
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Color.fromRGBO(71, 74, 181, 0.12),
                                      spreadRadius: 8,
                                      blurRadius: 7,
                                      offset: Offset(0, 3),
                                    )
                                  ],
                                ),
                                child: Image.asset(
                                    'img/papps/rewarddonation.png')),
                          ),
                        ),
                      ],
                    ),
                  if (Responsive.isMobile(context))
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset('img/main/reward.png'),
                        const Text(
                          'Reward & Donation',
                          style: TextStyle(
                            fontSize: 40,
                            color: Color(0xff4AC1C2),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(
                            top: 25.0,
                            bottom: 55,
                          ),
                          child: Text(
                            'Transparent and effective reward system for socially beneficial acts',
                            style: TextStyle(
                                fontSize: 20,
                                color: Color.fromRGBO(0, 39, 91, 0.89)),
                          ),
                        ),
                        Text(
                          style: TextStyle(
                            fontSize: 17,
                            height: 1.5,
                            fontWeight: FontWeight.w300,
                          ),
                          'Despite their societal benefits, rewards and donations are often under-produced. The problem with the existing system of donation is the lack of transparency of the exact usage of the donation, which demotivates people from acting on the basis of the sense of fulfillment. By clearly reporting the track of their donations through Blockchain technology, InstaCoin will foster a decentralized donation platform that no longer completely rely on entities in all the processes. Beneficial behaviors to the public, such as writing helpful customer reviews or recycling computers, can be also rewarded with InstaCoin in the same way, encouraging acts that are in the interest of the general public and society.',
                        ),
                        Padding(
                          padding: const EdgeInsets.all(40.0),
                          child: Container(
                              decoration: BoxDecoration(
                                color: const Color.fromRGBO(74, 133, 178, 0.07),
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: const [
                                  BoxShadow(
                                    color: Color.fromRGBO(71, 74, 181, 0.12),
                                    spreadRadius: 8,
                                    blurRadius: 7,
                                    offset: Offset(0, 3),
                                  )
                                ],
                              ),
                              child:
                                  Image.asset('img/papps/rewarddonation.png')),
                        ),
                      ],
                    ),
                  const SizedBox(
                    height: 60,
                  ),
                  if (!Responsive.isMobile(context))
                    Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(40.0),
                            child: Container(
                                decoration: BoxDecoration(
                                  color:
                                      const Color.fromRGBO(74, 133, 178, 0.07),
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Color.fromRGBO(71, 74, 181, 0.12),
                                      spreadRadius: 8,
                                      blurRadius: 7,
                                      offset: Offset(0, 3),
                                    )
                                  ],
                                ),
                                child:
                                    Image.asset('img/papps/etrade_desc.png')),
                          ),
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset('img/main/etrade.png'),
                              const Text(
                                'Worldwide e-Trade Marketplace',
                                style: TextStyle(
                                  fontSize: 40,
                                  color: Color(0xff4AC1C2),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(
                                  top: 25.0,
                                  bottom: 55,
                                ),
                                child: Text(
                                  'A global multi-national trading platform with boarder-less currency',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Color.fromRGBO(0, 39, 91, 0.89)),
                                ),
                              ),
                              Text(
                                style: TextStyle(
                                  fontSize: 17,
                                  height: 1.5,
                                  fontWeight: FontWeight.w300,
                                ),
                                textAlign: TextAlign.start,
                                'This is our long-term vision of multi-party commerce platform application, where B2C(business to consumer) and B2B(business to business) trades are integrated. As multi-party trading presents the problem of using a unified currency for the transactions, Cryptocurrency that is mutually applicable to multinational currencies provides a solution to clearance issues of B2B trading platform, eventually evolving into a global trade platform application.',
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  if (Responsive.isMobile(context))
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset('img/main/etrade.png'),
                        const Text(
                          'Worldwide e-Trade Marketplace',
                          style: TextStyle(
                            fontSize: 40,
                            color: Color(0xff4AC1C2),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(
                            top: 25.0,
                            bottom: 55,
                          ),
                          child: Text(
                            'A global multi-national trading platform with boarder-less currency',
                            style: TextStyle(
                                fontSize: 20,
                                color: Color.fromRGBO(0, 39, 91, 0.89)),
                          ),
                        ),
                        Text(
                          style: TextStyle(
                            fontSize: 17,
                            height: 1.5,
                            fontWeight: FontWeight.w300,
                          ),
                          'This is our long-term vision of multi-party commerce platform application, where B2C(business to consumer) and B2B(business to business) trades are integrated. As multi-party trading presents the problem of using a unified currency for the transactions, Cryptocurrency that is mutually applicable to multinational currencies provides a solution to clearance issues of B2B trading platform, eventually evolving into a global trade platform application.',
                        ),
                        Padding(
                          padding: const EdgeInsets.all(40.0),
                          child: Container(
                              decoration: BoxDecoration(
                                color: const Color.fromRGBO(74, 133, 178, 0.07),
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: const [
                                  BoxShadow(
                                    color: Color.fromRGBO(71, 74, 181, 0.12),
                                    spreadRadius: 8,
                                    blurRadius: 7,
                                    offset: Offset(0, 3),
                                  )
                                ],
                              ),
                              child: Image.asset('img/papps/etrade_desc.png')),
                        ),
                      ],
                    ),
                  const SizedBox(
                    height: 60,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
