import 'dart:ui';

import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:la_isla/assets/assets.dart';
import 'package:la_isla/controllers/entry_controller.dart';
import 'package:la_isla/pages/live_chat_page.dart';
import 'package:la_isla/pages/payment_page.dart';
import 'package:la_isla/theme/colors.dart';

class NightModePage extends StatelessWidget {
  const NightModePage({Key? key}) : super(key: key);

  buyAction(controller) {
    Get.back();
    controller.changeTabIndex(6);
  }

  @override
  Widget build(BuildContext context) {
    final EntryController entryPageController =
        Get.put(EntryController(), permanent: false);

    void openCatalogBottomSheet() {
      showModalBottomSheet(
          context: context,
          isScrollControlled: true,
          isDismissible: false,
          enableDrag: false,
          backgroundColor: Colors.grey.withOpacity(0.4),
          builder: (BuildContext context) {
            return BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 8.0, sigmaY: 8.0),
              child: Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  child: Stack(
                    children: [
                      GestureDetector(
                        onTap: () => Get.back(),
                        child: Container(
                          alignment: Alignment.topRight,
                          padding: EdgeInsets.only(top: 50, right: 20),
                          child: Icon(
                            Icons.close,
                            size: 40,
                            color: AppColors.white,
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height * 0.155,
                            bottom: 70),
                        alignment: Alignment.center,
                        child: GridView.count(
                          crossAxisCount: 2,
                          crossAxisSpacing: 25,
                          mainAxisSpacing: 15,
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          children: [
                            Stack(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(CATALOG_1),
                                        fit: BoxFit.cover),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(25),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topRight,
                                  child: Container(
                                    margin: EdgeInsets.only(right: 10, top: 10),
                                    height: 20,
                                    width: 60,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(15),
                                      ),
                                      color: AppColors.white,
                                    ),
                                    child: Center(
                                        child: Text(
                                      '7,00€',
                                      style: TextStyle(
                                          fontSize: 14, color: AppColors.black),
                                    )),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Container(
                                    alignment: Alignment.bottomCenter,
                                    decoration: BoxDecoration(
                                      color: AppColors.white,
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(15),
                                      ),
                                    ),
                                    height: MediaQuery.of(context).size.height *
                                        0.1,
                                    child: Row(
                                      children: [
                                        Column(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 8.0, left: 8.0),
                                              child: Text(
                                                'Mojito',
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.bold,
                                                    color: AppColors.black),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 2,
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 3.0, right: 15.0),
                                              child: Text(
                                                '+info',
                                                textAlign: TextAlign.left,
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    fontWeight:
                                                        FontWeight.normal,
                                                    color: AppColors.black),
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          width: 40,
                                        ),
                                        Column(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 8.0, left: 15.0),
                                              child: Text(
                                                '0',
                                                textAlign: TextAlign.right,
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.bold,
                                                    color: AppColors.black),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 2,
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                right: 3.0,
                                              ),
                                              child: Row(
                                                children: [
                                                  Container(
                                                    width: 25,
                                                    height: 20,
                                                    decoration: BoxDecoration(
                                                      color: AppColors.white,
                                                      boxShadow: [
                                                        BoxShadow(
                                                          color:
                                                              AppColors.grey2,
                                                          blurRadius:
                                                              5.0, // soften the shadow
                                                          spreadRadius:
                                                              1.0, //extend the shadow
                                                        )
                                                      ],
                                                    ),
                                                    child: Center(
                                                      child: Text(
                                                        '-',
                                                        style: TextStyle(
                                                            fontSize: 20,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            color: AppColors
                                                                .black),
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    width: 25,
                                                    height: 20,
                                                    decoration: BoxDecoration(
                                                      color: AppColors.white,
                                                      boxShadow: [
                                                        BoxShadow(
                                                          color:
                                                              AppColors.grey2,
                                                          blurRadius:
                                                              5.0, // soften the shadow
                                                          spreadRadius:
                                                              1.0, //extend the shadow
                                                        )
                                                      ],
                                                    ),
                                                    child: Center(
                                                      child: Text(
                                                        '+',
                                                        style: TextStyle(
                                                            fontSize: 20,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            color: AppColors
                                                                .black),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Stack(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(CATALOG_2),
                                        fit: BoxFit.cover),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(25),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topRight,
                                  child: Container(
                                    margin: EdgeInsets.only(right: 10, top: 10),
                                    height: 20,
                                    width: 60,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(15),
                                      ),
                                      color: AppColors.white,
                                    ),
                                    child: Center(
                                        child: Text(
                                      '7,00€',
                                      style: TextStyle(
                                          fontSize: 14, color: AppColors.black),
                                    )),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Container(
                                    alignment: Alignment.bottomCenter,
                                    decoration: BoxDecoration(
                                      color: AppColors.white,
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(15),
                                      ),
                                    ),
                                    height: MediaQuery.of(context).size.height *
                                        0.1,
                                    child: Row(
                                      children: [
                                        Column(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 8.0, left: 8.0),
                                              child: Text(
                                                'Mojito',
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.bold,
                                                    color: AppColors.black),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 2,
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 3.0, right: 15.0),
                                              child: Text(
                                                '+info',
                                                textAlign: TextAlign.left,
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    fontWeight:
                                                        FontWeight.normal,
                                                    color: AppColors.black),
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          width: 40,
                                        ),
                                        Column(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 8.0, left: 15.0),
                                              child: Text(
                                                '0',
                                                textAlign: TextAlign.right,
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.bold,
                                                    color: AppColors.black),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 2,
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                right: 3.0,
                                              ),
                                              child: Row(
                                                children: [
                                                  Container(
                                                    width: 25,
                                                    height: 20,
                                                    decoration: BoxDecoration(
                                                      color: AppColors.white,
                                                      boxShadow: [
                                                        BoxShadow(
                                                          color:
                                                              AppColors.grey2,
                                                          blurRadius:
                                                              5.0, // soften the shadow
                                                          spreadRadius:
                                                              1.0, //extend the shadow
                                                        )
                                                      ],
                                                    ),
                                                    child: Center(
                                                      child: Text(
                                                        '-',
                                                        style: TextStyle(
                                                            fontSize: 20,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            color: AppColors
                                                                .black),
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    width: 25,
                                                    height: 20,
                                                    decoration: BoxDecoration(
                                                      color: AppColors.white,
                                                      boxShadow: [
                                                        BoxShadow(
                                                          color:
                                                              AppColors.grey2,
                                                          blurRadius:
                                                              5.0, // soften the shadow
                                                          spreadRadius:
                                                              1.0, //extend the shadow
                                                        )
                                                      ],
                                                    ),
                                                    child: Center(
                                                      child: Text(
                                                        '+',
                                                        style: TextStyle(
                                                            fontSize: 20,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            color: AppColors
                                                                .black),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Stack(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(CATALOG_3),
                                        fit: BoxFit.cover),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(25),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topRight,
                                  child: Container(
                                    margin: EdgeInsets.only(right: 10, top: 10),
                                    height: 20,
                                    width: 60,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(15),
                                      ),
                                      color: AppColors.white,
                                    ),
                                    child: Center(
                                        child: Text(
                                      '7,00€',
                                      style: TextStyle(
                                          fontSize: 14, color: AppColors.black),
                                    )),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Container(
                                    alignment: Alignment.bottomCenter,
                                    decoration: BoxDecoration(
                                      color: AppColors.white,
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(15),
                                      ),
                                    ),
                                    height: MediaQuery.of(context).size.height *
                                        0.1,
                                    child: Row(
                                      children: [
                                        Column(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 8.0, left: 8.0),
                                              child: Text(
                                                'Mojito',
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.bold,
                                                    color: AppColors.black),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 2,
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 3.0, right: 15.0),
                                              child: Text(
                                                '+info',
                                                textAlign: TextAlign.left,
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    fontWeight:
                                                        FontWeight.normal,
                                                    color: AppColors.black),
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          width: 40,
                                        ),
                                        Column(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 8.0, left: 15.0),
                                              child: Text(
                                                '0',
                                                textAlign: TextAlign.right,
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.bold,
                                                    color: AppColors.black),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 2,
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                right: 3.0,
                                              ),
                                              child: Row(
                                                children: [
                                                  Container(
                                                    width: 25,
                                                    height: 20,
                                                    decoration: BoxDecoration(
                                                      color: AppColors.white,
                                                      boxShadow: [
                                                        BoxShadow(
                                                          color:
                                                              AppColors.grey2,
                                                          blurRadius:
                                                              5.0, // soften the shadow
                                                          spreadRadius:
                                                              1.0, //extend the shadow
                                                        )
                                                      ],
                                                    ),
                                                    child: Center(
                                                      child: Text(
                                                        '-',
                                                        style: TextStyle(
                                                            fontSize: 20,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            color: AppColors
                                                                .black),
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    width: 25,
                                                    height: 20,
                                                    decoration: BoxDecoration(
                                                      color: AppColors.white,
                                                      boxShadow: [
                                                        BoxShadow(
                                                          color:
                                                              AppColors.grey2,
                                                          blurRadius:
                                                              5.0, // soften the shadow
                                                          spreadRadius:
                                                              1.0, //extend the shadow
                                                        )
                                                      ],
                                                    ),
                                                    child: Center(
                                                      child: Text(
                                                        '+',
                                                        style: TextStyle(
                                                            fontSize: 20,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            color: AppColors
                                                                .black),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Stack(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(CATALOG_4),
                                        fit: BoxFit.cover),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(25),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topRight,
                                  child: Container(
                                    margin: EdgeInsets.only(right: 10, top: 10),
                                    height: 20,
                                    width: 60,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(15),
                                      ),
                                      color: AppColors.white,
                                    ),
                                    child: Center(
                                        child: Text(
                                      '7,00€',
                                      style: TextStyle(
                                          fontSize: 14, color: AppColors.black),
                                    )),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Container(
                                    alignment: Alignment.bottomCenter,
                                    decoration: BoxDecoration(
                                      color: AppColors.white,
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(15),
                                      ),
                                    ),
                                    height: MediaQuery.of(context).size.height *
                                        0.1,
                                    child: Row(
                                      children: [
                                        Column(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 8.0, left: 8.0),
                                              child: Text(
                                                'Mojito',
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.bold,
                                                    color: AppColors.black),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 2,
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 3.0, right: 15.0),
                                              child: Text(
                                                '+info',
                                                textAlign: TextAlign.left,
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    fontWeight:
                                                        FontWeight.normal,
                                                    color: AppColors.black),
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          width: 40,
                                        ),
                                        Column(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 8.0, left: 15.0),
                                              child: Text(
                                                '0',
                                                textAlign: TextAlign.right,
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.bold,
                                                    color: AppColors.black),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 2,
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                right: 3.0,
                                              ),
                                              child: Row(
                                                children: [
                                                  Container(
                                                    width: 25,
                                                    height: 20,
                                                    decoration: BoxDecoration(
                                                      color: AppColors.white,
                                                      boxShadow: [
                                                        BoxShadow(
                                                          color:
                                                              AppColors.grey2,
                                                          blurRadius:
                                                              5.0, // soften the shadow
                                                          spreadRadius:
                                                              1.0, //extend the shadow
                                                        )
                                                      ],
                                                    ),
                                                    child: Center(
                                                      child: Text(
                                                        '-',
                                                        style: TextStyle(
                                                            fontSize: 20,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            color: AppColors
                                                                .black),
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    width: 25,
                                                    height: 20,
                                                    decoration: BoxDecoration(
                                                      color: AppColors.white,
                                                      boxShadow: [
                                                        BoxShadow(
                                                          color:
                                                              AppColors.grey2,
                                                          blurRadius:
                                                              5.0, // soften the shadow
                                                          spreadRadius:
                                                              1.0, //extend the shadow
                                                        )
                                                      ],
                                                    ),
                                                    child: Center(
                                                      child: Text(
                                                        '+',
                                                        style: TextStyle(
                                                            fontSize: 20,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            color: AppColors
                                                                .black),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Stack(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(CATALOG_5),
                                        fit: BoxFit.cover),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(25),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topRight,
                                  child: Container(
                                    margin: EdgeInsets.only(right: 10, top: 10),
                                    height: 20,
                                    width: 60,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(15),
                                      ),
                                      color: AppColors.white,
                                    ),
                                    child: Center(
                                        child: Text(
                                      '7,00€',
                                      style: TextStyle(
                                          fontSize: 14, color: AppColors.black),
                                    )),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Container(
                                    alignment: Alignment.bottomCenter,
                                    decoration: BoxDecoration(
                                      color: AppColors.white,
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(15),
                                      ),
                                    ),
                                    height: MediaQuery.of(context).size.height *
                                        0.1,
                                    child: Row(
                                      children: [
                                        Column(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 8.0, left: 8.0),
                                              child: Text(
                                                'Mojito',
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.bold,
                                                    color: AppColors.black),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 2,
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 3.0, right: 15.0),
                                              child: Text(
                                                '+info',
                                                textAlign: TextAlign.left,
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    fontWeight:
                                                        FontWeight.normal,
                                                    color: AppColors.black),
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          width: 40,
                                        ),
                                        Column(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 8.0, left: 15.0),
                                              child: Text(
                                                '0',
                                                textAlign: TextAlign.right,
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.bold,
                                                    color: AppColors.black),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 2,
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                right: 3.0,
                                              ),
                                              child: Row(
                                                children: [
                                                  Container(
                                                    width: 25,
                                                    height: 20,
                                                    decoration: BoxDecoration(
                                                      color: AppColors.white,
                                                      boxShadow: [
                                                        BoxShadow(
                                                          color:
                                                              AppColors.grey2,
                                                          blurRadius:
                                                              5.0, // soften the shadow
                                                          spreadRadius:
                                                              1.0, //extend the shadow
                                                        )
                                                      ],
                                                    ),
                                                    child: Center(
                                                      child: Text(
                                                        '-',
                                                        style: TextStyle(
                                                            fontSize: 20,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            color: AppColors
                                                                .black),
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    width: 25,
                                                    height: 20,
                                                    decoration: BoxDecoration(
                                                      color: AppColors.white,
                                                      boxShadow: [
                                                        BoxShadow(
                                                          color:
                                                              AppColors.grey2,
                                                          blurRadius:
                                                              5.0, // soften the shadow
                                                          spreadRadius:
                                                              1.0, //extend the shadow
                                                        )
                                                      ],
                                                    ),
                                                    child: Center(
                                                      child: Text(
                                                        '+',
                                                        style: TextStyle(
                                                            fontSize: 20,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            color: AppColors
                                                                .black),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Stack(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(CATALOG_6),
                                        fit: BoxFit.cover),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(25),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topRight,
                                  child: Container(
                                    margin: EdgeInsets.only(right: 10, top: 10),
                                    height: 20,
                                    width: 60,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(15),
                                      ),
                                      color: AppColors.white,
                                    ),
                                    child: Center(
                                        child: Text(
                                      '7,00€',
                                      style: TextStyle(
                                          fontSize: 14, color: AppColors.black),
                                    )),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Container(
                                    alignment: Alignment.bottomCenter,
                                    decoration: BoxDecoration(
                                      color: AppColors.white,
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(15),
                                      ),
                                    ),
                                    height: MediaQuery.of(context).size.height *
                                        0.1,
                                    child: Row(
                                      children: [
                                        Column(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 8.0, left: 8.0),
                                              child: Text(
                                                'Mojito',
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.bold,
                                                    color: AppColors.black),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 2,
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 3.0, right: 15.0),
                                              child: Text(
                                                '+info',
                                                textAlign: TextAlign.left,
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    fontWeight:
                                                        FontWeight.normal,
                                                    color: AppColors.black),
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          width: 40,
                                        ),
                                        Column(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 8.0, left: 15.0),
                                              child: Text(
                                                '0',
                                                textAlign: TextAlign.right,
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.bold,
                                                    color: AppColors.black),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 2,
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                right: 3.0,
                                              ),
                                              child: Row(
                                                children: [
                                                  Container(
                                                    width: 25,
                                                    height: 20,
                                                    decoration: BoxDecoration(
                                                      color: AppColors.white,
                                                      boxShadow: [
                                                        BoxShadow(
                                                          color:
                                                              AppColors.grey2,
                                                          blurRadius:
                                                              5.0, // soften the shadow
                                                          spreadRadius:
                                                              1.0, //extend the shadow
                                                        )
                                                      ],
                                                    ),
                                                    child: Center(
                                                      child: Text(
                                                        '-',
                                                        style: TextStyle(
                                                            fontSize: 20,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            color: AppColors
                                                                .black),
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    width: 25,
                                                    height: 20,
                                                    decoration: BoxDecoration(
                                                      color: AppColors.white,
                                                      boxShadow: [
                                                        BoxShadow(
                                                          color:
                                                              AppColors.grey2,
                                                          blurRadius:
                                                              5.0, // soften the shadow
                                                          spreadRadius:
                                                              1.0, //extend the shadow
                                                        )
                                                      ],
                                                    ),
                                                    child: Center(
                                                      child: Text(
                                                        '+',
                                                        style: TextStyle(
                                                            fontSize: 20,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            color: AppColors
                                                                .black),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(bottom: 10),
                              height: 50,
                              width: 220,
                              decoration: BoxDecoration(
                                color: AppColors.white,
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(15),
                                  bottomRight: Radius.circular(15),
                                ),
                              ),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20.0),
                                    child: Text(
                                      'TOTAL',
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                          color: AppColors.black),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text(
                                    '24,00€',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: AppColors.black),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            GestureDetector(
                              onTap: () => Get.to(() => PaymentPage()),
                              child: Container(
                                margin: EdgeInsets.only(bottom: 10),
                                height: 50,
                                width: 120,
                                decoration: BoxDecoration(
                                  color: AppColors.white,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(15),
                                  ),
                                ),
                                child: Center(
                                  child: Text(
                                    'Buy',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.normal,
                                        color: AppColors.black),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  )),
            );
          });
    }

    catalogSection() {
      return Container(
        padding: EdgeInsets.only(bottom: 40.0),
        height: MediaQuery.of(context).size.height * 0.42,
        width: MediaQuery.of(context).size.width * 0.9,
        child: CarouselSlider(
          items: [
            Container(
              padding: EdgeInsets.only(top: 30.0),
              width: MediaQuery.of(context).size.width * 0.5,
              decoration: BoxDecoration(
                color: AppColors.white.withOpacity(0.4),
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.white,
                      border: Border.all(
                        width: 7,
                        color: Colors.grey.withOpacity(0.4),
                      ),
                    ),
                    width: 120.0,
                    height: 120.0,
                    child: Image.asset(MOJITO_ICN),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 10.0),
                    child: Text(
                      'Mojito',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: AppColors.black,
                          letterSpacing: 2.5),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 5.0),
                    child: Text(
                      '6,00£',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: AppColors.primaryPink,
                          letterSpacing: 2.5),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 5.0),
                    child: Text(
                      '3 units',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                        color: AppColors.primaryPink,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () => {openCatalogBottomSheet()},
              child: Container(
                padding: EdgeInsets.only(top: 30.0),
                width: MediaQuery.of(context).size.width * 0.5,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  color: AppColors.white.withOpacity(0.1),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.only(top: 15.0),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColors.white,
                        border: Border.all(
                          width: 7,
                          color: Colors.grey.withOpacity(0.4),
                        ),
                      ),
                      width: 120.0,
                      height: 120.0,
                      child: Text(
                        '+',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 60,
                            fontWeight: FontWeight.bold,
                            color: AppColors.primaryPink,
                            letterSpacing: 2.5),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 15.0),
                      child: Text(
                        'Add More',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 26,
                            fontWeight: FontWeight.bold,
                            color: AppColors.white,
                            letterSpacing: 2.5),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 30.0),
              width: MediaQuery.of(context).size.width * 0.5,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                color: AppColors.white.withOpacity(0.4),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.white,
                      border: Border.all(
                        width: 7,
                        color: Colors.grey.withOpacity(0.4),
                      ),
                    ),
                    width: 120.0,
                    height: 120.0,
                    child: Image.asset(SOFTDRINK_ICN),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 10.0),
                    child: Text(
                      'Soft drink',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: AppColors.black,
                          letterSpacing: 2.5),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 5.0),
                    child: Text(
                      '2,50£',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: AppColors.primaryPink,
                          letterSpacing: 2.5),
                    ),
                  ),
                ],
              ),
            ),
          ],
          options: CarouselOptions(
            height: MediaQuery.of(context).size.height,
            enlargeCenterPage: false,
            autoPlay: false,
            autoPlayCurve: Curves.fastOutSlowIn,
            enableInfiniteScroll: true,
            autoPlayAnimationDuration: Duration(milliseconds: 800),
            viewportFraction: 0.6,
          ),
        ),
      );
    }

    liveChatSection() {
      return GestureDetector(
        onTap: () => Get.to(() => LiveChatPage()),
        child: Container(
          decoration: BoxDecoration(
            color: AppColors.black,
            boxShadow: [
              BoxShadow(
                color: AppColors.primaryPink,
                blurRadius: 5.0, // soften the shadow
                spreadRadius: 1.0, //extend the shadow
              )
            ],
            borderRadius: BorderRadius.circular(20.0),
            image: DecorationImage(
              image: AssetImage(EVENT_BG_2),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                  Colors.transparent.withOpacity(0.8), BlendMode.dstATop),
            ),
          ),
          height: MediaQuery.of(context).size.height * 0.25,
          width: MediaQuery.of(context).size.width * 0.93,
          child: Container(
            alignment: Alignment.topLeft,
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    padding: EdgeInsets.all(20),
                    height: 90,
                    width: 90,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColors.primaryPink.withOpacity(0.2),
                        border: Border.all(
                            color: AppColors.primaryPink.withOpacity(0.2),
                            width: 2)),
                    child: Container(
                      padding: EdgeInsets.all(10),
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppColors.primaryPink.withOpacity(0.2),
                          border: Border.all(
                              color: AppColors.primaryPink, width: 2)),
                      child: Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage(DJ1),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    margin: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width * 0.2),
                    child: Stack(
                      children: [
                        Container(
                          padding: EdgeInsets.only(top: 30),
                          child: Text(
                            'MadMike808',
                            style: TextStyle(
                                color: AppColors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                              top: MediaQuery.of(context).size.height * 0.079),
                          child: Row(
                            children: [
                              Container(
                                padding: EdgeInsets.all(5),
                                height: 20,
                                width: 20,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: AppColors.primaryPink.withOpacity(0.4),
                                ),
                                child: Center(
                                  child: Container(
                                    height: 5,
                                    width: 5,
                                    color: AppColors.primaryPink,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 1,
                              ),
                              Container(
                                child: Text(
                                  'Live',
                                  style: TextStyle(
                                      color: AppColors.primaryPink,
                                      fontSize: 12),
                                ),
                              )
                            ],
                          ),
                        )
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

    drinksCatalogSection() {
      return Container(
        padding: EdgeInsets.only(bottom: 20.0, top: 20.0),
        height: MediaQuery.of(context).size.height * 0.42,
        width: MediaQuery.of(context).size.width * 0.9,
        child: CarouselSlider(
          items: [
            Container(
              padding: EdgeInsets.only(top: 30.0),
              width: MediaQuery.of(context).size.width * 0.5,
              decoration: BoxDecoration(
                color: AppColors.white.withOpacity(0.4),
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.white,
                      border: Border.all(
                        width: 7,
                        color: Colors.grey.withOpacity(0.4),
                      ),
                    ),
                    width: 120.0,
                    height: 120.0,
                    child: Image.asset(MOJITO_ICN),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 10.0),
                    child: Text(
                      'Shots',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: AppColors.black,
                          letterSpacing: 2.5),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 5.0),
                    child: Text(
                      '6 x 12,00£',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: AppColors.white,
                          letterSpacing: 2.5),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 30.0),
              width: MediaQuery.of(context).size.width * 0.5,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                color: AppColors.white.withOpacity(0.4),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.white,
                      border: Border.all(
                        width: 7,
                        color: Colors.grey.withOpacity(0.4),
                      ),
                    ),
                    width: 120.0,
                    height: 120.0,
                    child: Image.asset(MOJITO_ICN),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 10.0),
                    child: Text(
                      'Bonocopa',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: AppColors.black,
                          letterSpacing: 2.5),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 5.0),
                    child: Text(
                      '2 x 11,00£',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: AppColors.white,
                          letterSpacing: 2.5),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 30.0),
              width: MediaQuery.of(context).size.width * 0.5,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                color: AppColors.white.withOpacity(0.4),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.white,
                      border: Border.all(
                        width: 7,
                        color: Colors.grey.withOpacity(0.4),
                      ),
                    ),
                    width: 120.0,
                    height: 120.0,
                    child: Image.asset(MOJITO_ICN),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 10.0),
                    child: Text(
                      'Bonocopa',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: AppColors.black,
                          letterSpacing: 2.5),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 5.0),
                    child: Text(
                      '4 x 20,00£',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: AppColors.white,
                          letterSpacing: 2.5),
                    ),
                  ),
                ],
              ),
            ),
          ],
          options: CarouselOptions(
            height: MediaQuery.of(context).size.height,
            enlargeCenterPage: false,
            autoPlay: false,
            autoPlayCurve: Curves.fastOutSlowIn,
            enableInfiniteScroll: true,
            autoPlayAnimationDuration: Duration(milliseconds: 800),
            viewportFraction: 0.6,
          ),
        ),
      );
    }

    wardropeCatalogSection() {
      return Container(
        padding: EdgeInsets.only(bottom: 20.0, top: 20.0),
        height: MediaQuery.of(context).size.height * 0.42,
        width: MediaQuery.of(context).size.width * 0.9,
        child: CarouselSlider(
          items: [
            Container(
              padding: EdgeInsets.only(top: 30.0),
              width: MediaQuery.of(context).size.width * 0.5,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                color: AppColors.white.withOpacity(0.4),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.white,
                      border: Border.all(
                        width: 7,
                        color: Colors.grey.withOpacity(0.4),
                      ),
                    ),
                    width: 120.0,
                    height: 120.0,
                    child: Image.asset(SHIRT_ICN),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 10.0),
                    child: Text(
                      'Number 58',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: AppColors.black,
                          letterSpacing: 2.5),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 5.0),
                    child: Text(
                      '58',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: AppColors.white,
                          letterSpacing: 2.5),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 30.0, bottom: 30.0),
              width: MediaQuery.of(context).size.width * 0.5,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                color: AppColors.white.withOpacity(0.1),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 15.0),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.white,
                      border: Border.all(
                        width: 7,
                        color: Colors.grey.withOpacity(0.4),
                      ),
                    ),
                    width: 120.0,
                    height: 120.0,
                    child: Text(
                      '+',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 60,
                          fontWeight: FontWeight.bold,
                          color: AppColors.primaryPink,
                          letterSpacing: 2.5),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 15.0),
                    child: Text(
                      'Add More',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                          color: AppColors.white,
                          letterSpacing: 2.5),
                    ),
                  ),
                ],
              ),
            ),
          ],
          options: CarouselOptions(
            height: MediaQuery.of(context).size.height,
            enlargeCenterPage: false,
            autoPlay: false,
            autoPlayCurve: Curves.fastOutSlowIn,
            enableInfiniteScroll: true,
            autoPlayAnimationDuration: Duration(milliseconds: 800),
            viewportFraction: 0.6,
          ),
        ),
      );
    }

    return Container(
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(EVENT_PAGE_BG),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(
              AppColors.white.withOpacity(0.2), BlendMode.dstATop),
        ),
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                  child: Text(
                    'My Usage',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: AppColors.white,
                      fontSize: 24,
                    ),
                  ),
                ),
                SizedBox(
                  width: 75,
                ),
                Container(
                  alignment: Alignment.topRight,
                  decoration: BoxDecoration(
                    color: AppColors.primaryPink,
                    border: Border.all(width: 1, color: AppColors.primaryPink),
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  height: 30.0,
                  child: Row(
                    children: [
                      Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                        child: Text(
                          'See more',
                          style: TextStyle(
                            color: AppColors.white,
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(right: 10.0, top: 3.0),
                        child: ImageIcon(
                          AssetImage(SEE_MORE_ICN),
                          color: AppColors.white,
                          size: 15,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            catalogSection(),
            liveChatSection(),
            Container(
              padding: EdgeInsets.only(left: 40, top: 40),
              alignment: Alignment.centerLeft,
              child: Text(
                'Offers',
                style: TextStyle(
                  color: AppColors.white,
                  fontSize: 24,
                ),
              ),
            ),
            drinksCatalogSection(),
            Container(
              padding: EdgeInsets.only(left: 40, top: 10, bottom: 20),
              alignment: Alignment.centerLeft,
              child: Text(
                'Wardrope',
                style: TextStyle(
                  color: AppColors.white,
                  fontSize: 24,
                ),
              ),
            ),
            wardropeCatalogSection(),
            SizedBox(height: 30.0)
          ],
        ),
      ),
    );
  }
}
