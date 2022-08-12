import 'package:insta_coin/domain/model/inc/inc_data.dart';
import 'package:insta_coin/domain/repository/inc_repository.dart';

class IncDataRepositoryImpl implements IncRepository {
  @override
  List<IncData> getIncData() {
    return incData;
  }
}

List<IncData> incData = [
  IncData(
    imageUrl: 'img/inc/0812_1.png',
    content:
        '인스타코인은 2014년부터 비자카드와 마스타카드를 대체할 결제수단으로 설계되었습니다. 인스타코인은 가장 비싼 결제수단인 신용카드보다 편리하고 현금(fiat)보다 싼 결제수단입니다. 2019년 비탈릭 부테린(이더리움 설계자)과 창펑자오(바이낸스 CEO)가 책을 사는 결제수단으로 사용하였습니다.',
    index: 0,
  ),
  IncData(
    imageUrl: 'img/inc/0812_2.png',
    content:
        '전공책 40%할인은 인스타코인을 결제수단으로 사용하기에 가능합니다. 인스타페이가 웹3.0 탈중앙화된 상거래와 실시간 물류, 결제수단으로 시작한 혁신이 우리학교 온라인 구내서점과 전공책 40%할인입니다. ',
    index: 1,
  ),
  IncData(
    imageUrl: 'img/inc/0812_3.png',
    content:
        '인스타페이가 2021년 온라인 구내서점을 론칭하여 탈중앙화된 커머스 사례를 만들고 이제 결제수단으로 인스타코인을 추가했습니다. 인스타코인은 블록체인기술로 설계된 암호화폐이며 MZ세대의 가치저장 수단으로 진화를 거듭할 것입니다.',
    index: 2,
  ),
  IncData(
    imageUrl: 'img/inc/0812_4.png',
    content:
        '인스타코인이 상장된 A거래소(프로비트), 상장될 B거래소의 거래 가치에 따라 40%이상의 할인 효과도 가능하지 않을까 조심스레 추정해 봅니다.',
    index: 3,
  ),
];
