import 'package:flutter/material.dart';

class CentreText extends StatelessWidget {
  const CentreText({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          child: FittedBox(
              child: Text(
                "Venturedive",
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
              ),
              fit: BoxFit.contain),
          width: MediaQuery.of(context).size.width / 2.5,
          height: (MediaQuery.of(context).size.height / 2) * 0.2,
          color: Theme.of(context).primaryColor,
        ));
  }
}
