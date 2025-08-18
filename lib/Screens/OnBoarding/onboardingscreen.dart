import 'package:flutter/material.dart';
import 'package:whatsapp_ui_design/Screens/Login/loginscreen.dart';
import 'package:whatsapp_ui_design/Widgets/uihelper.dart';

class OnBoardingScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: Center(
  child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Image.asset("assets/images/onboarding.png",
      width: 250,
      height: 250,
      ),
      SizedBox(height: 20),
      UiHelper.CustomText(fontweight: FontWeight.bold, text: "Welcome to WhatsApp", height: 24),
      SizedBox(height: 10),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          UiHelper.CustomText(
            text: "Read out ",
            height: 14,
            color: Colors.grey,
            fontweight: FontWeight.normal,
          ),
          UiHelper.CustomText(
            text: "Privacy Policy.",
            height: 14,
            color: Colors.blue,
            fontweight: FontWeight.normal,
          ),
          UiHelper.CustomText(
            text: "Tap “Agree and continue“",
            height: 14.0,
            color: Colors.grey,
            fontweight: FontWeight.normal,
          ),
        ],
      ),
      SizedBox(height: 5.0),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          UiHelper.CustomText(text: "to accept the", height: 14, fontweight: FontWeight.normal, color: Colors.grey),
          UiHelper.CustomText(text: " Terms of Service", height: 14, fontweight: FontWeight.normal, color: Colors.blue),
        ],
      ),

      
    ],
  ),
),
      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: UiHelper.CustomButton(
          callback: () {
            Navigator.push(context, MaterialPageRoute(
              builder: (context) => LoginScreen(),
            ));
          },
          buttonname: "Agree and Continue",
        ),
      ),
    floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    
    );
  }
}