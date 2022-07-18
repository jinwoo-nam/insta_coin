import 'package:insta_coin/domain/model/team/team_data.dart';

class TeamDataSource {
  List<TeamData> getTeamData() {
    return teamData;
  }

  List<TeamData> getGameData() {
    return gameData;
  }

  List<TeamData> getO2oData() {
    return o2oData;
  }

  List<TeamData> getIpData() {
    return ipData;
  }

  List<TeamData> getTechData() {
    return techData;
  }
}

List<TeamData> teamData = [
  TeamData(
    name: 'Jaekwang Bae',
    imageUrl: 'img/team/team01.png',
    position: 'Founder & CEO',
    content:
        'Jaekwang is a leading figure in internet governance and innovative venture ecosystem in Korea. He was a director/audit at NCsoft and Hancom and the general counsel at Naver throughout its foundation and IPO. He was also an advisor at several payment companies such as Inicis, Danal, and Mobilians. He was the head of the Korea Mall Association and the co-chairperson of the e-Korea committee, which supervises the Korean government’s internet policy. As a leader in the area, Bae has made many contributions to establishing Korea’s innovation ecosystem, such as developing listing rules and regulations for establishment of the KOSDAQ market. He has been the president of Korea Fintech Research Institute since 2014. He also founded with Korea National Assembly and is the president at Korea Blockchain, Cryptocurrency, and Innovation Committee, where he is currently legislating Framework Act on Blockchain, cryptocurrency and ICO regulations, etc. He earned his bachelor’s from Seoul National University School of Law and passed the 38th Bar Exam. See Jaekwang Bae’s profile here.',
    linkedInUrl: 'https://www.linkedin.com/in/jae-kwang-bae-5a831416/',
  ),
  TeamData(
    name: 'Kyoungsoo Kim',
    imageUrl: 'img/team/team02.png',
    position: 'CPO',
    content:
        'Kyoungsoo has over 18 years of experience as a web and mobile service business developer and UI/UX specialist. He joined InstaPay after 10 years of career at SK Communications. Formerly, he co-founded a multimedia education startup with his master’s program advisor and created the first functional game as a content creator and product manager. He earned M.D. in Cognitive Science at Seoul National University.',
    linkedInUrl:
        'https://www.linkedin.com/authwall?trk=bf&trkInfo=AQGdETxcqWgo1AAAAYIPxS6IExfZdLI9LPHJ0H4hwdVM0-5Oxe2hi6EGoSSG7vn7RNKLYgBPVPmXQZhmjWxlRU-qGae7_LXKSb7CwySS4Lj0HbOLPCXtVk8w8GKTc-AlPwKp3ME=&original_referer=&sessionRedirect=https%3A%2F%2Fwww.linkedin.com%2Fin%2Fkyoung-soo-kim-a4a07ba7',
  ),
  TeamData(
    name: 'Kwangyeon Won',
    imageUrl: 'img/team/team03.png',
    position: 'CCO',
    content:
        'Kwang Yeon oversees digital contents and media platform. He specializes in development of synthetical contents by coordinating analytical approach and qualitative knowledge. He is the founder of Wikidok, which provides wiki platform service. Previously, Won worked for NCsoft and Naver’s search management support team and knowledge encyclopedia team. He earned Bachelor’s degree in journalism and Master’s degree in political science at Seoul National University.',
  ),
  TeamData(
    name: 'Jongsung Chun',
    imageUrl: 'img/team/team04.png',
    position: 'Media & Platform Director',
    content:
        'Business strategy and communications specialist with extensive experience in media, various platforms, and IR, Jongsung was COO at Sinjisoft, the company that developed the world’s first VM(Virtual Machine). He was in charge of the business plan and design of mobile platform and related business. He also played a major role in expanding the Digital Multimedia Broadcasting(DMB) business, which became a major hit in Korea in early 2000’s. Later he supported several major electronics, distributor, and automobile companies in Korea expand their business by working with many investors as a IR specialist. He will help InstaPay market its business effectively by expanding its user base and various networks in the market. He studied Organization Communication at Hanyang University.',
    linkedInUrl:
        'https://www.linkedin.com/authwall?trk=bf&trkInfo=AQGRWLXN9gsTtAAAAYIPy0UgmP3rah7BEzro8m6CC4UCyDzngJjxlYlV5UiD6dvevHvHF20BRref5Pw-1LldJn180mD5HPtRw9b_muO4ODSmAFl6xrZynWZ80eSLXrGWdLEsBQ0=&original_referer=&sessionRedirect=https%3A%2F%2Fwww.linkedin.com%2Fin%2Fcjs1006',
  ),
  TeamData(
    name: 'Sangyeop Kim',
    imageUrl: 'img/team/team05.png',
    position: 'Chief Blockchain Architect',
    content:
        'Sangyeop specializes in InfoSec and Architecture. In the past years, he worked for financial companies including KEB Hana Bank. He contributed to the development of Crypto-Market and led architecture and implementation of InstaPay’s server, including integration of Payment-gateway with KFTC. He majored in Computer Science at Pusan National University.',
    linkedInUrl:
        'https://www.linkedin.com/authwall?trk=gf&trkInfo=AQEGUEN7DxlTggAAAYIPy8nwxu_36zhK_1rrZFzt7XCmF4avXwwP9KhTqvKEPcznjdAsTtxNxvSlwdNoFu124ICCw8nFbGsSvo4Xzjzt7IWZ9HB0gvbDF6M05dY744s61Fp50vQ=&original_referer=https://www.instacoins.io/&sessionRedirect=https%3A%2F%2Fwww.linkedin.com%2Fin%2Fyuki-kim-49648b169%2F',
  ),
  TeamData(
    name: 'Keunhye Lee',
    imageUrl: 'img/team/team06.png',
    position: 'Director of Marketing and Communication',
    content:
        'Keunhye has 15 years’ experience in advertising and marketing communication. After graduation, Lee joined Daehong Communications, an advertising marketing agency, as an ad creator. Lee participated in many big campaigns in IMC dimension, with specialization in advertising and promotion. Lee majored in industrial design and business administration at Seoul National University.',
    linkedInUrl:
        'https://www.linkedin.com/authwall?trk=gf&trkInfo=AQFBifbiFV9EOAAAAYIPzFp4CO40Y3dJfcshgByL4Z1GpAFk-ulPbXI4G9VRMWRoAPQOY3HEkxR6ngaJ9Ji-ujzjf7Zy4pnucxK4YaeysvwThN4DsNtxpMYHq8hW_YMQqNQthhU=&original_referer=https://www.instacoins.io/&sessionRedirect=https%3A%2F%2Fwww.linkedin.com%2Fin%2Fkeun-hye-lee-b3a666112%2F',
  ),
  TeamData(
    name: 'Yewon Yoo',
    imageUrl: 'img/team/team07.png',
    position: 'UX and Visual Designer',
    content:
        'Yewon is a graphic designer with a demonstrated history of working in the design industry. Skilled in Adobe Creative Suite and Typography. Strong professional with a Master’s Degree focused in Graphic Design from Seoul National University and a Bachelor’s Degree from Rhode Island School of Design.',
  ),
  TeamData(
    name: 'You?',
    content:
        'We are looking for talented, driven people to join our journey of bringing the crypto-payment innovation to reality. If you’re interested or have any inquiry, please contact us at business@instapay.kr',
  ),
];

