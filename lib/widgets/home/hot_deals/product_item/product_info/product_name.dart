import 'package:flutter/material.dart';

class ProductName extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      'Naviforce Men\'s Watch Watch Watch',
      style: TextStyle(
        fontSize: 18,
        color: Theme.of(context).primaryColor,
      ),
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
    );
  }
}