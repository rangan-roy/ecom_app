import 'package:ecom_app/widgets/product_details/product_details_info/product_info_prices.dart';
import 'package:ecom_app/widgets/product_details/product_details_info/product_info_title.dart';
import 'package:flutter/material.dart';

class ProductDetailsInfo extends StatefulWidget {
  @override
  _ProductDetailsInfoState createState() => _ProductDetailsInfoState();
}

class _ProductDetailsInfoState extends State<ProductDetailsInfo> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // product name
          ProductInfoTitle(),
          SizedBox(height: 10),

          // product's past & present prices & discount percentage
          ProductInfoPrices(),
          SizedBox(height: 10),
          
          // product rating
          Text('Rating: 4.5 | 100 Reviews'),
        ],
      ),
    );
  }
}