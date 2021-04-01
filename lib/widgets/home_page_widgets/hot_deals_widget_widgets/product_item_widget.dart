import 'package:ecom_app/widgets/home_page_widgets/hot_deals_widget_widgets/product_item_widget_widgets/product_image_with_discount_widget.dart';
import 'package:ecom_app/widgets/home_page_widgets/hot_deals_widget_widgets/product_item_widget_widgets/product_item_name_widget.dart';
import 'package:ecom_app/widgets/home_page_widgets/hot_deals_widget_widgets/product_item_widget_widgets/product_prices_widget.dart';
import 'package:ecom_app/widgets/home_page_widgets/hot_deals_widget_widgets/product_item_widget_widgets/product_rating_widget.dart';
import 'package:flutter/material.dart';

class ProductItemWidget extends StatefulWidget {
  @override
  _ProductItemWidgetState createState() => _ProductItemWidgetState();
}

class _ProductItemWidgetState extends State<ProductItemWidget> {
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
          // product image and discount percentege
          ProductImageWithDiscountWidget(),

          // product info
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // product present and past price
                  ProductPricesWidget(400, 500, 14),
                  SizedBox(height: 10),

                  // product name
                  ProductItemNameWidget(),
                  SizedBox(height: 10),
                  
                  // product rating
                  ProductRatingWidget(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
