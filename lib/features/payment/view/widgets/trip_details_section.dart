import 'package:flutter/material.dart';
import 'package:yatri_car_task/core/utils/app_colors.dart';
import 'package:yatri_car_task/core/utils/app_style.dart';
import 'package:yatri_car_task/features/payment/view/widgets/fare_breakup_widget.dart';
import 'package:yatri_car_task/features/payment/view/widgets/travel_route.dart';
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
          SizedBox(height: 15),
          TravelRoute(),
          SizedBox(height: 26),
          Text(
            "Fare Breakup:",
            style: AppStyle.getTextStyleBold16(context).copyWith(
              color: AppColors.errorColor,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          FareBreakUpWidget(
              leftText: "Approx Roundtrip Distance :", rightText: "300 Kms."),
          SizedBox(
            height: 10,
          ),
          FareBreakUpWidget(
              leftText: "Min Km Charged :", rightText: "250 Kms/day"),
          SizedBox(
            height: 10,
          ),
          FareBreakUpWidget(
              leftText: "Approx Roundtrip Charge :\n(300 KM X RS 10/km)",
              rightText: "Rs. 3000/-"),
          SizedBox(
            height: 10,
          ),
          FareBreakUpWidget(
              leftText: "Driver Allowance :\n(Rs.300 X RS 1 Day)",
              rightText: "Rs. 300/-"),
          SizedBox(
            height: 10,
          ),
          FareBreakUpWidget(
              leftText: "GST :\n(5 % GST on RS. 3300)", rightText: "Rs. 165/-"),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Applied Coupon Discount",
                style: AppStyle.getTextStyleBold12(context).copyWith(
                  color: AppColors.primaryColor,
                ),
              ),
              Text(
                "Rs. 300/-",
                style: AppStyle.getTextStyleBold12(context).copyWith(
                  color: AppColors.primaryColor,
                ),
              )
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Divider(
            thickness: 1,
            color: Colors.white,
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Total :",
                style: AppStyle.getTextStyleBold16(context)
                    .copyWith(color: AppColors.primaryColor),
              ),
              Text(
                "Rs. 3165/-",
                style: AppStyle.getTextStyleBold16(context)
                    .copyWith(color: AppColors.primaryColor),
              ),
            ],
          )
        ],
      ),
    );
  }
}
