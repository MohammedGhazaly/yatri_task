import 'package:flutter/material.dart';
import 'package:yatri_car_task/core/utils/app_colors.dart';
import 'package:yatri_car_task/core/utils/app_style.dart';
import 'package:yatri_car_task/core/widgets/custom_text_field.dart';

class PickupDetailsForm extends StatelessWidget {
  const PickupDetailsForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 17, horizontal: 24),
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.darkColor,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Form(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Pickup details -",
              style: AppStyle.getTextStyleBold16(context).copyWith(
                color: AppColors.primaryColor,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            CustomTextField(hintText: "Passenger Name")
          ],
        ),
      ),
    );
  }
}
