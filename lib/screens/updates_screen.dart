import 'package:flutter/material.dart';
import 'package:zapp/themes/theme_controller.dart';
import 'package:zapp/widgets/nav_bar_custom.dart';

class UpdatesScreen extends StatefulWidget {
  const UpdatesScreen({super.key});

  @override
  State<UpdatesScreen> createState() => _UpdatesScreenState();
}

class _UpdatesScreenState extends State<UpdatesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeController.bgColor,
      appBar: AppBar(
        backgroundColor: ThemeController.bgColor,
        title: Text(
          "Actus",
          style: TextStyle(
            color: ThemeController.textColor,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          )
        ),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.search, color: ThemeController.iconColor,)),
          IconButton(onPressed: (){}, icon: Icon(Icons.more_vert_outlined, color: ThemeController.iconColor,))
        ],
      ),

      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        spacing: 15,
        children: [
          FloatingActionButton(
            onPressed: (){},
            backgroundColor: ThemeController.bg2Color,
            mini: true,
            child: Icon(Icons.edit, color: ThemeController.iconColor),
          ),
          FloatingActionButton(
            onPressed: (){},
            backgroundColor: ThemeController.mainColor,
            tooltip: "Nouveau statut",
            child: Icon(Icons.photo_camera_rounded, color: ThemeController.bgColor),
          ),
        ],
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 6,
          children: [
            Icon(Icons.campaign_rounded, size: 72, color: ThemeController.mainColor),
            Text("Page en construction...", style: TextStyle(color: ThemeController.textColor))
          ],
        ),
      ),
      
      bottomNavigationBar: NavBarCustom(selectedIndex: 2),
    );
  }
}