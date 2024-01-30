import 'package:flutter/material.dart';
import 'package:yatri_car_task/core/widgets/renting_progress.dart';
import 'package:yatri_car_task/core/widgets/custom_form_button.dart';
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
              const SizedBox(height: 25),
              const RentingProgress(
                isPayment: true,
              ),
              const SizedBox(
                height: 20,
              ),
              const Row(
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
              const SizedBox(
                height: 12,
              ),
              const TripDetailsSection(),
              const SizedBox(
                height: 16,
              ),
              CustomFormButton(
                title: "Pay Now",
                onTappedFunction: () {},
              ),
              const SizedBox(
                height: 30,
              )
              // PercentageRadioButtonSection(),
            ],
          ),
        ),
      ),
    );
  }
}
