import 'package:ecom_app/pages/product_image.dart';
import 'package:flutter/material.dart';

class ProductImageItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.pushNamed(
        context,
        ProductImage.routeName,
        arguments: 'images/t-shirt.jpg',
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(7),
        child: Image.asset(
          'images/t-shirt.jpg',
          fit: BoxFit.cover,
          width: double.maxFinite,
          height: double.maxFinite,
        ),
      ),
    );
  }
}