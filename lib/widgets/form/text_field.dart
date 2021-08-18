import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:la_isla/theme/colors.dart';
import 'package:la_isla/theme/text_styles.dart';

class TextInputField extends StatelessWidget {
  final bool? isPassword;
  final TextAlign? textAlign;
  final String? labelText;
  final String? hintText;
  final TextStyle? style;
  final String? Function(String?)? validator;
  final String? initialValue;
  final TextInputType? keyboardType;
  final TextEditingController? controller;
  final Color? borderColor;
  final int? maxLength;
  final int? maxLines;
  final bool? hideBorder;
  final bool? readOnly;
  final Color? fillColor;
  final Function(String)? onChanged;
  final Function? buildCounter;
  final List<TextInputFormatter>? formatters;
  final Widget? suffixIcon;
  final EdgeInsets? padding;
  final FloatingLabelBehavior? floatingLabelBehavior;
  final double? radius;

  const TextInputField({
    this.hintText,
    this.keyboardType,
    this.controller,
    this.textAlign,
    this.initialValue,
    this.maxLength,
    this.maxLines = 1,
    this.style,
    this.validator,
    this.hideBorder = false,
    this.isPassword = false,
    this.borderColor,
    this.onChanged,
    this.formatters,
    this.readOnly = false,
    this.buildCounter,
    this.labelText,
    this.fillColor,
    this.radius,
    this.suffixIcon,
    this.padding = const EdgeInsets.only(left: 15, right: 20),
    this.floatingLabelBehavior = FloatingLabelBehavior.never,
  });
  @override
  Widget build(BuildContext context) => Container(
          child: Container(
        height: 40,
        child: TextFormField(
            textAlign: textAlign ?? TextAlign.center,
            obscureText: isPassword ?? false,
            textAlignVertical: TextAlignVertical.center,
            textCapitalization: TextCapitalization.sentences,
            decoration: InputDecoration(
              fillColor: fillColor ?? AppColors.white,
              filled: true,
              contentPadding: padding,
              hintText: hintText ?? 'Hint Text',
              suffixIconConstraints: BoxConstraints(maxHeight: 22),
              suffixIcon: suffixIcon == null ? SizedBox() : suffixIcon,
              // labelText: labelText ?? 'Field Label',
              floatingLabelBehavior: floatingLabelBehavior,
              // labelStyle: style ?? AppTextStyles.semiBold13,
              hintStyle: style ?? AppTextStyles.semiBold13,
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: borderColor ?? Colors.transparent, width: 1),
                  borderRadius: BorderRadius.circular(radius ?? 5.0)),
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: borderColor ?? Colors.transparent, width: 1),
                  borderRadius: BorderRadius.circular(radius ?? 5.0)),
            ),
            validator: validator ?? null,
            maxLength: maxLength,
            onChanged: onChanged,
            readOnly: readOnly ?? false,
            inputFormatters: formatters,
            initialValue: initialValue,
            maxLines: maxLines,
            controller: controller,
            keyboardType: keyboardType ?? TextInputType.text,
            style: style ?? AppTextStyles.semiBold13),
      ));
}
