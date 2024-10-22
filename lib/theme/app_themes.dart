import 'package:flutter/material.dart';
import 'package:isar_example/theme/app_colors.dart';

class AppTheme {
  ThemeData lightTheme() => ThemeData(
      brightness: Brightness.light,
      scaffoldBackgroundColor: AppColors.mystic50,
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: AppColors.white,
        selectedItemColor: AppColors.white,
        unselectedItemColor: AppColors.black,
      ));

  ThemeData darkTheme() => ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: AppColors.woodsmoke950,
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: AppColors.black,
          selectedItemColor: AppColors.black,
          unselectedItemColor: AppColors.white,
        ),
      );
}
