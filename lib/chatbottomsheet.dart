import 'package:flutter/material.dart';

class ChatBottomSheet extends StatefulWidget {
  const ChatBottomSheet({super.key});

  @override
  State<ChatBottomSheet> createState() => _ChatBottomSheetState();
}

class _ChatBottomSheetState extends State<ChatBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      decoration: BoxDecoration(color: Colors.red[50],
      
      ),
      child: Row(
        children: [
          Padding(padding: const EdgeInsets.only(left: 20),
          child: Container(alignment: Alignment.centerRight,
          width: 320,
          child: TextFormField(decoration: const InputDecoration(
            hintText: "Type your message"
          ),),),
          ),
         IconButton(onPressed: (){}, icon: const Icon(Icons.send))
        ],
      ),
    );
  }
}