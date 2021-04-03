import 'package:flutter/material.dart';

class ProductImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: Image.asset(
        'images/user_profile_cover.jpg',
        width: 150,
        height: 150,
        fit: BoxFit.cover,
      ),
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(4),
        bottomLeft: Radius.circular(4),
      ),
    );
  }
}