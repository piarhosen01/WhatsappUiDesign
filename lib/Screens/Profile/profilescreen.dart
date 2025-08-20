import 'package:flutter/material.dart';
import 'package:whatsapp_ui_design/Widgets/uihelper.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
      child: Column(
        children: [
        SizedBox(height: 80),
        UiHelper.CustomText(
          text: "Profile info",
          height: 24,
          color: Color(0XFF00A884),
          fontweight: FontWeight.bold,
        ),
        SizedBox(height: 60),
        UiHelper.CustomText(text: "Please provide your name and an optional"

, height: 16, fontweight: FontWeight.normal),
        SizedBox(height: 5),
        UiHelper.CustomText(text: "profile photo"

, height: 16, fontweight: FontWeight.normal),
        SizedBox(height: 40),
        Container(
          width: 120,
          height: 120,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.grey[200],
          ),
          child: Icon(Icons.camera_alt, size: 45, color: Colors.grey[400]),
        ),
        SizedBox(height: 40),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              Expanded(
                
                child: TextField(
                  decoration: InputDecoration(
                    hint: Text("Type your name here", style: TextStyle(color: Colors.grey)),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0XFF00A884)),
                    ),
                    )  ,
                  ),
              ),
              SizedBox(width: 10),
              Container(
                width: 40,
                child: Icon(Icons.emoji_emotions_outlined,size: 35, color: Colors.grey[400]),
              ),
              
            ],
          ),
        ),
        
      
        ],
      ),
    ),
    floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: UiHelper.CustomButton(
          callback: () {
            Navigator.pop(context);
          },
          buttonname: "Next",
        ),
      ),
    floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}