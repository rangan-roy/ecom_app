import 'package:ecom_app/widgets/home/categories/category_item.dart';
import 'package:flutter/material.dart';

class FirstColumn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CategoryItem(
          'Hello Hello Hello Hello',
          'images/user_profile_cover.jpg',
          100,  
        ),
        SizedBox(height: 15),
        CategoryItem(
          'Hello, world!',
          'images/user_profile_cover.jpg',
          100,  
        ),
      ],
    );
  }
}