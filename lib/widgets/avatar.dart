import 'package:flutter/material.dart';

class CentreAvatar extends StatelessWidget {
  const CentreAvatar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: FittedBox(
          child: CircleAvatar(
            child: Icon(Icons.person),
          ),
        ),
        //alignment: Alignment.center,
        //decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.blue),
        // margin: EdgeInsets.all(10.0),
        width: MediaQuery.of(context).size.width / 3,
        //height: MediaQuery.of(context).size.height / 2,
      ),
    );
  }
}
