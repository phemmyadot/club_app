import 'package:flutter/material.dart';
import 'package:la_isla/assets/assets.dart';
import 'package:la_isla/theme/colors.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 60.0,
      automaticallyImplyLeading: false,
      elevation: 0.0,
      backgroundColor: AppColors.black,
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
