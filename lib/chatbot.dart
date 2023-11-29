import 'package:flutter/material.dart';
import 'package:utmbot_ui/chatbottomsheet.dart';
import 'package:utmbot_ui/chatsample.dart';
import 'package:utmbot_ui/main.dart';

class ChatBot extends StatefulWidget {
  const ChatBot({super.key});

  @override
  State<ChatBot> createState() => _ChatBotState();
}

class _ChatBotState extends State<ChatBot> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[50],
      appBar: AppBar(
        
        title: Row(
          children: [
            const CircleAvatar(backgroundImage: AssetImage('assets/botpp.png',),),
            const SizedBox(width: 20,),
            Text('UTMbot',style: TextStyle(color: Colors.red[950],fontWeight: FontWeight.bold,fontSize: 25),),
          ],
        ),
        backgroundColor: Colors.red[50],
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: ((context) {
                return const MyHomePage();
              })));
            },
            icon:const Icon(Icons.arrow_back_ios)),
      ),
      body: Container(
        padding: const EdgeInsets.only(left: 25,right: 25,top:25),
        width: double.infinity,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(45),
            topRight: Radius.circular(45),
          ),
          color: Colors.white,
        ),
          child: const Column(
        children: [ChatSample()],
      )),
      bottomSheet: const ChatBottomSheet(),
    );
  }
}



