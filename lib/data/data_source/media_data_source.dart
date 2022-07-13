import 'package:insta_coin/domain/model/media/article_data.dart';
import 'package:insta_coin/domain/model/media/events_data.dart';

class MediaDataSource {
  List<ArticleData> getArticle() {
    return articleData;
  }

  List<ArticleData> getColumn() {
    return columnData;
  }

  List<EventsData> getEvents() {
    return eventsData;
  }
}

List<ArticleData> articleData = [
  ArticleData(
    title:
        'Binance CEO Zhang Pengchao participated in the demonstration of InstaPay, a Korean fintech blockchain company, and gave a keynote speech about his experience in Malta.',
    imageUrl: 'img/media/media01.jpg',
    articleUrl:
        'https://www.newsworks.co.kr/news/articleView.html?idxno=349686',
  ),
  ArticleData(
    title: '인스타코인, 여의도아카데미와 전략적 제휴-투자 유치',
    imageUrl: 'img/media/media02.jpg',
    articleUrl: 'https://www.4th.kr/news/articleView.html?idxno=2018981',
  ),
  ArticleData(
    title: '인스타코인, 메종쇼당으로부터 전략적 투자유치',
    imageUrl: 'img/media/media03.jpg',
    articleUrl: 'https://platum.kr/archives/186246',
  ),
  ArticleData(
    title: '“STO Manual and the Legal Nature of Crypto Currency” is Published',
    imageUrl: 'img/media/media04.jpg',
    articleUrl: 'http://gametoc.hankyung.com/news/articleView.html?idxno=50286',
  ),
  ArticleData(
    title: 'InstaPay CEO Jaekwang Bae holds the First Blockchain File Festival',
    imageUrl: 'img/media/media05.jpg',
    articleUrl:
        'https://www.edaily.co.kr/news/read?newsId=01462886619438192&mediaCodeNo=257&OutLnkChk=Y',
  ),
  ArticleData(
    title:
        'Attracting films from over 30 countries, Blockchain File Festival 2018 ends in great success',
    imageUrl: 'img/media/media06.jpg',
    articleUrl:
        'http://www.fintechpost.co.kr/news/articleView.html?idxno=10126#0AXD',
  ),
  ArticleData(
    title: 'Blockchain File Festival ‘BFF2018’ comes to a successful end',
    imageUrl: 'img/media/media07.jpg',
    articleUrl:
        'https://www.newsworks.co.kr/news/articleView.html?idxno=318803',
  ),
  ArticleData(
    title: '인스타코인, 르하임그룹으로부터 투자유치',
    imageUrl: 'img/media/media08.jpg',
    articleUrl: 'http://www.4th.kr/news/articleView.html?idxno=2017763',
  ),
  ArticleData(
    title: 'Film Invested with Cryptocurrency Goes Public',
    imageUrl: 'img/media/media09.jpg',
    articleUrl:
        'http://it.chosun.com/site/data/html_dir/2018/12/05/2018120501160.html',
  ),
  ArticleData(
    title:
        'Press Preview of the Cryptocurrency Investing Film “Link” is Organized',
    imageUrl: 'img/media/media10.jpg',
    articleUrl:
        'https://www.edaily.co.kr/news/read?newsId=03893366619435240&mediaCodeNo=257&OutLnkChk=Y',
  ),
  ArticleData(
    title:
        'Blockchain Film Festival Holds the Press Preview of “Link”, the First Film Invested with Cryptocurrency',
    imageUrl: 'img/media/media11.jpg',
    articleUrl: 'http://www.nspna.com/news/?mode=view&newsid=323134',
  ),
  ArticleData(
    title: '결제의 실질적 가능성을 모색하는 ‘인스타코인’',
    imageUrl: 'img/media/media01.jpg',
    articleUrl:
        'https://www.blockchaintoday.co.kr/news/articleView.html?idxno=22408',
  ),
  ArticleData(
    title: 'Civilian Organization is Composing the ICO•STO Checklist',
    imageUrl: 'img/media/media13.jpg',
    articleUrl:
        'https://www.edaily.co.kr/news/read?newsId=03440726619410640&mediaCodeNo=257&OutLnkChk=Y',
  ),
  ArticleData(
    title: 'STO Meetup• Conference is Held',
    imageUrl: 'img/media/media14.jpg',
    articleUrl: 'https://www.asiatoday.co.kr/view.php?key=20181123010013970',
  ),
  ArticleData(
    title: 'Blockchain Film Festival 2018 Holds on December 11th',
    imageUrl: 'img/media/media09.jpg',
    articleUrl:
        'https://www.edaily.co.kr/news/read?newsId=04296806619408344&mediaCodeNo=257&OutLnkChk=Y',
  ),
  ArticleData(
    title: 'InstaPay Participates in Seoul Pay',
    imageUrl: 'img/media/media17.jpg',
    articleUrl: 'https://www.asiatoday.co.kr/view.php?key=20181122010013249',
  ),
  ArticleData(
    title: 'BGCC publishes the ICO guideline',
    imageUrl: 'img/media/media18.jpg',
    articleUrl: 'https://www.hankyung.com/finance/article/201811085336g',
  ),
  ArticleData(
    title:
        'Jaegwang Bae, Chairman of BGCC “The problem of Crypto Currency regulation is the Unutilization of existing laws”',
    imageUrl: 'img/media/media19.jpg',
    articleUrl: 'https://www.ebn.co.kr/news/view/961213',
  ),
  ArticleData(
    title: 'BGCC releases the ICO self-regulating guideline',
    imageUrl: 'img/media/media20.jpg',
    articleUrl: 'https://www.mk.co.kr/news/economy/view/2018/11/703625/',
  ),
  ArticleData(
    title:
        'Due to the vacancy in government’s ICO policy, Civil organization presents the ICO guideline',
    imageUrl: 'img/media/media21.jpg',
    articleUrl: 'https://www.segye.com/newsView/20181108003292',
  ),
  ArticleData(
    title: '‘월드블록체인컨버전스 포럼 2022’ 5월17일 개최',
    imageUrl: 'img/media/media22.jpg',
    articleUrl: 'https://www.m-i.kr/news/articleView.html?idxno=914712',
  ),
  ArticleData(
    title: '대학생이 선택한 필수앱 TOP5 ‘인스타페이, 에브리타임, 줌, 배달의민족, 알바몬’',
    imageUrl: 'img/media/media23.jpg',
    articleUrl: 'https://platum.kr/archives/181262',
  ),
  ArticleData(
    title: '블록체인영화제, 인스타코인 ‘블록체인 영화제 3주년 기념 컨퍼런스’ 개최',
    imageUrl: 'img/media/media24.jpg',
    articleUrl: 'http://gamefocus.co.kr/detail.php?number=125667',
  ),
  ArticleData(
    title: '인스타페이, 블록체인 영화에 NFT를 구현한다',
    imageUrl: 'img/media/media09.jpg',
    articleUrl: 'https://www.blockmedia.co.kr/archives/205199',
  ),
  ArticleData(
    title:
        'InstaCoin, building a practical payment method, invites Malta to discuss Virtual Asset Act',
    imageUrl: 'img/media/media25.jpg',
    articleUrl: 'https://www.etnews.com/20180910000095',
  ),
  ArticleData(
    title:
        'Jaekwang Bae discusses ‘Virtual currency and ICO Manual’ from legal standpoint: “ICO’s held abroad may still be applied Korean Capital Market Act”',
    imageUrl: 'img/media/media26.jpg',
    articleUrl:
        'https://www.edaily.co.kr/news/read?newsId=01187366619338480&mediaCodeNo=257&OutLnkChk=Y',
  ),
  ArticleData(
    title: '[인터뷰] 윤송아 NFT ‘낙타와 달’ 1억 낙찰… “그림은 내 일부”',
    imageUrl: 'img/media/media27.jpg',
    articleUrl:
        'https://www.blockchaintoday.co.kr/news/articleView.html?idxno=20165',
  ),
  ArticleData(
    title: '[가상자산거래소와 입법과제]③ 가상자산거래소와 상장코인 사례 분석',
    imageUrl: 'img/media/media28.jpg',
    articleUrl: 'https://www.4th.kr/news/articleView.html?idxno=2005730',
  ),
  ArticleData(
    title: 'InstaPay joins ‘Seoul Pay’',
    imageUrl: 'img/media/media29.jpg',
    articleUrl: 'http://www.newsprime.co.kr/news/article/?no=426302',
  ),
  ArticleData(
    title:
        '‘Blockchain Regional Currency’ discussions that inundated local elections are still at the early stages',
    imageUrl: 'img/media/media30.jpg',
    articleUrl: 'http://www.paxetv.com/news/articleView.html?idxno=57380',
  ),
  ArticleData(
    title: '[가상자산 거래소와 입법과제]② 가상자산 입법쟁점- 가상자산 개념규정과 소비자보호',
    imageUrl: 'img/media/media28.jpg',
    articleUrl: 'https://www.4th.kr/news/articleView.html?idxno=2005235',
  ),
  ArticleData(
    title:
        'Jaekwang Bae discusses ‘Virtual currency and ICO Manual’ from legal standpoint: “ICO’s held abroad may still be applied Korean Capital Market Act”',
    imageUrl: 'img/media/media31.jpg',
    articleUrl: '',
  ),
  ArticleData(
    title:
        '‘InstaCoin, the payment platform that will replace credit card’: the early pioneer of IT industry(NCSoft, Naver, Gamevil), Jaekwang Bae showcases Reverse ICO',
    imageUrl: 'img/media/media32.jpg',
    articleUrl: 'http://gametoc.hankyung.com/news/articleView.html?idxno=48390',
  ),
  ArticleData(
    title: 'InstaPay builds the Instacoin Blockchain Platform',
    imageUrl: 'img/media/media33.jpg',
    articleUrl: 'https://www.inews24.com/view/1104252',
  ),
  ArticleData(
    title:
        'KoreaMobile Game ASsociation-InstaPay, the highest Blockchain synergy onboard',
    imageUrl: 'img/media/media34.jpg',
    articleUrl: 'http://gametoc.hankyung.com/news/articleView.html?idxno=48265',
  ),
  ArticleData(
    title:
        '[BizFocus] ‘Instacoin Blockchain Platform’ built, now aims at MasterCard and VISA',
    imageUrl: 'img/media/media35.jpg',
    articleUrl: 'http://gametoc.hankyung.com/news/articleView.html?idxno=48307',
  ),
  ArticleData(
    title: '[가상자산 거래소와 입법과제] ① 가상자산 거래소없는 생태계를 모색할 때다',
    imageUrl: 'img/media/media36.jpg',
    articleUrl: 'https://www.4th.kr/news/articleView.html?idxno=2004982',
  ),
  ArticleData(
    title: '인스타페이 ’10-10′ 이벤트…도서 20% 할인',
    imageUrl: 'img/media/media37.jpg',
    articleUrl: 'http://www.4th.kr/news/articleView.html?idxno=2001147',
  ),
  ArticleData(
    title: '2030세대, 비트코인 등 가상자산인가 아파트인가',
    imageUrl: 'img/media/media38.jpg',
    articleUrl: 'http://www.4th.kr/news/articleView.html?idxno=2000328',
  ),
  ArticleData(
    title: '국내 최초 ‘블록체인 영화제’ 개최한 배재광 인스타페이 대표',
    imageUrl: 'img/media/media39.jpg',
    articleUrl:
        'https://www.edaily.co.kr/news/read?newsId=01462886619438192&mediaCodeNo=257',
  ),
  ArticleData(
    title: 'BGCC, 국회도서관서 ‘ICO·상장가이드라인 포럼’ 개최한다',
    imageUrl: 'img/media/media40.jpg',
    articleUrl: 'https://www.etnews.com/20181107000399',
  ),
  ArticleData(
    title: '인스타코인, 사기거래 방지 첫 결제플랫폼 코인될것',
    imageUrl: 'img/media/media01.jpg',
    articleUrl: 'https://www.weeklytoday.com/news/articleView.html?idxno=66503',
  ),
  ArticleData(
    title: '인스타코인, 이더리움 4000개-23억원 규모 계약 체결',
    imageUrl: 'img/media/media41.jpg',
    articleUrl:
        'https://gametoc.hankyung.com/news/articleView.html?idxno=48190',
  ),
  ArticleData(
    title: '인스타코인, ‘판타스틱NFT로 영화제 기억하기’ 행사',
    imageUrl: 'img/media/media42.jpg',
    articleUrl: 'https://www.4th.kr/news/articleView.html?idxno=2020759',
  ),
  ArticleData(
    title: '인스타페이 “부천판타스틱국제영화제 후원”',
    imageUrl: 'img/media/media43.jpg',
    articleUrl: 'http://www.4th.kr/news/articleView.html?idxno=2020347',
  ),
  ArticleData(
    title: '“급등종목 알려줄게” 9년만에 유죄…美 ‘루나’ 수사 문건 단독 입수',
    imageUrl: 'img/media/media01.jpg',
    articleUrl: 'https://www.ytn.co.kr/_ln/0103_202206130841436556',
  ),
  ArticleData(
    title: '“블록체인 생태계 미성숙…규제 설계는 이후의 문제”',
    imageUrl: 'img/media/media44.jpg',
    articleUrl: 'http://www.m-i.kr/news/articleView.html?idxno=919639',
  ),
  ArticleData(
    title: '월드블록체인컨버전스 2022 포럼 성료… “생태계 변화 대응·기회 모색”',
    imageUrl: 'img/media/media45.jpg',
    articleUrl:
        'http://www.blockchaintoday.co.kr/news/articleView.html?idxno=22577',
  ),
  ArticleData(
    title: 'BGCC, 블록체인컨버전스 2022 포럼 앞두고 ‘워킹그룹’ 출범',
    imageUrl: 'img/media/media46.jpg',
    articleUrl:
        'http://www.blockchaintoday.co.kr/news/articleView.html?idxno=22478',
  ),
  ArticleData(
    title: '낙후된 출판물류 시스템 개선 가능한가? 인스타페이 물류시스템 개선 밝혀',
    imageUrl: 'img/media/media47.jpg',
    articleUrl: 'http://www.news-paper.co.kr/news/articleView.html?idxno=76815',
  ),
  ArticleData(
    title: '인스타페이, 전국 100여 대학에 온라인 구내서점 운영',
    imageUrl: 'img/media/media48.jpg',
    articleUrl: 'http://www.epnc.co.kr/news/articleView.html?idxno=213479',
  ),
  ArticleData(
    title: '<씨네21>·인스타페이, 콘텐츠 협력 제휴 체결',
    imageUrl: 'img/media/media49.jpg',
    articleUrl: 'http://m.cine21.com/news/view/?mag_id=97169',
  ),
  ArticleData(
    title: '“도서 기본 20% 할인” 신개념 책 플랫폼 인스타페이 신학기 맞아 공격적 마케팅',
    imageUrl: 'img/media/media50.jpg',
    articleUrl:
        'http://it.chosun.com/site/data/html_dir/2020/09/02/2020090201545.html',
  ),
  ArticleData(
    title: '[도서정가제기획] 왜 다시 도서정가제 폐지인가? -배재광(완반모)',
    imageUrl: 'img/media/media51.jpg',
    articleUrl: 'http://www.news-paper.co.kr/news/articleView.html?idxno=72899',
  ),
  ArticleData(
    title: '[배재광 칼럼] 도서정가제 16년, 소비자 선택권의 자유를 허하라',
    imageUrl: 'img/media/media52.jpg',
    articleUrl: 'http://www.news-paper.co.kr/news/articleView.html?idxno=59440',
  ),
];

