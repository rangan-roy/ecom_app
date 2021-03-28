import 'package:ecom_app/widgets/product_prices_widget.dart';
import 'package:ecom_app/widgets/product_rating_widget.dart';
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
          Stack(
            children: [
              ClipRRect(
                child: Image.asset(
                  'images/user_profile_cover.jpg',
                  width: 150,
                  height: 150,
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(4),
                  bottomLeft: Radius.circular(4),
                ),
              ),
              Positioned(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(4),
                      topLeft: Radius.circular(4),
                    ),
                  ),
                  child: Text(
                    '-20%',
                    style: TextStyle(color: Colors.white),
                  ),
                  padding: EdgeInsets.symmetric(
                    horizontal: 7,
                    vertical: 3,
                  ),
                ),
              ),
            ],
          ),

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
                  Text(
                    'Naviforce Men\'s Watch Watch Watch',
                    style: TextStyle(fontSize: 18),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
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
