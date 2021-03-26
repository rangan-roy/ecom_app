import 'package:ecom_app/widgets/category_item_widget.dart';
import 'package:flutter/material.dart';

class CategoryList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      padding: EdgeInsets.symmetric(
        vertical: 15,
        horizontal: 10,
      ),
      // allows to use GridView() inside ListView()
      shrinkWrap: true,
      // makes GridView() scrollable (like a normal ListView() child) when
      // we hold the GridView() and try to scroll
      physics: ClampingScrollPhysics(),
      crossAxisCount: 4,
      mainAxisSpacing: 5,
      crossAxisSpacing: 5,
      children: [
        CategoryItemWidget('T-shirt', 'images/user_profile_cover.jpg'),
        CategoryItemWidget('T-shirt', 'images/user_profile_cover.jpg'),
        CategoryItemWidget('T-shirt', 'images/user_profile_cover.jpg'),
        CategoryItemWidget('T-shirt', 'images/user_profile_cover.jpg'),
        CategoryItemWidget('T-shirt', 'images/user_profile_cover.jpg'),
        CategoryItemWidget('T-shirt', 'images/user_profile_cover.jpg'),
      ],
    );
  }
}