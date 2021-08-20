import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:la_isla/assets/assets.dart';
import 'package:la_isla/theme/colors.dart';

class EventPage extends StatelessWidget {
  const EventPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 60.0,
        automaticallyImplyLeading: false,
        elevation: 0.0,
        backgroundColor: AppColors.black,
        title: Row(
          children: [
            GestureDetector(
              onTap: () => {},
              child: Container(
                padding: EdgeInsets.only(left: 10.0),
                child: Image.asset(
                  MENU_ICON,
                  fit: BoxFit.contain,
                  width: 20.0,
                ),
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.32,
            ),
            Container(
              alignment: Alignment.center,
              child: Container(
                padding: EdgeInsets.only(bottom: 7.0),
                child: Image.asset(
                  LOGO_WITH_TEXT,
                  fit: BoxFit.contain,
                  width: 80.0,
                ),
              ),
            ),
          ],
        ),
        actions: [
          GestureDetector(
            onTap: () => {print('clicked')},
            child: Container(
              padding: EdgeInsets.only(right: 20.0),
              child: Image.asset(
                NOTIFICATION_ICON,
                fit: BoxFit.contain,
                width: 20.0,
              ),
            ),
          )
        ],
      ),
    );
  }
}
