import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'app_colors.dart';
import 'app_text_styles.dart';

class AppTheme {
  AppTheme._internal();

  static ThemeData light({String? fontFamily}) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: AppColors.neutral[99]!,
      ),
    );

    final textStyles = AppTextStyles.light(fontFamily: fontFamily);

    return ThemeData(
      useMaterial3: true,
      backgroundColor: AppColors.neutral[99]!,
      scaffoldBackgroundColor: AppColors.neutral[99]!,
      appBarTheme: AppBarTheme(
        elevation: 0,
        backgroundColor: AppColors.neutral[99]!,
        titleTextStyle: textStyles.titleLarge,
        toolbarTextStyle: textStyles.titleLarge,
      ),
      textTheme: textStyles,
      colorScheme: ColorScheme(
        brightness: Brightness.dark,
        primary: AppColors.primary[40]!,
        onPrimary: AppColors.primary[100]!,
        primaryContainer: AppColors.primary[90]!,
        onPrimaryContainer: AppColors.primary[10]!,
        secondary: AppColors.secondary[40]!,
        onSecondary: AppColors.secondary[100]!,
        secondaryContainer: AppColors.secondary[90]!,
        onSecondaryContainer: AppColors.secondary[10]!,
        tertiary: AppColors.tertiary[40]!,
        onTertiary: AppColors.tertiary[100]!,
        tertiaryContainer: AppColors.tertiary[90]!,
        onTertiaryContainer: AppColors.tertiary[10]!,
        error: AppColors.error[40]!,
        onError: AppColors.error[100]!,
        background: AppColors.neutral[99]!,
        onBackground: AppColors.neutral[10]!,
        surface: AppColors.neutralVariant[90]!,
        onSurface: AppColors.neutralVariant[30]!,
      ),
    );
  }
}
