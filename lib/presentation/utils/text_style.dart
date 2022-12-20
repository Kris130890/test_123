import 'dart:ui';
import 'package:flutter/material.dart';

class AppFonts {
  AppFonts._();

  ///endregion

  ///region weight
  static const regular = FontWeight.w400;
  static const semi_bold = FontWeight.w600;
  static const bold = FontWeight.w500;

  ///endregion
}

class AppTextStyles {
  ///region font dimens
  static const font_size_34 = 34.0;
  static const font_size_14 = 14.0;

  ///endregion

  AppTextStyles._();

  ///region black

  static black14({
    FontWeight fontWeight = AppFonts.regular,
  }) =>
      TextStyle(
        color: Colors.black,
        fontSize: font_size_14,
        fontWeight: fontWeight,
      );

  static blue14({
    FontWeight fontWeight = AppFonts.regular,
    TextDecoration decoration = TextDecoration.none,
  }) =>
      TextStyle(
        color: Colors.blue,
        fontSize: font_size_14,
        fontWeight: fontWeight,
        decoration: decoration,
      );

  static grey34({
    FontWeight fontWeight = AppFonts.regular,
    TextDecoration decoration = TextDecoration.none,
  }) =>
      TextStyle(
        color: Colors.grey,
        fontSize: font_size_34,
        fontWeight: fontWeight,
        decoration: decoration,
      );

  ///endregion
}
