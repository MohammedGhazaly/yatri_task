import 'package:flutter/material.dart';
import 'package:yatri_car_task/core/widgets/renting_progress.dart';
import 'package:yatri_car_task/features/passenger_details/view/widgets/contact_number_section.dart';
import 'package:yatri_car_task/features/passenger_details/view/widgets/pickup_details_form.dart';

class PassengerDetailsBody extends StatelessWidget {
  const PassengerDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 25),
              RentingProgress(),
              SizedBox(height: 17),
              ContactNumberSection(),
              SizedBox(height: 12),
              PickupDetailsForm(),
            ],
          ),
        ),
      ),
    );
  }
}
