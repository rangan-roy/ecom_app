import 'package:ecom_app/widgets/category_item_widget.dart';
import 'package:flutter/material.dart';

class CategoryListWidget extends StatelessWidget {
  @override
  Row build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          children: [
            CategoryItemWidget(
              'Hello Hello Hello Hello',
              'images/user_profile_cover.jpg',
              100,  
            ),
            SizedBox(height: 15),
            CategoryItemWidget(
              'Hello, world!',
              'images/user_profile_cover.jpg',
              100,  
            ),
          ],
        ),
        Column(
          children: [
            CategoryItemWidget(
              'Hello, world!',
              'images/user_profile_cover.jpg',
              100,  
            ),
            SizedBox(height: 15),
            CategoryItemWidget(
              'Hello, world!',
              'images/user_profile_cover.jpg',
              100,  
            ),
          ],
        ),
      ],
    );
  }
}