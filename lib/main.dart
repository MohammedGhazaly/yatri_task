import 'package:flutter/material.dart';
import 'package:yatri_car_task/core/utils/app_router.dart';
import 'package:yatri_car_task/core/utils/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
