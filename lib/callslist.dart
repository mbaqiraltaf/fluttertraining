import 'package:flutter/material.dart';

const calls = [
  {
    'title': 'Call 1',
    'description': 'Call 1 description',
    'date': '2:53am',
    'direction': 'in',
    'type': 'audio'
  },
  {
    'title': 'Call 2',
    'description': 'Call 2 description',
    'date': '2:53am',
    'direction': 'out',
    'type': 'video'
  },
  {
    'title': 'Call 3',
    'description': 'Call 3 description',
    'date': '2:53am',
    'direction': 'out',
    'type': 'video'
  },
  {
    'title': 'Call 4',
    'description': 'Call 4 description',
    'date': '2:53am',
    'direction': 'in',
    'type': 'audio'
  },
];

class CallDirection extends StatelessWidget {
  CallDirection({Key key, this.direction}) : super(key: key);

  final String direction;

  @override
  Widget build(BuildContext context) {
    var icon = Icon(Icons.call_made);

    if (direction == 'in') {
      icon = Icon(Icons.call_received, color: Color.fromRGBO(235, 64, 28, 1.0));
    }
    return icon;
  }
}

class CallType extends StatelessWidget {
  CallType({Key key, this.type}) : super(key: key);

  final String type;

  @override
  Widget build(BuildContext context) {
    var icon = Icon(Icons.phone);

    if (type == 'video') {
      icon = Icon(Icons.videocam);
    }
    return icon;
  }
}

class CallsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: calls
          .map((call) => ListTile(
                leading: CircleAvatar(),
                title: Text(call['title']),
                subtitle: Row(
                  children: <Widget>[
                    CallDirection(
                      direction: call['direction'],
                    ),
                    Text(call['date'])
                  ],
                ),
                trailing: CallType(type: call['type']),
              ))
          .toList(),
    );
  }
}
