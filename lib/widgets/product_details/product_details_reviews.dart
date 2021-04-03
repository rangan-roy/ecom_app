import 'package:ecom_app/widgets/product_details/product_details_reviews/product_review.dart';
import 'package:ecom_app/widgets/product_details/product_details_reviews/title_bar.dart';
import 'package:flutter/material.dart';

class ProductDetailsReviews extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        children: [
          TitleBar(),
          SizedBox(height: 5),

          ProductReview(),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}