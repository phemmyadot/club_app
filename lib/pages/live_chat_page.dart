import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:la_isla/assets/assets.dart';
import 'package:la_isla/theme/colors.dart';
import 'package:la_isla/theme/text_styles.dart';
import 'package:la_isla/widgets/form/text_field.dart';

class LiveChatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    eventIndicatorSection() {
      return Padding(
        padding: EdgeInsets.only(
            top: MediaQuery.of(context).size.height * 0.065,
            left: MediaQuery.of(context).size.width * 0.042),
        child: Row(
          children: [
            Container(
              height: 5,
              width: 90,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
                color: AppColors.primaryPink,
              ),
            ),
            SizedBox(
              width: 5,
            ),
            Container(
              height: 5,
              width: 90,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
                color: AppColors.grey2.withOpacity(0.5),
              ),
            ),
            SizedBox(
              width: 5,
            ),
            Container(
              height: 5,
              width: 90,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
                color: AppColors.grey2.withOpacity(0.5),
              ),
            ),
            SizedBox(
              width: 5,
            ),
            Container(
              height: 5,
              width: 90,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
                color: AppColors.grey2.withOpacity(0.5),
              ),
            ),
          ],
        ),
      );
    }

    liveChatSection() {
      return Row(
        children: [
          Stack(
            children: [
              Align(
                child: Container(
                  margin: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.0007),
                  padding: EdgeInsets.all(20),
                  height: 120,
                  width: 120,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.primaryPink.withOpacity(0.2),
                      border: Border.all(
                          color: AppColors.primaryPink.withOpacity(0.2),
                          width: 2)),
                  child: Container(
                    padding: EdgeInsets.all(10),
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColors.primaryPink.withOpacity(0.2),
                        border:
                            Border.all(color: AppColors.primaryPink, width: 2)),
                    child: Container(
                      height: 50,
                      width: 50,
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
                child: Container(
                  margin: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.05,
                      left: MediaQuery.of(context).size.width * 0.27),
                  child: Stack(
                    children: [
                      Container(
                        child: Text(
                          'MadMike808',
                          style: TextStyle(
                              color: AppColors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 25),
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
                              width: 5,
                            ),
                            Container(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Live',
                                style: TextStyle(
                                    color: AppColors.primaryPink, fontSize: 12),
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
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.25,
          ),
          GestureDetector(
            onTap: () => Get.back(),
            child: Container(
              padding: EdgeInsets.only(top: 8, left: 14),
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.grey2.withOpacity(0.2),
              ),
              child: Text(
                '...',
                style: TextStyle(
                    color: AppColors.grey2,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2.5),
              ),
            ),
          ),
        ],
      );
    }

    chatSection() {
      return Container(
        height: MediaQuery.of(context).size.height * 0.6,
        decoration: BoxDecoration(
            border: Border(
                bottom: BorderSide(
                    color: AppColors.grey2.withOpacity(0.5), width: 3))),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    Container(
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: AppColors.grey2),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          color: AppColors.grey1.withOpacity(0.5),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(25),
                              topRight: Radius.circular(25),
                              bottomRight: Radius.circular(25))),
                      child: Text(
                        'Just shoot him!',
                        style: TextStyle(
                            color: AppColors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    Container(
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: AppColors.grey2),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          color: AppColors.grey1.withOpacity(0.5),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(25),
                              topRight: Radius.circular(25),
                              bottomRight: Radius.circular(25))),
                      child: Text(
                        'Just shoot him!',
                        style: TextStyle(
                            color: AppColors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    Container(
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: AppColors.grey2),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          color: AppColors.grey1.withOpacity(0.5),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(25),
                              topRight: Radius.circular(25),
                              bottomRight: Radius.circular(25))),
                      child: Text(
                        'Just shoot him!',
                        style: TextStyle(
                            color: AppColors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    Container(
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: AppColors.grey2),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          color: AppColors.grey1.withOpacity(0.5),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(25),
                              topRight: Radius.circular(25),
                              bottomRight: Radius.circular(25))),
                      child: Text(
                        'Just shoot him!',
                        style: TextStyle(
                            color: AppColors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    Container(
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: AppColors.grey2),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          color: AppColors.grey1.withOpacity(0.5),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(25),
                              topRight: Radius.circular(25),
                              bottomRight: Radius.circular(25))),
                      child: Text(
                        'Just shoot him!',
                        style: TextStyle(
                            color: AppColors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    Container(
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: AppColors.grey2),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          color: AppColors.grey1.withOpacity(0.5),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(25),
                              topRight: Radius.circular(25),
                              bottomRight: Radius.circular(25))),
                      child: Text(
                        'Just shoot him!',
                        style: TextStyle(
                            color: AppColors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              )
            ],
          ),
        ),
      );
    }

    messageSection() {
      return Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: EdgeInsets.only(top: 20),
              height: 70,
              padding: EdgeInsets.all(8.0),
              child: TextInputField(
                hintText: 'Send message...',
                textAlign: TextAlign.left,
                style:
                    AppTextStyles.semiBold14.copyWith(color: AppColors.white),
                fillColor: AppColors.white.withOpacity(0.2),
                radius: 24,
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              height: 65,
              width: 85,
              margin: EdgeInsets.only(top: 27.5),
              padding: EdgeInsets.only(
                right: MediaQuery.of(context).size.width * 0.01,
              ),
              child: Image.asset(
                LOVE_ICN,
                width: 50,
                height: 50,
                fit: BoxFit.scaleDown,
              ),
            ),
          ),
        ],
      );
    }

    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              EVENT_PAGE_BG,
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            eventIndicatorSection(),
            liveChatSection(),
            chatSection(),
            messageSection()
          ],
        ),
      ),
    );
  }
}
