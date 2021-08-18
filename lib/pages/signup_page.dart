import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:la_isla/assets/assets.dart';
import 'package:la_isla/controllers/auth_controller.dart';
import 'package:la_isla/enums/enums.dart';
import 'package:la_isla/pages/login_page.dart';
import 'package:la_isla/strings/strings.dart';
import 'package:la_isla/theme/colors.dart';
import 'package:la_isla/theme/text_styles.dart';
import 'package:la_isla/widgets/form/text_field.dart';
import 'package:la_isla/widgets/security/signup_form.dart';
import 'package:la_isla/widgets/shared/buttons.dart';
import 'package:la_isla/widgets/shared/date_picker.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                          padding: const EdgeInsets.symmetric(horizontal: 30.0),
                          child: SignUpForm()),
                      SizedBox(height: 20),
                      Container(
                        decoration: BoxDecoration(
                            border: Border(
                                top: BorderSide(
                                    color: AppColors.white.withOpacity(0.5),
                                    width: 1.0))),
                        padding: EdgeInsets.only(
                            top: 10,
                            bottom: MediaQuery.of(context).padding.bottom + 10),
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
            ))));
  }
}
