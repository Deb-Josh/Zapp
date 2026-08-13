import 'package:flutter/material.dart';
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
      appBar: AppBar(
        title: Text(
          "Actus",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)
        ),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.search)),
          IconButton(onPressed: (){}, icon: Icon(Icons.more_vert_outlined))
        ],
      ),

      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        spacing: 15,
        children: [
          FloatingActionButton(
            onPressed: (){},
            mini: true,
            child: Icon(Icons.edit, color: Colors.blueGrey),
          ),
          FloatingActionButton(
            onPressed: (){},
            backgroundColor: Colors.green,
            tooltip: "Nouveau statut",
            child: Icon(Icons.photo_camera_rounded, color: Colors.white),
          ),
        ],
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 6,
          children: [
            Icon(Icons.campaign_rounded, size: 72, color: Colors.green,),
            Text("Page en construction...")
          ],
        ),
      ),
      
      bottomNavigationBar: NavBarCustom(selectedIndex: 2),
    );
  }
}