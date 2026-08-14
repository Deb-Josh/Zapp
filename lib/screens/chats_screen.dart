import 'package:flutter/material.dart';
import 'package:zapp/themes/theme_controller.dart';
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
    return ValueListenableBuilder(
      valueListenable: themeController.themeMode,
      builder: (context, value, child) {
        return Scaffold(
          backgroundColor: ThemeController.bgColor,
          appBar: AppBar(
            title: Text(
              "WhatsApp",
              style: TextStyle(
                color: ThemeController.appNameColor,
                fontWeight: FontWeight.bold,
              )
            ),
            backgroundColor: ThemeController.bgColor,
            surfaceTintColor: ThemeController.bgColor,
            elevation: 0,
            scrolledUnderElevation: 0,
            actions: [
              IconButton(
                onPressed: (){},
                icon: Icon(Icons.photo_camera_outlined, color: ThemeController.iconColor),
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
                backgroundColor: ThemeController.bg2Color,
                mini: true,
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Image.asset("assets/icons/meta-ai.png"),
                ),
              ),
              FloatingActionButton(
                onPressed: (){},
                backgroundColor: ThemeController.mainColor,
                tooltip: "Nouvelle discussion",
                child: Icon(Icons.add_box_rounded, color: ThemeController.bgColor),
              ),
            ],
          ),
        
          body: Column(
            children: [
              // Barre de recherche
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: SearchBar(
                  overlayColor: WidgetStatePropertyAll(Colors.transparent),
                  leading: Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Icon(Icons.search_outlined, color: ThemeController.greyColor),
                  ),
                  hintText: "Recherche...",
                  hintStyle: WidgetStatePropertyAll(TextStyle(
                    color: ThemeController.greyColor,
                  )),
                  elevation: WidgetStatePropertyAll(0),
                  constraints: BoxConstraints(
                    minHeight: 40,
                  ),
                  textStyle: WidgetStatePropertyAll(TextStyle(
                    color: ThemeController.textColor,
                  )),
                  backgroundColor: WidgetStatePropertyAll(ThemeController.bg2Color),
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
                                child: Icon(Icons.archive_outlined, color: ThemeController.iconColor)
                              ),
                              Expanded(
                                flex: 6,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Archivées",
                                      style: TextStyle(
                                        color: ThemeController.textColor,
                                      )
                                    ),
                                    Text(
                                      "1",
                                      style: TextStyle(
                                        color: ThemeController.textColor,
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
    );
  }
}