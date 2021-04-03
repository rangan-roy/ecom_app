import 'package:ecom_app/widgets/home/hot_deals/product_item/product_info/product_prices.dart';
import 'package:ecom_app/widgets/product_details/product_details_info/product_info_prices/product_discount.dart';
import 'package:flutter/material.dart';

class ProductInfoPrices extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ProductPrices(400, 500, 16),
        SizedBox(width: 10),
        ProductDiscount(),
      ],
    );
  }
}