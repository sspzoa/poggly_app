import 'package:flutter/material.dart';

import 'poggly_colors.dart';
import 'poggly_theme.dart';
import 'poggly_typography.dart';

class PogglyDarkThemeColors extends PogglyColors {
  PogglyDarkThemeColors()
      : super(
          grayscale100: const Color(0xFF222525),
          grayscale200: const Color(0xFF1C1F1F),
          grayscale300: const Color(0xFF2C3030),
          grayscale400: const Color(0xFF3B3F40),
          grayscale500: const Color(0xFF808989),
          grayscale600: const Color(0xFFB4B9B9),
          grayscale700: const Color(0xFFDADDDD),
          grayscale800: const Color(0xFFEAEBEB),
          grayscale900: const Color(0xFFF4F5F5),
          grayscale1000: const Color(0xFFFDFEFE),
          primaryBrand: const Color(0xFF2ED096),
          primaryNegative: const Color(0xFFF7CE45),
        );
}

class PogglyDarkThemeTypography extends PogglyTypography {
  PogglyDarkThemeTypography()
      : super(defaultColor: PogglyDarkThemeColors().grayscale700);
}

class PogglyDarkTheme extends PogglyTheme {
  PogglyDarkTheme()
      : super(
            colors: PogglyDarkThemeColors(),
            textStyle: PogglyDarkThemeTypography());
}
