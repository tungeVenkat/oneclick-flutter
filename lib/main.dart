import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oneclick/Screens/home_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'times new roman',
      ),
      home: Scaffold(body: OneClickHome()),
    );
  }
}
