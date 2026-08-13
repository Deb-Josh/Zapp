import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NavBarCustom extends StatelessWidget {
  const NavBarCustom({super.key, required this.selectedIndex});

  final int selectedIndex;

  // Aller a un écran précis
  void _goToSreen(BuildContext context, int index){
    switch (index) {
      case 0: context.go("/chats");
        break;
      case 1: context.go("/calls");
        break;
      case 2: context.go("/updates");
        break;
      case 3: context.go("/tools");
        break;
      default: context.go("/chats");
    }
  }

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      elevation: 3,
      shadowColor: Colors.black,
      backgroundColor: Colors.white,
      indicatorColor: Colors.green[100]!,

      // Style des labels à l'etat sélectionné et non sélectionné
      labelTextStyle: WidgetStateTextStyle.resolveWith((state){
        if(state.contains(WidgetState.selected)){
          return TextStyle(
            color: Colors.black,
            fontSize: 12,
            fontWeight: FontWeight.bold,
          );
        }
        return TextStyle(
          color: Colors.black,
          fontSize: 12,
        );
      }),

      // 
      selectedIndex: selectedIndex,
      onDestinationSelected: (index) => _goToSreen(context, index),

      destinations: [
        // to ChatsScreen
        NavigationDestination(
          icon: Icon(Icons.chat_outlined, color: Colors.black,),
          selectedIcon: Icon(Icons.chat, color: Colors.green),
          label: "Discussions",
        ),

        // to CallsScreen
        NavigationDestination(
          icon: Icon(Icons.call_outlined, color: Colors.black,),
          selectedIcon: Icon(Icons.call, color: Colors.green),
          label: "Appels",
        ),

        // to UpdatesScreen
        NavigationDestination(
          icon: Icon(Icons.campaign_outlined, color: Colors.black,),
          selectedIcon: Icon(Icons.campaign, color: Colors.green),
          label: "Actus",
        ),

        // to ToolsScreen
        NavigationDestination(
          icon: Icon(Icons.store_outlined, color: Colors.black,),
          selectedIcon: Icon(Icons.store, color: Colors.green),
          label: "Outils",
        ),
      ],
    );
  }
}