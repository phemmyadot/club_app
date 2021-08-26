import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:la_isla/assets/assets.dart';
import 'package:la_isla/controllers/entry_controller.dart';
import 'package:la_isla/pages/chat_room_page.dart';
import 'package:la_isla/pages/event_details_page.dart';
import 'package:la_isla/pages/home_page.dart';
import 'package:la_isla/pages/night_mode_page.dart';
import 'package:la_isla/pages/payment_page.dart';
import 'package:la_isla/pages/profile_page.dart';
import 'package:la_isla/theme/colors.dart';
import 'package:la_isla/widgets/shared/app-drawer.dart';
import 'package:la_isla/widgets/shared/app_bar.dart';
import 'package:la_isla/widgets/shared/app_floating-button.dart';

import 'chat_page.dart';

class EntryPage extends StatelessWidget {
  buildBottomNavigation(context, entryPageController) {
    return BottomAppBar(
      color: AppColors.gradient1,
      shape: CircularNotchedRectangle(),
      notchMargin: 2.5,
      child: Container(
        padding: EdgeInsets.only(top: 10.0),
        child: BottomNavigationBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            type: BottomNavigationBarType.fixed,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            onTap: entryPageController.changeTabIndex,
            items: [
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage(HOME_MENU_BTN),
                  color: AppColors.white,
                  size: 30,
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Container(
                  padding: EdgeInsets.only(right: 30),
                  child: ImageIcon(
                    AssetImage(EVENT_MENU_BTN),
                    color: AppColors.white,
                    size: 30,
                  ),
                ),
                label: 'Event',
              ),
              BottomNavigationBarItem(
                icon: Container(
                  width: 50.0,
                  padding: EdgeInsets.only(top: 10),
                  child: ImageIcon(
                    AssetImage(LINE_MENU_BTN),
                    color: AppColors.white,
                    size: 30,
                  ),
                ),
                label: 'Line',
              ),
              BottomNavigationBarItem(
                icon: Container(
                  width: 50.0,
                  child: ImageIcon(
                    AssetImage(CHAT_MENU_BTN),
                    color: AppColors.white,
                    size: 30,
                  ),
                ),
                label: 'Chat',
              ),
              BottomNavigationBarItem(
                icon: Container(
                  width: 50.0,
                  child: ImageIcon(
                    AssetImage(PROFILE_MENU_BTN),
                    color: AppColors.white,
                    size: 30,
                  ),
                ),
                label: 'Profile',
              ),
            ]),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final EntryController entryPageController =
        Get.put(EntryController(), permanent: false);

    return Obx(
      () => Scaffold(
        backgroundColor: entryPageController.tabIndex.value == 5 ||
                entryPageController.tabIndex.value == 3
            ? AppColors.white
            : AppColors.black,
        drawer: CustomAppDrawer(),
        appBar: PreferredSize(
          preferredSize: entryPageController.tabIndex.value == 6
              ? Size.fromHeight(MediaQuery.of(context).size.height * 0)
              : Size.fromHeight(MediaQuery.of(context).size.height * 0.15),
          child: CustomAppBar(
            showGradient: entryPageController.tabIndex.value == 5 ||
                    entryPageController.tabIndex.value == 3
                ? true
                : false,
            showTabView: entryPageController.tabIndex.value == 3 ||
                    entryPageController.tabIndex.value == 5
                ? true
                : false,
          ),
        ),
        bottomNavigationBar: entryPageController.tabIndex.value == 5 ||
                entryPageController.tabIndex.value == 6
            ? BottomAppBar()
            : buildBottomNavigation(context, entryPageController),
        floatingActionButton: entryPageController.tabIndex.value == 5 ||
                entryPageController.tabIndex.value == 6
            ? Container()
            : CustomFloatingButton(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        body: IndexedStack(
          index: entryPageController.tabIndex.value,
          children: [
            HomePage(),
            EventDetailsPage(),
            NightModePage(),
            ChatRoomPage(),
            ProfilePage(),
            ChatPage(),
            PaymentPage(),
          ],
        ),
      ),
    );
  }
}
