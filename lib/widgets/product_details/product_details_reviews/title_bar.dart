import 'package:ecom_app/widgets/product_details/product_description/product_description_title.dart';
import 'package:ecom_app/widgets/product_details/product_details_reviews/title_bar/add_review_button.dart';
import 'package:flutter/material.dart';

class TitleBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // product reviews title
        ProductDescriptionTitle('Product Reviews'),
        // add review button
        AddReviewButton(),
      ],
    );
  }
}