import 'package:flutter/material.dart';

class ProductDescriptionDescription extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      width: double.maxFinite,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade100),
        borderRadius: BorderRadius.circular(3),
      ),
      child: Text('Hello, world!'),
    );
  }
}