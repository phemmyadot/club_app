import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:la_isla/assets/assets.dart';
import 'package:la_isla/controllers/chatroom_controller.dart';
import 'package:la_isla/controllers/entry_controller.dart';
import 'package:la_isla/theme/colors.dart';

class ChatRoomPage extends StatelessWidget {
  const ChatRoomPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final EntryController entryPageController =
        Get.put(EntryController(), permanent: false);
    final ChatRoomTabController _tabx =
        Get.put(ChatRoomTabController(), permanent: false);

    chatCard(title, message, time, messageCount) {
      return GestureDetector(
        onTap: () => entryPageController.changeTabIndex(5),
        child: Container(
          height: MediaQuery.of(context).size.height * 0.18,
          width: MediaQuery.of(context).size.width * 0.91,
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.all(Radius.circular(20)),
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 5.0, // soften the shadow
                spreadRadius: 1.0, //extend the shadow
              )
            ],
          ),
          child: Container(
            padding: EdgeInsets.only(left: 20),
            child: Row(
              children: [
                Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage(DJ1), fit: BoxFit.cover)),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        child: Text(
                          title,
                          style: TextStyle(
                              color: AppColors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        message,
                        style: TextStyle(color: AppColors.black, fontSize: 14),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        time,
                        style: TextStyle(
                            color: AppColors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.normal),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      messageCount == ''
                          ? Container()
                          : Container(
                              alignment: Alignment.center,
                              width: 20,
                              height: 20,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                gradient: LinearGradient(
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                  colors: <Color>[
                                    Color(0xFFFEC140),
                                    Color(0xFFFA709A)
                                  ],
                                ),
                              ),
                              child: Text(
                                messageCount,
                                style: TextStyle(
                                    color: AppColors.white, fontSize: 12),
                              ),
                            )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    }

    return DefaultTabController(
      length: 3,
      child: TabBarView(
        controller: _tabx.chatRoomController,
        children: [
          Container(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 25.0,
                  ),
                  chatCard('Quedada PreNEON', 'Smart businesses today are…',
                      '4min', '2'),
                  SizedBox(
                    height: 25.0,
                  ),
                  chatCard('Todos en la isla', 'Smart businesses today are…',
                      '12min', '7'),
                  SizedBox(
                    height: 25.0,
                  ),
                  chatCard('La isla del Amor', 'Smart businesses today are…',
                      '12min', ''),
                  SizedBox(
                    height: 25.0,
                  ),
                ],
              ),
            ),
          ),
          Container(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 25.0,
                  ),
                  chatCard('Quedada PreNEON', 'Smart businesses today are…',
                      '4min', '2'),
                  SizedBox(
                    height: 25.0,
                  ),
                  chatCard('Todos en la isla', 'Smart businesses today are…',
                      '12min', '7'),
                  SizedBox(
                    height: 25.0,
                  ),
                  chatCard('La isla del Amor', 'Smart businesses today are…',
                      '12min', ''),
                  SizedBox(
                    height: 25.0,
                  ),
                ],
              ),
            ),
          ),
          Container(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 25.0,
                  ),
                  chatCard('Quedada PreNEON', 'Smart businesses today are…',
                      '4min', '2'),
                  SizedBox(
                    height: 25.0,
                  ),
                  chatCard('Todos en la isla', 'Smart businesses today are…',
                      '12min', '7'),
                  SizedBox(
                    height: 25.0,
                  ),
                  chatCard('La isla del Amor', 'Smart businesses today are…',
                      '12min', ''),
                  SizedBox(
                    height: 25.0,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
