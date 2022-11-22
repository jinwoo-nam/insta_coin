import 'package:flutter/material.dart';
import 'package:insta_coin/presentation/common_widget/overlay_menu.dart';
import 'package:insta_coin/responsive/responsive.dart';

enum PageSelectType {
  home,
  papps,
  team,
  media,
  faq,
  etc,
}

class AppbarWidget extends StatefulWidget {
  final PageSelectType type;
  final OverlayMenu menu;

  const AppbarWidget({
    Key? key,
    required this.menu,
    this.type = PageSelectType.home,
  }) : super(key: key);

  @override
  State<AppbarWidget> createState() => _AppbarWidgetState();
}

class _AppbarWidgetState extends State<AppbarWidget> {
  @override
  Widget build(BuildContext context) {
    if (!Responsive.isMobile(context)) {
      if (widget.menu.isActive) {
        widget.menu.removeMenu();
      }
    }

    return GestureDetector(
      onTap: () {
        if (widget.menu.isActive) {
          widget.menu.removeMenu();
        }
      },
      child: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 75,
        flexibleSpace: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: Responsive.isMobile(context) ? 20 : 50.0,
          ),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    if (widget.type != PageSelectType.home) {
                      Navigator.pushNamed(context, '/');
                    }
                    if (widget.menu.isActive) {
                      widget.menu.removeMenu();
                    }
                  },
                  child: Image.asset(
                    'img/main/logo_cs-1.png',
                    height: 35,
                  ),
                ),
                if (!Responsive.isMobile(context))
                  Row(
                    children: [
                      TextButton(
                        onPressed: () {
                          if (widget.type != PageSelectType.home) {
                            Navigator.pushNamed(context, '/');
                          }
                        },
                        child: Text(
                          'HOME',
                          style: TextStyle(
                              color: widget.type == PageSelectType.home
                                  ? Colors.black
                                  : Colors.black45,
                              fontSize: 17,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          if (widget.type != PageSelectType.papps) {
                            Navigator.pushNamed(context, '/papps');
                          }
                        },
                        child: Text(
                          'PAPPS',
                          style: TextStyle(
                              color: widget.type == PageSelectType.papps
                                  ? Colors.black
                                  : Colors.black45,
                              fontSize: 17,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          if (widget.type != PageSelectType.team) {
                            Navigator.pushNamed(context, '/team');
                          }
                        },
                        child: Text(
                          'TEAM',
                          style: TextStyle(
                              color: widget.type == PageSelectType.team
                                  ? Colors.black
                                  : Colors.black45,
                              fontSize: 17,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          if (widget.type != PageSelectType.media) {
                            Navigator.pushNamed(context, '/media');
                          }
                        },
                        child: Text(
                          'MEDIA',
                          style: TextStyle(
                              color: widget.type == PageSelectType.media
                                  ? Colors.black
                                  : Colors.black45,
                              fontSize: 17,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          if (widget.type != PageSelectType.faq) {
                            Navigator.pushNamed(context, '/faq');
                          }
                        },
                        child: Text(
                          'FAQ',
                          style: TextStyle(
                              color: widget.type == PageSelectType.faq
                                  ? Colors.black
                                  : Colors.black45,
                              fontSize: 17,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ],
                  )
                else
                  IconButton(
                    onPressed: () {
                      if (widget.menu.isActive) {
                        widget.menu.removeMenu();
                      } else {
                        widget.menu.showMenu();
                      }
                    },
                    icon: const Icon(
                      Icons.menu,
                      color: Color(0xff4ac1c2),
                    ),
                  ),
              ],
            ),
          ),
        ),
        backgroundColor: Colors.white,
        centerTitle: false,
      ),
    );
  }
}
