import 'package:flutter/material.dart';
import 'package:yatri_car_task/features/passenger_details/widgets/passenger_details_body.dart';

class PassengerDetailsView extends StatelessWidget {
  const PassengerDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PassengerDetailsBody(),
    );
  }
}
