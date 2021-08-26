import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:la_isla/assets/assets.dart';
import 'package:la_isla/controllers/chatroom_controller.dart';
import 'package:la_isla/controllers/entry_controller.dart';
import 'package:la_isla/controllers/tab_controller.dart';
import 'package:la_isla/theme/colors.dart';

class CustomAppBar extends StatelessWidget {
  CustomAppBar(
      {Key? key, required this.showGradient, required this.showTabView})
      : super(key: key);

  final ChatTabController _tabx = Get.put(ChatTabController());
  final ChatRoomTabController _chatRoomTabx = Get.put(ChatRoomTabController());

  final List<Tab> chatRoomTabBar = <Tab>[
    Tab(
      icon: ImageIcon(AssetImage(CHAT_ICN)),
    ),
    Tab(
      icon: ImageIcon(AssetImage(GROUP_ICN)),
    ),
    Tab(
      icon: ImageIcon(AssetImage(FAVOURITE_ICN)),
    ),
  ];

  final List<Tab> chatTabBar = <Tab>[
    Tab(
      icon: ImageIcon(
        AssetImage(CHAT_ICN),
      ),
      text: 'Public rooms',
    ),
    Tab(
      icon: ImageIcon(AssetImage(CHAT_ICN)),
      text: 'Private rooms',
    ),
    Tab(
      icon: ImageIcon(AssetImage(CHAT_ICN)),
      text: 'Contacts',
    ),
  ];

  final bool showGradient;
  final bool showTabView;

  @override
  Widget build(BuildContext context) {
    final EntryController entryPageController =
        Get.put(EntryController(), permanent: false);
    List<Tab> tabBar = [];
    if (entryPageController.tabIndex.value == 3) {
      tabBar = chatRoomTabBar;
    } else if (entryPageController.tabIndex.value == 5) {
      tabBar = chatTabBar;
    }
    final gradientBg = Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: <Color>[
            AppColors.gradient1,
            AppColors.gradient2,
          ],
        ),
      ),
    );

    final noGradientBg = Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: <Color>[
            AppColors.black,
            AppColors.black,
          ],
        ),
      ),
    );

    return AppBar(
      toolbarHeight: 80.0,
      automaticallyImplyLeading: false,
      elevation: 0.0,
      backgroundColor: AppColors.black,
      flexibleSpace: showGradient ? gradientBg : noGradientBg,
      bottom: PreferredSize(
        child: showTabView
            ? TabBar(
                tabs: tabBar,
                controller: entryPageController.tabIndex.value == 3
                    ? _chatRoomTabx.chatRoomController
                    : _tabx.chatController,
                indicatorColor: Color(0xFFFCFCFC),
                indicatorPadding: EdgeInsets.only(bottom: 5),
                indicatorWeight: 2.5,
              )
            : Container(),
        preferredSize:
            Size.fromHeight(MediaQuery.of(context).size.height * 0.27),
      ),
      title: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.only(bottom: 7.0),
        child: Image.asset(
          LOGO_WITH_TEXT,
          fit: BoxFit.contain,
          width: 80.0,
        ),
      ),
      leadingWidth: MediaQuery.of(context).size.width * 0.119,
      leading: Container(
        alignment: Alignment.centerLeft,
        padding: EdgeInsets.only(left: 20.0),
        child: GestureDetector(
          onTap: () => Scaffold.of(context).openDrawer(),
          child: Image.asset(
            MENU_ICON,
            fit: BoxFit.contain,
            width: 20.0,
          ),
        ),
      ),
      actions: [
        GestureDetector(
          onTap: () => {print('clicked')},
          child: Container(
            alignment: Alignment.centerRight,
            padding: EdgeInsets.only(right: 20.0),
            child: Image.asset(
              NOTIFICATION_ICON,
              fit: BoxFit.contain,
              width: 17.0,
            ),
          ),
        )
      ],
    );
  }
}
