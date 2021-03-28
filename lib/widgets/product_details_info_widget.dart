import 'package:ecom_app/widgets/product_prices_widget.dart';
import 'package:ecom_app/widgets/product_rating_widget.dart';
import 'package:flutter/material.dart';

class ProductDetailsInfoWidget extends StatefulWidget {
  @override
  _ProductDetailsInfoWidgetState createState() => 
    _ProductDetailsInfoWidgetState();
}

class _ProductDetailsInfoWidgetState extends State<ProductDetailsInfoWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // product name
          Text(
            'ADATA OTG Micro Reader',
            style: Theme.of(context).textTheme.headline6,
          ),
          SizedBox(height: 10),

          // product's past & present prices & discount percentage
          Row(
            children: [
              ProductPricesWidget(400, 500, 16),
              SizedBox(width: 10),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 5,
                  vertical: 2,
                ),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.red),
                  borderRadius: BorderRadius.circular(3),
                ),
                child: Text('-20%'),
              ),
            ],
          ),
          SizedBox(height: 10),
          
          // product rating
          ProductRatingWidget(),
        ],
      ),
    );
  }
}