List<TeamData> gameData = [
  TeamData(
    name: 'Yangmin Seo',
    imageUrl: 'img/team/game1.png',
    desc: [
      'CEO, Andromeda Game',
      'Former Development Director, NCSoft',
      'Seoul National Univ., Computer Science',
    ],
  ),
  TeamData(
    name: 'Hyunseong Seo',
    imageUrl: 'img/team/game2.png',
    desc: [
      'CEO, Pathfinder 8',
      'Lead developer of ‘Kaiser’, a popular Korean game',
      'Seoul National Univ., Computer Science',
    ],
  ),
];

List<TeamData> o2oData = [
  TeamData(
    name: 'Cheongjong Lee',
    imageUrl: 'img/team/o2o01.png',
    desc: [
      'CEO, Whois, Inc.',
      'Yonsei University',
    ],
  ),
  TeamData(
    name: 'Inkyu Park',
    imageUrl: 'img/team/o2o02.png',
    desc: [
      'CEO, ecPlaza, Inc.',
      'Former manager, KTNET',
    ],
  ),
  TeamData(
    name: 'Jungwoo Shim',
    imageUrl: 'img/team/o2o03.png',
    desc: [
      'President, The Policy Academy of National Assembly',
    ],
  ),
  TeamData(
    name: 'Jadeok Koo',
    imageUrl: 'img/team/o2o04.png',
    desc: [
      'Founder, NPO IT Support Center',
      'Korea University',
    ],
  ),
];

List<TeamData> ipData = [
  TeamData(
    name: 'Sangdon Joo',
    imageUrl: 'img/team/ip01.png',
    position: 'Founder & CEO',
    desc: [
      'CEO, IP Targets',
      'Publisher, IPnomics',
      'Adjunct Professor, Korea University Graduate School of Management of Technology',
      'Member of the national steering committee of the Korea IP World Hub',
    ],
  ),
];

List<TeamData> techData = [
  TeamData(
    name: 'Tommy Ryoo',
    imageUrl: 'img/team/tech01.png',
    position: 'Founder & CEO',
    desc: [
      'Global Business Director, FXGear, a leading AR/VR technology company',
      'B.S., Seoul National University',
      'B.S., Seoul National University',
    ],
    facebookUrl: '',
    linkedInUrl: '',
  ),
  TeamData(
    name: 'Jiho Kim',
    imageUrl: 'img/team/tech02.png',
    position: 'Founder & CEO',
    desc: [
      'Blockchain Architect',
      'A top-class, first-generation game developer in Korea',
      'KAIST',
    ],
    facebookUrl: '',
    linkedInUrl: '',
  ),
];