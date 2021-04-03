import 'package:flutter/material.dart';

class CategoryName extends StatelessWidget {
  final String _categoryName;

  CategoryName(this._categoryName);
  
  @override
  Widget build(BuildContext context) {
    return Text(
      _categoryName,
      style: TextStyle(fontSize: 18),
    );
  }
}