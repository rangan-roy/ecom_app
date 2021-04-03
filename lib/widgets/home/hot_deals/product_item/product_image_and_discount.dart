import 'package:ecom_app/widgets/home/hot_deals/product_item/product_image_and_discount/product_discount.dart';
import 'package:ecom_app/widgets/home/hot_deals/product_item/product_image_and_discount/product_image.dart';
import 'package:flutter/material.dart';


class ProductImageAndDiscount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ProductImage(),
        ProductDiscount(),
      ],
    );
  }
}