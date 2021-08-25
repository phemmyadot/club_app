import 'package:flutter/material.dart';
import 'package:la_isla/assets/assets.dart';
import 'package:la_isla/theme/colors.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar(
      {Key? key, required this.showGradient, required this.tabView})
      : super(key: key);
  final bool showGradient;
  final Widget tabView;

  @override
  Widget build(BuildContext context) {
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
          ])),
    );
    return AppBar(
      toolbarHeight: 80.0,
      automaticallyImplyLeading: false,
      elevation: 0.0,
      backgroundColor: AppColors.black,
      flexibleSpace: showGradient ? gradientBg : noGradientBg,
      bottom: PreferredSize(
        child: tabView,
        preferredSize:
            Size.fromHeight(MediaQuery.of(context).size.height * 0.1),
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
