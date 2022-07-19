import 'package:insta_coin/domain/model/home/papps_data.dart';

class PappsDataSource {
  List<PappsData> getPappsData() {
    return pappsData;
  }
}

List<PappsData> pappsData = [
  PappsData(
    imageUrl: 'img/papps/O2OCommerce.png',
    logoUrl: 'img/main/o2o.png',
    title: 'O2O Commerce',
    subTitle:
        'A decentralized, convenient, and transparent commerce without high-cost intermediaries',
    content:
        'InstaPay removes the barriers of time and space in shopping, paying, and delivery. By using blockchain, it prevents fraudulent transactions and protects personal information in O2O Commerce.',
    index: 0,
  ),
  PappsData(
    imageUrl: 'img/papps/MBPP_desc.png',
    logoUrl: 'img/main/mbpp.png',
    title: 'MBPP',
    subTitle: 'A convenient, direct MBPP that eliminates intermediaries',
    content:
        'You can pay and charge InstaCoin via mobile without intermediaries . It spans over payment between individuals, as well as recurring bills for O2O Commerce, memberships, subscriptions, and more.',
    index: 1,
  ),
  PappsData(
    imageUrl: 'img/papps/game_desc.png',
    logoUrl: 'img/main/game.png',
    title: 'Game',
    subTitle:
        'A decentralized platform for funding game development and game item trading',
    content:
        'You can own game items as InstaCoin’s Digital Asset. InstaCoin will provide convenient and secure experience in purchasing at a virtual store within game and trading game items between users.',
    index: 2,
  ),
  PappsData(
    imageUrl: 'img/papps/ip_desc.png',
    logoUrl: 'img/main/ip.png',
    title: 'IP',
    subTitle:
        'A decentralized platform to foster growth and success of creative works',
    content:
        'Creator can raise funds needed for successful production, advertisement, etc., as coin investor, IP purchaser, and IP incubator buy coins they find promising.\nThe use of InstaCoin in IP will also prevent illegal reproduction and distribution.',
    index: 3,
  ),
  PappsData(
    imageUrl: 'img/papps/rewarddonation.png',
    logoUrl: 'img/main/reward.png',
    title: 'Reward & Donation',
    subTitle:
        'Transparent and effective reward system for socially beneficial acts',
    content:
        'InstaCoin will foster a decentralized donation platform that enhances transparency of the exact usage of the donation. Beneficial behaviors to the public can be rewarded with InstaCoin in the same way.',
    index: 4,
  ),
  PappsData(
    imageUrl: 'img/papps/etrade_desc.png',
    logoUrl: 'img/main/etrade.png',
    title: 'Worldwide e-Trade',
    subTitle:
        'A global multi-national trading platform with boarder-less currency',
    content:
        'In long term, Instacoin envisions to build decentralized multilateral payment system and crypto-economy ecosystem, which will reduce intermediaries fees, prevent fraud, and enable transparent delivery.',
    index: 5,
  ),
];
