import 'package:flutter/material.dart';
import 'package:yatri_car_task/core/utils/size_config.dart';

class AppStyle {
  static TextStyle getTextStyleBold12(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 12),
      fontWeight: FontWeight.w700,
    );
  }

  static TextStyle getTextStyleRegular12(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 12),
      fontWeight: FontWeight.w400,
    );
  }
}
