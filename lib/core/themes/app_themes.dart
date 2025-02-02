import 'package:finance_app/core/themes/app_colors.dart';
import 'package:finance_app/core/themes/app_fonts.dart';
import 'package:finance_app/core/themes/app_styles.dart';
import 'package:flutter/material.dart';

class AppThemes {
  static final lightTheme = ThemeData(
      primaryColor: AppColors.primaryColor,
      scaffoldBackgroundColor: AppColors.whiteColor,
      fontFamily: AppFonts.mainFontName,
      textTheme: TextTheme(
        titleLarge: AppStyles.primaryHeadLinesStyle,
        titleMedium: AppStyles.subtitlesStyles,
      ),
      buttonTheme: ButtonThemeData(
        buttonColor: AppColors.primaryColor,
        disabledColor: AppColors.secondaryColor,
      ));
}