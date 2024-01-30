import 'package:flutter/material.dart';
import 'package:yatri_car_task/core/utils/app_colors.dart';
import 'package:yatri_car_task/core/utils/app_style.dart';

class CheckBoxAndTextField extends StatelessWidget {
  const CheckBoxAndTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: true,
          onChanged: (value) {},
          activeColor: AppColors.primaryColor,
        ),
        Text(
          "GST",
          style: AppStyle.getTextStyleBold16(context).copyWith(
            color: AppColors.primaryColor,
          ),
        ),
        Expanded(child: CheckBoxTextField())
      ],
    );
  }
}

class CheckBoxTextField extends StatelessWidget {
  const CheckBoxTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField();
  }
}
