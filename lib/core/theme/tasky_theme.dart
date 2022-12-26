import 'package:flutter/material.dart';
import 'package:test_app/core/theme/app_color.dart';

class TaskyTheme {
  static ThemeData theme = ThemeData(
    colorScheme: const ColorScheme(
      brightness: Brightness.light,
      primary: AppColor.mirage,
      onPrimary: AppColor.mirage,
      secondary: AppColor.mirage,
      onSecondary: AppColor.mirage,
      error: AppColor.torchRed,
      onError: AppColor.white,
      background: AppColor.mirage,
      onBackground: AppColor.mirage,
      surface: AppColor.mirage,
      onSurface: AppColor.mirage,
    ),
    scaffoldBackgroundColor: AppColor.mirage,
    backgroundColor: AppColor.mirage,
    bottomAppBarColor: AppColor.mirage,
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: AppColor.mirage,
      selectedItemColor: AppColor.white,
      unselectedItemColor: AppColor.white,
    ),
    primaryColor: AppColor.mirage,
    fontFamily: 'UbuntuCondensed',
  );
}
