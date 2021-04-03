import 'package:flutter/material.dart';

class Rating extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.star,
          color: Theme.of(context).primaryColor,
        ),
        SizedBox(width: 5),
        Text(
          '4.5',
          style: Theme.of(context).textTheme.subtitle2,
        ),
      ],
    );
  }
}