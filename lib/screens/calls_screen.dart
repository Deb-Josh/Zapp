import 'package:flutter/material.dart';
import 'package:zapp/themes/theme_controller.dart';
import 'package:zapp/widgets/nav_bar_custom.dart';

class CallsScreen extends StatefulWidget {
  const CallsScreen({super.key});

  @override
  State<CallsScreen> createState() => _CallsScreenState();
}

class _CallsScreenState extends State<CallsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeController.bgColor,
      appBar: AppBar(
        backgroundColor: ThemeController.bgColor,
        title: Text(
          "Appels",
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
        tooltip: "Nouvel appel",
        child: Icon(Icons.add_ic_call_rounded, color: ThemeController.bgColor),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 6,
          children: [
            Icon(Icons.call_rounded, size: 72, color: ThemeController.mainColor),
            Text("Page en construction...", style: TextStyle(color: ThemeController.textColor))
          ],
        ),
      ),
      
      bottomNavigationBar: NavBarCustom(selectedIndex: 1),
    );
  }
}