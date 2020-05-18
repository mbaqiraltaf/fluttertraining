import 'package:flutter/material.dart';

class CustomListView extends StatelessWidget {
  const CustomListView({Key key}) : super(key: key);
  final int cardCount = 6;

  List<Widget> getCards() {
    var cards = List<Widget>();

    for (var i = 1; i < cardCount; i++) {
      cards.add(Card(
        child: Container(
          child: Text(
            "List Item $i",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          padding: EdgeInsets.all(20.0),
        ),
      ));
    }

    return cards;
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: getCards(),
      padding: EdgeInsets.only(top: 20.0),
    );
  }
}
