import 'package:flutter/material.dart';
import 'package:insta_coin/presentation/faq/faq_view_model.dart';
import 'package:insta_coin/responsive/responsive.dart';
import 'package:provider/provider.dart';

class FaqWidget extends StatefulWidget {
  final FaqData faqData;
  final int index;

  const FaqWidget({
    Key? key,
    required this.faqData,
    required this.index,
  }) : super(key: key);

  @override
  State<FaqWidget> createState() => _FaqWidgetState();
}

class _FaqWidgetState extends State<FaqWidget> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<FaqViewModel>();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: InkWell(
            onTap: () {
              viewModel.selectedFaq(widget.index);
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    widget.faqData.title,
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: (Responsive.isMobile(context)) ? 18 : 22,
                      color: Color(0xff515151),
                    ),
                  ),
                ),
                Visibility(
                  visible: !viewModel.faqIsOpen[widget.index],
                  child: const Icon(
                    Icons.add_circle,
                    color: Color(0xff4ac1c2),
                    size: 20,
                  ),
                ),
              ],
            ),
          ),
        ),
        AnimatedOpacity(
          opacity: viewModel.faqIsOpen[widget.index] ? 1.0 : 0.0,
          duration: const Duration(milliseconds: 400),
          child: Visibility(
            visible: viewModel.faqIsOpen[widget.index],
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Text(
                widget.faqData.content,
                textAlign: TextAlign.start,
                style: TextStyle(
                  height: 1.5,
                  fontSize: (Responsive.isMobile(context)) ? 16 : 18,
                  color: Color(0xff515151),
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 10.0),
          child: Divider(
            color: Color.fromRGBO(121, 198, 193, 0.27),
            height: 2.5,
            thickness: 1,
          ),
        ),
      ],
    );
  }
}

class FaqData {
  final String title;
  final String content;
  final bool isFirst;

  FaqData({
    required this.title,
    required this.content,
    this.isFirst = false,
  });
}
