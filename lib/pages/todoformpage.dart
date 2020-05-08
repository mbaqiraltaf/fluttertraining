import 'package:flutter/material.dart';
import '../widgets/TodoForm.dart';
import '../widgets/AppBar.dart';

class TodoFormPage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Container(
        child: TodoForm(),
      ),
    );
  }
}
