import 'package:flutter/material.dart';
import 'package:whatsapp_ui_design/Screens/OTP/otpscreen.dart';
import 'package:whatsapp_ui_design/Widgets/uihelper.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String selectedcountry = "Bangladesh";
  TextEditingController phoneController = TextEditingController();
  TextEditingController countryCodeController = TextEditingController(text: "880");

  List<String> counties = [
    "Bangladesh",
    "Pakistan",
    "India",
    "USA",
    "UK",
    "Canada",
    "Australia",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: Center(
      child: Column(
        children: [
        
        SizedBox(height: 80),
        UiHelper.CustomText(
          text: "Enter your phone number",
          height: 24,
          color: Color(0XFF00A884),
          fontweight: FontWeight.bold,
        ),
        SizedBox(height: 50),
        UiHelper.CustomText(text: "WhatsApp will need to verify your phone"
, height: 16, fontweight: FontWeight.normal),
        SizedBox(height: 5),
        UiHelper.CustomText(text: "number. Carrier charges may apply."
, height: 16, fontweight: FontWeight.normal),
        SizedBox(height: 5),
        UiHelper.CustomText(text: "What's my number?"
, height: 18, fontweight: FontWeight.normal, color: Color(0XFF00A884)),
        SizedBox(height: 50),
        Padding(
          padding: const EdgeInsets.only(left: 60, right: 60),
          child: DropdownButtonFormField(items: counties.map((String country){
            return DropdownMenuItem(child: Text(country.toString()), value: country);
          }).toList(), onChanged: (newvalue){
            setState(() {
              selectedcountry = newvalue.toString();
            });
          }, value: selectedcountry,decoration: InputDecoration(
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Color(0XFF00A884)),
            ),
          ),        
          ),
        

        ),
        SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 60),
          child: Row(
            children: [
              Container(
                width: 60,
                child: TextField(
                  keyboardType: TextInputType.number,
                  controller: countryCodeController,
                  enabled: true,
                  decoration: InputDecoration(
                    hintText: "880",
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0XFF00A884)),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 10),
              Expanded(
                child: TextField(
                  controller: phoneController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: "phone number",
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0XFF00A884)),
                    ),
                  ),
                ),
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
            if (phoneController.text.isNotEmpty) {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) => Otpscreen(
                  phoneNumber: countryCodeController.text + phoneController.text,
                ),
              ));
            }
          },
          buttonname: "Next",
        ),
      ),
    floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,

    );
  }
}