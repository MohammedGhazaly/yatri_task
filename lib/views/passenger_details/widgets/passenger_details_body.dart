import 'package:flutter/material.dart';
import 'package:yatri_car_task/core/widgets/renting_progress.dart';

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
            ],
          ),
        ),
      ),
    );
  }
}
