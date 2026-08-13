import 'package:flutter/material.dart';
import 'package:zapp/widgets/listing_chats.dart';
import 'package:zapp/widgets/more_button.dart';
import 'package:zapp/widgets/nav_bar_custom.dart';

class ChatsScreen extends StatefulWidget {
  const ChatsScreen({super.key});

  @override
  State<ChatsScreen> createState() => _ChatsScreenState();
}

class _ChatsScreenState extends State<ChatsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "WhatsApp",
          style: TextStyle(
            color: Colors.green,
            fontWeight: FontWeight.bold,
          )
        ),
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.white,
        elevation: 0,
        scrolledUnderElevation: 0,
        actions: [
          IconButton(
            onPressed: (){},
            icon: Icon(Icons.photo_camera_outlined),
          ),
          const MoreButton(),
        ],
      ),

      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        spacing: 15,
        children: [
          FloatingActionButton(
            onPressed: (){},
            mini: true,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Image.asset("assets/icons/meta-ai.png"),
            ),
          ),
          FloatingActionButton(
            onPressed: (){},
            backgroundColor: Colors.green,
            tooltip: "Nouvelle discussion",
            child: Icon(Icons.add_box_rounded, color: Colors.white),
          ),
        ],
      ),

      body: Column(
        children: [
          // Barre de recherche
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: SearchBar(
              leading: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Icon(Icons.search_outlined),
              ),
              hintText: "Recherche...",
              elevation: WidgetStatePropertyAll(0),
              constraints: BoxConstraints(
                minHeight: 40,
              ),
              backgroundColor: WidgetStatePropertyAll(Colors.grey[200]),
            ),
          ),
          SizedBox(height: 10),
      
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
            
                  // Archives
                  InkWell(
                    onTap: (){},
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        spacing: 8,
                        children: [
                          Expanded(
                            flex: 1,
                            child: Icon(Icons.archive_outlined)
                          ),
                          Expanded(
                            flex: 6,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Archivées"),
                                Text(
                                  "1",
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold
                                  )
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
            
                  // Liste des discussions
                  ListingChats(),
            
                ],
              ),
            ),
          ),
        ],
      ),

      // Barre de navigation
      bottomNavigationBar: NavBarCustom(selectedIndex: 0),
    );
  }
}