import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:la_isla/enums/enums.dart';
import 'package:la_isla/theme/text_styles.dart';

class Buttons extends StatelessWidget {
  final ButtonType? type;
  final double? radius;
  final String? icon;
  final String? text;
  final Function()? onTap;
  final Color? color;
  final Color? textColor;
  final Color? iconColor;
  final double? height;
  final double? padding;
  final double? width;
  final TextStyle? textStyle;
  const Buttons(
      {Key? key,
      @required this.type,
      this.radius,
      this.icon,
      this.onTap,
      this.height,
      this.iconColor,
      this.textColor,
      this.width,
      this.text,
      this.textStyle,
      this.padding,
      this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) => type == ButtonType.circle_icon
      ? InkWell(
          onTap: onTap,
          child: TextButton(
              onPressed: onTap,
              style: TextButton.styleFrom(
                primary: color,
                backgroundColor: color,
                shadowColor: Colors.transparent,
                elevation: 1,
                padding: EdgeInsets.zero,
                shape: new RoundedRectangleBorder(
                  borderRadius:
                      new BorderRadius.circular(radius ?? height ?? 0),
                ),
              ),
              child: Container(
                  padding: EdgeInsets.all(padding ?? 0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                  ),
                  height: height,
                  width: width,
                  child: SvgPicture.asset(
                    icon ?? '',
                    color: iconColor,
                  ))))
      : type == ButtonType.circle_icon_text
          ? Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextButton(
                    onPressed: onTap,
                    style: TextButton.styleFrom(
                      primary: color,
                      backgroundColor: color,
                      padding: EdgeInsets.zero,
                      shadowColor: Colors.transparent,
                      shape: new RoundedRectangleBorder(
                        borderRadius:
                            new BorderRadius.circular(radius ?? height ?? 0),
                      ),
                    ),
                    child: Container(
                        padding: EdgeInsets.all(padding ?? 0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                        ),
                        height: height,
                        width: width,
                        child: SvgPicture.asset(
                          icon ?? '',
                          color: iconColor,
                        ))),
                SizedBox(height: 11.4),
                Text(text ?? '',
                    style: AppTextStyles.semiBold13.copyWith(color: textColor))
              ],
            )
          : type == ButtonType.icon_text
              ? TextButton(
                  onPressed: onTap,
                  style: TextButton.styleFrom(
                    primary: color,
                    backgroundColor: color,
                    padding: EdgeInsets.zero,
                    shadowColor: Colors.transparent,
                    shape: new RoundedRectangleBorder(
                      borderRadius:
                          new BorderRadius.circular(radius ?? height ?? 0),
                    ),
                  ),
                  child: Container(
                      padding: EdgeInsets.all(padding ?? 0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                      ),
                      height: height,
                      width: width,
                      child: Row(
                        children: [
                          SvgPicture.asset(icon ?? '', color: iconColor),
                          SizedBox(width: 10),
                          Text(text ?? '',
                              style: textStyle ??
                                  AppTextStyles.semiBold13
                                      .copyWith(color: textColor))
                        ],
                      )))
              : type == ButtonType.text
                  ? TextButton(
                      onPressed: onTap,
                      style: TextButton.styleFrom(
                        primary: color,
                        shadowColor: Colors.transparent,
                        backgroundColor: color,
                        padding: EdgeInsets.zero,
                        shape: new RoundedRectangleBorder(
                          borderRadius:
                              new BorderRadius.circular(radius ?? height ?? 0),
                        ),
                      ),
                      child: Container(
                          padding: EdgeInsets.all(padding ?? 0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                          ),
                          height: height,
                          width: width,
                          child: Center(
                            child: Text(text ?? '',
                                style: textStyle ??
                                    AppTextStyles.semiBold13
                                        .copyWith(color: textColor)),
                          )))
                  : Container();
}
