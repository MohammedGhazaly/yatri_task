import 'package:flutter/material.dart';
import 'package:yatri_car_task/core/utils/app_router.dart';
import 'package:yatri_car_task/core/utils/app_theme.dart';

class YatriRentalApp extends StatelessWidget {
  const YatriRentalApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.passengerInformationRoute,
      onGenerateRoute: RouteGenerator.getRoutes,
      title: 'Car Rental App',
      theme: AppTheme.mainTheme,
    );
  }
}
