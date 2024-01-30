import 'package:flutter/material.dart';
import 'package:yatri_car_task/core/utils/app_colors.dart';
import 'package:yatri_car_task/core/utils/app_style.dart';

class CheckBoxAndTextField extends StatelessWidget {
  final String rentType;
  final bool isActive;
  final double sizedBoxValue;
  final void Function(bool?)? onChangedFunction;
  const CheckBoxAndTextField(
      {super.key,
      required this.rentType,
      required this.isActive,
      required this.sizedBoxValue,
      this.onChangedFunction});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: isActive,
          onChanged: (value) {
            onChangedFunction!(value);
          },
          activeColor: AppColors.primaryColor,
        ),
        Text(
          rentType,
          style: AppStyle.getTextStyleBold16(context).copyWith(
            color: AppColors.primaryColor,
          ),
        ),
        SizedBox(
          width: sizedBoxValue,
        ),
        Expanded(
            child: CheckBoxTextField(
          isActive: isActive,
        ))
      ],
    );
  }
}

class CheckBoxTextField extends StatelessWidget {
  final bool isActive;
  const CheckBoxTextField({super.key, required this.isActive});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: AppColors.primaryColor,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(horizontal: 17, vertical: 0),
        fillColor:
            isActive == true ? AppColors.primaryColorLight2 : Colors.grey,
        filled: true,
        enabled: isActive,
        hintStyle: AppStyle.getTextStyleMedium12(context).copyWith(
          color: AppColors.primaryColor,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        // enabled: false,
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(
            color: Colors.transparent,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(
              color: AppColors.primaryColor,
              style: BorderStyle.solid,
              width: 2),
        ),
      ),
    );
  }
}
