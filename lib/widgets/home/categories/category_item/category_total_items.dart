import 'package:flutter/material.dart';

class CategoryTotalItems extends StatelessWidget {
  final int _categoryTotalItems;

  CategoryTotalItems(this._categoryTotalItems);
  
  @override
  Widget build(BuildContext context) {
    return Text(
      '$_categoryTotalItems Items',
      style: TextStyle(color: Colors.grey),
    );
  }
}