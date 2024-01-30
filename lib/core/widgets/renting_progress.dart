import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:yatri_car_task/core/utils/app_assets.dart';
import 'package:yatri_car_task/core/utils/app_colors.dart';
import 'package:yatri_car_task/core/utils/app_style.dart';

class RentingProgress extends StatelessWidget {
  const RentingProgress({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                width: 45,
                height: 45,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Theme.of(context).primaryColor,
                ),
                child: Center(
                  child: Image.asset(
                    AppAssets.profileIcon,
                    width: 30,
                    height: 30,
                  ),
                ),
              ),
              const SizedBox(height: 7),
              const SizedBox(
                width: 5,
              ),
              Expanded(child: SvgPicture.asset(AppAssets.lineIcon)),
              const SizedBox(
                width: 5,
              ),
              Container(
                width: 45,
                height: 45,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: AppColors.primaryColorLight1,
                ),
                child: Center(
                  child: Image.asset(
                    AppAssets.paymentIcon,
                    width: 30,
                    height: 30,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 7,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Passenger \nDetails",
                style: AppStyle.getTextStyleBold12(context)
                    .copyWith(color: Theme.of(context).primaryColor),
              ),
              Text(
                "Payment",
                style: AppStyle.getTextStyleRegular12(context)
                    .copyWith(color: Colors.white),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
