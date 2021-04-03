import 'package:ecom_app/widgets/home/hot_deals/product_item.dart';
import 'package:flutter/material.dart';

class TopRated extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProductItem(),
        ProductItem(),
        ProductItem(),
        ProductItem(),
      ],
    );
  }
}