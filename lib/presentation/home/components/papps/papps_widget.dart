import 'package:flutter/material.dart';
import 'package:insta_coin/presentation/home/components/papps/papps_card_widget.dart';
import 'package:insta_coin/presentation/home/components/papps/see_papps_button_widget.dart';
import 'package:insta_coin/presentation/home/home_view_model.dart';
import 'package:insta_coin/responsive/responsive.dart';
import 'package:provider/provider.dart';

class PappsWidget extends StatelessWidget {
  const PappsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<HomeViewModel>();
    final state = viewModel.state;

    return Container(
      width: MediaQuery.of(context).size.width,
      //height: 1400,
      padding: EdgeInsets.symmetric(
        vertical: 20,
        horizontal: Responsive.isDesktop(context) ? 50 : 0,
      ),
      decoration: const BoxDecoration(
        color: Color(0xff2d3943),
      ),
      alignment: Alignment.center,
      child: SizedBox(
        width: 1200,
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: Responsive.isMobile(context) ? 20 : 60,
            vertical: 70,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 50.0),
                child: Center(
                  child: Text(
                    'PApps (Platform Applications)',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: Responsive.isMobile(context) ? 35 : 50,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
              if (Responsive.isDesktop(context))
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 30.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ...state.papps
                              .where((element) => element.index < 3)
                              .map((e) {
                            return Expanded(
                              child: PappsCardWidget(
                                data: e,
                                horizontalPadding: 50,
                                verticalPadding: 0,
                              ),
                            );
                          }).toList(),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 30.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ...state.papps
                              .where((element) => element.index > 2)
                              .map((e) {
                            return Expanded(
                              child: PappsCardWidget(
                                data: e,
                                horizontalPadding: 50,
                                verticalPadding: 0,
                              ),
                            );
                          }).toList(),
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 30.0),
                      child: SeePappsButtonWidget(),
                    ),
                  ],
                ),
              if (!Responsive.isDesktop(context))
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ...state.papps.map((e) {
                      return PappsCardWidget(
                        data: e,
                        horizontalPadding: 0,
                        verticalPadding: 30,
                      );
                    }).toList(),
                    const SeePappsButtonWidget(),
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }
}
