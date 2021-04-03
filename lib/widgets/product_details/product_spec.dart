import 'package:ecom_app/widgets/product_details/product_description/product_description_title.dart';
import 'package:ecom_app/widgets/product_details/product_spec/spec_items.dart';
import 'package:flutter/material.dart';

class ProductSpec extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // product spec title
          ProductDescriptionTitle('Product Specifications'),
          
          // margin
          SizedBox(height: 15),

          // product specs
          SpecItems(),
        ],
      ),
    );
  }
}