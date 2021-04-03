import 'package:flutter/material.dart';

class ProductRating extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Rating: ',
          style: TextStyle(fontSize: 15),  
        ),
        Text(
          '4.5',
          style: TextStyle(fontSize: 15),
        ),
        Text(
          ' | 100 Reviews',
          style: TextStyle(fontSize: 15),
        ),
      ],
    );
  }
}