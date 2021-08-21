import 'package:flutter/material.dart';
import 'package:la_isla/assets/assets.dart';
import 'package:la_isla/theme/colors.dart';

class CustomBottomNav extends StatelessWidget {
  const CustomBottomNav({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Color(0xFFF39DB6),
      shape: CircularNotchedRectangle(),
      notchMargin: 2.5,
      child: Container(
        padding: EdgeInsets.only(top: 10.0),
        child: BottomNavigationBar(
            backgroundColor: Color(0xFFF39DB6),
            type: BottomNavigationBarType.fixed,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            currentIndex: 0,
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
}
