import 'package:ecom_app/widgets/home/hot_deals/product_item/product_info/product_name.dart';
import 'package:ecom_app/widgets/home/hot_deals/product_item/product_info/product_prices.dart';
import 'package:flutter/material.dart';

class ProductInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ProductPrices(400, 500, 14),
            SizedBox(height: 10),
            ProductName(),
            SizedBox(height: 10),
            Text('Rating: 4.5 | 100 Reviews'),
          ],
        ),
      ),
    );
  }
}