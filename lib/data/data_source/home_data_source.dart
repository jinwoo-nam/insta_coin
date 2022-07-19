import 'package:insta_coin/domain/model/home/papps_data.dart';
import 'package:insta_coin/domain/model/home/why_insta_data.dart';

class HomeDataSource {
  List<WhyInstaData> getWhyInstaData() {
    return whyInstaData;
  }
  List<PappsData> getPappsData() {
    return pappsData;
  }
}

List<WhyInstaData> whyInstaData = [
  WhyInstaData(
    imageUrl: 'img/main/why1-1.png',
    title: 'Cash and Coin Payment in One Place',
    content:
        'We have the world’s first patented QR Code-based mobile payment platform(2008), with which we will provide both cash payment and INC payment options. As the only mobile payment company to have integrated all Korean banks, we have ultimate advantage to expanding user base for InstaCoin as both cash and coin provide alternative payment methods to costly and complicated credit card system by lowering expenses for merchants and providing convenience for users.',
  ),
  WhyInstaData(
    imageUrl: 'img/main/why1-2.png',
    title: 'Grand Consortium',
    content:
        'As payment coin, InstaCoin is virtually applicable to any BM. InstaCoin has been continuously expanding, currently having several projects to merge with InstaCoin and its platform applications. As InstaCoin is joined by more projects and coins, its user base and PApps will both grow, rendering the payment ecosystem more widely available. We currently have several projects planning to join InstaCoin.',
  ),
  WhyInstaData(
    imageUrl: 'img/main/why1-3.png',
    title: 'Practical Application',
    content:
        'InstaPay is joining Seoul Pay, a regional payment of QR payment-based platform for 10 million Seoul citizens. With original patents in various types of QR payment, InstaPay will provide the most competitive service with InstaCoin. Seoul Pay will be InstaCoin’s first practical application, success of which will accelerate more practical uses of InstaCoin in various types of payment transactions.',
  ),
];


List<PappsData> pappsData = [
  PappsData(
    imageUrl: 'img/main/o2o.png',
    title: 'O2O Commerce',
    content: 'InstaPay removes the barriers of time and space in shopping, paying, and delivery. By using blockchain, it prevents fraudulent transactions and protects personal information in O2O Commerce.',
    index: 0,
  ),
  PappsData(
    imageUrl: 'img/main/mbpp.png',
    title: 'MBPP',
    content: 'You can pay and charge InstaCoin via mobile without intermediaries . It spans over payment between individuals, as well as recurring bills for O2O Commerce, memberships, subscriptions, and more.',
    index: 1,
  ),
  PappsData(
    imageUrl: 'img/main/game.png',
    title: 'Game',
    content: 'You can own game items as InstaCoin’s Digital Asset. InstaCoin will provide convenient and secure experience in purchasing at a virtual store within game and trading game items between users.',
    index: 2,
  ),
  PappsData(
    imageUrl: 'img/main/etrade.png',
    title: 'Worldwide e-Trade',
    content: 'In long term, Instacoin envisions to build decentralized multilateral payment system and crypto-economy ecosystem, which will reduce intermediaries fees, prevent fraud, and enable transparent delivery.',
    index: 3,
  ),
  PappsData(
    imageUrl: 'img/main/ip.png',
    title: 'IP',
    content: 'Creator can raise funds needed for successful production, advertisement, etc., as coin investor, IP purchaser, and IP incubator buy coins they find promising.\nThe use of InstaCoin in IP will also prevent illegal reproduction and distribution.',
    index: 4,
  ),
  PappsData(
    imageUrl: 'img/main/reward.png',
    title: 'Reward & Donation',
    content: 'InstaCoin will foster a decentralized donation platform that enhances transparency of the exact usage of the donation. Beneficial behaviors to the public can be rewarded with InstaCoin in the same way.',
    index: 5,
  ),
];