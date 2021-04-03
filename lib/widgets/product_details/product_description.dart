import 'package:ecom_app/widgets/product_details/product_description/product_description_description.dart';
import 'package:ecom_app/widgets/product_details/product_description/product_description_title.dart';
import 'package:flutter/material.dart';

class ProductDescription extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // product description title
          ProductDescriptionTitle('Product Description'),
          
          // margin
          SizedBox(height: 10),

          // product description
          ProductDescriptionDescription(),
        ],
      ),
    );
  }
}