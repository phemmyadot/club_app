import 'package:flutter/material.dart';
import 'package:la_isla/pages/login_page.dart';
import 'package:la_isla/widgets/shared/buttons.dart';
import 'package:get/get.dart';
import 'package:la_isla/assets/assets.dart';
import 'package:la_isla/controllers/auth_controller.dart';
import 'package:la_isla/enums/enums.dart';
import 'package:la_isla/strings/strings.dart';
import 'package:la_isla/theme/colors.dart';
import 'package:la_isla/theme/text_styles.dart';
import 'package:la_isla/widgets/form/text_field.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
        init: AuthController(),
        builder: (AuthController ctrl) => Scaffold(
            resizeToAvoidBottomInset: false,
            body: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(BG_LOGIN), fit: BoxFit.cover)),
                child: SingleChildScrollView(
                    child: Container(
                        height: MediaQuery.of(context).size.height,
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 30.0),
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                            height: MediaQuery.of(context)
                                                    .padding
                                                    .top +
                                                MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    0.04),
                                        Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              Image.asset(LOGO_WITH_TEXT,
                                                  fit: BoxFit.contain,
                                                  height: 62,
                                                  width: 129)
                                            ]),
                                        Text('Enter your',
                                            style: AppTextStyles.semiBold26
                                                .copyWith(
                                                    color: AppColors.white)),
                                        Text('New Password',
                                            style: AppTextStyles.semiBold26
                                                .copyWith(
                                                    color: AppColors.white)),
                                        SizedBox(height: 14.7),
                                        Container(
                                            height: 6,
                                            width: 24,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(3),
                                                color: AppColors.white
                                                    .withOpacity(0.25)))
                                      ])),
                              Column(children: [
                                Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 30.0),
                                    child: Column(children: [
                                      TextInputField(
                                        hintText: 'Password',
                                        style: AppTextStyles.semiBold14
                                            .copyWith(color: AppColors.white),
                                        fillColor:
                                            AppColors.white.withOpacity(0.15),
                                        radius: 24,
                                      ),
                                      SizedBox(height: 20),
                                      TextInputField(
                                        hintText: 'Confirm Password',
                                        style: AppTextStyles.semiBold14
                                            .copyWith(color: AppColors.white),
                                        fillColor:
                                            AppColors.white.withOpacity(0.15),
                                        radius: 24,
                                      ),
                                      SizedBox(height: 25),
                                      Buttons(
                                          type: ButtonType.text,
                                          color: AppColors.white,
                                          height: 48,
                                          radius: 24,
                                          padding: 12,
                                          textStyle: AppTextStyles.semiBold14
                                              .copyWith(color: AppColors.black),
                                          width: double.infinity,
                                          text: Strings.enter,
                                          iconColor: AppColors.white,
                                          onTap: () => {})
                                    ])),
                                SizedBox(height: 140),
                                Container(
                                    decoration: BoxDecoration(
                                        border: Border(
                                            top: BorderSide(
                                                color: AppColors.white
                                                    .withOpacity(0.5),
                                                width: 1.0))),
                                    padding: EdgeInsets.only(
                                        top: 10,
                                        bottom: MediaQuery.of(context)
                                                .padding
                                                .bottom +
                                            10),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Buttons(
                                              onTap: () =>
                                                  Get.to(() => LoginPage()),
                                              color: Colors.transparent,
                                              icon: ICON_LOGIN,
                                              text: Strings.login,
                                              iconColor: AppColors.white
                                                  .withOpacity(0.5),
                                              textStyle: AppTextStyles
                                                  .semiBold15
                                                  .copyWith(
                                                      color: AppColors.white),
                                              type: ButtonType.icon_text)
                                        ]))
                              ])
                            ]))))));
  }
}
