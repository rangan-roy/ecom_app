import 'package:ecom_app/builders/app_bar_builder.dart';
import 'package:ecom_app/pages/product_image_page.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class ProductDetailsPage extends StatefulWidget {
  static final String routeName = 'product_details';

  @override
  _ProductDetailsPageState createState() => _ProductDetailsPageState();
}

class _ProductDetailsPageState extends State<ProductDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar('Product Name', context, true),
      body: CarouselSlider(
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
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                'images/t-shirt.jpg',
                fit: BoxFit.cover,
                width: double.maxFinite,
                height: double.maxFinite,
              ),
            ),
          ),
        ],
      ),
    );
  }
}