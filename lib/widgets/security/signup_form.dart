import 'package:enum_to_string/enum_to_string.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:la_isla/controllers/auth_controller.dart';
import 'package:la_isla/enums/enums.dart';
import 'package:la_isla/strings/strings.dart';
import 'package:la_isla/theme/colors.dart';
import 'package:la_isla/theme/text_styles.dart';
import 'package:la_isla/widgets/form/text_field.dart';
import 'package:la_isla/widgets/shared/buttons.dart';
import 'package:la_isla/widgets/shared/date_picker.dart';

class SignUpForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: AuthController(),
      builder: (AuthController ctrl) => Column(children: [
        TextInputField(
          hintText: 'User Name',
          style: AppTextStyles.semiBold14.copyWith(color: AppColors.white),
          fillColor: AppColors.white.withOpacity(0.15),
          radius: 24,
          onChanged: (val) => ctrl.userName = val,
        ),
        SizedBox(height: 15),
        TextInputField(
          hintText: 'Email',
          style: AppTextStyles.semiBold14.copyWith(color: AppColors.white),
          fillColor: AppColors.white.withOpacity(0.15),
          radius: 24,
          onChanged: (val) => ctrl.email = val,
        ),
        SizedBox(height: 15),
        TextInputField(
          hintText: 'Password',
          isPassword: true,
          style: AppTextStyles.semiBold14.copyWith(color: AppColors.white),
          fillColor: AppColors.white.withOpacity(0.15),
          radius: 24,
          onChanged: (val) => ctrl.password = val,
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
              child: DropdownButton<Gender>(
                  elevation: 0,
                  dropdownColor: AppColors.primaryPink.withOpacity(0.8),
                  isExpanded: true,
                  value: ctrl.gender,
                  style: AppTextStyles.semiBold13,
                  icon: Icon(Icons.keyboard_arrow_down,
                      color: Colors.transparent),
                  items: Gender.values.map((Gender value) {
                    return DropdownMenuItem<Gender>(
                      value: value,
                      child: Center(
                        child: new Text(
                          EnumToString.convertToString(value, camelCase: true),
                          textAlign: TextAlign.center,
                          style: AppTextStyles.semiBold13
                              .copyWith(color: Colors.white),
                        ),
                      ),
                    );
                  }).toList(),
                  onChanged: (val) => ctrl.gender = val!),
            )),
          ),
        ),
        SizedBox(height: 21),
        Text(
          'Date of birth',
          style: AppTextStyles.semiBold14.copyWith(color: AppColors.white),
        ),
        SizedBox(height: 15),
        DatePicker(onchange: (int year, int month, int day) {
          ctrl.day = day;
          ctrl.month = month;
          ctrl.year = year;
        }),
        Buttons(
            type: ButtonType.text,
            color: Colors.transparent,
            height: 20,
            textStyle: AppTextStyles.semiBold13.copyWith(
                color: AppColors.white, decoration: TextDecoration.underline),
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
            textStyle:
                AppTextStyles.semiBold14.copyWith(color: AppColors.black),
            width: double.infinity,
            text: Strings.register,
            iconColor: AppColors.white,
            onTap: () => ctrl.register()),
      ]),
    );
  }
}
