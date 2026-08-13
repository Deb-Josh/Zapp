import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:zapp/models/theme_controller.dart';
import 'package:zapp/routes/app_router.dart';
import 'package:flutter_web_plugins/url_strategy.dart';

void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  usePathUrlStrategy();
  runApp(const Zapp());

  FlutterNativeSplash.remove();
}

class Zapp extends StatelessWidget {
  const Zapp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: themeController.themeMode,
      builder: (context, themeMode, child) {
        return MaterialApp.router(
          title: "Zapp",
          debugShowCheckedModeBanner: false,
          routerConfig: appRouter,
        );
      }
    );
  }
}