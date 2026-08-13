import 'package:go_router/go_router.dart';
import 'package:zapp/screens/calls_screen.dart';
import 'package:zapp/screens/chats_screen.dart';
import 'package:zapp/screens/inbox_screen.dart';
import 'package:zapp/screens/tools_screen.dart';
import 'package:zapp/screens/updates_screen.dart';

GoRouter appRouter = GoRouter(
  initialLocation: "/chats",
  routes: [
    GoRoute(
      path: "/chats",
      builder: (context, state) => const ChatsScreen(),
      routes: [
        GoRoute(
          path: "/:id_chat",
          builder: (context, state){
            try{
              final int idChat = int.parse(state.pathParameters["id_chat"]!);
              return InboxScreen(idChat: idChat);
            }catch(e){
              return const ChatsScreen();
            }
          },
        )
      ]
    ),
    GoRoute(
      path: "/calls",
      builder: (context, state) => const CallsScreen(),
    ),
    GoRoute(
      path: "/updates",
      builder: (context, state) => const UpdatesScreen(),
    ),
    GoRoute(
      path: "/tools",
      builder: (context, state) => const ToolsScreen(),
    ),
  ]
);