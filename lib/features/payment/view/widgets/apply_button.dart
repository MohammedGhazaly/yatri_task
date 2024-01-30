import 'package:flutter/material.dart';
import 'package:yatri_car_task/core/utils/app_colors.dart';
import 'package:yatri_car_task/core/utils/app_style.dart';

class ApplyButton extends StatelessWidget {
  const ApplyButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: double.infinity,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: AppColors.primaryColor),
          onPressed: () {},
          child: Text(
            "Apply",
            style: AppStyle.getTextStyleBold16(context),
          )),
    );
  }
}
