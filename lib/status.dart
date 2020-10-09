import 'package:flutter/material.dart';
import 'package:whatsapp_clone/contants.dart';
import 'package:whatsapp_clone/data.dart';

class StatusTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xfff2f2f2),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: Colors.white,
              padding: EdgeInsets.all(8),
              child: ListTile(
                onTap: () {},
                leading: StatusAvatar(),
                title: Text('My status'),
                subtitle: Text('Tap to add status update'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Viewed updates',
                style:
                    TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(8),
                color: Colors.white,
                child: ListView.builder(
                  itemCount: status.length,
                  itemBuilder: (context, index) => ListTile(
                    leading: CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage(status[index]['image']),
                    ),
                    title: Text(status[index]['name']),
                    subtitle: Text(status[index]['time']),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            backgroundColor: Colors.grey[300],
            onPressed: () {},
            child: Icon(
              Icons.edit,
              color: Colors.black87,
            ),
            mini: true,
          ),
          SizedBox(height: 15),
          FloatingActionButton(
            onPressed: () {},
            child: Icon(Icons.camera_alt),
          )
        ],
      ),
    );
  }
}

class StatusAvatar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CircleAvatar(
          radius: 30,
          backgroundImage: NetworkImage(kProfilepic),
        ),
        Positioned(
          bottom: 0,
          right: 1,
          child: Container(
            decoration:
                BoxDecoration(shape: BoxShape.circle, color: Colors.green),
            child: Icon(
              Icons.add,
              color: Colors.white,
            ),
          ),
        )
      ],
    );
  }
}
