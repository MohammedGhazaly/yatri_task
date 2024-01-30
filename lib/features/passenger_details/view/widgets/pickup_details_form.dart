import 'package:flutter/material.dart';
import 'package:yatri_car_task/core/utils/app_colors.dart';
import 'package:yatri_car_task/core/utils/app_style.dart';
import 'package:yatri_car_task/core/widgets/custom_text_field.dart';
import 'package:yatri_car_task/features/passenger_details/view/widgets/custom_form_button.dart';
import 'package:yatri_car_task/features/passenger_details/view/widgets/gst_and_flight_section.dart';

class PickupDetailsForm extends StatelessWidget {
  const PickupDetailsForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 17, horizontal: 24),
            width: double.infinity,
            decoration: BoxDecoration(
              color: AppColors.darkColor,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Pickup details -",
                  style: AppStyle.getTextStyleBold16(context).copyWith(
                    color: AppColors.primaryColor,
                  ),
                ),
                const SizedBox(height: 20),
                const CustomTextField(hintText: "Passenger Name"),
                const SizedBox(height: 15),
                const CustomTextField(hintText: "Mobile Number"),
                const SizedBox(height: 15),
                const CustomTextField(hintText: "Pickup Address"),
                const SizedBox(height: 15),
                const CustomTextField(
                    hintText: "Comment if any instruction for driver",
                    maxLines: 5,
                    verticalPadding: 7),
                const SizedBox(height: 22),
                GstAndFlightSection(),
              ],
            ),
          ),
          const SizedBox(height: 20),
          CustomFormButton(),
          SizedBox(height: 10)
        ],
      ),
    );
  }
}
