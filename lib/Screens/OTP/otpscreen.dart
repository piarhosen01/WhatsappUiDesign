import 'package:flutter/material.dart';
import 'package:whatsapp_ui_design/Widgets/uihelper.dart';

class Otpscreen extends StatelessWidget {
  final String phoneNumber;
  const Otpscreen({super.key, required this.phoneNumber});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
      child: Column(
        children: [
        SizedBox(height: 80),
        UiHelper.CustomText(
          text: "Verifying your number",
          height: 24,
          color: Color(0XFF00A884),
          fontweight: FontWeight.bold,
        ),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            UiHelper.CustomText(
              text: "You tried to register ",
              height: 16,
              fontweight: FontWeight.normal,
            ),
            UiHelper.CustomText(
              text: phoneNumber,
              height: 16,
              fontweight: FontWeight.bold,
            ),
            
          ],
        ),        
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            UiHelper.CustomText(
              text: "recently. Wait before requesting an sms or a call ",
              height: 16,
              fontweight: FontWeight.normal,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            UiHelper.CustomText(
              text: "with your code. ",
              height: 16,
              fontweight: FontWeight.normal,
            ),
            UiHelper.CustomText(
              text: "Wrong number?",
              height: 16,
              color: Color(0XFF00A884),
              fontweight: FontWeight.normal,
            ),
          ],
        ),
        SizedBox(height: 30),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(
              6,
              (index) => Container(
                width: 45,
                height: 45,
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextField(
                  textAlign: TextAlign.center,
                  keyboardType: TextInputType.number,
                  maxLength: 1,
                  decoration: InputDecoration(
                    counter: SizedBox.shrink(),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
          ),
        ),
        SizedBox(height: 20),
        UiHelper.CustomText(
          text: "Didn't receive code?",
          height: 16,
          color: Color(0XFF00A884),
          fontweight: FontWeight.normal,
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