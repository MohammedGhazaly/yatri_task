import 'package:flutter/material.dart';
import 'package:yatri_car_task/core/utils/app_assets.dart';
import 'package:yatri_car_task/core/utils/app_colors.dart';
import 'package:yatri_car_task/core/utils/app_style.dart';

class CouponCodeButton extends StatelessWidget {
  const CouponCodeButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.darkColor,
        ),
        onPressed: () {},
        child: Row(
          children: [
            Image.asset(AppAssets.cuponCode, width: 30, height: 30),
            const SizedBox(
              width: 10,
            ),
            Text(
              "Coupon Code",
              style: AppStyle.getTextStyleRegular16(context).copyWith(
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}
