import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppTextStyles {
  AppTextStyles._internal();

  static TextTheme light({String? fontFamily}) {
    return TextTheme(
      displayLarge: AppTextStyles.displayLarge(
        fontFamily: fontFamily,
        textColor: AppColors.neutral[10]!,
      ),
      displayMedium: AppTextStyles.displayMedium(
        fontFamily: fontFamily,
        textColor: AppColors.neutral[10]!,
      ),
      displaySmall: AppTextStyles.displaySmall(
        fontFamily: fontFamily,
        textColor: AppColors.neutral[10]!,
      ),
      headlineLarge: AppTextStyles.headlineLarge(
        fontFamily: fontFamily,
        textColor: AppColors.neutral[10]!,
      ),
      headlineMedium: AppTextStyles.headlineMedium(
        fontFamily: fontFamily,
        textColor: AppColors.neutral[10]!,
      ),
      headlineSmall: AppTextStyles.headlineSmall(
        fontFamily: fontFamily,
        textColor: AppColors.neutral[10]!,
      ),
      titleLarge: AppTextStyles.titleLarge(
        fontFamily: fontFamily,
        textColor: AppColors.neutral[10]!,
      ),
      titleMedium: AppTextStyles.titleMedium(
        fontFamily: fontFamily,
        textColor: AppColors.neutral[10]!,
      ),
      titleSmall: AppTextStyles.titleSmall(
        fontFamily: fontFamily,
        textColor: AppColors.neutral[10]!,
      ),
      labelLarge: AppTextStyles.labelLarge(
        fontFamily: fontFamily,
        textColor: AppColors.neutral[10]!,
      ),
      labelMedium: AppTextStyles.labelMedium(
        fontFamily: fontFamily,
        textColor: AppColors.neutral[10]!,
      ),
      labelSmall: AppTextStyles.labelSmall(
        fontFamily: fontFamily,
        textColor: AppColors.neutral[10]!,
      ),
      bodyLarge: AppTextStyles.bodyLarge(
        fontFamily: fontFamily,
        textColor: AppColors.neutral[10]!,
      ),
      bodyMedium: AppTextStyles.bodyMedium(
        fontFamily: fontFamily,
        textColor: AppColors.neutral[10]!,
      ),
      bodySmall: AppTextStyles.bodySmall(
        fontFamily: fontFamily,
        textColor: AppColors.neutral[10]!,
      ),
    );
  }

  static TextStyle displayLarge({String? fontFamily, Color? textColor}) {
    return TextStyle(
      fontSize: 57,
      fontFamily: fontFamily,
      color: textColor,
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle displayMedium({String? fontFamily, Color? textColor}) {
    return TextStyle(
      fontSize: 45,
      fontFamily: fontFamily,
      color: textColor,
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle displaySmall({String? fontFamily, Color? textColor}) {
    return TextStyle(
      fontSize: 36,
      fontFamily: fontFamily,
      color: textColor,
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle headlineLarge({String? fontFamily, Color? textColor}) {
    return TextStyle(
      fontSize: 32,
      fontFamily: fontFamily,
      color: textColor,
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle headlineMedium({String? fontFamily, Color? textColor}) {
    return TextStyle(
      fontSize: 28,
      fontFamily: fontFamily,
      color: textColor,
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle headlineSmall({String? fontFamily, Color? textColor}) {
    return TextStyle(
      fontSize: 24,
      fontFamily: fontFamily,
      color: textColor,
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle titleLarge({String? fontFamily, Color? textColor}) {
    return TextStyle(
      fontSize: 22,
      fontFamily: fontFamily,
      color: textColor,
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle titleMedium({String? fontFamily, Color? textColor}) {
    return TextStyle(
      fontSize: 16,
      letterSpacing: 0.15,
      fontFamily: fontFamily,
      color: textColor,
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle titleSmall({String? fontFamily, Color? textColor}) {
    return TextStyle(
      fontSize: 14,
      letterSpacing: 0.1,
      fontFamily: fontFamily,
      color: textColor,
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle labelLarge({String? fontFamily, Color? textColor}) {
    return TextStyle(
      fontSize: 14,
      letterSpacing: 0.1,
      fontFamily: fontFamily,
      color: textColor,
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle labelMedium({String? fontFamily, Color? textColor}) {
    return TextStyle(
      fontSize: 12,
      letterSpacing: 0.5,
      fontFamily: fontFamily,
      color: textColor,
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle labelSmall({String? fontFamily, Color? textColor}) {
    return TextStyle(
      fontSize: 11,
      letterSpacing: 0.5,
      fontFamily: fontFamily,
      color: textColor,
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle bodyLarge({String? fontFamily, Color? textColor}) {
    return TextStyle(
      fontSize: 16,
      letterSpacing: 0.15,
      fontFamily: fontFamily,
      color: textColor,
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle bodyMedium({String? fontFamily, Color? textColor}) {
    return TextStyle(
      fontSize: 14,
      letterSpacing: 0.25,
      fontFamily: fontFamily,
      color: textColor,
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle bodySmall({String? fontFamily, Color? textColor}) {
    return TextStyle(
      fontSize: 12,
      letterSpacing: 0.4,
      fontFamily: fontFamily,
      color: textColor,
      fontWeight: FontWeight.w400,
    );
  }
}
