import 'package:flutter/material.dart';
import 'package:zapp/themes/theme_controller.dart';

class MoreButton extends StatelessWidget {
  const MoreButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: themeController.themeMode,
      builder: (context, themeMode, child) {
        final isDark = themeController.isDark;
        
        return PopupMenuButton<int>(
          icon: Icon(Icons.more_vert_outlined, color: ThemeController.iconColor),
          tooltip: "Plus d'options",
          color: ThemeController.bgColor,

          position: PopupMenuPosition.over,
          offset: const Offset(0, 45),
        
          onSelected: (value){
            if(value == 0){
              themeController.changeTheme();
            }
          },
        
          itemBuilder: (context) => [
            PopupMenuItem<int>(
              value: 0,
              child: Row(
                spacing: 10,
                children: [
                  Icon(
                    isDark ? Icons.light_mode : Icons.dark_mode,
                    color: ThemeController.iconColor,
                  ),
                  Text(
                    "Passer au thème ${isDark ? 'clair' : 'sombre'}",
                    style: TextStyle(color: ThemeController.textColor),
                  ),
                ]
              ),
            ),
          ],
        );
      }
    );
  }
}