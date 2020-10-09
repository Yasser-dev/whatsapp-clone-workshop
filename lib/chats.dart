import 'package:flutter/material.dart';
import 'package:whatsapp_clone/data.dart';

class ChatsTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: chats.length,
        itemBuilder: (context, index) => ListTile(
          leading: CircleAvatar(
            radius: 30,
            backgroundImage: NetworkImage(chats[index]['image']),
          ),
          title: Text(chats[index]['name']),
          subtitle: Text(chats[index]['message']),
          trailing: Text(chats[index]['time']),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.chat),
      ),
    );
  }
}
