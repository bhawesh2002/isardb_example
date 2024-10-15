import 'package:flutter/material.dart';
import 'package:isar_example/theme/app_colors.dart';

class AppTheme {
  ThemeData lightTheme() => ThemeData(
      brightness: Brightness.light,
      scaffoldBackgroundColor: AppColors.mystic50,
      colorScheme: const ColorScheme.light());

  ThemeData darkTheme() => ThemeData(
      brightness: Brightness.dark,
      scaffoldBackgroundColor: AppColors.woodsmoke950,
      colorScheme: const ColorScheme.dark());
}
