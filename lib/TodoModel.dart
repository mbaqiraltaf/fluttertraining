import 'package:flutter/material.dart';

class TodoModel extends ChangeNotifier {
  /// Internal, private state of the cart.
  final List todos = [
    {'title': 'todo 1', 'description': 'todo 1 description', 'date': '2:53am'}
  ];

  /// Adds [item] to cart. This and [removeAll] are the only ways to modify the
  /// cart from the outside.
  void add(String item) {
    todos.add(
        {'title': item, 'description': 'todo 1 description', 'date': '2:53am'});
    // This call tells the widgets that are listening to this model to rebuild.
    notifyListeners();
  }

  /// Removes all items from the cart.
  void removeAll() {
    todos.clear();
    // This call tells the widgets that are listening to this model to rebuild.
    notifyListeners();
  }
}
