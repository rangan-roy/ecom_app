import 'package:flutter/material.dart';

class AddReviewButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        Icons.add_circle,
        size: 30,
        color: Theme.of(context).primaryColor,
      ),
      onPressed: () {},
    );
  }
}