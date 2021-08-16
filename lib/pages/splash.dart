import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:la_isla/assets/assets.dart';
import 'package:la_isla/controllers/splash_controller.dart';
import 'package:la_isla/enums/enums.dart';
import 'package:la_isla/pages/login_page.dart';
import 'package:la_isla/pages/signup_page.dart';
import 'package:la_isla/strings/strings.dart';
import 'package:la_isla/theme/colors.dart';
import 'package:la_isla/widgets/shared/buttons.dart';

class Splash extends StatelessWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
        init: SplashContoller(),
        builder: (SplashContoller ctrl) => Scaffold(
            body: Obx(() => ctrl.isLoaded
                ? Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(BG_SPLASH_2), fit: BoxFit.cover)),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Image.asset(LOGO_WITH_TEXT, fit: BoxFit.contain),
                          SizedBox(height: 105),
                          Padding(
                              padding: EdgeInsets.symmetric(horizontal: 77.0),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Buttons(
                                        type: ButtonType.circle_icon_text,
                                        color: AppColors.white,
                                        icon: ICON_LOGIN,
                                        height: 66,
                                        text: Strings.login,
                                        width: 66,
                                        padding: 21,
                                        iconColor: AppColors.primaryPink,
                                        textColor: AppColors.white,
                                        onTap: () =>
                                            Get.offAll(() => LoginPage())),
                                    Container(
                                        margin: EdgeInsets.only(top: 15),
                                        height: 40,
                                        width: 1,
                                        color: AppColors.primaryPink),
                                    Buttons(
                                        type: ButtonType.circle_icon_text,
                                        color: AppColors.white,
                                        icon: ICON_REGISTER,
                                        height: 66,
                                        padding: 21,
                                        text: Strings.register,
                                        iconColor: AppColors.primaryPink,
                                        textColor: AppColors.white,
                                        width: 66,
                                        onTap: () =>
                                            Get.offAll(() => SignupPage()))
                                  ])),
                          SizedBox(height: 130)
                        ]),
                  )
                : Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(BG_SPLASH), fit: BoxFit.cover)),
                    child: Center(
                        child: Image.asset(LOGO, fit: BoxFit.contain))))));
  }
}
