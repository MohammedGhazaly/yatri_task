import 'package:flutter/material.dart';
import 'package:yatri_car_task/features/passenger_details/view/widgets/check_box_and_text_field.dart';

class GstAndFlightSection extends StatelessWidget {
  const GstAndFlightSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CheckBoxAndTextField(
          rentType: "GST",
          isActive: true,
          sizedBoxValue: 27,
        ),
        const SizedBox(
          height: 22,
        ),
        CheckBoxAndTextField(
          rentType: "Flight",
          isActive: true,
          sizedBoxValue: 17,
        ),
      ],
    );
  }
}
