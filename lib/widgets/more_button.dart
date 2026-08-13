import 'package:flutter/material.dart';
import 'package:zapp/models/theme_controller.dart';

class MoreButton extends StatelessWidget {
  const MoreButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: themeController.themeMode,
      builder: (context, themeMode, child) {
        
        return PopupMenuButton<int>(
          icon: const Icon(Icons.more_vert_outlined),
          tooltip: "Plus d'options",
          color: Colors.white,

          position: PopupMenuPosition.over,
          offset: const Offset(0, 48),
        
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
                    themeController.isDark ? Icons.light_mode : Icons.dark_mode,
                  ),
                  Text(
                    "Passer au thème ${themeController.isDark ? 'clair' : 'sombre'}",
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