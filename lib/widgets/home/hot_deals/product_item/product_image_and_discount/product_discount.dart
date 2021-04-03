import 'package:flutter/material.dart';

class ProductDiscount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Positioned(
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
    );
  }
}