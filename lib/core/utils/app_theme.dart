import 'package:flutter/material.dart';
import 'package:yatri_car_task/core/utils/app_colors.dart';

class AppTheme {
  static ThemeData mainTheme = ThemeData(
    primaryColor: AppColors.primaryColor,
    scaffoldBackgroundColor: Colors.black.withOpacity(0.85),
    useMaterial3: true,
  );
}
