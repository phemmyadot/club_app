import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:la_isla/assets/assets.dart';
import 'package:la_isla/pages/chat_page.dart';
import 'package:la_isla/theme/colors.dart';
import 'package:la_isla/widgets/shared/app-drawer.dart';
import 'package:la_isla/widgets/shared/app_bar.dart';
import 'package:la_isla/widgets/shared/app_bottom_nav.dart';
import 'package:la_isla/widgets/shared/app_floating-button.dart';

class ChatRoomPage extends StatelessWidget {
  const ChatRoomPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final tabBar = const TabBar(
      indicatorColor: Color(0xFFFCFCFC),
      indicatorPadding: EdgeInsets.only(bottom: 5),
      indicatorWeight: 2.5,
      tabs: [
        Tab(
          icon: ImageIcon(
            AssetImage(CHAT_ICN),
          ),
          text: 'Public rooms',
        ),
        Tab(
          icon: ImageIcon(AssetImage(CHAT_ICN)),
          text: 'Private rooms',
        ),
        Tab(
          icon: ImageIcon(AssetImage(CHAT_ICN)),
          text: 'Contacts',
        ),
      ],
    );
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: PreferredSize(
          child: CustomAppBar(
            showGradient: true,
            tabView: tabBar,
          ),
          preferredSize:
              Size.fromHeight(MediaQuery.of(context).size.height * 0.19),
        ),
        drawer: CustomAppDrawer(),
        body: TabBarView(
          children: [
            Container(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: 25.0,
                    ),
                    GestureDetector(
                      onTap: () => Get.to(() => ChatPage()),
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
                                        image: AssetImage(DJ1),
                                        fit: BoxFit.cover)),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Container(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      padding: EdgeInsets.only(right: 25),
                                      child: Text(
                                        'Quedada PreNEON',
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
                                      'Smart businesses today are…',
                                      style: TextStyle(
                                          color: AppColors.black, fontSize: 14),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      '4min',
                                      style: TextStyle(
                                          color: AppColors.black,
                                          fontSize: 12,
                                          fontWeight: FontWeight.normal),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Container(
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
                                        '2',
                                        style: TextStyle(
                                            color: AppColors.white,
                                            fontSize: 12),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 25.0,
                    ),
                    Container(
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
                                      image: AssetImage(DJ1),
                                      fit: BoxFit.cover)),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Container(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    padding: EdgeInsets.only(right: 25),
                                    child: Text(
                                      'Todos en la isla',
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
                                    'Smart businesses today are…',
                                    style: TextStyle(
                                        color: AppColors.black, fontSize: 14),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    '12min',
                                    style: TextStyle(
                                        color: AppColors.black,
                                        fontSize: 12,
                                        fontWeight: FontWeight.normal),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Container(
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
                                      '7',
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
                    SizedBox(
                      height: 25.0,
                    ),
                    Container(
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
                                      image: AssetImage(DJ1),
                                      fit: BoxFit.cover)),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Container(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    padding: EdgeInsets.only(right: 25),
                                    child: Text(
                                      'La isla del Amor',
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
                                    'Smart businesses today are…',
                                    style: TextStyle(
                                        color: AppColors.black, fontSize: 14),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    '3h',
                                    style: TextStyle(
                                        color: AppColors.black,
                                        fontSize: 12,
                                        fontWeight: FontWeight.normal),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 25.0,
                    ),
                    // Container(
                    //   height: MediaQuery.of(context).size.height * 0.18,
                    //   width: MediaQuery.of(context).size.width * 0.91,
                    //   decoration: BoxDecoration(
                    //     color: AppColors.white,
                    //     borderRadius: BorderRadius.all(Radius.circular(20)),
                    //     boxShadow: [
                    //       BoxShadow(
                    //         color: Colors.grey,
                    //         blurRadius: 5.0, // soften the shadow
                    //         spreadRadius: 1.0, //extend the shadow
                    //       )
                    //     ],
                    //   ),
                    //   child: Container(
                    //     padding: EdgeInsets.only(left: 20),
                    //     child: Row(
                    //       children: [
                    //         Container(
                    //           height: 70,
                    //           width: 70,
                    //           decoration: BoxDecoration(
                    //               shape: BoxShape.circle,
                    //               image: DecorationImage(
                    //                   image: AssetImage(DJ1),
                    //                   fit: BoxFit.cover)),
                    //         ),
                    //         SizedBox(
                    //           width: 20,
                    //         ),
                    //         Container(
                    //           child: Column(
                    //             mainAxisAlignment: MainAxisAlignment.center,
                    //             children: [
                    //               Container(
                    //                 padding: EdgeInsets.only(right: 25),
                    //                 child: Text(
                    //                   'Ideas for the future',
                    //                   style: TextStyle(
                    //                       color: AppColors.black,
                    //                       fontSize: 18,
                    //                       fontWeight: FontWeight.bold),
                    //                 ),
                    //               ),
                    //               SizedBox(
                    //                 height: 5,
                    //               ),
                    //               Text(
                    //                 'Smart businesses today are…',
                    //                 style: TextStyle(
                    //                     color: AppColors.black, fontSize: 14),
                    //               ),
                    //             ],
                    //           ),
                    //         ),
                    //         SizedBox(
                    //           width: 20,
                    //         ),
                    //         Container(
                    //           child: Column(
                    //             mainAxisAlignment: MainAxisAlignment.center,
                    //             children: [
                    //               Text(
                    //                 'Yesterday',
                    //                 style: TextStyle(
                    //                     color: AppColors.black,
                    //                     fontSize: 12,
                    //                     fontWeight: FontWeight.normal),
                    //               ),
                    //               SizedBox(
                    //                 height: 5,
                    //               ),
                    //             ],
                    //           ),
                    //         ),
                    //       ],
                    //     ),
                    //   ),
                    // ),
                    // SizedBox(
                    //   height: 25.0,
                    // ),
                  ],
                ),
              ),
            ),
            Container(),
            Container(),
          ],
        ),
        // body: Container(
        //   height: MediaQuery.of(context).size.height * 0.4,
        //   width: MediaQuery.of(context).size.width,
        //   decoration: BoxDecoration(
        //       gradient: LinearGradient(
        //           begin: Alignment.topLeft,
        //           end: Alignment.bottomRight,
        //           colors: <Color>[
        //         AppColors.gradient2,
        //         AppColors.gradient1,
        //       ])),
        // ),
        floatingActionButton: CustomFloatingButton(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: CustomBottomNav(),
      ),
    );
  }
}
