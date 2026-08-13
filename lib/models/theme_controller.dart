import 'package:flutter/material.dart';

class ThemeController {
  final ValueNotifier<ThemeMode> themeMode = ValueNotifier(ThemeMode.system);

  // Couleurs en light theme
  static const Color lightBg = Color(0xFFFFFFFF);
  static const Color lightCard = Color(0xFFF0F2F5);
  static const Color lightGreen = Color(0xFF25D366);

  // Theme Clair personnalisé
  final ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: lightBg,
    primaryColor: lightGreen,
    colorScheme: ColorScheme.light(
      primary: lightGreen,
      secondary: lightGreen,
      surface: lightCard,
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: lightCard,
      foregroundColor: Colors.black,
      elevation: 0,
    ),
    cardColor: lightCard,
    textTheme: const TextTheme(
      bodyLarge: TextStyle(color: Colors.black87),
      bodyMedium: TextStyle(color: Colors.black54),
    ),
    useMaterial3: true,
  );


  // Couleurs en Dark theme
  static const Color darkBg = Color(0xFF111B21);
  static const Color darkCard = Color(0xFF202C33);
  static const Color darkGreen = Color(0xFF005C4B);

  // Theme Sombre personnalisé
  final ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: darkBg,
    primaryColor: darkGreen,
    colorScheme: ColorScheme.dark(
      primary: darkGreen,
      secondary: darkGreen,
      surface: darkCard,
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: darkCard,
      foregroundColor: Colors.white,
      elevation: 0,
    ),
    cardColor: darkCard,
    textTheme: const TextTheme(
      bodyLarge: TextStyle(color: Colors.white),
      bodyMedium: TextStyle(color: Colors.white70),
    ),
    useMaterial3: true,
  );

  void changeTheme(){
    if(themeMode.value == ThemeMode.light){
      themeMode.value = ThemeMode.dark;
    }else{
      themeMode.value = ThemeMode.light;
    }
  }

  bool get isDark => themeMode.value == ThemeMode.dark;
}

final themeController = ThemeController();