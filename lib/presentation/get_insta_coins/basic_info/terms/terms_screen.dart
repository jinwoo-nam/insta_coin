import 'package:flutter/material.dart';
import 'package:insta_coin/presentation/common_widget/number_widget.dart';
import 'package:insta_coin/responsive/responsive.dart';


class TermsScreen extends StatefulWidget {
  const TermsScreen({Key? key}) : super(key: key);

  @override
  State<TermsScreen> createState() => _TermsScreenState();
}

class _TermsScreenState extends State<TermsScreen> {
  final List<Map> _tableData = [
    {
      'index': 'Investment Amount(구매 총 금액)',
      'value': '금 [000000000]원',
    },
    {
      'index': 'Purchase Price Per Coin',
      'value': '1 INC = 500원',
    },
    {
      'index': 'Premium Rate',
      'value': 'N/A',
    },
    {
      'index': 'Discount Price Per Coin',
      'value': '1 INC = 500원',
    },
    {
      'index': 'Number of Coins',
      'value': '구매총금액/500 = [ ] INC',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        flexibleSpace: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: Responsive.isMobile(context) ? 20 : 50.0,
          ),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(
                  'img/get_insta_coin/bi_name_wg.png',
                  height: 35,
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  '구매 약관',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                  ),
                ),
              ],
            ),
          ),
        ),
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xff2d3943),
        centerTitle: false,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Container(
                padding: EdgeInsets.all(
                  20,
                ),
                width: 1400,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Text(
                        'INC 발행 및 구매관련 약관',
                        style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    Center(
                      child: Text(
                        '(Simple Agreement of Future Token)',
                        style: TextStyle(
                          fontSize: 30,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    SizedBox(
                      width: 600,
                      child: Table(
                        columnWidths: const {
                          // 0: FixedColumnWidth(50),
                          // 1: FlexColumnWidth(),
                        },
                        children: _tableData.map((data) {
                          return TableRow(
                            children: [
                              Container(
                                padding: const EdgeInsets.symmetric(
                                  vertical: 4,
                                  horizontal: 10,
                                ),
                                child: Text(
                                  data['index'],
                                  style: TextStyle(
                                      fontSize: 17, fontWeight: FontWeight.w600),
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.symmetric(
                                  vertical: 4,
                                  horizontal: 10,
                                ),
                                child: Text(
                                  data['value'],
                                  style: TextStyle(
                                    fontSize: 17,
                                  ),
                                ),
                              )
                            ],
                          );
                        }).toList(),
                        border: TableBorder.all(width: 1, color: Colors.black),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      '이 약정은 향후 법인 (주)스타트업팩토리(대표자 배재광, 이하 ‘SF’라 한다)’가 발행하고 (주)인스타페이(이하 ‘인스타페이’라 한다)가 서비스에 사용할 잉크(INC)를, 구매자인 인수자가 위와 같은 조건으로 인수하는데 적용되는 약관이다.',
                      style: TextStyle(
                        fontSize: 17,
                        height: 1.5,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16.0),
                      child: Text(
                        '1. Event',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          height: 1.5,
                        ),
                      ),
                    ),
                    NumberWidget(
                      'Coin Generation Event. 이 약정으로 인스타페이가 INC를 개발하고 SF가 발행하는 경우 자동적으로 ‘[인수자]’에게 약정된 코인을 그 설정된 월렛으로 전송한다.',
                      number: 1,
                      style: TextStyle(
                        fontSize: 19,
                        height: 1.5,
                      ),
                    ),
                    NumberWidget(
                      'Dissolution Event. 만약 SF 혹은 인스타페이가 INC발행 또는 개발을 하지 않기로 하면 본 구매는 당사자의 통지 등이 없이도 즉시 해제된다. 이 경우 코인에 대한 구매금은 전액 인수자에게 반환된다.',
                      number: 2,
                      style: TextStyle(
                        fontSize: 19,
                        height: 1.5,
                      ),
                    ),
                    NumberWidget(
                      'Termination. 이 구매는, 잉크(INC)가 발행되어 구매자인 [인수자] 월렛(앱)에 전송된 경우, 또는 코인을 발행하지 않기로 확정되고 구매금 전부가 반환된 경우 종료된다.',
                      number: 3,
                      style: TextStyle(
                        fontSize: 19,
                        height: 1.5,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16.0),
                      child: Text(
                        '2. Definitions',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          height: 1.5,
                        ),
                      ),
                    ),
                    NumberWidget(
                      '"Dissolution Event”란 상호 자발적인 해제, 코인발행의 실패 혹은 포기 등으로 인하여 구매의 효력을 무효화하는 것을 말한다.',
                      number: 1,
                      style: TextStyle(
                        fontSize: 19,
                        height: 1.5,
                      ),
                    ),
                    NumberWidget(
                      '”INC발행일”이란 SF가 인스타페이에게 위탁하여 인스타페이 등이 블록체인기술 (DLT)로 개발하고 이에 SF가 INC를 발행한 날을 말한다.',
                      number: 2,
                      style: TextStyle(
                        fontSize: 19,
                        height: 1.5,
                      ),
                    ),
                    NumberWidget(
                      '”결제서비스”란 인스타페이가 서비스하고 있는 모바일결제를 말한다. 인스타페이는 ‘결제서비스’에 SF가 발행한 INC를 결제수단 증 하나로 활용한다.',
                      number: 3,
                      style: TextStyle(
                        fontSize: 19,
                        height: 1.5,
                      ),
                    ),
                    NumberWidget(
                      '"ICO(Initial Coin Offering)”란 국내외에서 INC를 Crowd Sale(Public Sale) 하거나 국내외 거래소에 상장하는 것을 말한다.',
                      number: 4,
                      style: TextStyle(
                        fontSize: 19,
                        height: 1.5,
                      ),
                    ),
                    NumberWidget(
                      '”상장(Listing)”이란 국내외 암호화폐 혹은 가상자산 거래소에서 거래가 될 수 있도록 하는 것을 말하며, 이후 자체 설립할 예정인 거래소에서의 거래도 포함한다.',
                      number: 5,
                      style: TextStyle(
                        fontSize: 19,
                        height: 1.5,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16.0),
                      child: Text(
                        '3. 코인발행의 진행과 상장시 의견표명',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          height: 1.5,
                        ),
                      ),
                    ),
                    NumberWidget(
                      '구매자는 향후 ‘Pre Sale’, ‘상장’시 본 구매와 조건을 달리하는 경우 진행됨에 필요한 범위 내에서 서면으로 의견을 표명할 수 있다.',
                      number: 0,
                      style: TextStyle(
                        fontSize: 19,
                        height: 1.5,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16.0),
                      child: Text(
                        '4. 회사의 진술',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          height: 1.5,
                        ),
                      ),
                    ),
                    NumberWidget(
                      'SF와 인스타페이는 대한민국 상법에 따라 유효하게 설립된 한국법인이고 현재까지 한국법에 따라 정상적으로 운영되어 왔다.',
                      number: 1,
                      style: TextStyle(
                        fontSize: 19,
                        height: 1.5,
                      ),
                    ),
                    NumberWidget(
                      '본 약정은 SF가 진행할 수 있는 권한 내에서 진행하고 이 약정을 준수할 것을 진술한다.',
                      number: 2,
                      style: TextStyle(
                        fontSize: 19,
                        height: 1.5,
                      ),
                    ),
                    NumberWidget(
                      'SF는 현재 한국법인으로 유효하게 설립되어 있으며, 결제서비스에 사용할 암호화폐(가상자산)인 INC 발행을 진행하고 있다.',
                      number: 3,
                      style: TextStyle(
                        fontSize: 19,
                        height: 1.5,
                      ),
                    ),
                    NumberWidget(
                      'SF가 알고 있는 한, INC를 발행하는 일, 발행된 INC를 인스타페이가 위탁 받아서 개발하고 결제서비스에 사용하는 것은 대한민국법에 따라 적법하게 진행할 수 있다.',
                      number: 4,
                      style: TextStyle(
                        fontSize: 19,
                        height: 1.5,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16.0),
                      child: Text(
                        '5. 구매자의 진술',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          height: 1.5,
                        ),
                      ),
                    ),
                    NumberWidget(
                      '구매자는 암호화폐가 강제통용력이 있는 통화가 아니라는 사실을 충분히 알고 있으며, 이에 발행되는 INC를 구매할 전적인 권한과 의사가 있고 암호화폐 (가상자산)와 그 발행 과정을 이해하고 있다.',
                      number: 1,
                      style: TextStyle(
                        fontSize: 19,
                        height: 1.5,
                      ),
                    ),
                    NumberWidget(
                      '구매자는 자신이 암호화폐에 구매할 전적인 의사결정을 하였으며, 인스타페이가 결제서비스에 이용하는 INC의 가능성과 위험도 아울러 충분히 인식하고 있다.',
                      number: 2,
                      style: TextStyle(
                        fontSize: 19,
                        height: 1.5,
                      ),
                    ),
                    NumberWidget(
                      '구매자는 INC가 향후 발행될 예정이라는 점과 발행되어 인스타페이 결제서비스에 적용될 것이라는 점을 이해하고 있으며 자신도 인스타페이 결제서비스를 활용할 의사가 있다.',
                      number: 3,
                      style: TextStyle(
                        fontSize: 19,
                        height: 1.5,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16.0),
                      child: Text(
                        '6. 구매 실행',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          height: 1.5,
                        ),
                      ),
                    ),
                    NumberWidget(
                      '구매자는 다음 지시된 사이트에서 절차에 따라 구매대금을 입금한다. 만약 부득이 한 경우 사이트에 적시된 계좌로 입금한다.\n\n사이트 주소: www.instacoins.io\n',
                      number: 1,
                      style: TextStyle(
                        fontSize: 19,
                        height: 1.5,
                      ),
                    ),
                    NumberWidget(
                      'INC의 세일에 참여하는 구매자는 이후 코인이 발행되어 구매자의 월렛(앱)에 전송되는 경우, 구매자의 구매대금이 코인과 교환된 것으로 본다.',
                      number: 2,
                      style: TextStyle(
                        fontSize: 19,
                        height: 1.5,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16.0),
                      child: Text(
                        '7. 기타 약정',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          height: 1.5,
                        ),
                      ),
                    ),
                    NumberWidget(
                      'SF는 현재 한국법에 따라 설립되어 INC를 발행하기 위한 준비를 하고 있으며 이를 위하여 원본 백서를 발행하였으며(일부 수정 예정) 업무협력 파트너로서 한국법무법인, 회계법인과 진행하고 있다.',
                      number: 1,
                      style: TextStyle(
                        fontSize: 19,
                        height: 1.5,
                      ),
                    ),
                    NumberWidget(
                      '본 약관에 의하여 구매되어 유효한 잉크(INC) 발행, 전송이 있는 경우 기타 사유로 구매를 취소할 수 없다.',
                      number: 2,
                      style: TextStyle(
                        fontSize: 19,
                        height: 1.5,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 80.0),
                      child: Center(
                        child: Text('2021.04.23.',style: TextStyle(fontSize: 19),),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 50,
              color: Colors.grey.withOpacity(0.5),
              child: Center(
                child: Text(
                  '© 2022 : InstaPay Inc. all rights reserved',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
