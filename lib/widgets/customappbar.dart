import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({Key key}) : super(key: key);

  Size get preferredSize {
    return new Size.fromHeight(50.0);
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 600) {
          return AppBar(title: Text("Week 3 assignment"));
        } else {
          return AppBar(
              title: Text("Week 3 assignment"),
              automaticallyImplyLeading: false);
        }
      },
    );
  }
}
