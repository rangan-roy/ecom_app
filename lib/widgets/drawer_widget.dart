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
            // user's name and image
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/user_profile_cover.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              child: ListTile(
                tileColor: Colors.white30,
                leading: CircleAvatar(
                  // if user has uploaded profile picture
                  backgroundImage: AssetImage('images/user_profile_cover.jpg'),
                  // if user has not uploaded profile picture yet
                  child: Icon(Icons.person),
                ),
                title: Text('Hello!'),
                subtitle: Text('Rangan Roy'),
                trailing: Icon(Icons.arrow_forward),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
