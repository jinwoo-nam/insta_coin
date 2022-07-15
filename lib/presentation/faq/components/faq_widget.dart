import 'package:flutter/material.dart';

class FaqWidget extends StatefulWidget {
  final FaqData faqData;

  const FaqWidget({
    Key? key,
    required this.faqData,
  }) : super(key: key);

  @override
  State<FaqWidget> createState() => _FaqWidgetState();
}

class _FaqWidgetState extends State<FaqWidget> {
  bool isOpen = false;

  @override
  void initState() {
    if (widget.faqData.isFirst) {
      isOpen = true;
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: InkWell(
            onTap: () {
              setState(() {
                isOpen = !isOpen;
              });
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  widget.faqData.title,
                  textAlign: TextAlign.start,
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 22,
                    color: Color(0xff515151),
                  ),
                ),
                Visibility(
                  visible: !isOpen,
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
          opacity: isOpen ? 1.0 : 0.0,
          duration: const Duration(milliseconds: 400),
          child: Visibility(
            visible: isOpen,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Text(
                widget.faqData.content,
                textAlign: TextAlign.start,
                style: const TextStyle(
                  height: 1.5,
                  fontSize: 18,
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
