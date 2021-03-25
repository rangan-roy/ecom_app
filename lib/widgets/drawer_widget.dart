import 'package:flutter/material.dart';

class DrawerWidget extends StatefulWidget {
  @override
  _DrawerWidgetState createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        child: ListView(
          children: [
            Container(
              color: Colors.red,
              width: 200,
              height: 200,
            ),
          ],
        ),
      ),
    );
  }
}
