import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:la_isla/assets/assets.dart';
import 'package:la_isla/controllers/authentication_controller.dart';
import 'package:la_isla/enums/enums.dart';
import 'package:la_isla/strings/strings.dart';
import 'package:la_isla/theme/colors.dart';
import 'package:la_isla/theme/text_styles.dart';
import 'package:la_isla/widgets/form/text_field.dart';
import 'package:la_isla/widgets/shared/buttons.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

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
                        Column(children: [
                          SizedBox(
                              height: MediaQuery.of(context).padding.top +
                                  MediaQuery.of(context).size.height * 0.04),
                          Image.asset(LOGO_WITH_TEXT, fit: BoxFit.contain)
                        ]),
                        Column(children: [
                          Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 30.0),
                              child: Column(children: [
                                TextInputField(
                                  hintText: 'Username / Email',
                                  style: AppTextStyles.semiBold14
                                      .copyWith(color: AppColors.white),
                                  fillColor: AppColors.white.withOpacity(0.15),
                                  radius: 24,
                                ),
                                SizedBox(height: 20),
                                TextInputField(
                                  hintText: 'Password',
                                  style: AppTextStyles.semiBold14
                                      .copyWith(color: AppColors.white),
                                  fillColor: AppColors.white.withOpacity(0.15),
                                  radius: 24,
                                ),
                                SizedBox(height: 10),
                                Buttons(
                                    type: ButtonType.text,
                                    color: Colors.transparent,
                                    height: 20,
                                    textStyle: AppTextStyles.semiBold13
                                        .copyWith(
                                            color: AppColors.white,
                                            decoration:
                                                TextDecoration.underline),
                                    width: double.infinity,
                                    text: Strings.forgot_password,
                                    iconColor: AppColors.white,
                                    onTap: () => {}),
                                Buttons(
                                    type: ButtonType.text,
                                    color: AppColors.white,
                                    height: 48,
                                    radius: 24,
                                    padding: 12,
                                    textStyle: AppTextStyles.semiBold16
                                        .copyWith(color: AppColors.black),
                                    width: double.infinity,
                                    text: Strings.login,
                                    iconColor: AppColors.white,
                                    onTap: () => {}),
                                SizedBox(height: 24),
                                Image.asset(OR_ICON, height: 36),
                                SizedBox(height: 24),
                                Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Buttons(
                                          type: ButtonType.circle_icon,
                                          color:
                                              AppColors.white.withOpacity(0.3),
                                          icon: FACEBOOK,
                                          height: 48,
                                          radius: 24,
                                          padding: 14,
                                          iconColor: AppColors.white,
                                          textColor: AppColors.white,
                                          width: 70,
                                          onTap: () => {}),
                                      Buttons(
                                          type: ButtonType.circle_icon,
                                          color:
                                              AppColors.white.withOpacity(0.3),
                                          icon: GOOGLE,
                                          height: 48,
                                          padding: 14,
                                          radius: 24,
                                          iconColor: AppColors.white,
                                          textColor: AppColors.white,
                                          width: 70,
                                          onTap: () => {}),
                                      Buttons(
                                          type: ButtonType.circle_icon,
                                          color:
                                              AppColors.white.withOpacity(0.3),
                                          icon: APPLE,
                                          height: 48,
                                          padding: 12,
                                          radius: 24,
                                          width: 70,
                                          iconColor: AppColors.white,
                                          textColor: AppColors.white,
                                          onTap: () => {})
                                    ])
                              ])),
                          SizedBox(height: 25),
                          Container(
                            decoration: BoxDecoration(
                                border: Border(
                                    top: BorderSide(
                                        color: AppColors.white.withOpacity(0.5),
                                        width: 1.0))),
                            padding: EdgeInsets.only(top: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Buttons(
                                  onTap: () {},
                                  color: Colors.transparent,
                                  icon: ICON_REGISTER,
                                  text: Strings.signup,
                                  iconColor: AppColors.white.withOpacity(0.5),
                                  textStyle: AppTextStyles.semiBold15
                                      .copyWith(color: AppColors.white),
                                  type: ButtonType.icon_text,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                              height: MediaQuery.of(context).size.height * 0.03)
                        ])
                      ]),
                )))));
  }
}
