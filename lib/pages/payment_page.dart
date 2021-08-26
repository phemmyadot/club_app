import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:la_isla/assets/assets.dart';
import 'package:la_isla/controllers/entry_controller.dart';
import 'package:la_isla/pages/home_page.dart';
import 'package:la_isla/theme/colors.dart';

class PaymentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final EntryController entryPageController =
        Get.put(EntryController(), permanent: false);

    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: <Color>[
              AppColors.gradient2,
              AppColors.gradient1,
            ],
          ),
          image: DecorationImage(
              image: AssetImage(PAYMENT_PATTERN_IMG), fit: BoxFit.cover),
        ),
        child: Stack(
          children: [
            Container(
              padding: EdgeInsets.only(top: 10),
              margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.28),
              height: MediaQuery.of(context).size.height * 0.7,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(60),
                  ),
                  color: AppColors.white),
              child: SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.only(
                    bottom: 80,
                    top: MediaQuery.of(context).size.height * 0.23,
                  ),
                  margin: EdgeInsets.only(
                      right: MediaQuery.of(context).size.width * 0.35),
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(
                            top: 20,
                            left: MediaQuery.of(context).size.width * 0.05),
                        child: Row(
                          children: [
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                color: AppColors.paymentBlue,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
                              ),
                              child: Image.asset(CREDIT_CARD_ICN,
                                  fit: BoxFit.scaleDown),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              'Credit Card / Debit',
                              style: TextStyle(
                                  fontSize: 16, color: AppColors.black),
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                            top: 20,
                            left: MediaQuery.of(context).size.width * 0.05),
                        child: Row(
                          children: [
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                color: AppColors.paymentTeal,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
                              ),
                              child: Image.asset(NET_BANKING_ICN,
                                  fit: BoxFit.scaleDown),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              'Net Banking',
                              style: TextStyle(
                                  fontSize: 16, color: AppColors.black),
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                            top: 20,
                            left: MediaQuery.of(context).size.width * 0.05),
                        child: Row(
                          children: [
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                color: AppColors.paymentPurple,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
                              ),
                              child: Image.asset(GOOGLE_WALLET_ICN,
                                  fit: BoxFit.scaleDown),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              'Google Wallet',
                              style: TextStyle(
                                  fontSize: 16, color: AppColors.black),
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                            top: 20,
                            left: MediaQuery.of(context).size.width * 0.05),
                        child: Row(
                          children: [
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                color: AppColors.paymentLilac,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
                              ),
                              child: Image.asset(PHONE_PE_ICN,
                                  fit: BoxFit.scaleDown),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              'PhonePe',
                              style: TextStyle(
                                  fontSize: 16, color: AppColors.black),
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                            top: 20,
                            left: MediaQuery.of(context).size.width * 0.05),
                        child: Row(
                          children: [
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                color: AppColors.paymentGreen,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
                              ),
                              child: Image.asset(OTHER_WALLET_ICN,
                                  fit: BoxFit.scaleDown),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              'Other Wallets',
                              style: TextStyle(
                                  fontSize: 16, color: AppColors.black),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              color: AppColors.white,
              height: 90,
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.39, left: 20),
            ),
            Container(
              color: AppColors.white,
              height: 40,
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.49, left: 20),
              child: Text(
                'Other Payment Methods',
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: AppColors.black.withOpacity(0.7),
                  fontSize: 14,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 50),
              margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.07),
              child: Row(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.4,
                    width: 90,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      color: AppColors.white,
                      boxShadow: [
                        BoxShadow(
                          color: AppColors.grey2,
                          blurRadius: 5.0, // soften the shadow
                          spreadRadius: 1.0, //extend the shadow
                        )
                      ],
                    ),
                    child: Center(
                        child: Text(
                      '+',
                      style: TextStyle(color: AppColors.black, fontSize: 40),
                    )),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.05,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.4,
                    width: MediaQuery.of(context).size.width * 0.605,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          bottomLeft: Radius.circular(40)),
                      image: DecorationImage(
                          image: AssetImage(CARD_IMG), fit: BoxFit.cover),
                    ),
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 40),
                          padding: EdgeInsets.only(top: 120),
                          child: Text(
                            '325 535 361 ***',
                            style: TextStyle(
                                color: AppColors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          height: 60,
                        ),
                        Container(
                          padding: EdgeInsets.only(
                            left: 10,
                          ),
                          child: Text(
                            'Michael Nordic',
                            style: TextStyle(
                                color: AppColors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: <Color>[
                        AppColors.gradient2,
                        AppColors.gradient1,
                      ],
                    ),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30))),
                height: 80,
                width: MediaQuery.of(context).size.width,
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.only(top: 20, left: 50),
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.only(bottom: 5),
                            child: Text(
                              '12.00€',
                              style: TextStyle(
                                  color: AppColors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            child: Text(
                              'See details',
                              style: TextStyle(
                                  color: AppColors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: MediaQuery.of(context).size.width * 0.38),
                    GestureDetector(
                      onTap: () => entryPageController.changeTabIndex(0),
                      child: Container(
                        height: 40,
                        width: 100,
                        decoration: BoxDecoration(
                          color: AppColors.white,
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                        ),
                        child: Row(
                          children: [
                            Container(
                              child: Text(
                                'Pay',
                                style: TextStyle(fontSize: 16),
                              ),
                              padding: EdgeInsets.only(left: 20, right: 20),
                            ),
                            Icon(Icons.arrow_forward)
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
