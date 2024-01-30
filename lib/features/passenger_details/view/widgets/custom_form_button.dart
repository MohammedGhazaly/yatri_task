import 'package:flutter/material.dart';
import 'package:yatri_car_task/core/utils/app_colors.dart';
import 'package:yatri_car_task/core/utils/app_style.dart';

class CustomFormButton extends StatelessWidget {
  const CustomFormButton({super.key});

  @override
  Widget build(BuildContext context) {
    final medaQuery = MediaQuery.sizeOf(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50),
      child: SizedBox(
        height: 50,
        width: medaQuery.width,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            foregroundColor: Colors.white,
            backgroundColor: AppColors.primaryColor,
          ),
          onPressed: () {},
          child: Text(
            "Continue",
            style: AppStyle.getTextStyleBold20(context).copyWith(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
