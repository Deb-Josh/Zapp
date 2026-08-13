import 'package:flutter/material.dart';
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
      appBar: AppBar(
        title: Text(
          "Outils",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)
        ),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.search)),
          IconButton(onPressed: (){}, icon: Icon(Icons.more_vert_outlined))
        ],
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        backgroundColor: Colors.green,
        tooltip: "Nouvelle publicité",
        child: Icon(Icons.storefront_rounded, color: Colors.white),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 6,
          children: [
            Icon(Icons.store_rounded, size: 72, color: Colors.green,),
            Text("Page en construction...")
          ],
        ),
      ),
      
      bottomNavigationBar: NavBarCustom(selectedIndex: 3),
    );
  }
}