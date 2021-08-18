import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:la_isla/assets/assets.dart';
import 'package:la_isla/controllers/authentication_controller.dart';
import 'package:la_isla/enums/enums.dart';
import 'package:la_isla/pages/login_page.dart';
import 'package:la_isla/strings/strings.dart';
import 'package:la_isla/theme/colors.dart';
import 'package:la_isla/theme/text_styles.dart';
import 'package:la_isla/widgets/form/text_field.dart';
import 'package:la_isla/widgets/shared/buttons.dart';
import 'package:la_isla/widgets/shared/date_picker.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({Key? key}) : super(key: key);

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
                          Image.asset(LOGO_WITH_TEXT,
                              fit: BoxFit.contain, height: 100)
                        ]),
                        Column(children: [
                          Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 30.0),
                              child: Column(children: [
                                TextInputField(
                                  hintText: 'User Name',
                                  style: AppTextStyles.semiBold14
                                      .copyWith(color: AppColors.white),
                                  fillColor: AppColors.white.withOpacity(0.15),
                                  radius: 24,
                                ),
                                SizedBox(height: 15),
                                TextInputField(
                                  hintText: 'Email',
                                  style: AppTextStyles.semiBold14
                                      .copyWith(color: AppColors.white),
                                  fillColor: AppColors.white.withOpacity(0.15),
                                  radius: 24,
                                ),
                                SizedBox(height: 15),
                                TextInputField(
                                  hintText: 'Password',
                                  style: AppTextStyles.semiBold14
                                      .copyWith(color: AppColors.white),
                                  fillColor: AppColors.white.withOpacity(0.15),
                                  radius: 24,
                                ),
                                SizedBox(height: 15),
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(24),
                                  child: Container(
                                    height: 40,
                                    color: AppColors.white.withOpacity(0.25),
                                    alignment: AlignmentDirectional.centerStart,
                                    child: DropdownButtonHideUnderline(
                                        child: ButtonTheme(
                                      alignedDropdown: true,
                                      child: DropdownButton<String>(
                                          isExpanded: true,
                                          value: 'Male',
                                          style: AppTextStyles.semiBold13,
                                          icon: Icon(Icons.keyboard_arrow_down,
                                              color: Colors.transparent),
                                          items: ['Male', 'Female']
                                              .map((String value) {
                                            return DropdownMenuItem<String>(
                                              value: value,
                                              child: Center(
                                                child: new Text(
                                                  value,
                                                  textAlign: TextAlign.center,
                                                  style: AppTextStyles
                                                      .semiBold13
                                                      .copyWith(
                                                          color: Colors.white),
                                                ),
                                              ),
                                            );
                                          }).toList(),
                                          onChanged: (val) => null),
                                    )),
                                  ),
                                ),
                                SizedBox(height: 21),
                                Text(
                                  'Date of birth',
                                  style: AppTextStyles.semiBold14
                                      .copyWith(color: AppColors.white),
                                ),
                                SizedBox(height: 15),
                                DatePicker(),
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
                                    text: Strings.termsAndCondition,
                                    iconColor: AppColors.white,
                                    onTap: () => {}),
                                Buttons(
                                    type: ButtonType.text,
                                    color: AppColors.white,
                                    height: 48,
                                    radius: 24,
                                    padding: 12,
                                    textStyle: AppTextStyles.semiBold14
                                        .copyWith(color: AppColors.black),
                                    width: double.infinity,
                                    text: Strings.register,
                                    iconColor: AppColors.white,
                                    onTap: () => {}),
                              ])),
                          SizedBox(height: 20),
                          Container(
                            decoration: BoxDecoration(
                                border: Border(
                                    top: BorderSide(
                                        color: AppColors.white.withOpacity(0.5),
                                        width: 1.0))),
                            padding: EdgeInsets.only(
                                top: 10,
                                bottom:
                                    MediaQuery.of(context).padding.bottom + 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Buttons(
                                  onTap: () => Get.to(() => LoginPage()),
                                  color: Colors.transparent,
                                  icon: ICON_LOGIN,
                                  text: Strings.login,
                                  iconColor: AppColors.white.withOpacity(0.5),
                                  textStyle: AppTextStyles.semiBold15
                                      .copyWith(color: AppColors.white),
                                  type: ButtonType.icon_text,
                                ),
                              ],
                            ),
                          ),
                        ])
                      ]),
                )))));
  }
}
