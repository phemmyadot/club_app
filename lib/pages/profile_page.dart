import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:la_isla/assets/assets.dart';
import 'package:la_isla/theme/colors.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    headerSection() {
      return Container(
        height: MediaQuery.of(context).size.height * 0.45,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: AppColors.black,
          image: DecorationImage(
            image: AssetImage(PROFILE_BG),
            fit: BoxFit.cover,
            colorFilter: new ColorFilter.mode(
                Colors.black.withOpacity(0.2), BlendMode.dstATop),
          ),
        ),
        child: Stack(
          children: [
            Container(
              margin: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.30),
              padding: EdgeInsets.all(10),
              height: 170,
              width: 170,
              decoration: BoxDecoration(
                  border: Border.all(color: AppColors.grey2, width: 2),
                  shape: BoxShape.circle),
              child: Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage(PROFILE_BG),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.60, top: 100),
              padding: EdgeInsets.all(10),
              height: 50,
              width: 50,
              decoration:
                  BoxDecoration(shape: BoxShape.circle, color: AppColors.grey2),
              child: Icon(Icons.camera_enhance),
            ),
            Container(
              margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.3,
                  left: MediaQuery.of(context).size.width * 0.39),
              child: Text(
                'ItsJCX',
                style: TextStyle(
                    color: AppColors.white,
                    fontSize: 34,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 5),
                margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.4,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(width: 1, color: AppColors.white),
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      height: 30.0,
                      child: Row(
                        children: [
                          Container(
                            padding: EdgeInsets.only(left: 5.0),
                            child: ImageIcon(
                              AssetImage(DISCOUNT_ICN),
                              color: AppColors.white,
                              size: 15,
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 4),
                            child: Text(
                              'Discounts',
                              style: TextStyle(
                                color: AppColors.white,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(width: 10),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(width: 1, color: AppColors.white),
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      height: 30.0,
                      child: Row(
                        children: [
                          Container(
                            padding: EdgeInsets.only(left: 5.0),
                            child: ImageIcon(
                              AssetImage(RESERVATION_ICN),
                              color: AppColors.white,
                              size: 15,
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 4),
                            child: Text(
                              'Reservation',
                              style: TextStyle(
                                color: AppColors.white,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(width: 10),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(width: 1, color: AppColors.white),
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      height: 30.0,
                      child: Row(
                        children: [
                          Container(
                            padding: EdgeInsets.only(left: 5.0),
                            child: ImageIcon(
                              AssetImage(DISCOUNT_ICN),
                              color: AppColors.white,
                              size: 15,
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 4),
                            child: Text(
                              'Gallery',
                              style: TextStyle(
                                color: AppColors.white,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(width: 10),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                            width: 1,
                            color: AppColors
                                .white //                   <--- border width here
                            ),
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      height: 30.0,
                      child: Row(
                        children: [
                          Container(
                            padding: EdgeInsets.only(left: 5.0),
                            child: ImageIcon(
                              AssetImage(PROFILE_MENU_BTN),
                              color: AppColors.white,
                              size: 15,
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 4),
                            child: Text(
                              'profile',
                              style: TextStyle(
                                color: AppColors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      );
    }

    galleryTitleSection() {
      return Container(
        child: Row(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Text(
                'Gallery',
                style: TextStyle(
                    color: AppColors.white,
                    fontSize: 34,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.4,
            ),
            Container(
                padding: EdgeInsets.only(top: 15),
                child: Image.asset(GRID_ICN)),
            Container(
              padding: EdgeInsets.only(top: 15),
              child: Platform.isIOS
                  ? CupertinoSwitch(
                      value: false,
                      activeColor: AppColors.white,
                      trackColor: AppColors.primaryPink,
                      onChanged: (value) => {},
                    )
                  : Switch(
                      value: false,
                      activeColor: AppColors.white,
                      activeTrackColor: AppColors.primaryPink,
                      inactiveThumbColor: AppColors.white,
                      inactiveTrackColor: AppColors.primaryPink,
                      onChanged: (value) => {},
                    ),
            ),
          ],
        ),
      );
    }

    gallerySection() {
      return Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  height: 170,
                  width: 170,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                      image: DecorationImage(
                          image: AssetImage(DJ1), fit: BoxFit.cover)),
                ),
                SizedBox(
                  width: 30,
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(15),
                              ),
                              image: DecorationImage(
                                  image: AssetImage(PROFILE_BG),
                                  fit: BoxFit.cover)),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(15),
                              ),
                              image: DecorationImage(
                                  image: AssetImage(DJ2), fit: BoxFit.cover)),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(15),
                              ),
                              image: DecorationImage(
                                  image: AssetImage(DJ3), fit: BoxFit.cover)),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(15),
                              ),
                              image: DecorationImage(
                                  image: AssetImage(DJ1), fit: BoxFit.cover)),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Container(
                  height: 170,
                  width: 170,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                      image: DecorationImage(
                          image: AssetImage(DJ3), fit: BoxFit.cover)),
                ),
                SizedBox(
                  width: 30,
                ),
                Container(
                  height: 170,
                  width: 170,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                      image: DecorationImage(
                          image: AssetImage(DJ1), fit: BoxFit.cover)),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(15),
                              ),
                              image: DecorationImage(
                                  image: AssetImage(DJ3), fit: BoxFit.cover)),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(15),
                            ),
                            image: DecorationImage(
                                image: AssetImage(DJ2), fit: BoxFit.cover),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(15),
                              ),
                              image: DecorationImage(
                                  image: AssetImage(DJ2), fit: BoxFit.cover)),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(15),
                              ),
                              image: DecorationImage(
                                  image: AssetImage(PROFILE_BG),
                                  fit: BoxFit.cover)),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  width: 30,
                ),
                Container(
                  height: 170,
                  width: 180,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                      image: DecorationImage(
                          image: AssetImage(DJ2), fit: BoxFit.cover)),
                ),
              ],
            ),
          ],
        ),
      );
    }

    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.only(bottom: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            headerSection(),
            galleryTitleSection(),
            gallerySection(),
          ],
        ),
      ),
    );
  }
}
