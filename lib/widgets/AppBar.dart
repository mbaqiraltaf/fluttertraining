import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  Size get preferredSize {
    return new Size.fromHeight(50.0);
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
        backgroundColor: Color.fromRGBO(39, 142, 101, 1.0),
        title: Text('Todo App'));
  }
}
