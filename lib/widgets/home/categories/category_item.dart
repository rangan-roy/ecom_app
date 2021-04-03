import 'package:ecom_app/widgets/home/categories/category_item/category_image.dart';
import 'package:ecom_app/widgets/home/categories/category_item/category_name.dart';
import 'package:ecom_app/widgets/home/categories/category_item/category_total_items.dart';
import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  final String _categoryName;
  final String _categoryImage;
  final int _categoryTotalItems;

  CategoryItem(this._categoryName, this._categoryImage, 
    this._categoryTotalItems);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 20,
      child: Container(
        padding: EdgeInsets.all(20),
        width: MediaQuery.of(context).size.width / 2.5,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CategoryImage(_categoryImage),
            SizedBox(height: 15),
            CategoryName(_categoryName),
            SizedBox(height: 10),
            CategoryTotalItems(_categoryTotalItems),
          ],
        ),
      ),
    );
  }
}
