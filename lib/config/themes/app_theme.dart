import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:agricultural_crops_app/core/extensions/text_style.dart';
import '../../core/utils/utils.dart';

class AppTheme {
  static ThemeData mahsolyTheme = ThemeData(
    useMaterial3: true,
    fontFamily: appFontFamily,
    colorSchemeSeed: AppColors.primary,
    scaffoldBackgroundColor: AppColors.white,
    brightness: Brightness.light,
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.white,
      centerTitle: true,
      titleTextStyle: AppTextStyles.style16.bold.copyWith(
        color: AppColors.textPrimary,
        fontFamily: appFontFamily,
      ),
      surfaceTintColor: AppColors.transparent,
      elevation: 0,
    ),
    radioTheme: RadioThemeData(
      fillColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return AppColors.primary;
        }
        return AppColors.darkGray100;
      }),
    ),
    iconTheme: const IconThemeData(color: AppColors.black),
    checkboxTheme: CheckboxThemeData(
      fillColor: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return AppColors.primary;
        }
        return Colors.transparent;
      }),
      visualDensity: VisualDensity.compact,
      checkColor: WidgetStateProperty.all(AppColors.white),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(Sizes.s4.r),
      ),
      side: const BorderSide(color: AppColors.primary, width: 1.5),
    ),
  );
}
