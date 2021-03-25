import 'package:flutter/material.dart';

AppBar buildAppBar(String title) {
  return AppBar(
    title: Text(title),
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