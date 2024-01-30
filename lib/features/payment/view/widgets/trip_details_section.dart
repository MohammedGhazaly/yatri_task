import 'package:flutter/material.dart';
import 'package:yatri_car_task/core/utils/app_colors.dart';
import 'package:yatri_car_task/core/utils/app_style.dart';
import 'package:yatri_car_task/features/payment/view/widgets/trip_detail_row_widget.dart';

class TripDetailsSection extends StatelessWidget {
  const TripDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: AppColors.darkColor,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Column(
        // crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          TripDetailRowWidget(
              leftText: "Trip Type", rightText: "Outstation - Round Trip"),
          SizedBox(height: 7),
          TripDetailRowWidget(
              leftText: "Travel Date", rightText: "15-12-2023 to 16-12-2023"),
          SizedBox(height: 7),
          TripDetailRowWidget(leftText: "Pickup Time", rightText: "21:00"),
          SizedBox(height: 7),
          TripDetailRowWidget(leftText: "No. of Days", rightText: "2 Days"),
          SizedBox(height: 7),
        ],
      ),
    );
  }
}