List<ArticleData> columnData = [
  ArticleData(
    title: '[Jaekwang Bae Column] Application of Capital Market Act on ICO',
    imageUrl: 'img/media/col01.jpg',
    articleUrl: 'http://gametoc.hankyung.com/news/articleView.html?idxno=48324',
  ),
  ArticleData(
    title:
        '[Jaekwang Bae Column] ⑥ Cryptocurrency∙ICO Manual and Regulatory plan of Korean government',
    imageUrl: 'img/media/col02.jpg',
    articleUrl: 'http://www.weeklytoday.com/news/articleView.html?idxno=66531',
  ),
  ArticleData(
    title:
        '[Jaekwang Bae Column] ⑤  Cryptocurrency∙ICO Manual: Judgement criteria for Legal character of Ethereum',
    imageUrl: 'img/media/col03.jpg',
    articleUrl: 'http://www.weeklytoday.com/news/articleView.html?idxno=66480',
  ),
  ArticleData(
    title:
        '[Column]③  Checklist for discriminating Scan ICO and Recent ICO trends',
    imageUrl: 'img/media/col04.jpg',
    articleUrl: 'http://www.weeklytoday.com/news/articleView.html?idxno=65734',
  ),
];
List<EventsData> eventsData = [
  EventsData(
    title: 'Blockchain Film Festival 2018',
    date: 'December 11, 2018\nIntercontinental Parnas, Seoul, Korea',
    imageUrl: 'img/media/event01.jpg',
    logos: [
      'img/media/event_bgcc.jpg',
      'img/media/event_instapay.jpg',
      'img/media/event_instacoin.jpg',
    ],
    articleUrl:
        'https://docs.google.com/forms/d/e/1FAIpQLSe5tDmV9dJGxLECHRhdFfZUHzfUI4LYO5ivnu1-DR-qx6UXRw/viewform',
  ),
  EventsData(
    title: 'Meetup & Conference',
    date: 'November 29, 2018\nM Tower, Seoul, Korea',
    imageUrl: 'img/media/event02.jpg',
    logos: [
      'img/media/event_bgcc.jpg',
      'img/media/event_crypto-angels.jpg',
    ],
    articleUrl: 'https://onoffmix.com/event/159947',
  ),
  EventsData(
    title: 'ICO Guideline announcement at BGCC',
    date: 'November 8, 2018\nNational Assembly Library, Seoul, Korea',
    imageUrl: 'img/media/event03.jpg',
    logos: [
      'img/media/event_bgcc.jpg',
    ],
    articleUrl: 'https://delta-summit.com/delta-summit-2018/',
  ),
  EventsData(
    title: 'DELTA Summit, 2018',
    date:
        'October 3-5, 2018\nIACC Confernce Centre, Intercontinental Malta, St. Julians, Malta',
    imageUrl: 'img/media/event04.jpg',
    logos: [
      'img/media/event_delta.jpg',
    ],
    articleUrl: 'https://delta-summit.com/delta-summit-2018/',
  ),
  EventsData(
    title:
        'Blockchain Governance and Consensus Committee(BGCC) Launching Ceremony',
    date:
        'September 20,2018\nNational Assembly Member’s Office Bldg., Seoul, Korea',
    imageUrl: 'img/media/event05.jpg',
    logos: [
      'img/media/event_bgcc.jpg',
      'img/media/event_instapay.jpg',
      'img/media/event_instacoin.jpg',
    ],
    articleUrl: '',
  ),
  EventsData(
    title: 'InstaCoin Insight Meetup with Crypto -Island Malta',
    date: 'September  6, 2018\nIntercontinental Parnas, Seoul, Korea',
    imageUrl: 'img/media/event06.jpg',
    logos: [
      'img/media/event_instapay.jpg',
      'img/media/event_instacoin.jpg',
    ],
    articleUrl:
        'http://news.kmib.co.kr/article/view.asp?arcid=0012655717&code=61141311&cp=nv',
  ),
  EventsData(
    title: 'Openchain VC & Investors Day',
    date: 'July 30, 2018\nM Tower, Seoul, Korea',
    imageUrl: 'img/media/event07.jpg',
    logos: [
      'img/media/event_albaron.jpg',
      'img/media/event_openchaink.jpg',
    ],
    articleUrl: 'https://onoffmix.com/event/145925',
  ),
  EventsData(
    title: 'Blockchain Innovation Forum Korea',
    date:
        'July 19, 2018\nGrand Continental Hotel, Seoul, Korea\nSecond keynote speech in ‘Korean Government Official’s Keynote Speeches’',
    imageUrl: 'img/media/event08.jpg',
    logos: [
      'img/media/event_amble.jpg',
      'img/media/event_cypto.jpg',
    ],
    articleUrl: 'https://onoffmix.com/event/145925',
  ),
  EventsData(
    title: 'World Blockchain Forum',
    date:
        'July 17-18, 2018\nPan Pacific Hotel, Singapore, Singapore\nKeynote Speech ‘Regional Payment in Korea and Instacoin Strategy’',
    imageUrl: 'img/media/event09.jpg',
    logos: [
      'img/media/event_worldblockchain.jpg',
      'img/media/event_gmgc.jpg',
    ],
    articleUrl: '',
  ),
  EventsData(
    title: 'National Assembly ‘Regional Payment with Blockchain’ Meetup Forum',
    date: 'July 16, 2018\nNational Assembly, Seoul, Korea',
    imageUrl: 'img/media/event10.jpg',
    logos: [
      'img/media/event_instacoin.jpg',
    ],
    articleUrl: 'http://kin.kr/news/view.php?no=13184&venti51=thebchain',
  ),
  EventsData(
    title: 'Blockchain Seminar for Listed Companies and Investors',
    date:
        'July 12, 2018\nKorea Financial Investment Associatioin, Seoul, Korea',
    imageUrl: 'img/media/event11.jpg',
    logos: [
      'img/media/event_instacoin.jpg',
    ],
    articleUrl: 'http://gametoc.hankyung.com/news/articleView.html?idxno=48473',
  ),
  EventsData(
    title: '‘Cryptocurrency Ecosystem and ICO’ Media Meetup',
    date: 'July 18, 2018\nNH Investment & Securities, Seoul, Korea',
    imageUrl: 'img/media/event12.jpg',
    logos: [
      'img/media/event_instacoin.jpg',
    ],
    articleUrl: 'https://www.getnews.co.kr/news/articleView.html?idxno=77219',
  ),
  EventsData(
    title: 'Cryptocurrency and ICO Seminar',
    date: 'July 18, 2018\nSumyoo Center, Seoul, Korea',
    imageUrl: 'img/media/event13.jpg',
    logos: [
      'img/media/event_instacoin.jpg',
    ],
    articleUrl: 'http://gametoc.hankyung.com/news/articleView.html?idxno=48307',
  ),
];
