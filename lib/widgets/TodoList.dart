import 'package:flutter/material.dart';
import '../TodoModel.dart';
import 'package:provider/provider.dart';

const todos = [
  {'title': 'todo 1', 'description': 'todo 1 description', 'date': '2:53am'},
  {'title': 'todo 2', 'description': 'todo 2 description', 'date': '2:53am'},
  {'title': 'todo 3', 'description': 'todo 3 description', 'date': '2:53am'},
  {'title': 'todo 4', 'description': 'todo 4 description', 'date': '2:53am'},
];

class TodoList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var todolist = Provider.of<TodoModel>(context);

    return ListView.builder(
      itemCount: todolist.todos.length,
      itemBuilder: (context, index) => ListTile(
        leading: CircleAvatar(),
        title: Text(todolist.todos[index]['title']),
      ),
    );
    // return ListView(
    //   //   children: todos
    //   //       .map((todo) => ListTile(
    //   //             leading: CircleAvatar(),
    //   //             title: Text(todo['title']),
    //   //             subtitle: Text(todo['description']),
    //   //             trailing: Text(todo['date']),
    //   //           ))
    //   //       .toList(),

    //   children: <Widget>[
    //     // Consumer looks for an ancestor Provider widget
    //     // and retrieves its model (Counter, in this case).
    //     // Then it uses that model to build widgets, and will trigger
    //     // rebuilds if the model is updated.
    //     Consumer<TodoModel>(
    //       builder: (context, todoList, child) {
    //         List<Widget> todoWidgets = List<Widget>();

    //         for (var i = 0; i < todoList.todos.length; i++) {
    //           var currentItem = todoList.todos[i];
    //           todoWidgets.add(ListTile(
    //             leading: CircleAvatar(),
    //             title: Text(currentItem['title']),
    //             subtitle: Text(currentItem['description']),
    //             trailing: Text(currentItem['date']),
    //           ));
    //         }

    //         return todoWidgets;
    //       },
    //     ),
    //   ],
    // );
  }
}
