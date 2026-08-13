import 'dart:math';

import 'package:flutter/material.dart';

List<List<Color>> colors = [
  [Colors.green, Colors.green[100]!],
  [Colors.red, Colors.red[100]!],
  [Colors.amber, Colors.amber[100]!],
  [Colors.blue, Colors.blue[100]!],
  [Colors.purple, Colors.purple[100]!],
  [Colors.pink, Colors.pink[100]!],
  [Colors.orange, Colors.orange[100]!],
  [Colors.teal, Colors.teal[100]!]
];

final random = Random();

class Chat {

  Chat({
    required this.name,
    profilePicture,
    this.lastMessage = "",
    this.timeLastMessage = "",
    this.notReadMessage = 0,
    this.chatType = ChatWith.person
  }) : 
  profilePicture = 
    (profilePicture == null) ?
    (chatType == ChatWith.person) ?
    name.substring(0, 1) :
    (chatType == ChatWith.group) ?
    Icons.group :
    Icons.groups :
    profilePicture,
  colorSet = colors[random.nextInt(colors.length)];

  final String name;
  final dynamic profilePicture;
  final String lastMessage;
  final String timeLastMessage;
  final int notReadMessage;
  final ChatWith chatType;
  final List<Color> colorSet;

  // Liste statique de discussions (Chat)
  static List<Chat> chatList = [
    Chat(
      name: "FlutterFire Summer Camp 2026",
      lastMessage: "💙 Flutter pour tous et pour tout ",
      timeLastMessage: "À l'instant",
      notReadMessage: 301,
      chatType: ChatWith.communauty,
    ),
    Chat(
      name: "Mentor Maurice Lelo",
      lastMessage: "J'attends les devoirs 😑",
      timeLastMessage: "20:00",
      notReadMessage: 1,
    ),
    Chat(
      name: "Président Douglas MBIANDOU",
      lastMessage: "L'avenir c'est 10.000 Codeurs",
      timeLastMessage: "12:20",
    ),
    Chat(
      name: "Deb Josh 🧠",
      lastMessage: "Coder c'est être libre!",
      timeLastMessage: "8:38",
      notReadMessage: 2,
    ),
    Chat(
      name: "10.000 Codeurs",
      lastMessage: "L'employabilité des jeunes dans le numérique!",
      timeLastMessage: "6:10",
      notReadMessage: 13,
      chatType: ChatWith.communauty,

    ),
    Chat(
      name: "Joseph Deboua",
      lastMessage: "Salut le monde! 👋🏾",
      timeLastMessage: "00:30",
    ),
    Chat(
      name: "GDG - Douala",
      lastMessage: "Google Developers Group",
      timeLastMessage: "Hier",
      notReadMessage: 25,
      chatType: ChatWith.group,
    ),
    Chat(
      name: "Grand prof - le 🔟",
      lastMessage: "Ivou! Naya c'est la vie",
      timeLastMessage: "Avant hier",
    ),
    Chat(
      name: "Jojo",
      lastMessage: "ça va. Merci bien",
      timeLastMessage: "10/08/2026",
    ),
    Chat(
      name: "La Solution",
      lastMessage: "Sois la solution que tu veux voir dans le monde!",
      timeLastMessage: "08/08/2026",
      notReadMessage: 6,
      chatType: ChatWith.group,
    ),
  ];

}

enum ChatWith{
  person,
  group,
  communauty,
}