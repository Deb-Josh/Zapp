import 'package:flutter/material.dart';

class ThemeController {
  final ValueNotifier<ThemeMode> themeMode = ValueNotifier(ThemeMode.system);

  // Les themes ne sont pas encore effectifs (je vais prendre mon temps pour creer des palettes de couleur coherentes en light/dark mode de zapp)
  

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