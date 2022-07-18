import 'package:flutter/material.dart';

class FaqViewModel with ChangeNotifier {
  List<bool> faqIsOpen = [
    true,
    false,
    false,
    false,
    false,
  ];

  void selectedFaq(int index) {
    for (int i = 0; i < faqIsOpen.length; i++) {
      if (i == index) {
        faqIsOpen[i] = true;
      } else {
        faqIsOpen[i] = false;
      }
    }
    notifyListeners();
  }
}
