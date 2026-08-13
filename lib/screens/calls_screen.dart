import 'package:flutter/material.dart';
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
      appBar: AppBar(
        title: Text(
          "Appels",
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
        tooltip: "Nouvel appel",
        child: Icon(Icons.add_ic_call_rounded, color: Colors.white),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 6,
          children: [
            Icon(Icons.call_rounded, size: 72, color: Colors.green,),
            Text("Page en construction...")
          ],
        ),
      ),
      
      bottomNavigationBar: NavBarCustom(selectedIndex: 1),
    );
  }
}