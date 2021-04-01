import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecom_app/pages/product_image_page.dart';

class ProductImagesWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: 200,
        enlargeCenterPage: true,
      ),
      items: [
        InkWell(
          onTap: () => Navigator.pushNamed(
            context,
            ProductImagePage.routeName,
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
        ),
      ],
    );
  }
}