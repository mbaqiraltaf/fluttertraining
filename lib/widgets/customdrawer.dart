import 'package:flutter/material.dart';
import 'listview.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //var mydrawer = null;
    //MediaQueryData mydata = MediaQuery.of(context);
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 600) {
          return Drawer(
            child: CustomListView(),
          );
        } else {
          return Container();
        }
      },
    );
  }
}
