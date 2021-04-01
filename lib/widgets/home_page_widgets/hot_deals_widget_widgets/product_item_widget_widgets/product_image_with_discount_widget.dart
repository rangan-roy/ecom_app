import 'package:flutter/material.dart';

class ProductImageWithDiscountWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // product image
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
        // product discount
        Positioned(
          child: Container(
            decoration: BoxDecoration(
              color: Theme.of(context).errorColor,
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
    );
  }
}