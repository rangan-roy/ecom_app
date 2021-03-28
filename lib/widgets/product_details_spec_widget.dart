import 'package:flutter/material.dart';

class ProductDetailsSpecWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // product spec title
          Text(
            'Product Specifications',
            style: Theme.of(context).textTheme.headline6,
          ),

          SizedBox(height: 15),

          // product specs
          Table(
            border: TableBorder.all(color: Colors.grey.shade100),
            children: [
              // product brand
              TableRow(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Brand'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('M & H'),
                  ),
                ],
              ),

              // product color
              TableRow(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Color'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Red'),
                  ),
                ],
              ),

              // product warranty
              TableRow(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Warranty'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('No Warranty'),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}