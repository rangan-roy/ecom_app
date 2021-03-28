import 'package:flutter/material.dart';

class ProductDetailsDescriptionWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // product description title
          Text(
            'Product Description',
            style: Theme.of(context).textTheme.headline6,
          ),
          SizedBox(height: 15),

          // product description
          Container(
            padding: EdgeInsets.all(10),
            width: double.maxFinite,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.shade100),
              borderRadius: BorderRadius.circular(3),
            ),
            child: Text('Hello, world!'),
          ),
        ],
      ),
    );
  }
}