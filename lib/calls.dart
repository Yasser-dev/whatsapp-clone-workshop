import 'package:flutter/material.dart';
import 'package:whatsapp_clone/data.dart';

class CallsTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: calls.length,
        itemBuilder: (context, index) => ListTile(
          leading: CircleAvatar(
            radius: 30,
            backgroundImage: NetworkImage(calls[index]['image']),
          ),
          title: Text(calls[index]['name']),
          subtitle: Row(
            children: [
              calls[index]['incoming']
                  ? Icon(
                      Icons.call_received,
                      color: Colors.red,
                    )
                  : Icon(
                      Icons.call_made,
                      color: Colors.green,
                    ),
              Text(calls[index]['time']),
            ],
          ),
          trailing: IconButton(
            icon: Icon(
              Icons.call,
              color: Colors.blue,
            ),
            onPressed: () {},
          ),
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            backgroundColor: Colors.grey[300],
            onPressed: () {},
            child: Icon(
              Icons.videocam,
              color: Colors.black,
            ),
            mini: true,
          ),
          SizedBox(height: 15),
          FloatingActionButton(
            onPressed: () {},
            child: Icon(Icons.add_call),
          )
        ],
      ),
    );
  }
}
