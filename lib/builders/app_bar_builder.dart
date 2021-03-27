import 'package:flutter/material.dart';

AppBar buildAppBar(String title, BuildContext context) {
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 0,
    title: Text(
      title,
      style: TextStyle(color: Theme.of(context).primaryColor),
    ),
    actions: [
      // search button
      IconButton(
        icon: Icon(Icons.search),
        onPressed: () {},
      ),

      // notification button
      IconButton(
        icon: Icon(Icons.notifications),
        onPressed: () {},
      ),

      // cart button
      IconButton(
        icon: Icon(Icons.shopping_cart),
        onPressed: () {},
      ),
    ],
  );
}