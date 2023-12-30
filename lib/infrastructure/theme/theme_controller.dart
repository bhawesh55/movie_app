
import 'package:flutter/material.dart';
import 'package:get/get.dart';

enum ThemeModeOption { Light, Dark, System }

class ThemeController extends GetxController {
  RxBool isDark = RxBool(false);
  final Rx<ThemeMode> themeMode = Rx<ThemeMode>(ThemeMode.dark);

  void setThemeMode(ThemeModeOption mode) {
    switch (mode) {
      case ThemeModeOption.Light:
        themeMode.value = ThemeMode.light;
        break;
      case ThemeModeOption.Dark:
        themeMode.value = ThemeMode.dark;
        break;
      case ThemeModeOption.System:
        themeMode.value = ThemeMode.system;
        break;
    }
  }
}
