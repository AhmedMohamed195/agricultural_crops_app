import 'package:flutter/material.dart';

import '../utils/utils.dart';

/// Extension for adding text style manipulation methods to the TextStyle class.
extension TextStyleExtension on TextStyle {
  /// Returns a bold version of the text style.
  TextStyle get bold => copyWith(fontWeight: FontWeight.w700);

  /// Returns a text style with a font weight of 500.
  TextStyle get w500 => copyWith(fontWeight: FontWeight.w500);

  /// Returns a text style with a font weight of 600.
  TextStyle get w600 => copyWith(fontWeight: FontWeight.w600);

  /// Returns a text style with the color set to the text primary color.
  TextStyle get withPrimaryTextColor => copyColorWith(AppColors.textPrimary);

  /// Returns a text style with the color set to the primary color.
  TextStyle get withPrimaryColor => copyColorWith(AppColors.primary);

  /// Returns a text style with the color set to white.
  TextStyle get withWhiteColor => copyColorWith(AppColors.white);

  /// Returns a copy of the text style with the color set to the specified [color].
  TextStyle copyColorWith(Color? color) => copyWith(color: color);

  /// Returns a copy of the text style with the font family set to the specified [fontFamily].
  TextStyle copyFontWith(String fontFamily) => copyWith(fontFamily: fontFamily);
}
