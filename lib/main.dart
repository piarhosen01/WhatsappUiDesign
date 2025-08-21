import 'package:flutter/material.dart';
import 'package:whatsapp_ui_design/Screens/HomeScreen/homescreen.dart';
import 'Screens/Splash/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'WhatsApp',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF00A884)),
        useMaterial3: false,
       fontFamily: "Roboto"
      ),
      home: HomeScreen(),
    );
  }
}
