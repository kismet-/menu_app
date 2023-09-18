import 'package:flutter/material.dart' hide MenuController;
import 'package:get/get.dart';
import 'package:menu_app/home/menu_controller.dart';
import 'package:menu_app/welcome/welcome_page.dart';

void main() {
  Get.put(MenuController(), permanent: true);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: false),
      home: const WelcomePage(),
    );
  }
}
