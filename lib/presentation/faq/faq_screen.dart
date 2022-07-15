import 'package:flutter/material.dart';
import 'package:insta_coin/presentation/faq/components/faq_widget.dart';

class FaqScreen extends StatefulWidget {
  const FaqScreen({Key? key}) : super(key: key);

  @override
  State<FaqScreen> createState() => _FaqScreenState();
}

class _FaqScreenState extends State<FaqScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          alignment: Alignment.center,
          child: SizedBox(
            width: 1000,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 80.0,
                horizontal: 70,
              ),
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Center(
                      child: Text(
                        'FAQ',
                        style: TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    ...faqData
                        .map(
                          (e) => FaqWidget(
                            faqData: e,
                          ),
                        )
                        .toList(),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

List<FaqData> faqData = [
  FaqData(
    title: 'What is InstaCoin?',
    content:
        'InstaCoin(INC) is payment instrument for InstaPay’s QR code-based O2O mobile payment Platform Application, e-Commerce Application, Game Platform Application, MBPP Platform Application, etc.',
    isFirst: true,
  ),
  FaqData(
    title: 'Where is the Company registered? (Where is the office located?)',
    content:
        'We have founded Startup Alliance LTD. for issuance and ICO of InstaCoin. Startup Alliance LTD. is registered in Singapore(Registration number: 201820444C).',
  ),
  FaqData(
    title: 'What is the total supply of Coins ?',
    content:
        'Our total supply of Coins are 2,000,000,000 INC including 1,000,000,000 INC reserved.',
  ),
  FaqData(
    title: 'How do I purchase InstaCoin?',
    content:
        'You can get InstaCoin by clicking ‘Buy INC’ button on our website instacoins.io. After you click the button, you can also download a detailed instruction pdf file.',
  ),
  FaqData(
    title: 'When and where do I view my transaction information?',
    content:
        'You can view your transaction history on InstaPay app once it is launched. Prior to the release, you can only view it on your Ethereum Wallet.',
  ),
];
