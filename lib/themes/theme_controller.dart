import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class ThemeController {
  final ValueNotifier<ThemeMode> themeMode = ValueNotifier(ThemeMode.system);

  // Constructeur (execution de la methode setThemeColor() a la construction d'un objet ThemeController)
  ThemeController(){
    setThemeColor();
  }

  // Penser a mieux gerer les themes de couleurs (light/dark) en definisant des ThemeData personnalisé plus tard

  // Utilisation des variable statiques pour gestion des themes light/darl plus rapide
  static Color mainColor = Color(0xFF32D951);
  static Color accentMainColor = Color(0xFF32D951).withAlpha(36);
  static late Color greyColor;
  static late Color appNameColor;
  static late Color textColor;
  static late Color text2Color;
  static late Color iconColor;
  static late Color bgColor;
  static late Color bg2Color;

  void setThemeColor(){
    if(isDark){
      greyColor = Colors.grey;
      appNameColor = Colors.white;
      textColor = Colors.white;
      text2Color = Colors.black;
      iconColor = Colors.white;
      bgColor = Color(0xFF111B21);
      bg2Color = Color(0xFF23282C);
    }else{
      greyColor = Colors.grey[800]!;
      appNameColor = Color(0xFF32D951);
      textColor = Colors.black;
      text2Color = Colors.white;
      iconColor = Colors.black;
      bgColor = Colors.white;
      bg2Color = Colors.grey[200]!;
    }
  }

  void changeTheme(){
    if(isDark){
      themeMode.value = ThemeMode.light;
      setThemeColor();
    }else{
      themeMode.value = ThemeMode.dark;
      setThemeColor();
    }
  }

  // inefficace lorsque themeMode.value == ThemeMode.system
  // bool get isDark => themeMode.value == ThemeMode.dark;

  // plus efficace a condition d'utiser des themeData au MaterialApp
  // bool isDark(BuildContext context) => Theme.of(context).brightness == Brightness.dark;

  // On demande directement a l'appareil (marche dans tous le cas)
  bool get isDark =>
    SchedulerBinding
    .instance
    .platformDispatcher
    .platformBrightness == Brightness.dark
    && themeMode.value == ThemeMode.system
    || themeMode.value == ThemeMode.dark;

}

final themeController = ThemeController();
// Color mainColor = ThemeController.mainColor;
// Color accentMainColor = ThemeController.accentMainColor;
// Color greyColor = ThemeController.greyColor;
// Color appNameColor = ThemeController.appNameColor;
// Color textColor = ThemeController.textColor;
// Color text2Color = ThemeController.text2Color;
// Color iconColor = ThemeController.iconColor;
// Color bgColor = ThemeController.bgColor;
// Color bg2Color = ThemeController.bg2Color;