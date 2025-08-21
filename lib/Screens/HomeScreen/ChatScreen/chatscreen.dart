import 'package:flutter/material.dart';

class Chatscreen extends StatelessWidget {
   Chatscreen({super.key});
  
  final List<Map<String, dynamic>> arrContent = [
  {
    //total 10 sets of info of image(random image link form the internet), name, last message, time, message count
    "image": "https://picsum.photos/200/300",
    "name": "John Doe",
    "lastMessage": "Hey, how are you?",
    "time": "10:30 AM",
    "messageCount": 2
  },
  { 
    "image": "https://picsum.photos/200/301",
    "name": "Jane Smith",
    "lastMessage": "Let's catch up later.",
    "time": "9:15 AM",
    "messageCount": 1
  },
  {
    "image": "https://picsum.photos/200/302",
    "name": "Alice Johnson",
    "lastMessage": "Did you receive my email?",
    "time": "Yesterday",
    "messageCount": 5
  },
  {
    "image": "https://picsum.photos/200/303",
    "name": "Bob Brown",
    "lastMessage": "See you at the party!",
    "time": "Last week",
    "messageCount": 0
  },
  {
    "image": "https://picsum.photos/200/304",
    "name": "Charlie White",
    "lastMessage": "Can we reschedule our meeting?",
    "time": "2 days ago",
    "messageCount": 3
  },
  {
    "image": "https://picsum.photos/200/305",
    "name": "Diana Green",
    "lastMessage": "Happy Birthday!",
    "time": "3 days ago",
    "messageCount": 4
  },
  {
    "image": "https://picsum.photos/200/306",
    "name": "Ethan Black",
    "lastMessage": null,
    "time": null,
    "messageCount": 0
  },
  {
    "image": "https://picsum.photos/200/307",
    "name": "Fiona Blue",
    "lastMessage": "Let's plan our trip!",
    "time": "1 week ago", 
    "messageCount": 2
  },
  {
    "image": "https://picsum.photos/200/308",
    "name": "George Yellow",
    "lastMessage": "I will call you later.",
    "time": "2 weeks ago",
    "messageCount": 1
  },
  {
    "image": "https://picsum.photos/200/309",
    "name": "Hannah Purple",
    "lastMessage": "Thanks for your help!",
    "time": "3 weeks ago",
    "messageCount": 0
  },
  {
    "image": "https://picsum.photos/200/310",
    "name": "Ian Orange",
    "lastMessage": "Let's grab lunch sometime.",
    "time": "1 month ago",
    "messageCount": 2
  }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: arrContent.length,
        itemBuilder: (context, index) {
          final chat = arrContent[index];
          return ListTile(
            leading: CircleAvatar(
              radius: 25,
              backgroundImage: NetworkImage(chat["image"].toString()),
            ),
            title: Text(chat['name'].toString()),
            subtitle: Text(
              chat['lastMessage']?.toString() ?? 'No messages yet'
            ),
            trailing: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  chat['time']?.toString() ?? '',
                  style: const TextStyle(color: Colors.grey, fontSize: 13),
                ),
                const SizedBox(height: 5),
                if (((chat['messageCount'] as int?) ?? 0) > 0)
                  Container(
                    padding: const EdgeInsets.all(6),
                    decoration: const BoxDecoration(
                      color: Color(0XFF00A884),
                      shape: BoxShape.circle,
                    ),
                    child: Text(
                      chat['messageCount'].toString(),
                      style: const TextStyle(color: Colors.white, fontSize: 12),
                    ),
                  ),
              ],
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        
      }, child: Icon(Icons.chat, color: Colors.white,),
      backgroundColor: Color(0XFF00A884),
      ),
      
    );
  }
}