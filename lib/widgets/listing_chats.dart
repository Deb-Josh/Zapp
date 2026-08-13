import 'package:flutter/material.dart';
import 'package:zapp/models/chat.dart';

class ListingChats extends StatefulWidget {
  const ListingChats({super.key});

  @override
  State<ListingChats> createState() => _ListingChatsState();
}

class _ListingChatsState extends State<ListingChats> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: Chat.chatList.map((chat) =>
        InkWell(
          onTap: (){},
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
            child: Row(
              spacing: 8,
              children: [
            
                // Photo de profil
                Expanded(
                  child: Center(
                    child: Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        color: chat.colorSet[1],
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Center(
                        child:
                        (chat.profilePicture is String) ?
                        (chat.profilePicture.length == 1) ?
                        Text(
                          chat.profilePicture,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: chat.colorSet[0],
                          ),
                        ) :
                        Image.asset(chat.profilePicture) :
                        Icon(
                          chat.profilePicture,
                          color: chat.colorSet[0],
                        ),
                      ),
                    ),
                  ),
                ),
            
                // Les information d'apercu d'un chat
                Expanded(
                  flex: 6,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // nom du profil du chat
                          Expanded(
                            child: Text(
                              chat.name,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          // Heure du dernier message
                          Text(
                            chat.timeLastMessage,
                            style: TextStyle(
                              color: Colors.green,
                              fontSize: 10,
                              fontWeight: FontWeight.bold
                            )
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // Apercu du dernier message
                          Expanded(
                            child: Text(
                              chat.lastMessage,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                            ),
                          ),
                          // nombre de messages non lus
                          (chat.notReadMessage > 0) ? Container(
                            constraints: BoxConstraints(
                              minWidth: 18,
                            ),
                            height: 18,
                            padding: EdgeInsets.symmetric(horizontal: 5),
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(100)
                            ),
                            child: Center(
                              child: Text(
                                "${chat.notReadMessage}",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold
                                )
                              ),
                            ),
                          ) : SizedBox(),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ).toList(),
    );
  }
}