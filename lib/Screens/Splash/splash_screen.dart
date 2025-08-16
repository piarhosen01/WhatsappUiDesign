import 'dart:async';
import 'package:flutter/material.dart';
import 'package:whatsapp_ui_design/Screens/OnBoarding/onboardingscreen.dart';
import 'package:whatsapp_ui_design/Widgets/uihelper.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => OnBoardingScreen(),
        ),
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/whatsapp 1.png',
              width: 83,
              height: 83,
              fit: BoxFit.contain,
            ),
            SizedBox(height: 16),

            UiHelper.CustomText(
              text: 'WhatsApp',
              height: 22,
              fontweight: FontWeight.bold,
            ),
          ],
        ),
      ),
    );
  }
}
