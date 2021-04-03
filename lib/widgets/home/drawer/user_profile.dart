import 'package:flutter/material.dart';

class UserProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
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
      ),
    );
  }
}