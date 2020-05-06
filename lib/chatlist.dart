import 'package:flutter/material.dart';

const chats = [
  {'title': 'Chat 1', 'description': 'Chat 1 description', 'date': '2:53am'},
  {'title': 'Chat 2', 'description': 'Chat 2 description', 'date': '2:53am'},
  {'title': 'Chat 3', 'description': 'Chat 3 description', 'date': '2:53am'},
  {'title': 'Chat 4', 'description': 'Chat 4 description', 'date': '2:53am'},
];

class ChatList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: chats
          .map((chat) => ListTile(
                leading: CircleAvatar(),
                title: Text(chat['title']),
                subtitle: Text(chat['description']),
                trailing: Text(chat['date']),
              ))
          .toList(),
    );
  }
}
