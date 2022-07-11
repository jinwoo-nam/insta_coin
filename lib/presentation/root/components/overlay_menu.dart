import 'package:flutter/material.dart';

class OverlayMenu {
  late BuildContext context;

  OverlayEntry overlay =
      OverlayEntry(builder: (_) => const OverlayMenuWidget());

  bool isActive = false;

  void showMenu() async {
    if (isActive == false) {
      isActive = true;
      Navigator.of(context).overlay!.insert(overlay);
    }
  }

  void removeMenu() {
    isActive = false;
    overlay.remove();
  }
}

class OverlayMenuWidget extends StatefulWidget {
  const OverlayMenuWidget({Key? key}) : super(key: key);

  @override
  State<OverlayMenuWidget> createState() => _OverlayMenuWidgetState();
}

class _OverlayMenuWidgetState extends State<OverlayMenuWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _animation;

  @override
  void initState() {
    _controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 1000));
    _animation = Tween<Offset>(begin: const Offset(0.0, -0.1), end: Offset.zero)
        .animate(
            CurvedAnimation(parent: _controller, curve: Curves.fastOutSlowIn));

    _controller.forward();

    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Align(
        alignment: Alignment.topCenter,
        child: Padding(
          padding: const EdgeInsets.only(top: 78.0),
          child: SlideTransition(
            position: _animation,
            child: Material(
              color: Colors.transparent,
              child: ScrollConfiguration(
                behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
                child: SingleChildScrollView(
                  physics: const NeverScrollableScrollPhysics(),
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    height: 280,
                    width: MediaQuery.of(context).size.width-200,
                    decoration: const BoxDecoration(color: Colors.white),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'Home',
                            style: TextStyle(
                              fontSize: 15,
                              height: 1.8,
                            ),
                          ),
                        ),
                        Divider(
                          thickness: 1,
                          height: 2,
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'PAPPS',
                            style: TextStyle(
                              fontSize: 15,
                              height: 1.8,
                            ),
                          ),
                        ),
                        Divider(
                          thickness: 1,
                          height: 2,
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'TEAM',
                            style: TextStyle(
                              fontSize: 15,
                              height: 1.8,
                            ),
                          ),
                        ),
                        Divider(
                          thickness: 1,
                          height: 2,
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'MEDIA',
                            style: TextStyle(
                              fontSize: 15,
                              height: 1.8,
                            ),
                          ),
                        ),
                        Divider(
                          thickness: 1,
                          height: 2,
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'FAQ',
                            style: TextStyle(
                              fontSize: 15,
                              height: 1.8,
                            ),
                          ),
                        ),
                        Divider(
                          thickness: 1,
                          height: 2,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
