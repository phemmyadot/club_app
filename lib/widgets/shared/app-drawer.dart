import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:la_isla/assets/assets.dart';
import 'package:la_isla/controllers/entry_controller.dart';
import 'package:la_isla/pages/login_page.dart';
import 'package:la_isla/theme/colors.dart';

class CustomAppDrawer extends StatelessWidget {
  const CustomAppDrawer({Key? key}) : super(key: key);

  navigate(index, controller) {
    Get.back();
    controller.changeTabIndex(index);
  }

  @override
  Widget build(BuildContext context) {
    final EntryController entryPageController =
        Get.put(EntryController(), permanent: false);
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height,
      child: Drawer(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Color(0xFFF39DB6), Color(0xFF6A4162)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.only(top: 60, left: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 80.0,
                      width: 80.0,
                      decoration: BoxDecoration(
                        color: AppColors.white,
                        shape: BoxShape.circle,
                        border: Border.all(
                          width: 4,
                          color: AppColors.primaryPink,
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 10.0, top: 5.0),
                      child: Text(
                        'Keyla Samawa',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: AppColors.white,
                          fontSize: 18,
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 10.0),
                      child: Text(
                        '@trashkey',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: AppColors.white,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              Container(
                padding: EdgeInsets.only(left: 40.0, bottom: 25.0),
                child: InkWell(
                  onTap: () => navigate(0, entryPageController),
                  child: Row(
                    children: [
                      Image.asset(
                        HOME_MENU_BTN,
                        color: AppColors.secondaryPink,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Home',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: AppColors.white,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 40.0, bottom: 25.0),
                child: InkWell(
                  onTap: () => navigate(2, entryPageController),
                  child: Row(
                    children: [
                      Image.asset(
                        LOGO,
                        width: 25,
                        color: AppColors.secondaryPink,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Night Mode',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: AppColors.white,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 40.0, bottom: 25.0),
                child: InkWell(
                  onTap: () => navigate(1, entryPageController),
                  child: Row(
                    children: [
                      Image.asset(
                        EVENT_MENU_BTN,
                        color: AppColors.secondaryPink,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Events',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: AppColors.white,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 40.0, bottom: 25.0),
                child: InkWell(
                  onTap: () => navigate(3, entryPageController),
                  child: Row(
                    children: [
                      Image.asset(
                        CHAT_MENU_BTN,
                        color: AppColors.secondaryPink,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Chat rooms',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: AppColors.white,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 40.0, bottom: 25.0),
                child: Row(
                  children: [
                    Image.asset(
                      GALLERY_MENU_ICN,
                      color: AppColors.secondaryPink,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Galleries',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: AppColors.white,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 40.0, bottom: 25.0),
                child: Row(
                  children: [
                    Image.asset(
                      SHOP_MENU_ICN,
                      color: AppColors.secondaryPink,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Shop',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: AppColors.white,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 40.0, bottom: 25.0),
                child: Row(
                  children: [
                    Image.asset(
                      MUSIC_MENU_ICN,
                      color: AppColors.secondaryPink,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Music',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: AppColors.white,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () => navigate(4, entryPageController),
                child: Container(
                  padding: EdgeInsets.only(left: 40.0, bottom: 25.0),
                  child: Row(
                    children: [
                      Image.asset(
                        ACCOUNT_MENU_ICN,
                        color: AppColors.secondaryPink,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'My account',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: AppColors.white,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 40.0, bottom: 25.0),
                child: InkWell(
                  onTap: () => Get.to(() => LoginPage()),
                  child: Row(
                    children: [
                      Image.asset(
                        LOGOUT_MENU_ICN,
                        color: AppColors.secondaryPink,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Logout',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: AppColors.white,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
