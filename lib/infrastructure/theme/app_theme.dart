import 'package:flutter/material.dart';
import 'package:movie_app_getx/utils/app_color.dart';

class AppTheme {
  const AppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: "Poppins",
    brightness: Brightness.light,
    primaryColor: AppColor.primaryGradientStart,
    scaffoldBackgroundColor: AppColor.white,
    textTheme: AppTextTheme.lightTextTheme,
    elevatedButtonTheme: ElevetedButtonTheme.lightElevetedButtonTheme,
    appBarTheme: const AppBarTheme().copyWith(color: AppColor.transparent),
    inputDecorationTheme: InputDecorationTheme(
      labelStyle: const TextStyle(color: AppColor.darkGreen),
      hintStyle: TextStyle(color: AppColor.black.withOpacity(0.32)),
      floatingLabelBehavior: FloatingLabelBehavior.always,

      border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(color: AppColor.darkGreen)),
      focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(color: AppColor.darkGreen)),
      enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(color: AppColor.darkGreen)),
      errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(color: AppColor.red)),
      isCollapsed: false,
      isDense: false, // this will remove the default content padding
      // now you can customize it here or add padding widget
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 0),
    ),
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: "Poppins",
    brightness: Brightness.light,
    primaryColor: AppColor.primaryGradientStart,
    scaffoldBackgroundColor: AppColor.darkBackground,
    textTheme: AppTextTheme.darkTextTheme,
    elevatedButtonTheme: ElevetedButtonTheme.darkElevetedButtonTheme,
    appBarTheme: const AppBarTheme().copyWith(color: AppColor.transparent),
    inputDecorationTheme: InputDecorationTheme(
      labelStyle: const TextStyle(color: AppColor.darkGreen),
      hintStyle: TextStyle(color: AppColor.white.withOpacity(0.32)),
      floatingLabelBehavior: FloatingLabelBehavior.always,

      border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(color: AppColor.darkGreyCard)),
      focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(color: AppColor.darkGreyCard)),
      enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(color: AppColor.darkGreyCard)),
      errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(color: AppColor.red)),
      isCollapsed: false,
      isDense: false, // this will remove the default content padding
      // now you can customize it here or add padding widget
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 0),
    ),
  );
}

class AppTextTheme {
  const AppTextTheme._();

  static TextTheme lightTextTheme = TextTheme(
    headlineLarge: const TextStyle().copyWith(
      fontSize: 32,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    ),
    headlineMedium: const TextStyle().copyWith(
      fontSize: 24,
      fontWeight: FontWeight.w600,
      color: Colors.black,
    ),
    headlineSmall: const TextStyle().copyWith(
      fontSize: 16,
      fontWeight: FontWeight.w600,
      color: Colors.black,
    ),
    titleLarge: const TextStyle().copyWith(
      fontSize: 16,
      fontWeight: FontWeight.w600,
      color: Colors.black,
    ),
    titleMedium: const TextStyle().copyWith(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: Colors.black,
    ),
    titleSmall: const TextStyle().copyWith(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      color: Colors.black,
    ),
    bodyLarge: const TextStyle().copyWith(
      fontSize: 14.0,
      fontWeight: FontWeight.w500,
      color: Colors.black,
    ),
    bodyMedium: const TextStyle().copyWith(
      fontSize: 14.0,
      fontWeight: FontWeight.normal,
      color: Colors.black,
    ),
    bodySmall: const TextStyle().copyWith(
      fontSize: 14.0,
      fontWeight: FontWeight.w500,
      color: Colors.black.withOpacity(0.5),
    ),
    labelLarge: const TextStyle().copyWith(
      fontSize: 12.0,
      fontWeight: FontWeight.w500,
      color: Colors.black,
    ),
    labelMedium: const TextStyle().copyWith(
      fontSize: 12.0,
      fontWeight: FontWeight.w500,
      color: Colors.black.withOpacity(0.5),
    ),
  );
  static TextTheme darkTextTheme = TextTheme(
    headlineLarge: const TextStyle().copyWith(
      fontSize: 32,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
    headlineMedium: const TextStyle().copyWith(
      fontSize: 24,
      fontWeight: FontWeight.w600,
      color: Colors.white,
    ),
    headlineSmall: const TextStyle().copyWith(
      fontSize: 16,
      fontWeight: FontWeight.w600,
      color: Colors.white,
    ),
    titleLarge: const TextStyle().copyWith(
      fontSize: 16,
      fontWeight: FontWeight.w600,
      color: Colors.white,
    ),
    titleMedium: const TextStyle().copyWith(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: Colors.white,
    ),
    titleSmall: const TextStyle().copyWith(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      color: Colors.white,
    ),
    bodyLarge: const TextStyle().copyWith(
      fontSize: 14.0,
      fontWeight: FontWeight.w500,
      color: Colors.white,
    ),
    bodyMedium: const TextStyle().copyWith(
      fontSize: 14.0,
      fontWeight: FontWeight.normal,
      color: Colors.white,
    ),
    bodySmall: const TextStyle().copyWith(
      fontSize: 14.0,
      fontWeight: FontWeight.w500,
      color: Colors.white.withOpacity(0.5),
    ),
    labelLarge: const TextStyle().copyWith(
      fontSize: 12.0,
      fontWeight: FontWeight.w500,
      color: Colors.white,
    ),
    labelMedium: const TextStyle().copyWith(
      fontSize: 12.0,
      fontWeight: FontWeight.w500,
      color: Colors.white.withOpacity(0.5),
    ),
  );
}

class ElevetedButtonTheme {
  const ElevetedButtonTheme._();

  static final lightElevetedButtonTheme = ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
          elevation: 0,
          foregroundColor: Colors.white,
          backgroundColor: AppColor.primaryGradientStart,
          disabledForegroundColor: Colors.grey,
          disabledBackgroundColor: Colors.grey,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(16))));

  static final darkElevetedButtonTheme = ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
          elevation: 0,
          foregroundColor: Colors.white,
          backgroundColor: AppColor.primaryGradientStart,
          disabledForegroundColor: Colors.grey,
          disabledBackgroundColor: Colors.grey,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(16))));
}
