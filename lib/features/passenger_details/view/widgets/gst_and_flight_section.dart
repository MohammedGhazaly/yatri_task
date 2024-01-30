import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yatri_car_task/features/passenger_details/providers/flight_provder.dart';
import 'package:yatri_car_task/features/passenger_details/view/widgets/check_box_and_text_field.dart';

class GstAndFlightSection extends StatelessWidget {
  const GstAndFlightSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final FlightGstProvider flightGstProvider =
        Provider.of<FlightGstProvider>(context);
    return Column(
      children: [
        CheckBoxAndTextField(
          rentType: "GST",
          isActive: flightGstProvider.isGst,
          sizedBoxValue: 27,
          onChangedFunction: flightGstProvider.toggleGst,
        ),
        const SizedBox(
          height: 22,
        ),
        CheckBoxAndTextField(
          rentType: "Flight",
          isActive: flightGstProvider.isFlight,
          sizedBoxValue: 17,
          onChangedFunction: flightGstProvider.toggleFlight,
        ),
      ],
    );
  }
}
