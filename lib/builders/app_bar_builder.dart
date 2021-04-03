import 'package:ecom_app/pages/search.dart';
import 'package:flutter/material.dart';

AppBar buildAppBar(String title, BuildContext context, bool hasBackButton) {
  return AppBar(
    title: Text(title),
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
      Stack(
        children: [
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () {},
          ),
          if(true) buildNumber(100, context),
        ],
      ),

      // cart button
      Stack(
        children: [
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {},
          ),
          if(true) buildNumber(100, context),
        ],
      ),
    ],
  );
}

Positioned buildNumber(int number, BuildContext context) {
  return Positioned(
    top: 1,
    child: Container(
      width: 25,
      height: 15,
      padding: EdgeInsets.symmetric(horizontal: 2),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Theme.of(context).errorColor,
        borderRadius: BorderRadius.circular(3),
        //shape: BoxShape.circle,
      ),
      child: Text(
        number.toString(),
        overflow: TextOverflow.ellipsis,
        style: TextStyle(
          color: Colors.white,
          fontSize: 10,
        ),
      ),
    ),
  );
}