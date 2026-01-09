import 'package:bmi_project/Screen/Home_Screen.dart';
import 'package:bmi_project/theme/Apptheme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const BMIapp());
}

class BMIapp extends StatefulWidget {
  const BMIapp({super.key});

  @override
  State<BMIapp> createState() => _BMIappState();
}

class _BMIappState extends State<BMIapp> {
  ThemeMode themeMode = ThemeMode.light; // Default to light theme

  // Theme toggling logic can be implemented here
  void toggleTheme(bool isDark) {
    setState(() {
      themeMode = isDark ? ThemeMode.dark : ThemeMode.light;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: Apptheme.light,
      darkTheme: Apptheme.dark,
      themeMode: themeMode,
      home: HomeScreen(toggleTheme: toggleTheme),
    );
  }
}
