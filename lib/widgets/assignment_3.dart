import 'package:flutter/material.dart';

import 'listview.dart';
import 'avatarwithtext.dart';

class AssignmentThree extends StatelessWidget {
  const AssignmentThree({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < 600) {
        // portrait
        return AvatarText();
      } else {
        // landscape
        return Row(
          children: <Widget>[
            Expanded(
              child: CustomListView(),
            ),
            Expanded(
              flex: 2,
              child: AvatarText(),
            )
          ],
        );
      }
    });
  }
}
