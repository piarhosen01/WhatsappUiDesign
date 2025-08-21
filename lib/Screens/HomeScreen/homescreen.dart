import 'package:flutter/material.dart';
import 'package:whatsapp_ui_design/Screens/HomeScreen/CallScreen/callscreen.dart';
import 'package:whatsapp_ui_design/Screens/HomeScreen/CameraScreen/camerascreen.dart';
import 'package:whatsapp_ui_design/Screens/HomeScreen/ChatScreen/chatscreen.dart';
import 'package:whatsapp_ui_design/Screens/HomeScreen/StatusScreen/statusscreen.dart';
import 'package:whatsapp_ui_design/Widgets/uihelper.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          bottom: TabBar(
            indicatorColor: Colors.white,
            tabs: [
              Tab(icon: Icon(Icons.camera_alt, color: Colors.white)),
              Tab(text: "CHATS",),
              Tab(text: "STATUS",),
              Tab(text: "CALLS",),
            ],
          ),
          toolbarHeight: 125,
          title: UiHelper.CustomText(text: "WhatsApp", height: 25, fontweight: FontWeight.bold, color: Colors.white),
          backgroundColor: Color(0xFF00A884),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 15),
              child: IconButton(
                icon: Icon(Icons.search, color: Colors.white, size: 30,),
                onPressed: () {
                },
              ),
            ),
      
          ],
        ),
        body: TabBarView(
          children: [
            CameraScreen(),
            Chatscreen(),
            Statusscreen(),
            CallScreen(),
          ],
        ),
      ),
    );
  }
}