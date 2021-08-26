import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:la_isla/assets/assets.dart';
import 'package:la_isla/controllers/entry_controller.dart';
import 'package:la_isla/theme/colors.dart';

class CatalogPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final EntryController entryPageController =
        Get.put(EntryController(), permanent: false);

    return Container(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 8.0, sigmaY: 8.0),
        child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Stack(
              children: [
                GestureDetector(
                  onTap: () => {Get.back()},
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
                              height: MediaQuery.of(context).size.height * 0.1,
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
                                              fontWeight: FontWeight.normal,
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
                                                    color: AppColors.grey2,
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
                                                      color: AppColors.black),
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
                                                    color: AppColors.grey2,
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
                                                      color: AppColors.black),
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
                              height: MediaQuery.of(context).size.height * 0.1,
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
                                              fontWeight: FontWeight.normal,
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
                                                    color: AppColors.grey2,
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
                                                      color: AppColors.black),
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
                                                    color: AppColors.grey2,
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
                                                      color: AppColors.black),
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
                              height: MediaQuery.of(context).size.height * 0.1,
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
                                              fontWeight: FontWeight.normal,
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
                                                    color: AppColors.grey2,
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
                                                      color: AppColors.black),
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
                                                    color: AppColors.grey2,
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
                                                      color: AppColors.black),
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
                              height: MediaQuery.of(context).size.height * 0.1,
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
                                              fontWeight: FontWeight.normal,
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
                                                    color: AppColors.grey2,
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
                                                      color: AppColors.black),
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
                                                    color: AppColors.grey2,
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
                                                      color: AppColors.black),
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
                              height: MediaQuery.of(context).size.height * 0.1,
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
                                              fontWeight: FontWeight.normal,
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
                                                    color: AppColors.grey2,
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
                                                      color: AppColors.black),
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
                                                    color: AppColors.grey2,
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
                                                      color: AppColors.black),
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
                              height: MediaQuery.of(context).size.height * 0.1,
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
                                              fontWeight: FontWeight.normal,
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
                                                    color: AppColors.grey2,
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
                                                      color: AppColors.black),
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
                                                    color: AppColors.grey2,
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
                                                      color: AppColors.black),
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
                        onTap: () => entryPageController.changeTabIndex(6),
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
      ),
    );
  }
}
