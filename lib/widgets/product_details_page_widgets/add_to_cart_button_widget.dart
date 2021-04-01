import 'package:flutter/material.dart';

class AddToCartButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15),
      width: double.maxFinite,
      child: TextButton(
        child: Text(
          'Add to Cart',
          style: TextStyle(fontSize: 16),
        ),
        onPressed: () {},
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey.shade100),
        borderRadius: BorderRadius.circular(4),
      ),
    );
  }
}