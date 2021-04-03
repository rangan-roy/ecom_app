import 'package:ecom_app/pages/search.dart';
import 'package:flutter/material.dart';

AppBar buildAppBar(String title, BuildContext context, bool hasBackButton) {
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 0,
    title: Text(
      title,
      style: TextStyle(color: Theme.of(context).primaryColor),
    ),
    leading: hasBackButton ? IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: () => Navigator.of(context).pop(),
    ) : null,
    actions: [
      // search button
      IconButton(
        icon: Icon(Icons.search),
        onPressed: () {
          showSearch(
            context: context,
            delegate: Search(),
          );
        },
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