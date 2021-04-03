import 'package:ecom_app/widgets/product_details/product_images/product_image_item.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class ProductImages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: 200,
        enlargeCenterPage: true,
      ),
      items: [
        ProductImageItem(),
      ],
    );
  }
}