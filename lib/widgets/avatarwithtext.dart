import 'avatar.dart';
import 'package:flutter/material.dart';
import 'text.dart';

class AvatarText extends StatelessWidget {
  const AvatarText({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          children: <Widget>[CentreAvatar(), CentreText()],
          mainAxisAlignment: MainAxisAlignment.center,
        ),
      ),
      padding: EdgeInsets.all(8.0),
    );
  }
}
