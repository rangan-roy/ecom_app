import 'package:flutter/material.dart';

class CategoryImage extends StatelessWidget {
  final String _categoryImage;

  CategoryImage(this._categoryImage); 

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 60,
      padding: EdgeInsets.all(2),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: Image.asset(
          _categoryImage,
          width: double.maxFinite,
          height: double.maxFinite,
          fit: BoxFit.cover,
        ),
      ),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: Theme.of(context).primaryColor),
      ),
    );
  }
}