import 'package:flutter/material.dart';
import 'package:la_isla/assets/assets.dart';
import 'package:la_isla/theme/colors.dart';
import 'package:la_isla/widgets/shared/app-drawer.dart';
import 'package:la_isla/widgets/shared/app_bar.dart';
import 'package:la_isla/widgets/shared/app_bottom_nav.dart';
import 'package:la_isla/widgets/shared/app_floating-button.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final tabBar = const TabBar(
      indicatorColor: Color(0xFFFCFCFC),
      indicatorPadding: EdgeInsets.only(bottom: 5),
      indicatorWeight: 2.5,
      tabs: [
        Tab(
          icon: ImageIcon(AssetImage(CHAT_ICN)),
        ),
        Tab(
          icon: ImageIcon(AssetImage(GROUP_ICN)),
        ),
        Tab(
          icon: ImageIcon(AssetImage(FAVOURITE_ICN)),
        ),
      ],
    );
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: PreferredSize(
          child: CustomAppBar(
            showGradient: true,
            tabView: tabBar,
          ),
          preferredSize:
              Size.fromHeight(MediaQuery.of(context).size.height * 0.19),
        ),
        drawer: CustomAppDrawer(),
        body: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.12,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(color: AppColors.primaryPink),
            ),
            Container()
          ],
        ),
      ),
    );
  }
}
