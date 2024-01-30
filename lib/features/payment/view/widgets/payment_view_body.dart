import 'package:flutter/material.dart';
import 'package:yatri_car_task/core/utils/app_colors.dart';
import 'package:yatri_car_task/core/utils/app_style.dart';
import 'package:yatri_car_task/core/widgets/renting_progress.dart';
import 'package:yatri_car_task/features/payment/view/widgets/apply_button.dart';
import 'package:yatri_car_task/features/payment/view/widgets/coupon_code_button.dart';
import 'package:yatri_car_task/features/payment/view/widgets/trip_details_section.dart';

class PaymentViewBody extends StatelessWidget {
  const PaymentViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 25),
              RentingProgress(
                isPayment: true,
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  CouponCodeButton(),
                  SizedBox(
                    width: 15,
                  ),
                  Flexible(
                    child: ApplyButton(),
                  )
                ],
              ),
              SizedBox(
                height: 12,
              ),
              TripDetailsSection(),
            ],
          ),
        ),
      ),
    );
  }
}
