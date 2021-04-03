import 'package:ecom_app/builders/app_bar_builder.dart';
import 'package:ecom_app/widgets/product_details/add_to_cart_button.dart';
import 'package:ecom_app/widgets/product_details/product_description.dart';
import 'package:ecom_app/widgets/product_details/product_details_info.dart';
import 'package:ecom_app/widgets/product_details/product_details_reviews.dart';
import 'package:ecom_app/widgets/product_details/product_images.dart';
import 'package:ecom_app/widgets/product_details/product_spec.dart';
import 'package:flutter/material.dart';

class ProductDetails extends StatefulWidget {
  static final String routeName = 'product_details';

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      appBar: buildAppBar('Product Name', context, true),
      body: ListView(
        padding: EdgeInsets.only(bottom: 60),
        children: [
          // product images
          ProductImages(),
          SizedBox(height: 30),
          
          // product info
          ProductDetailsInfo(),
          SizedBox(height: 30),
          
          // product specs
          ProductSpec(),
          SizedBox(height: 30),

          // product description
          ProductDescription(),
          SizedBox(height: 20),

          // product reviews
          ProductDetailsReviews(),
        ],
      ),
      floatingActionButton: AddToCartButton(),
    );
  }
}