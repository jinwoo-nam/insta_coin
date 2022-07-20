import 'package:flutter/material.dart';
import 'package:insta_coin/presentation/root/root_state.dart';
import 'package:insta_coin/presentation/root/root_view_model.dart';
import 'package:insta_coin/ui/on_hover_detect.dart';
import 'package:provider/provider.dart';

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
  const OverlayMenuWidget({
    Key? key,
  }) : super(key: key);

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
        vsync: this, duration: const Duration(milliseconds: 600));
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
    final viewModel = context.watch<RootViewModel>();

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
                behavior:
                    ScrollConfiguration.of(context).copyWith(scrollbars: false),
                child: SingleChildScrollView(
                  physics: const NeverScrollableScrollPhysics(),
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    height: 280,
                    width: MediaQuery.of(context).size.width - 200,
                    decoration: const BoxDecoration(color: Colors.white),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        InkWell(
                          onTap: () {
                            viewModel.selectPage(PageSelectType.home);
                            viewModel.removeMenu();
                          },
                          child: OnHoverDetect(
                            builder: (isHover) {
                              return Container(
                                width: MediaQuery.of(context).size.width - 200,
                                padding: const EdgeInsets.all(8),
                                color: isHover
                                    ? Colors.grey.withOpacity(0.2)
                                    : null,
                                child: Text(
                                  'HOME',
                                  style: TextStyle(
                                    fontSize: 15,
                                    height: 1.8,
                                    color: isHover
                                        ? Colors.black87.withOpacity(0.5)
                                        : Colors.black87,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                        const Divider(
                          thickness: 1,
                          height: 2,
                        ),
                        InkWell(
                          onTap: () {
                            viewModel.selectPage(PageSelectType.papps);
                            viewModel.removeMenu();
                          },
                          child: OnHoverDetect(
                            builder: (isHover) {
                              return Container(
                                width: MediaQuery.of(context).size.width - 200,
                                padding: const EdgeInsets.all(8),
                                color: isHover
                                    ? Colors.grey.withOpacity(0.2)
                                    : null,
                                child: Text(
                                  'PAPPS',
                                  style: TextStyle(
                                    fontSize: 15,
                                    height: 1.8,
                                    color: isHover
                                        ? Colors.black87.withOpacity(0.5)
                                        : Colors.black87,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                        const Divider(
                          thickness: 1,
                          height: 2,
                        ),
                        InkWell(
                          onTap: () {
                            viewModel.selectPage(PageSelectType.team);
                            viewModel.removeMenu();
                          },
                          child: OnHoverDetect(
                            builder: (isHover) {
                              return Container(
                                width: MediaQuery.of(context).size.width - 200,
                                padding: const EdgeInsets.all(8),
                                color: isHover
                                    ? Colors.grey.withOpacity(0.2)
                                    : null,
                                child: Text(
                                  'TEAM',
                                  style: TextStyle(
                                    fontSize: 15,
                                    height: 1.8,
                                    color: isHover
                                        ? Colors.black87.withOpacity(0.5)
                                        : Colors.black87,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                        const Divider(
                          thickness: 1,
                          height: 2,
                        ),
                        InkWell(
                          onTap: () {
                            viewModel.selectPage(PageSelectType.media);
                            viewModel.removeMenu();
                          },
                          child: OnHoverDetect(
                            builder: (isHover) {
                              return Container(
                                width: MediaQuery.of(context).size.width - 200,
                                padding: const EdgeInsets.all(8),
                                color: isHover
                                    ? Colors.grey.withOpacity(0.2)
                                    : null,
                                child: Text(
                                  'MEDIA',
                                  style: TextStyle(
                                    fontSize: 15,
                                    height: 1.8,
                                    color: isHover
                                        ? Colors.black87.withOpacity(0.5)
                                        : Colors.black87,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                        const Divider(
                          thickness: 1,
                          height: 2,
                        ),
                        InkWell(
                          onTap: () {
                            viewModel.selectPage(PageSelectType.faq);
                            viewModel.removeMenu();
                          },
                          child: OnHoverDetect(
                            builder: (isHover) {
                              return Container(
                                width: MediaQuery.of(context).size.width - 200,
                                padding: const EdgeInsets.all(8),
                                color: isHover
                                    ? Colors.grey.withOpacity(0.2)
                                    : null,
                                child: Text(
                                  'FAQ',
                                  style: TextStyle(
                                    fontSize: 15,
                                    height: 1.8,
                                    color: isHover
                                        ? Colors.black87.withOpacity(0.5)
                                        : Colors.black87,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                        const Divider(
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
