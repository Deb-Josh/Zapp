import 'package:flutter/material.dart';
import 'package:zapp/themes/theme_controller.dart';
import 'package:zapp/widgets/nav_bar_custom.dart';

class ToolsScreen extends StatefulWidget {
  const ToolsScreen({super.key});

  @override
  State<ToolsScreen> createState() => _ToolsScreenState();
}

class _ToolsScreenState extends State<ToolsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeController.bgColor,
      appBar: AppBar(
        backgroundColor: ThemeController.bgColor,
        title: Text(
          "Outils",
          style: TextStyle(
            color: ThemeController.textColor,
            fontSize: 18,
            fontWeight: FontWeight.bold
          )
        ),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.search, color: ThemeController.iconColor,)),
          IconButton(onPressed: (){}, icon: Icon(Icons.more_vert_outlined, color: ThemeController.iconColor,))
        ],
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        backgroundColor: ThemeController.mainColor,
        tooltip: "Nouvelle publicité",
        child: Icon(Icons.storefront_rounded, color: ThemeController.bgColor),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 6,
          children: [
            Icon(Icons.store_rounded, size: 72, color: ThemeController.mainColor,),
            Text("Page en construction...", style: TextStyle(color: ThemeController.textColor))
          ],
        ),
      ),
      
      bottomNavigationBar: NavBarCustom(selectedIndex: 3),
    );
  }
}