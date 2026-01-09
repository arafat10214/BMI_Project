import 'package:flutter/material.dart';

class Apptheme {
  static Color primaryColor = Color(0xFF6C63FF);

  static ThemeData light = ThemeData(
    scaffoldBackgroundColor: Color(0xFFF4F5FF),
    primaryColor: primaryColor,
    brightness: Brightness.light,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: primaryColor,
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      ),
    ),
  );

  static ThemeData dark = ThemeData(
    scaffoldBackgroundColor: Color(0xFF121212),
    primaryColor: primaryColor,
    brightness: Brightness.dark,
  );
}
