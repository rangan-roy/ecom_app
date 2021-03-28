import 'package:ecom_app/builders/app_bar_builder.dart';
import 'package:ecom_app/widgets/product_details_description_widget.dart';
import 'package:ecom_app/widgets/product_details_info_widget.dart';
import 'package:ecom_app/widgets/product_details_reviews_widget.dart';
import 'package:ecom_app/widgets/product_details_spec_widget.dart';
import 'package:ecom_app/widgets/product_images_widget.dart';
import 'package:flutter/material.dart';

class ProductDetailsPage extends StatefulWidget {
  static final String routeName = 'product_details';

  @override
  _ProductDetailsPageState createState() => _ProductDetailsPageState();
}

class _ProductDetailsPageState extends State<ProductDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar('Shop Name', context, true),
      body: ListView(
        padding: EdgeInsets.only(bottom: 20),
        children: [
          // product images
          ProductImagesWidget(),
          SizedBox(height: 30),
          
          // product info
          ProductDetailsInfoWidget(),
          SizedBox(height: 30),
          
          // product specs
          ProductDetailsSpecWidget(),
          SizedBox(height: 30),

          // product description
          ProductDetailsDescriptionWidget(),
          SizedBox(height: 20),

          // product reviews
          ProductDetailsReviewsWidget()
        ],
      ),
    );
  }
}