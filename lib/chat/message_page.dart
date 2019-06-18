import 'package:flutter/material.dart';
import 'message_item.dart';
import 'message_data.dart';

class MessagePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MessagePageState();
  }
}

class _MessagePageState extends State<MessagePage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: ListView.builder(
        itemCount: messageData.length,
        itemBuilder: (context, index) {
          return MessageItem(messageData[index]);
        },
      ),
    );
  }
}
