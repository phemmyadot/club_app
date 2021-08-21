import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:la_isla/assets/assets.dart';
import 'package:la_isla/theme/colors.dart';
import 'package:la_isla/widgets/shared/app_bar.dart';
import 'package:la_isla/widgets/shared/app_bottom_nav.dart';
import 'package:la_isla/widgets/shared/app_floating-button.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:carousel_slider/carousel_slider.dart';

class EventPage extends StatelessWidget {
  const EventPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      appBar: PreferredSize(
          preferredSize:
              Size.fromHeight(MediaQuery.of(context).size.height * 0.1),
          child: CustomAppBar()),
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
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 30.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.35,
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
                    enlargeCenterPage: true,
                    autoPlay: true,
                    aspectRatio: 16 / 9,
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enableInfiniteScroll: true,
                    autoPlayAnimationDuration: Duration(milliseconds: 800),
                    viewportFraction: 0.8,
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25.0),
                  image: DecorationImage(
                    image: AssetImage(EVENT_BG_1),
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(
                        Colors.transparent.withOpacity(0.8), BlendMode.dstATop),
                  ),
                ),
                height: MediaQuery.of(context).size.height * 0.3,
                width: MediaQuery.of(context).size.width,
                child: Row(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.only(top: 35.0, left: 15.0),
                          child: Text(
                            'New Year’s Eve tickets 21/22',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: AppColors.white,
                                fontSize: 17,
                                fontWeight: FontWeight.normal,
                                letterSpacing: 0.9,
                                fontFamily: 'Montserrat'),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 10.0, left: 10.0),
                          child: Text(
                            'NEON PARTY',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: AppColors.white,
                                fontSize: 26,
                                fontWeight: FontWeight.normal,
                                letterSpacing: 0.9,
                                fontFamily: 'Montserrat'),
                          ),
                        ),
                      ],
                    ),
                    Container(
                        width: 90,
                        alignment: Alignment.centerRight,
                        // padding: EdgeInsets.only(top: 20.0),
                        child: new CircularPercentIndicator(
                          radius: 120.0,
                          lineWidth: 12.0,
                          percent: 0.19,
                          rotateLinearGradient: true,
                          backgroundColor: AppColors.white,
                          animation: true,
                          animationDuration: 1200,
                          startAngle: 0.5,
                          center: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "19%",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: AppColors.white,
                                  fontSize: 20,
                                ),
                              ),
                              Text(
                                "Free",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: AppColors.white,
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          ),
                          progressColor: AppColors.primaryPink,
                        )),
                  ],
                ),
              ),
              Container(
                height: 100,
                child: Text(
                  'widget 1',
                  style: TextStyle(color: AppColors.white),
                ),
              ),
              Container(
                height: 100,
                child: Text(
                  'widget 1',
                  style: TextStyle(color: AppColors.white),
                ),
              ),
              Container(
                height: 100,
                child: Text(
                  'widget 1',
                  style: TextStyle(color: AppColors.white),
                ),
              ),
              Container(
                height: 100,
                child: Text(
                  'widget 1',
                  style: TextStyle(color: AppColors.white),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: CustomFloatingButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: CustomBottomNav(),
    );
  }
}
