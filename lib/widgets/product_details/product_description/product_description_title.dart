import 'package:flutter/material.dart';

class ProductDescriptionTitle extends StatelessWidget {
  final String _title;

  ProductDescriptionTitle(this._title);

  @override
  Widget build(BuildContext context) {
    return Text(
      _title,
      style: TextStyle(fontSize: 19),
    );
  }
}