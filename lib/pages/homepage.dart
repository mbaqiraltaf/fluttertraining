import 'package:flutter/material.dart';
import '../widgets/TodoList.dart';
import '../widgets/AppBar.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Container(
        child: TodoList(),
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(
            Icons.add,
          ),
          onPressed: () {
            // Navigate to the second screen using a named route.
            Navigator.pushNamed(context, '/add-todo');
          }),
    );
  }
}
