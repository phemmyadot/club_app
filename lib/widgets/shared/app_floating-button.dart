import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:la_isla/assets/assets.dart';
import 'package:la_isla/pages/night_mode_page.dart';

class CustomFloatingButton extends StatelessWidget {
  const CustomFloatingButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 10),
      child: Container(
        height: 70,
        width: 70,
        child: FloatingActionButton(
          backgroundColor: Colors.transparent,
          elevation: 0,
          onPressed: () => Get.to(() => NightModePage()),
          child: Container(
            height: 75,
            width: 75,
            decoration: BoxDecoration(
              border: Border.all(width: 5),
              shape: BoxShape.circle,
              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [Color(0xFFF39DB6), Color(0xFF6A4162)],
              ),
            ),
            child: Container(
              padding: EdgeInsets.all(9.0),
              child: Image.asset(
                LOGO,
                fit: BoxFit.scaleDown,
                width: 20.0,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
