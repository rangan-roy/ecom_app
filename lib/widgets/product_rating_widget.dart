import 'package:flutter/material.dart';

class ProductRatingWidget extends StatelessWidget {
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
          style: TextStyle(
            color: Theme.of(context).primaryColor,
            fontSize: 15,
          ),
        ),
        Text(
          ' | 100 Reviews',
          style: TextStyle(fontSize: 15),
        ),
      ],
    );
  }
}