import 'package:flutter/material.dart';
import 'package:insta_coin/domain/model/road_map/month_data.dart';
import 'package:insta_coin/presentation/home/components/roadmap/components/cicle_year_widget.dart';
import 'package:insta_coin/presentation/home/components/roadmap/components/circle_month_widget.dart';
import 'package:insta_coin/presentation/home/components/roadmap/components/rect_year_widget.dart';
import 'package:insta_coin/responsive/responsive.dart';

class RoadmapWidget extends StatelessWidget {
  const RoadmapWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      //height: 3800,
      padding: const EdgeInsets.symmetric(
        vertical: 100,
        horizontal: 50,
      ),
      decoration: const BoxDecoration(
        color: Color(0xff2d3943),
      ),
      alignment: Alignment.center,
      child: SizedBox(
        width: 1200,
        child: Padding(
          padding: Responsive.isDesktop(context) ? const EdgeInsets.symmetric(horizontal: 60.0) : const EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 20.0),
                child: Text(
                  'ROADMAP',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 50,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              const SizedBox(
                height: 80,
              ),
              if (Responsive.isDesktop(context))
                SizedBox(
                  height: 3400,
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      const VerticalDivider(
                        thickness: 3,
                        color: Colors.white,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 50.0),
                        child: CircleYearWidget(
                          year: '2008',
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 120.0),
                        child: CircleMonthWidget(
                          MonthData(
                            month: 'Jan',
                            direction: MonthMessageDirection.right,
                            title:
                            'QR Code Payment Patent Registration',
                            description:
                            '“METHOD AND APPARATUS FOR CONTROLLING GIRO CHARGE PAYMENT BY USING MOBILE COMMUNICATION TERMINAL”',
                          ),
                          downPadding: 80,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 420.0),
                        child: CircleYearWidget(
                          year: '2013',
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 520.0),
                        child: CircleMonthWidget(
                          MonthData(
                            month: 'Apr',
                            direction: MonthMessageDirection.left,
                            title: 'InstaPay Founded',
                            description: '',
                          ),
                          downPadding: 45,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 720.0),
                        child: CircleYearWidget(
                          year: '2014',
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 800.0),
                        child: CircleMonthWidget(
                          MonthData(
                            month: 'Sep',
                            direction: MonthMessageDirection.right,
                            title: 'Initial Funding Raised',
                            description:
                            'Korea Venture Investment Corp, Han Kook Capital Co., Ltd., founder of T-Mon, etc.',
                          ),
                          downPadding: 60,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 1070.0),
                        child: CircleYearWidget(
                          year: '2015',
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 1150.0),
                        child: CircleMonthWidget(
                          MonthData(
                            month: 'Jul',
                            direction: MonthMessageDirection.left,
                            title:
                            'Registered As Electronic Financial Business Operator',
                            description:
                            'registered at Korea’s Financial Services Commission',
                          ),
                          downPadding: 60,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 1300.0),
                        child: CircleMonthWidget(
                          MonthData(
                            month: 'Oct',
                            direction: MonthMessageDirection.right,
                            title:
                            'InstaPay MPayment App Test Net Completed',
                            description:
                            'Integrated with Korea Financial Telecommunications and Clearings Institute and all 16 Korean banks (through firm banking) as the first and only mobile company',
                          ),
                          downPadding: 120,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 1580.0),
                        child: CircleMonthWidget(
                          MonthData(
                            month: 'Nov',
                            direction: MonthMessageDirection.left,
                            title:
                            'Selected As A Top Innovator At Citi Mobile Challenge',
                            description:
                            'one of the 15 winners among 1900 participants from 176 cities',
                          ),
                          downPadding: 80,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 1850.0),
                        child: CircleYearWidget(
                          year: '2018',
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 1950.0),
                        child: CircleMonthWidget(
                          MonthData(
                            month: 'Jun',
                            direction: MonthMessageDirection.right,
                            title: 'Private Sale',
                            description: '',
                          ),
                          downPadding: 45,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 2100.0),
                        child: CircleMonthWidget(
                          MonthData(
                            month: 'Jul',
                            direction: MonthMessageDirection.left,
                            title: 'Presale Season 1',
                            description: 'Starts at 1 ETH = 3000 INC',
                          ),
                          downPadding: 45,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 2250.0),
                        child: CircleMonthWidget(
                          MonthData(
                            month: 'Aug',
                            direction: MonthMessageDirection.right,
                            title: 'Presale',
                            description: 'Starts at 1 ETH = 2000 INC',
                          ),
                          downPadding: 45,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 2400.0),
                        child: CircleMonthWidget(
                          MonthData(
                            month: 'Sep',
                            direction: MonthMessageDirection.left,
                            title:
                            'MBPP / O2O Commerce Platform Application Release',
                            description: 'InstaCoin issued',
                          ),
                          downPadding: 80,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 2600.0),
                        child: CircleYearWidget(
                          year: '2021',
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 2700.0),
                        child: CircleMonthWidget(
                          MonthData(
                            month: 'Jan',
                            direction: MonthMessageDirection.right,
                            title:
                            'ACT ON REPORTING AND USING SPECIFIED FINANCIAL TRANSACTION INFORMATION',
                            description: '',
                          ),
                          downPadding: 45,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 2880.0),
                        child: CircleMonthWidget(
                          MonthData(
                            month: 'Jun',
                            direction: MonthMessageDirection.left,
                            title: 'Instacoin Main Net Open',
                            description:
                            '* the date is subject to change according to recruiting schedule',
                          ),
                          downPadding: 45,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 3050.0),
                        child: CircleMonthWidget(
                          MonthData(
                            month: 'Aug',
                            direction: MonthMessageDirection.right,
                            title: 'Operating System Complete',
                            description: '',
                          ),
                          downPadding: 45,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 3200.0),
                        child: CircleMonthWidget(
                          MonthData(
                            month: 'Aug',
                            direction: MonthMessageDirection.left,
                            title: 'Listing On Exchanges',
                            description: '',
                          ),
                          downPadding: 45,
                        ),
                      ),
                    ],
                  ),
                ),
              if (!Responsive.isDesktop(context))
                SizedBox(
                  width: double.infinity,
                  height: 3300,
                  child: Stack(
                    alignment: Alignment.topLeft,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 22.0),
                        child: VerticalDivider(
                          thickness: 3,
                          color: Colors.white,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 50.0, left: 80),
                        child: RectYearWidget(
                          year: '2008',
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 130.0),
                        child: CircleMonthWidget(
                          MonthData(
                            month: 'Jan',
                            direction: MonthMessageDirection.right,
                            title:
                            'QR Code Payment Patent Registration',
                            description:
                            '“METHOD AND APPARATUS FOR CONTROLLING GIRO CHARGE PAYMENT BY USING MOBILE COMMUNICATION TERMINAL”',
                          ),
                          isDesktop: false,
                          downPadding: 40,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 350.0, left: 80),
                        child: RectYearWidget(
                          year: '2013',
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 430.0),
                        child: CircleMonthWidget(
                          MonthData(
                            month: 'Apr',
                            direction: MonthMessageDirection.right,
                            title: 'InstaPay Founded',
                            description: '',
                          ),
                          isDesktop: false,
                          downPadding: 40,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 650.0, left: 80),
                        child: RectYearWidget(
                          year: '2014',
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 720.0),
                        child: CircleMonthWidget(
                          MonthData(
                            month: 'Sep',
                            direction: MonthMessageDirection.right,
                            title: 'Initial Funding Raised',
                            description:
                            'Korea Venture Investment Corp, Han Kook Capital Co., Ltd., founder of T-Mon, etc.',
                          ),
                          isDesktop: false,
                          downPadding: 40,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 930.0, left: 80),
                        child: RectYearWidget(
                          year: '2015',
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 1000.0),
                        child: CircleMonthWidget(
                          MonthData(
                            month: 'Sep',
                            direction: MonthMessageDirection.right,
                            title:
                            'Registered As Electronic Financial Business Operator',
                            description:
                            'registered at Korea’s Financial Services Commission',
                          ),
                          isDesktop: false,
                          downPadding: 40,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 1180.0),
                        child: CircleMonthWidget(
                          MonthData(
                            month: 'Oct',
                            direction: MonthMessageDirection.right,
                            title:
                            'InstaPay MPayment App Test Net Completed',
                            description:
                            'Integrated with Korea Financial Telecommunications and Clearings Institute and all 16 Korean banks (through firm banking) as the first and only mobile company',
                          ),
                          isDesktop: false,
                          downPadding: 40,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 1380.0),
                        child: CircleMonthWidget(
                          MonthData(
                            month: 'Nov',
                            direction: MonthMessageDirection.right,
                            title:
                            'Selected As A Top Innovator At Citi Mobile Challenge',
                            description:
                            'one of the 15 winners among 1900 participants from 176 cities',
                          ),
                          isDesktop: false,
                          downPadding: 40,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 1600.0, left: 80),
                        child: RectYearWidget(
                          year: '2018',
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 1680.0),
                        child: CircleMonthWidget(
                          MonthData(
                            month: 'Jun',
                            direction: MonthMessageDirection.right,
                            title: 'Private Sale',
                            description: '',
                          ),
                          isDesktop: false,
                          downPadding: 40,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 1840.0),
                        child: CircleMonthWidget(
                          MonthData(
                            month: 'Jul',
                            direction: MonthMessageDirection.right,
                            title: 'Presale Season 1',
                            description: 'Starts at 1 ETH = 3000 INC',
                          ),
                          isDesktop: false,
                          downPadding: 40,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 2000.0),
                        child: CircleMonthWidget(
                          MonthData(
                            month: 'Aug',
                            direction: MonthMessageDirection.right,
                            title: 'Presale',
                            description: 'Starts at 1 ETH = 2000 INC',
                          ),
                          isDesktop: false,
                          downPadding: 40,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 2170.0),
                        child: CircleMonthWidget(
                          MonthData(
                            month: 'Sep',
                            direction: MonthMessageDirection.right,
                            title:
                            'MBPP / O2O Commerce Platform Application Release',
                            description: 'InstaCoin issued',
                          ),
                          isDesktop: false,
                          downPadding: 40,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 2380.0, left: 80),
                        child: RectYearWidget(
                          year: '2021',
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 2470.0),
                        child: CircleMonthWidget(
                          MonthData(
                            month: 'Jan',
                            direction: MonthMessageDirection.right,
                            title:
                            'ACT ON REPORTING AND USING SPECIFIED FINANCIAL TRANSACTION INFORMATION',
                            description: '',
                          ),
                          isDesktop: false,
                          downPadding: 40,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 2670.0),
                        child: CircleMonthWidget(
                          MonthData(
                            month: 'Jun',
                            direction: MonthMessageDirection.right,
                            title: 'Instacoin Main Net Open',
                            description:
                            '* the date is subject to change according to recruiting schedule',
                          ),
                          isDesktop: false,
                          downPadding: 40,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 2840.0),
                        child: CircleMonthWidget(
                          MonthData(
                            month: 'Aug',
                            direction: MonthMessageDirection.right,
                            title: 'Operating System Complete',
                            description: '',
                          ),
                          isDesktop: false,
                          downPadding: 40,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 3030.0),
                        child: CircleMonthWidget(
                          MonthData(
                            month: 'Aug',
                            direction: MonthMessageDirection.right,
                            title: 'Listing On Exchanges',
                            description: '',
                          ),
                          isDesktop: false,
                          downPadding: 40,
                        ),
                      ),
                    ],
                  ),
                )
            ],
          ),
        ),
      ),
    );
  }
}
