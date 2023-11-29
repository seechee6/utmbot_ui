import 'package:custom_clippers/custom_clippers.dart';
import 'package:flutter/material.dart';

class ChatSample extends StatefulWidget {
  const ChatSample({super.key});

  @override
  State<ChatSample> createState() => _ChatSampleState();
}

class _ChatSampleState extends State<ChatSample> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
            padding: const EdgeInsets.only(right: 90),
            child: ClipPath(
              clipper: UpperNipMessageClipper(MessageType.receive),
              child: Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                ),
                child: const Text(
                  "Hello! How can i assist you today?",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            )),
        Padding(
            padding: const EdgeInsets.only(top: 20, left: 110),
            child: ClipPath(
              clipper: LowerNipMessageClipper(MessageType.send),
              child: Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.red[100],
                ),
                child: const Text(
                  "I have a few UTM-related queries to ask you  ",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            )),
        Padding(
            padding: const EdgeInsets.only(right: 90),
            child: ClipPath(
              clipper: UpperNipMessageClipper(MessageType.receive),
              child: Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                ),
                child: const Text(
                  "Feel free to ask questions you have, and I'll try my best to help you",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            )),
             Padding(
            padding: const EdgeInsets.only(top: 20, left: 110),
            child: ClipPath(
              clipper: LowerNipMessageClipper(MessageType.send),
              child: Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.red[100],
                ),
                child: const Text(
                  "Can i know which arked does UTM have?",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            )),
             Padding(
            padding: const EdgeInsets.only(right: 90),
            child: ClipPath(
              clipper: UpperNipMessageClipper(MessageType.receive),
              child: Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                ),
                child: const Text(
                  "UTM has Arked Meranti,Arked Angkasa,Arked Lestari,Arked N24,Arked Cengal and Arked Perdana. ",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            )),
                 Padding(
            padding: const EdgeInsets.only(top: 20, left: 110),
            child: ClipPath(
              clipper: LowerNipMessageClipper(MessageType.send),
              child: Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.red[100],
                ),
                child: const Text(
                  "Thank you for your information.",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            )),
      ],
    );
  }
}
