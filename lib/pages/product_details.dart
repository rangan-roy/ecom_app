import 'package:ecom_app/builders/app_bar_builder.dart';
import 'package:ecom_app/widgets/product_details_info_widget.dart';
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
      appBar: buildAppBar('Product Name', context, true),
      body: ListView(
        children: [
          ProductImagesWidget(),
          
          SizedBox(height: 30),

          ProductDetailsInfoWidget(),
        ],
      ),
    );
  }
}