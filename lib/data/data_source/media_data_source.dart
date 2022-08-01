import 'package:insta_coin/domain/model/media/article_data.dart';
import 'package:insta_coin/domain/model/media/column_data.dart';
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

  List<ColumnData> getCoinColumns() {
    return instaCoinColumn;
  }

  List<ColumnData> getCoinArticles() {
    return instaCoinArticles;
  }
}

List<ArticleData> articleData = [
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
    title: '인스타코인, 르하임그룹으로부터 투자유치',
    imageUrl: 'img/media/media08.jpg',
    articleUrl: 'http://www.4th.kr/news/articleView.html?idxno=2017763',
  ),
  ArticleData(
    title: '결제의 실질적 가능성을 모색하는 ‘인스타코인’',
    imageUrl: 'img/media/media01.jpg',
    articleUrl:
        'https://www.blockchaintoday.co.kr/news/articleView.html?idxno=22408',
  ),
  ArticleData(
    title: '‘월드블록체인컨버전스 포럼 2022’ 5월17일 개최',
    imageUrl: 'img/media/media22.jpg',
    articleUrl: 'https://www.m-i.kr/news/articleView.html?idxno=914712',
  ),
  ArticleData(
    title: '낙후된 출판물류 시스템 개선 가능한가? 인스타페이 물류시스템 개선 밝혀',
    imageUrl: 'img/media/media47.jpg',
    articleUrl: 'http://www.news-paper.co.kr/news/articleView.html?idxno=76815',
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
    title: '[가상자산거래소와 입법과제]③ 가상자산거래소와 상장코인 사례 분석',
    imageUrl: 'img/media/media28.jpg',
    articleUrl: 'https://www.4th.kr/news/articleView.html?idxno=2005730',
  ),
  ArticleData(
    title: '[가상자산 거래소와 입법과제]② 가상자산 입법쟁점- 가상자산 개념규정과 소비자보호',
    imageUrl: 'img/media/media28.jpg',
    articleUrl: 'https://www.4th.kr/news/articleView.html?idxno=2005235',
  ),
  ArticleData(
    title: '[가상자산 거래소와 입법과제] ① 가상자산 거래소없는 생태계를 모색할 때다',
    imageUrl: 'img/media/media36.jpg',
    articleUrl: 'https://www.4th.kr/news/articleView.html?idxno=2004982',
  ),
  ArticleData(
    title: '인스타페이, 전국 100여 대학에 온라인 구내서점 운영',
    imageUrl: 'img/media/media48.jpg',
    articleUrl: 'http://www.epnc.co.kr/news/articleView.html?idxno=213479',
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
  ArticleData(
    title:
        'Binance CEO Zhang Pengchao participated in the demonstration of InstaPay, a Korean fintech blockchain company, and gave a keynote speech about his experience in Malta.',
    imageUrl: 'img/media/media01.jpg',
    articleUrl:
        'https://www.newsworks.co.kr/news/articleView.html?idxno=349686',
  ),
  ArticleData(
    title: '[인터뷰] 윤송아 NFT ‘낙타와 달’ 1억 낙찰… “그림은 내 일부”',
    imageUrl: 'img/media/media27.jpg',
    articleUrl:
        'https://www.blockchaintoday.co.kr/news/articleView.html?idxno=20165',
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
    sponsor: 'Sponsored by Innovation Support Team, Democratic Party of Korea',
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

List<ColumnData> instaCoinArticles = [
  ColumnData(
    title: '부천국제영화제 ‘화려한 귀환’…”NFT로 특별한 기억 남겨요”',
    date: '07/08/2022',
    articleUrl: 'http://vip.mk.co.kr/news/view/21/31/188915.html',
  ),
  ColumnData(
    title: '인스타코인, ‘판타스틱NFT로 영화제 기억하기’ 행사',
    date: '07/05/2022',
    articleUrl: 'https://www.4th.kr/news/articleView.html?idxno=2020759',
  ),
  ColumnData(
    title: '인스타페이 “부천판타스틱국제영화제 후원”',
    date: '06/28/2022',
    articleUrl: 'http://www.4th.kr/news/articleView.html?idxno=2020347',
  ),
  ColumnData(
    title: '“급등종목 알려줄게” 9년만에 유죄…美 ‘루나’ 수사 문건 단독 입수',
    date: '06/13/2022',
    articleUrl: 'https://www.ytn.co.kr/_ln/0103_202206130841436556',
  ),
  ColumnData(
    title: '인스타코인, 여의도아카데미와 전략적 제휴-투자 유치',
    date: '05/31/2022',
    articleUrl: 'https://www.4th.kr/news/articleView.html?idxno=2018981',
  ),
  ColumnData(
    title: '[전문가 기고] 윤석열 정부의 가상자산 규제 설계',
    date: '05/26/2022',
    articleUrl: 'http://www.m-i.kr/news/articleView.html?idxno=922297',
  ),
  ColumnData(
    title: '인스타코인, 메종쇼당으로부터 전략적 투자유치',
    date: '05/24/2022',
    articleUrl: 'https://platum.kr/archives/186246',
  ),
  ColumnData(
    title: '“블록체인 생태계 미성숙…규제 설계는 이후의 문제”',
    date: '05/17/2022',
    articleUrl: 'http://www.m-i.kr/news/articleView.html?idxno=919639',
  ),
  ColumnData(
    title: '월드블록체인컨버전스 2022 포럼 성료… “생태계 변화 대응·기회 모색”',
    date: '05/17/2022',
    articleUrl:
        'http://www.blockchaintoday.co.kr/news/articleView.html?idxno=22577',
  ),
  ColumnData(
    title: 'BGCC, 블록체인컨버전스 2022 포럼 앞두고 ‘워킹그룹’ 출범',
    date: '05/11/2022',
    articleUrl:
        'http://www.blockchaintoday.co.kr/news/articleView.html?idxno=22478',
  ),
  ColumnData(
    title: '인스타코인, 르하임그룹으로부터 투자유치',
    date: '05/10/2022',
    articleUrl: 'http://www.4th.kr/news/articleView.html?idxno=2017763',
  ),
  ColumnData(
    title: '결제의 실질적 가능성을 모색하는 ‘인스타코인’',
    date: '05/06/2022',
    articleUrl:
        'https://www.blockchaintoday.co.kr/news/articleView.html?idxno=22408',
  ),
  ColumnData(
    title: '‘월드블록체인컨버전스 포럼 2022’ 5월17일 개최',
    date: '04/27/2022',
    articleUrl: 'https://www.m-i.kr/news/articleView.html?idxno=914712',
  ),
  ColumnData(
    title: '낙후된 출판물류 시스템 개선 가능한가? 인스타페이 물류시스템 개선 밝혀',
    date: '03/29/2022',
    articleUrl: 'http://www.news-paper.co.kr/news/articleView.html?idxno=76815',
  ),
  ColumnData(
    title: '대학생이 선택한 필수앱 TOP5 ‘인스타페이, 에브리타임, 줌, 배달의민족, 알바몬’',
    date: '02/22/2022',
    articleUrl: 'https://platum.kr/archives/181262',
  ),
  ColumnData(
    title: '인스타페이, 블록체인 영화에 NFT를 구현한다',
    date: '12/21/2021',
    articleUrl: 'https://www.blockmedia.co.kr/archives/205199',
  ),
  ColumnData(
    title: '[인터뷰] 윤송아 NFT ‘낙타와 달’ 1억 낙찰… “그림은 내 일부”',
    date: '12/09/2021',
    articleUrl:
        'https://www.blockchaintoday.co.kr/news/articleView.html?idxno=20165',
  ),
  ColumnData(
    title: '[가상자산거래소와 입법과제]③ 가상자산거래소와 상장코인 사례 분석',
    date: '09/16/2021',
    articleUrl: 'https://www.4th.kr/news/articleView.html?idxno=2005730',
  ),
  ColumnData(
    title: '[가상자산 거래소와 입법과제]② 가상자산 입법쟁점- 가상자산 개념규정과 소비자보호',
    date: '09/09/2021',
    articleUrl: 'https://www.4th.kr/news/articleView.html?idxno=2005235',
  ),
  ColumnData(
    title: '[가상자산 거래소와 입법과제] ① 가상자산 거래소없는 생태계를 모색할 때다',
    date: '09/06/2021',
    articleUrl: 'https://www.4th.kr/news/articleView.html?idxno=2004982',
  ),
  ColumnData(
    title: '인스타페이, 전국 100여 대학에 온라인 구내서점 운영',
    date: '08/09/2021',
    articleUrl: 'http://www.epnc.co.kr/news/articleView.html?idxno=213479',
  ),
  ColumnData(
    title: '인스타페이 ’10-10′ 이벤트…도서 20% 할인',
    date: '06/21/2021',
    articleUrl: 'http://www.4th.kr/news/articleView.html?idxno=2001147',
  ),
  ColumnData(
    title: '2030세대, 비트코인 등 가상자산인가 아파트인가',
    date: '06/01/2021',
    articleUrl: 'http://www.4th.kr/news/articleView.html?idxno=2000328',
  ),
  ColumnData(
    title: '<씨네21>·인스타페이, 콘텐츠 협력 제휴 체결',
    date: '02/05/2021',
    articleUrl: 'http://m.cine21.com/news/view/?mag_id=97169',
  ),
  ColumnData(
    title: '“도서 기본 20% 할인” 신개념 책 플랫폼 인스타페이 신학기 맞아 공격적 마케팅',
    date: '09/02/2020',
    articleUrl:
        'http://it.chosun.com/site/data/html_dir/2020/09/02/2020090201545.html',
  ),
  ColumnData(
    title: '[도서정가제기획] 왜 다시 도서정가제 폐지인가? -배재광(완반모)',
    date: '01/20/2020',
    articleUrl: 'http://www.news-paper.co.kr/news/articleView.html?idxno=72899',
  ),
  ColumnData(
    title: '[배재광 칼럼] 도서정가제 16년, 소비자 선택권의 자유를 허하라',
    date: '08/29/2019',
    articleUrl: 'http://www.news-paper.co.kr/news/articleView.html?idxno=59440',
  ),
  ColumnData(
    title: '국내 최초 ‘블록체인 영화제’ 개최한 배재광 인스타페이 대표',
    date: '12/14/2018',
    articleUrl:
        '    http://www.edaily.co.kr/news/read?newsId=01462886619438192&mediaCodeNo=257&OutLnkChk=Y',
  ),
  ColumnData(
    title: '[블록체인영화제2018] 블록체인영화 시상식 30여개국 영화인 참가로 성황리에 마무리',
    date: '12/13/2018',
    articleUrl:
        '      http://www.fintechpost.co.kr/news/articleView.html?idxno=10126#0AXD',
  ),
  ColumnData(
    title: '블록체인 영화제 ‘BFF2018’ 성료',
    date: '12/13/2018',
    articleUrl:
        '       http://www.newsworks.co.kr/news/articleView.html?idxno=318803',
  ),
  ColumnData(
    title: '암호화폐로 투자·제작된 영화 공개',
    date: '12/05/2018',
    articleUrl:
        'http://it.chosun.com/site/data/html_dir/2018/12/05/2018120501160.html',
  ),
  ColumnData(
    title: '코인 투자받아 제작한 최초 블록체인 영화 ‘연결고리’ 시사회',
    date: '12/04/2018',
    articleUrl:
        'http://www.edaily.co.kr/news/read?newsId=03893366619435240&mediaCodeNo=257&OutLnkChk=Y',
  ),
  ColumnData(
    title: '블록체인영화제, 코인으로 투자받아 제작한 영화 ‘연결고리’ 시사회 개최',
    date: '12/04/2018',
    articleUrl: 'http://www.nspna.com/news/?mode=view&newsid=323134',
  ),
  ColumnData(
    title: '민간 차원 ICO•STO 체크리스트 마련..”법적 성격 먼저 확인하라”',
    date: '11/29/2018',
    articleUrl:
        'http://www.edaily.co.kr/news/read?newsId=03440726619410640&mediaCodeNo=257&OutLnkChk=Y',
  ),
  ColumnData(
    title: 'STO 밋업•컨퍼런스 열려',
    date: '11/23/2018',
    articleUrl: 'http://www.asiatoday.co.kr/view.php?key=20181123010013970',
  ),
  ColumnData(
    title: '“BFF2018, 블록체인 영화를 말하다” 12월 11일 개최',
    date: '11/22/2018',
    articleUrl:
        'http://www.edaily.co.kr/news/read?newsId=04296806619408344&mediaCodeNo=257&OutLnkChk=Y',
  ),
  ColumnData(
    title: '인스타페이, 제로페이•보험계약 테스트베드 참여',
    date: '11/21/2018',
    articleUrl: 'http://www.asiatoday.co.kr/view.php?key=20181122010013249',
  ),
  ColumnData(
    title: 'BGCC, ICO 자율규제 가이드라인 발표',
    date: '11/09/2018',
    articleUrl: 'http://news.mk.co.kr/newsRead.php?year=2018&no=703625',
  ),
  ColumnData(
    title: '정부 ICO방침 부재 속 민간단체 가이드라인 속속 제시',
    date: '11/08/2018',
    articleUrl: 'http://www.segye.com/newsView/20181108003292',
  ),
  ColumnData(
    title: '배재광 BGCC 의장 “암호화폐 규제, 현존법 미활용이 문제”',
    date: '11/08/2018',
    articleUrl: 'http://www.ebn.co.kr/news/view/961213',
  ),
  ColumnData(
    title: '블록체인업계 자율규제안 봇물…BGCC ‘ICO 가이드라인’ 발표',
    date: '11/08/2018',
    articleUrl: 'http://news.hankyung.com/article/201811085336g',
  ),
  ColumnData(
    title: 'BGCC, 국회도서관서 ‘ICO·상장가이드라인 포럼’ 개최한다',
    date: '11/07/2018',
    articleUrl: 'https://www.etnews.com/20181107000399',
  ),
  ColumnData(
    title: '블록체인 거버넌스 및 컨센서스 위원회 출범..ICANN같은 비영리기구',
    date: '09/24/2018',
    articleUrl:
        'http://www.edaily.co.kr/news/read?newsId=01193926619343400&mediaCodeNo=257&OutLnkChk=Y',
  ),
  ColumnData(
    title: '암호화폐‘인스타코인’, 실물결제수단 가속화…몰타 초청 가상금융법 논의',
    date: '09/10/2018',
    articleUrl: 'http://www.etnews.com/20180910000095',
  ),
  ColumnData(
    title: '[포토] 인스타코인 ICO 및 생태계 확산 전략',
    date: '09/09/2018',
    articleUrl:
        'http://www.edaily.co.kr/news/read?newsId=01187366619338480&mediaCodeNo=257&OutLnkChk=Y',
  ),
  ColumnData(
    title: '인스타페이 ‘서울페이’ 참여',
    date: '08/14/2018',
    articleUrl: 'http://www.newsprime.co.kr/news/article.html?no=426302',
  ),
  ColumnData(
    title: '인스타페이, “지역페이, 블록체인 기반의 플랫폼 돼야”',
    date: '07/18/2018',
    articleUrl: 'http://news.mt.co.kr/mtview.php?no=2018071615545140746',
  ),
  ColumnData(
    title: '“지역화폐 상용화 위해 가맹점 인센티브·수수료 제로 필요”',
    date: '07/16/2018',
    articleUrl: 'http://www.newstomato.com/ReadNews.aspx?no=835948',
  ),
  ColumnData(
    title: '한국핀테크연구회, ‘지역페이, 지역화폐와 블록체인 기반 혁신 밋업포럼’ 개최',
    date: '07/16/2018',
    articleUrl: 'http://www.asiatoday.co.kr/view.php?key=20180716010009317',
  ),
  ColumnData(
    title: '가상화폐와 ICO의 모든 것: 상장사와 투자자를 위한 블록체인 분석',
    date: '07/11/2018',
    articleUrl: 'http://www.ggilbo.com/news/articleView.html?idxno=525622',
  ),
  ColumnData(
    title: '기관투자자-상장사, 블록체인 분석 키포인트는?',
    date: '07/09/2018',
    articleUrl: 'http://gametoc.hankyung.com/news/articleView.html?idxno=48473',
  ),
  ColumnData(
    title: '스타트업얼라이언스, ‘가상화폐와 ICO의 모든 것’ 밋업연다',
    date: '07/09/2018',
    articleUrl: 'http://www.newsworks.co.kr/news/articleView.html?idxno=199221',
  ),
  ColumnData(
    title: '인스타페이, 상장사와 투자자 위한 블록체인 밋업포럼 12일 개최',
    date: '07/16/2018',
    articleUrl: 'http://www.etnews.com/20180709000359',
  ),
  ColumnData(
    title: '[인터뷰] 가상화폐 인스타코인 개발 (주)인스타페이 배재광 대표',
    date: '07/03/2018',
    articleUrl: 'http://www.kns.tv/news/articleView.html?idxno=444673',
  ),
  ColumnData(
    title: '배재광 대표 “인스타코인, 신용카드 대체 혁신 결제 플랫폼”',
    date: '07/02/2018',
    articleUrl: 'http://gametoc.hankyung.com/news/articleView.html?idxno=48390',
  ),
  ColumnData(
    title: '인스타페이, ‘인스타코인 블록체인 플랫폼’ 구축',
    date: '06/26/2018',
    articleUrl:
        'http://news.inews24.com/php/news_view.php?g_serial=1104252&g_menu=022400&rrf=nv',
  ),
  ColumnData(
    title: '배재광 원장 “해외 ICO, 한국 자본시장법 적용될 수도”',
    date: '06/24/2018',
    articleUrl: 'http://gametoc.hankyung.com/news/articleView.html?idxno=48307',
  ),
  ColumnData(
    title: '배재광 대표, “이것이 가상화폐와 ICO!” 특강 시선집중',
    date: '06/20/2018',
    articleUrl: 'http://gametoc.hankyung.com/news/articleView.html?idxno=48274',
  ),
  ColumnData(
    title: '배재광 벤처법률지원센터 대표, ‘가상화폐와 ICO의 모든 것’ 사례 발표',
    date: '06/20/2018',
    articleUrl: 'http://www.newsworks.co.kr/news/articleView.html?idxno=194924',
  ),
  ColumnData(
    title: '인스타페이 배재광 대표, ‘가상화폐와 ICO의 모든 것, ICO 메뉴얼과 사례’ 발표',
    date: '06/20/2018',
    articleUrl: 'http://gamefocus.co.kr/detail.php?number=83104',
  ),
  ColumnData(
    title: '(사)한국모바일게임협회, (주)인스타페이와 모바일 게임 산업과 블록체인 산업 발전을 위한 업무협약(MOU) 체결',
    date: '06/20/2018',
    articleUrl: 'http://www.newsworker.co.kr/news/articleView.html?idxno=19329',
  ),
  ColumnData(
    title: '한국모바일게임협회·인스타페이, 모바일게임·블록체인 산업 발전 ‘맞손’',
    date: '06/19/2018',
    articleUrl: 'http://www.datanet.co.kr/news/articleView.html?idxno=123844',
  ),
  ColumnData(
    title: '모바일게임협회-인스타페이 ‘블록체인 최강 시너지’ 시동',
    date: '06/19/2018',
    articleUrl: 'http://gametoc.hankyung.com/news/articleView.html?idxno=48265',
  ),
  ColumnData(
    title: '한국모바일게임협회, 인스타페이와 모바일게임 및 블록체인 산업 발전 위한 MOU 맺어',
    date: '06/19/2018',
    articleUrl: 'http://gamefocus.co.kr/detail.php?number=83072',
  ),
  ColumnData(
    title: '한국모바일게임협회·인스타페이, MOU 체결…플랫폼 구축',
    date: '06/19/2018',
    articleUrl: 'http://www.nspna.com/news/?mode=view&newsid=289753',
  ),
  ColumnData(
    title: '인스타페이, ICO 발표 “국내 결제시장 독립시킬 것”',
    date: '06/19/2018',
    articleUrl: 'http://news.mt.co.kr/mtview.php?no=2018061916134759400',
  ),
  ColumnData(
    title: '한국모바일게임협회-인스타페이, 모바일게임·블록체인 산업 발전 위한 MOU 체결',
    date: '06/19/2018',
    articleUrl:
        'http://news.newsway.co.kr/news/view?tp=1&ud=2018061916010167937',
  ),
  ColumnData(
    title: '모바일게임협회, 인스타페이와 블록체인 활성화 제휴',
    date: '06/19/2018',
    articleUrl:
        'http://www.edaily.co.kr/news/news_detail.asp?newsId=03247206619243360&mediaCodeNo=257&OutLnkChk=Y',
  ),
  ColumnData(
    title: '한국모바일게임협회, 인스타페이와 블록체인 MOU 체결',
    date: '06/19/2018',
    articleUrl: 'http://www.inven.co.kr/webzine/news/?news=201649',
  ),
  ColumnData(
    title: '모바일게임산업협회-인스타페이 블록체인 제휴',
    date: '06/19/2018',
    articleUrl: 'http://www.newsworks.co.kr/news/articleView.html?idxno=194554',
  ),
  ColumnData(
    title: '모게협-인스타페이, 모바일 게임 산업과 블록체인 산업 발전을 위한 MOU 체결',
    date: '06/19/2018',
    articleUrl:
        'http://www.thisisgame.com/webzine/news/nboard/4/?n=83819&utm_source=naver&utm_medium=outlink&utm_campaign=thisisgame&utm_content=83819&nogate',
  ),
  ColumnData(
    title: '모게협-인스타페이, 모바일 게임 산업과 블록체인 산업 발전을 위한 MOU 체결',
    date: '06/19/2018',
    articleUrl:
        'http://www.thisisgame.com/webzine/news/nboard/4/?n=83819&utm_source=naver&utm_medium=outlink&utm_campaign=thisisgame&utm_content=83819&nogate',
  ),
  ColumnData(
    title: '“인스타코인, 사기거래 방지 첫 결제플랫폼 코인될것”',
    date: '06/19/2018',
    articleUrl: 'http://www.weeklytoday.com/news/articleView.html?idxno=66503',
  ),
  ColumnData(
    title: '인스타코인, 국내 한 증권사와 협력…ICO밋업 진행 눈길',
    date: '06/19/2018',
    articleUrl: 'http://www.getnews.co.kr/news/articleView.html?idxno=77219',
  ),
  ColumnData(
    title: '인스타코인, 이더리움 4000개-23억원 규모 계약 체결',
    date: '06/12/2018',
    articleUrl:
        'https://gametoc.hankyung.com/news/articleView.html?idxno=48190',
  ),
  ColumnData(
    title: '인스타페이, QR결제에 사용할 암호화폐 백서 발표',
    date: '06/12/2018',
    articleUrl: 'http://www.bloter.net/archives/312327',
  ),
  ColumnData(
    title: '인스타페이, 모바일 결제 암호화폐 인스타코인 ICO',
    date: '05/21/2018',
    articleUrl:
        'http://www.zdnet.co.kr/news/news_view.asp?artice_id=20180521092049&type=det&re=zdk',
  ),
  ColumnData(
    title: '인스타페이, 자체 결제용 가상화폐 인스타코인 발행',
    date: '05/21/2018',
    articleUrl:
        'http://news.kmib.co.kr/article/view.asp?arcid=0012371913&code=61141311&cp=nv',
  ),
];

List<ColumnData> instaCoinColumn = [
  ColumnData(
    title: '[혁신생태계 긴급분석(2)] 금감원 ICO실태조사 결과발표와 IEO유감',
    date: '02/11/2019',
    articleUrl: 'http://www.4th.kr/news/articleView.html?idxno=8687',
  ),
  ColumnData(
    title: '[혁신생태계 긴급분석⑴] 블록체인④ “금감원 ICO 실태점검의 문제점과 ICO 실태점검 질문서 수정안 배포”',
    date: '09/27/2018',
    articleUrl: 'http://www.4th.kr/news/articleView.html?idxno=6096',
  ),
  ColumnData(
    title: '[기고] 지역페이 성공, 법제도적 걸림돌부터 제거해야',
    date: '08/13/2018',
    articleUrl: 'http://www.newsprime.co.kr/news/article.html?no=426234',
  ),
  ColumnData(
    title: '[ET단상]암호화폐는 주식 발행이 아니다',
    date: '08/09/2018',
    articleUrl: 'http://www.etnews.com/20180809000291',
  ),
  ColumnData(
    title: '[배재광 칼럼] ICO의 자본시장법 적용 문제와 인스타페이',
    date: '06/26/2018',
    articleUrl: 'http://gametoc.hankyung.com/news/articleView.html?idxno=48324',
  ),
  ColumnData(
    title: '[배재광 칼럼] ⑥ 암호화폐∙ICO 매뉴얼과 한국정부의 규제방안',
    date: '06/20/2018',
    articleUrl: 'http://www.weeklytoday.com/news/articleView.html?idxno=66531',
  ),
  ColumnData(
    title: '[배재광 칼럼] ⑤ 가상화폐와 ICO매뉴얼, 이더리움의 법적성격 판단기준',
    date: '06/17/2018',
    articleUrl: 'http://www.weeklytoday.com/news/articleView.html?idxno=66480',
  ),
  ColumnData(
    title: '[배재광 칼럼] ④ 가상화폐와 ICO, 세계가 한국을 주목한다',
    date: '06/04/2018',
    articleUrl: 'http://www.weeklytoday.com/news/articleView.html?idxno=66218',
  ),
  ColumnData(
    title: '[칼럼] ③ 사기 ICO(스캠)를 분별하는 10가지 체크리스트와 ICO 동향',
    date: '05/08/2018',
    articleUrl: 'http://www.weeklytoday.com/news/articleView.html?idxno=65734',
  ),
  ColumnData(
    title: '[칼럼]② Cryptocurrency & ICO 동향과 법적 쟁점',
    date: '05/02/2018',
    articleUrl: 'http://www.weeklytoday.com/news/articleView.html?idxno=65636',
  ),
  ColumnData(
    title: '[배재광 칼럼] ① Cryptocurrency & ICO 동향과 법적 쟁점',
    date: '04/23/2018',
    articleUrl: 'http://www.weeklytoday.com/news/articleView.html?idxno=65448',
  ),
  ColumnData(
    title: '[배재광 칼럼]금융혁신지원특별법(안) 검토⑤_핀테크는 금융의 민주화다',
    date: '04/01/2018',
    articleUrl: 'http://www.weeklytoday.com/news/articleView.html?idxno=65043',
  ),
  ColumnData(
    title: '[배재광칼럼] 금융혁신지원특별법(안) 검토④_핀테크는 금융의 민주화다',
    date: '03/26/2018',
    articleUrl: 'http://www.weeklytoday.com/news/articleView.html?idxno=64865',
  ),
  ColumnData(
    title: '[칼럼] 금융혁신지원특별법(안) 검토③_핀테크는 금융의 민주화다',
    date: '03/23/2018',
    articleUrl: 'http://www.weeklytoday.com/news/articleView.html?idxno=64808',
  ),
  ColumnData(
    title: '[칼럼] 혁신생태계 풍경① 모험자본에게 모험을 허하라',
    date: '03/22/2018',
    articleUrl: 'http://www.weeklytoday.com/news/articleView.html?idxno=64769',
  ),
  ColumnData(
    title: '[칼럼] 금융혁신지원특별법(안) 검토② 핀테크는 금융의 민주화다',
    date: '03/16/2018',
    articleUrl: 'http://www.weeklytoday.com/news/articleView.html?idxno=64589',
  ),
  ColumnData(
    title: '[칼럼] ①혁신금융지원특별법(안) 검토: 핀테크는 금융의 민주화다',
    date: '03/13/2018',
    articleUrl: 'http://www.weeklytoday.com/news/articleView.html?idxno=64459',
  ),
  ColumnData(
    title: '[칼럼] 기업 기술탈취, 특허침해 근절대책 유감',
    date: '02/13/2018',
    articleUrl: 'http://www.weeklytoday.com/news/articleView.html?idxno=63712',
  ),
  ColumnData(
    title: '가상화폐 거래소 폐쇄가 답인가',
    date: '01/20/2018',
    articleUrl: 'http://www.weeklytoday.com/news/articleView.html?idxno=63004',
  ),
];
