import 'package:ecom_app/widgets/home/hot_deals/product_item/product_image_and_discount.dart';
import 'package:ecom_app/widgets/home/hot_deals/product_item/product_info.dart';
import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 6,
      ),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey.shade100,
          width: 1,
        ),
        borderRadius: BorderRadius.circular(4),
      ),
      child: Row(
        children: [
          ProductImageAndDiscount(),
          ProductInfo(),
        ],
      ),
    );
  }
}
