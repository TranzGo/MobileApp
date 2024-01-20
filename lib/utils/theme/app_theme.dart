import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tranzgoo/utils/theme/app_colors.dart';

class AppTheme {
  static final ThemeData appTheme = ThemeData(
      useMaterial3: true,
      scaffoldBackgroundColor: AppColors.scaffoldLayoutColor,
      primaryColor: AppColors.primaryColor,
      textTheme: GoogleFonts.leagueSpartanTextTheme(),
      colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primaryColor),
      brightness: Brightness.light,
      appBarTheme: const AppBarTheme(
          scrolledUnderElevation: 0, color: AppColors.scaffoldLayoutColor));
}