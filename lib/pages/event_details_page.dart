import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:la_isla/assets/assets.dart';
import 'package:la_isla/theme/colors.dart';
import 'package:la_isla/widgets/shared/app-drawer.dart';
import 'package:la_isla/widgets/shared/app_bar.dart';
import 'package:carousel_slider/carousel_slider.dart';

class EventDetailsPage extends StatelessWidget {
  const EventDetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final tabView = Container();
    return Scaffold(
      backgroundColor: AppColors.black,
      drawer: CustomAppDrawer(),
      appBar: PreferredSize(
          preferredSize:
              Size.fromHeight(MediaQuery.of(context).size.height * 0.1),
          child: CustomAppBar(
            showGradient: false,
            tabView: tabView,
          )),
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(EVENT_PAGE_BG),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
                AppColors.white.withOpacity(0.2), BlendMode.dstATop),
          ),
        ),
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(horizontal: 10.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.50,
                width: MediaQuery.of(context).size.width,
                child: CarouselSlider(
                  items: [
                    Container(
                      margin: EdgeInsets.all(6.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        image: DecorationImage(
                          image: AssetImage(CAROUSEL_ITEM_1),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(6.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        image: DecorationImage(
                          image: AssetImage(CAROUSEL_ITEM_2),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(6.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        image: DecorationImage(
                          image: AssetImage(CAROUSEL_ITEM_3),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                  options: CarouselOptions(
                    height: MediaQuery.of(context).size.height,
                    enlargeCenterPage: true,
                    autoPlay: true,
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enableInfiniteScroll: true,
                    autoPlayAnimationDuration: Duration(milliseconds: 800),
                    viewportFraction: 0.8,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(bottom: 20),
                child: Text(
                  'Neon Party',
                  style: TextStyle(color: AppColors.white, fontSize: 26),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
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
                                AssetImage(INFORMATION_ICN),
                                color: AppColors.white,
                                size: 15,
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 4),
                              child: Text(
                                'Information',
                                style: TextStyle(
                                  color: AppColors.white,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(width: 20),
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
                                'Reservations',
                                style: TextStyle(
                                  color: AppColors.white,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(width: 20),
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
                                AssetImage(SIGNUP_ICN),
                                color: AppColors.white,
                                size: 15,
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 4),
                              child: Text(
                                'Sign up',
                                style: TextStyle(
                                  color: AppColors.white,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(width: 20),
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
                                AssetImage(SPONSORSHIPS_ICN),
                                color: AppColors.white,
                                size: 15,
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 4),
                              child: Text(
                                'Sponsors',
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
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                padding: EdgeInsets.only(top: 10.0),
                height: MediaQuery.of(context).size.height * 0.40,
                width: MediaQuery.of(context).size.width * 0.93,
                child: Center(
                  child: Text(
                    'December 13 at 9:30 PM.'
                    'Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum ',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: AppColors.white, fontSize: 14),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 30.0, bottom: 10.0),
                    child: Text(
                      'DJs',
                      style: TextStyle(color: AppColors.white, fontSize: 26),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(bottom: 20.0),
                    height: MediaQuery.of(context).size.height * 0.50,
                    width: MediaQuery.of(context).size.width,
                    child: CarouselSlider(
                      items: [
                        Container(
                          margin: EdgeInsets.all(6.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                            image: DecorationImage(
                              image: AssetImage(DJ1),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(6.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                            image: DecorationImage(
                              image: AssetImage(DJ2),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(6.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                            image: DecorationImage(
                              image: AssetImage(DJ3),
                              fit: BoxFit.cover,
                            ),
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
                        viewportFraction: 0.8,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              )
            ],
          ),
        ),
      ),
    );
  }
}
