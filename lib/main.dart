import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yatri_car_task/app/yatri_app.dart';
import 'package:yatri_car_task/features/passenger_details/providers/flight_provder.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => FlightGstProvider())],
      child: const YatriRentalApp(),
    ),
  );
}
