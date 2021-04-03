import 'package:ecom_app/widgets/product_details/product_details_reviews/product_review/author.dart';
import 'package:ecom_app/widgets/product_details/product_details_reviews/product_review/rating.dart';
import 'package:ecom_app/widgets/product_details/product_details_reviews/product_review/review_date.dart';
import 'package:flutter/material.dart';

class ProductReview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade100),
        borderRadius: BorderRadius.circular(3),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // product review rating
          Rating(),
          SizedBox(height: 10),

          // product review
          Text('This product is too good.'),
          SizedBox(height: 10),

          // product reviewer
          Author(),
          SizedBox(height: 10),

          // review date
          ReviewDate(),
        ],
      ),
    );
  }
}