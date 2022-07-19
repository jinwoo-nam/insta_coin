import 'package:flutter/material.dart';
import 'package:insta_coin/data/data_source/papps_horizontal_widget.dart';
import 'package:insta_coin/data/data_source/papps_vertical_widget.dart';
import 'package:insta_coin/presentation/papps/papps_view_model.dart';
import 'package:insta_coin/responsive/responsive.dart';
import 'package:provider/provider.dart';

class PappsScreen extends StatefulWidget {
  const PappsScreen({Key? key}) : super(key: key);

  @override
  State<PappsScreen> createState() => _PappsScreenState();
}

class _PappsScreenState extends State<PappsScreen> {
  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<PappsViewModel>();
    final state = viewModel.state;

    return SafeArea(
      child: SingleChildScrollView(
        child: SizedBox(
          width: 1200,
          child: Padding(
            padding: EdgeInsets.symmetric(
              vertical: 80.0,
              horizontal: (Responsive.isMobile(context)) ? 20 : 60,
            ),
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Platform Applications',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: (Responsive.isMobile(context)) ? 35 : 50,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    '(PApps)',
                    style: TextStyle(
                      color: const Color(0xff999999),
                      fontSize: (Responsive.isMobile(context)) ? 30 : 45,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 50.0),
                    child: Text(
                      'As payment coin, InstaCoin can be applied beyond its existing ecosystem with our liquidity provider system. InstaCoin’s PApps can be distinguished into two categories: 1) InstaPay’s payment partners and 2) projects that will issue tokens through InstaCoin’s Blockchain main net.',
                      style: TextStyle(
                          fontSize: (Responsive.isMobile(context)) ? 18 : 22,
                          fontWeight: FontWeight.w300,
                          height: 1.6),
                    ),
                  ),
                  if (!Responsive.isMobile(context))
                    ...state.papps.map((e) {
                      if (e.index % 2 == 0) {
                        return PappsHorizontalWidgetLeft(
                          data: e,
                        );
                      } else {
                        return PappsHorizontalWidgetRight(
                          data: e,
                        );
                      }
                    }).toList(),
                  if (Responsive.isMobile(context))
                    ...state.papps.map((e) {
                      return PappsVerticalWidget(
                        data: e,
                      );
                    }).toList(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
