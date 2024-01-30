import 'package:flutter/material.dart';
import 'package:yatri_car_task/core/utils/app_colors.dart';
import 'package:yatri_car_task/core/utils/app_style.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final int maxLines;
  final double verticalPadding;
  const CustomTextField(
      {super.key,
      required this.hintText,
      this.maxLines = 1,
      this.verticalPadding = 0});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: maxLines,
      cursorColor: AppColors.primaryColor,
      style: AppStyle.getTextStyleBold12(context).copyWith(
        color: AppColors.primaryColor,
      ),
      decoration: InputDecoration(
        hintText: hintText,
        contentPadding:
            EdgeInsets.symmetric(horizontal: 17, vertical: verticalPadding),
        fillColor: Colors.white,
        filled: true,
        hintStyle: AppStyle.getTextStyleMedium12(context).copyWith(
          color: AppColors.primaryColor,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(
              color: AppColors.primaryColor,
              style: BorderStyle.solid,
              width: 2),
        ),
      ),
    );
  }
}
