import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:la_isla/assets/assets.dart';
import 'package:la_isla/controllers/entry_controller.dart';
import 'package:la_isla/controllers/tab_controller.dart';
import 'package:la_isla/theme/colors.dart';
import 'package:la_isla/theme/text_styles.dart';
import 'package:la_isla/widgets/form/text_field.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final EntryController entryPageController =
        Get.put(EntryController(), permanent: false);

    final ChatTabController _tabx =
        Get.put(ChatTabController(), permanent: false);

    headSection(hearderTitle) {
      return Align(
        alignment: Alignment.topCenter,
        child: Container(
          height: MediaQuery.of(context).size.height * 0.12,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(color: AppColors.primaryPink),
          child: Row(
            children: [
              GestureDetector(
                onTap: () => entryPageController.changeTabIndex(3),
                child: Container(
                    padding: EdgeInsets.only(left: 20),
                    child: ImageIcon(
                      AssetImage(ARROW_BACK),
                      color: AppColors.white,
                    )),
              ),
              Container(
                padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.2, top: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      child: Text(
                        hearderTitle,
                        style: TextStyle(
                            color: AppColors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          child: Text(
                            '12 Onlilne',
                            style: TextStyle(
                                color: AppColors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.normal),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          child: Text(
                            '42 Members',
                            style: TextStyle(
                                color: AppColors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.normal),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    }

    chatSection() {
      return Align(
        alignment: Alignment.center,
        child: Container(
          padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * 0.03, bottom: 20),
          height: MediaQuery.of(context).size.height * 0.6,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.only(top: 20, left: 20, bottom: 20),
                  child: Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(15),
                        width: MediaQuery.of(context).size.width * 0.7,
                        decoration: BoxDecoration(
                            color: AppColors.primaryPink,
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        child: Text(
                          'Hello Everyone, It’s gonna be along time we don’t have meet again for fun activity. Do you have plan for meeting again?',
                          style:
                              TextStyle(color: AppColors.white, fontSize: 14),
                        ),
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      Column(
                        children: [
                          Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle, color: AppColors.grey1),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Me',
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 20, left: 20),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle, color: AppColors.grey1),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Alexa Annas',
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      Container(
                        padding: EdgeInsets.all(15),
                        width: MediaQuery.of(context).size.width * 0.7,
                        decoration: BoxDecoration(
                            color: AppColors.grey2,
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        child: Text(
                          'Hello Everyone, It’s gonna be along time we don’t have meet again for fun activity. Do you have plan for meeting again?',
                          style:
                              TextStyle(color: AppColors.white, fontSize: 14),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 20, left: 20),
                  child: Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(15),
                        width: MediaQuery.of(context).size.width * 0.7,
                        decoration: BoxDecoration(
                            color: AppColors.primaryPink,
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        child: Text(
                          'Hello Everyone, It’s gonna be along time we don’t have meet again for fun activity. Do you have plan for meeting again?',
                          style:
                              TextStyle(color: AppColors.white, fontSize: 14),
                        ),
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      Column(
                        children: [
                          Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle, color: AppColors.grey1),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Me',
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 20, left: 20),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle, color: AppColors.grey1),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Alexa Annas',
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      Container(
                        padding: EdgeInsets.all(15),
                        width: MediaQuery.of(context).size.width * 0.7,
                        decoration: BoxDecoration(
                            color: AppColors.grey2,
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        child: Text(
                          'Hello Everyone, It’s gonna be along time we don’t have meet again for fun activity. Do you have plan for meeting again?',
                          style:
                              TextStyle(color: AppColors.white, fontSize: 14),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    }

    final messageField = Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: 70,
        padding: EdgeInsets.all(8.0),
        child: TextInputField(
          hintText: 'Send message...',
          textAlign: TextAlign.left,
          style: AppTextStyles.semiBold14.copyWith(color: AppColors.white),
          fillColor: AppColors.primaryPink,
          radius: 24,
        ),
      ),
    );

    final sendMessageButton = Align(
      alignment: Alignment.bottomRight,
      child: Container(
          height: 80,
          padding: EdgeInsets.only(
              right: MediaQuery.of(context).size.width * 0.05, top: 4),
          child: Image.asset(
            SEND_ICN,
            width: 40,
            height: 40,
            fit: BoxFit.scaleDown,
          )),
    );
    return DefaultTabController(
      length: 3,
      child: TabBarView(
        controller: _tabx.chatController,
        children: [
          Stack(
            children: [
              headSection('Fun Community'),
              chatSection(),
              messageField,
              sendMessageButton
            ],
          ),
          Stack(
            children: [
              headSection('Fun Community 2'),
              chatSection(),
              messageField,
              sendMessageButton
            ],
          ),
          Stack(
            children: [
              headSection('Fun Community 3'),
              chatSection(),
              messageField,
              sendMessageButton
            ],
          ),
        ],
      ),
    );
  }
}
